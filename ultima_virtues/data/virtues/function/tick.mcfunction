# virtues:tick
# Runs every tick. Checks for players who haven't been given their starting
# chest yet, and fires the first-join sequence for them exactly once.

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

# Circle entry detection — fires "This is X's circle" on the tick they cross from 6 to 5 blocks away
scoreboard players add @a virtues.in_circle 0
execute as @a[scores={virtues.in_circle=0}] at @s if entity @e[type=minecraft:marker,tag=virtues.owner,distance=..5] run function virtues:player/enter_circle
execute as @a[scores={virtues.in_circle=1}] at @s unless entity @e[type=minecraft:marker,tag=virtues.owner,distance=..5] run scoreboard players set @s virtues.in_circle 0


