# virtues:player/check_tree_punch
# Fires the starting chest when a player mines a log for the first time
# SINCE the baseline was set. Baseline is set by start_fresh or first join,
# so previously mined logs don't trigger it.

scoreboard players add @a virtues.tree_chest_given 0

# Temporary score to detect if mined count exceeded baseline
scoreboard objectives add virtues.log_delta dummy

execute as @a[scores={virtues.tree_chest_given=0}] run scoreboard players operation @s virtues.log_delta = @s virtues.mined_oak
execute as @a[scores={virtues.tree_chest_given=0}] run scoreboard players operation @s virtues.log_delta -= @s virtues.oak_baseline
execute as @a[scores={virtues.tree_chest_given=0,virtues.log_delta=1..}] at @s run function virtues:player/spawn_starting_chest
execute as @a[scores={virtues.tree_chest_given=0,virtues.log_delta=1..}] run scoreboard players set @s virtues.tree_chest_given 1

execute as @a[scores={virtues.tree_chest_given=0}] run scoreboard players operation @s virtues.log_delta = @s virtues.mined_birch
execute as @a[scores={virtues.tree_chest_given=0}] run scoreboard players operation @s virtues.log_delta -= @s virtues.birch_baseline
execute as @a[scores={virtues.tree_chest_given=0,virtues.log_delta=1..}] at @s run function virtues:player/spawn_starting_chest
execute as @a[scores={virtues.tree_chest_given=0,virtues.log_delta=1..}] run scoreboard players set @s virtues.tree_chest_given 1

execute as @a[scores={virtues.tree_chest_given=0}] run scoreboard players operation @s virtues.log_delta = @s virtues.mined_spruce
execute as @a[scores={virtues.tree_chest_given=0}] run scoreboard players operation @s virtues.log_delta -= @s virtues.spruce_baseline
execute as @a[scores={virtues.tree_chest_given=0,virtues.log_delta=1..}] at @s run function virtues:player/spawn_starting_chest
execute as @a[scores={virtues.tree_chest_given=0,virtues.log_delta=1..}] run scoreboard players set @s virtues.tree_chest_given 1

execute as @a[scores={virtues.tree_chest_given=0}] run scoreboard players operation @s virtues.log_delta = @s virtues.mined_dark_oak
execute as @a[scores={virtues.tree_chest_given=0}] run scoreboard players operation @s virtues.log_delta -= @s virtues.dark_oak_baseline
execute as @a[scores={virtues.tree_chest_given=0,virtues.log_delta=1..}] at @s run function virtues:player/spawn_starting_chest
execute as @a[scores={virtues.tree_chest_given=0,virtues.log_delta=1..}] run scoreboard players set @s virtues.tree_chest_given 1

execute as @a[scores={virtues.tree_chest_given=0}] run scoreboard players operation @s virtues.log_delta = @s virtues.mined_acacia
execute as @a[scores={virtues.tree_chest_given=0}] run scoreboard players operation @s virtues.log_delta -= @s virtues.acacia_baseline
execute as @a[scores={virtues.tree_chest_given=0,virtues.log_delta=1..}] at @s run function virtues:player/spawn_starting_chest
execute as @a[scores={virtues.tree_chest_given=0,virtues.log_delta=1..}] run scoreboard players set @s virtues.tree_chest_given 1

execute as @a[scores={virtues.tree_chest_given=0}] run scoreboard players operation @s virtues.log_delta = @s virtues.mined_jungle
execute as @a[scores={virtues.tree_chest_given=0}] run scoreboard players operation @s virtues.log_delta -= @s virtues.jungle_baseline
execute as @a[scores={virtues.tree_chest_given=0,virtues.log_delta=1..}] at @s run function virtues:player/spawn_starting_chest
execute as @a[scores={virtues.tree_chest_given=0,virtues.log_delta=1..}] run scoreboard players set @s virtues.tree_chest_given 1
