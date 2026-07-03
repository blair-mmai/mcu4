# virtues:tick
# Runs every tick. Checks for players who haven't been given their starting
# chest yet, and fires the first-join sequence for them exactly once.

# Re-apply custom trades every tick to all farmers (vanilla regenerates trades on profession re-link)
execute as @e[type=minecraft:villager] run function virtues:player/setup_farmer_trade

# Clear vanilla advancement tabs for any player who hasn't been cleaned yet this session
scoreboard players add @a virtues.vanilla_cleared 0
execute as @a[scores={virtues.vanilla_cleared=0}] run advancement revoke @s from minecraft:story
execute as @a[scores={virtues.vanilla_cleared=0}] run advancement revoke @s from minecraft:nether
execute as @a[scores={virtues.vanilla_cleared=0}] run advancement revoke @s from minecraft:end
execute as @a[scores={virtues.vanilla_cleared=0}] run advancement revoke @s from minecraft:adventure
execute as @a[scores={virtues.vanilla_cleared=0}] run advancement revoke @s from minecraft:husbandry
scoreboard players set @a[scores={virtues.vanilla_cleared=0}] virtues.vanilla_cleared 1

# Run world init exactly once
scoreboard players add $world virtues.world_init 0
execute if score $world virtues.world_init matches 0 run function virtues:world_init

# Any player who doesn't have a score yet on virtues.firstjoin gets initialized to 0
scoreboard players add @a virtues.firstjoin 0

# Players still at 0 get the first join treatment, then get bumped to 1 so this
# never fires again for them.
execute as @a[scores={virtues.firstjoin=0}] at @s run function virtues:player/first_join
scoreboard players set @a[scores={virtues.firstjoin=0}] virtues.firstjoin 1

# Drive any in-progress intro title sequences
function virtues:player/intro_sequence

# First-action milestone checks (dirt, tree) — opens Humility and Valor tabs
execute as @a run function virtues:player/check_first_actions

# Deal 0.5 heart damage every time a log is punched
execute as @a run function virtues:player/check_tree_damage

# Circle entry detection — fires "This is X's circle" on the tick they cross from 6 to 5 blocks away
scoreboard players add @a virtues.in_circle 0
execute as @a[scores={virtues.in_circle=0}] at @s if entity @e[type=minecraft:marker,tag=virtues.owner,distance=..5] run function virtues:player/enter_circle
execute as @a[scores={virtues.in_circle=1}] at @s unless entity @e[type=minecraft:marker,tag=virtues.owner,distance=..5] run scoreboard players set @s virtues.in_circle 0


