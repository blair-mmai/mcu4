# virtues:tick
# Runs every tick. Checks for players who haven't been given their starting
# chest yet, and fires the first-join sequence for them exactly once.

# Assign random name to any farmer villager that hasn't been named yet
execute as @e[type=minecraft:villager,tag=!virtues.named] run function virtues:player/assign_farmer_name
execute as @e[type=minecraft:villager,tag=virtues.named] if data entity @s {VillagerData:{profession:"minecraft:none"}} run function virtues:player/reset_farmer_name

# Named farmer greetings — fire once when player first walks within 4 blocks
scoreboard players add @a virtues.greeted_fannie 0
scoreboard players add @a virtues.greeted_freddie 0
scoreboard players add @a virtues.greeted_ginnie 0
execute as @a[scores={virtues.greeted_fannie=0}] at @s if entity @e[type=minecraft:villager,name="Fannie Mae",distance=..4] run function virtues:player/greet_fannie
execute as @a[scores={virtues.greeted_freddie=0}] at @s if entity @e[type=minecraft:villager,name="Freddie Mac Moo",distance=..4] run function virtues:player/greet_freddie
execute as @a[scores={virtues.greeted_ginnie=0}] at @s if entity @e[type=minecraft:villager,name="Ginnie Mae",distance=..4] run function virtues:player/greet_ginnie

# Re-apply custom trades every tick (vanilla regenerates trades on profession re-link)
execute as @e[type=minecraft:villager] run function virtues:player/setup_farmer_trade
execute as @e[type=minecraft:wandering_trader] run function virtues:player/setup_wandering_trader_trade

# Detect /trigger RELAXABIT
scoreboard players enable @a RELAXABIT
execute as @a[scores={RELAXABIT=1..}] at @s if entity @e[type=minecraft:enderman,name=BELAATRIX,distance=..10] run function virtues:dev/relax_test
scoreboard players set @a[scores={RELAXABIT=1..}] RELAXABIT 0

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


