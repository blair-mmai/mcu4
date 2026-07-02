# virtues:player/check_tree_punch
# Called every tick. Detects the first time a player has mined any log
# type, and if they haven't already received a tree-punch chest, spawns
# one at their location.
#
# Note: this fires on ANY log mined, regardless of tool used (bare hand,
# axe, etc) - vanilla's mined stat doesn't distinguish tool used, only
# that the block was broken and dropped its item. Logs always drop
# regardless of tool, so bare-hand punching is included here just like
# axe-chopping would be. If you want this to fire ONLY for bare-hand
# punches specifically, that needs a different detection method (see
# notes at bottom).

scoreboard players add @a virtues.tree_chest_given 0

execute as @a[scores={virtues.tree_chest_given=0,virtues.mined_oak=1..}] at @s run function virtues:player/spawn_starting_chest
execute as @a[scores={virtues.tree_chest_given=0,virtues.mined_birch=1..}] at @s run function virtues:player/spawn_starting_chest
execute as @a[scores={virtues.tree_chest_given=0,virtues.mined_spruce=1..}] at @s run function virtues:player/spawn_starting_chest
execute as @a[scores={virtues.tree_chest_given=0,virtues.mined_jungle=1..}] at @s run function virtues:player/spawn_starting_chest
execute as @a[scores={virtues.tree_chest_given=0,virtues.mined_acacia=1..}] at @s run function virtues:player/spawn_starting_chest
execute as @a[scores={virtues.tree_chest_given=0,virtues.mined_dark_oak=1..}] at @s run function virtues:player/spawn_starting_chest

scoreboard players set @a[scores={virtues.tree_chest_given=0,virtues.mined_oak=1..}] virtues.tree_chest_given 1
scoreboard players set @a[scores={virtues.tree_chest_given=0,virtues.mined_birch=1..}] virtues.tree_chest_given 1
scoreboard players set @a[scores={virtues.tree_chest_given=0,virtues.mined_spruce=1..}] virtues.tree_chest_given 1
scoreboard players set @a[scores={virtues.tree_chest_given=0,virtues.mined_jungle=1..}] virtues.tree_chest_given 1
scoreboard players set @a[scores={virtues.tree_chest_given=0,virtues.mined_acacia=1..}] virtues.tree_chest_given 1
scoreboard players set @a[scores={virtues.tree_chest_given=0,virtues.mined_dark_oak=1..}] virtues.tree_chest_given 1

# NOTE: to detect bare-hand specifically, the more reliable path is an
# advancement using the minecraft:item_used_on_block or by checking the
# player's selected item slot is empty (minecraft:air) at the moment the
# mined stat increments - not implemented here, flagged as a known gap.
