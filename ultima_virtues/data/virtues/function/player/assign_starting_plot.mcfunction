# virtues:player/assign_starting_plot
# Called once from first_join.mcfunction, before spawn_starting_chest. Teleports a new
# player to their hand-picked starting chunk (Blair's table, 2026-11-06 — keeps every
# player's stone circle in its own chunk near spawn so they don't stomp on each other),
# snaps to the surface, then clears trees so the circle doesn't spawn through a trunk/canopy.
# Chunk (0,2) is deliberately reserved — not assigned to any player_id.
# player_id 9+ falls through with no teleport (circle builds wherever they happen to be).

execute as @s if score @s virtues.player_id matches 1 positioned 8 0 8 positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute as @s if score @s virtues.player_id matches 2 positioned 24 0 -8 positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute as @s if score @s virtues.player_id matches 3 positioned 40 0 24 positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute as @s if score @s virtues.player_id matches 4 positioned 56 0 8 positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute as @s if score @s virtues.player_id matches 5 positioned -8 0 8 positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute as @s if score @s virtues.player_id matches 6 positioned -8 0 24 positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute as @s if score @s virtues.player_id matches 7 positioned 8 0 24 positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute as @s if score @s virtues.player_id matches 8 positioned 24 0 24 positioned over motion_blocking_no_leaves run tp @s ~ ~ ~

# Clear trees in the plot (logs + every vanilla leaf type) before the circle/chest get built.
# Keeps actual terrain (dirt/grass/stone) untouched — only strips trees.
execute as @s[scores={virtues.player_id=1..8}] at @s run fill ~-8 ~-2 ~-8 ~8 ~20 ~8 air replace #minecraft:logs
execute as @s[scores={virtues.player_id=1..8}] at @s run fill ~-8 ~-2 ~-8 ~8 ~20 ~8 air replace minecraft:oak_leaves
execute as @s[scores={virtues.player_id=1..8}] at @s run fill ~-8 ~-2 ~-8 ~8 ~20 ~8 air replace minecraft:spruce_leaves
execute as @s[scores={virtues.player_id=1..8}] at @s run fill ~-8 ~-2 ~-8 ~8 ~20 ~8 air replace minecraft:birch_leaves
execute as @s[scores={virtues.player_id=1..8}] at @s run fill ~-8 ~-2 ~-8 ~8 ~20 ~8 air replace minecraft:jungle_leaves
execute as @s[scores={virtues.player_id=1..8}] at @s run fill ~-8 ~-2 ~-8 ~8 ~20 ~8 air replace minecraft:acacia_leaves
execute as @s[scores={virtues.player_id=1..8}] at @s run fill ~-8 ~-2 ~-8 ~8 ~20 ~8 air replace minecraft:dark_oak_leaves
execute as @s[scores={virtues.player_id=1..8}] at @s run fill ~-8 ~-2 ~-8 ~8 ~20 ~8 air replace minecraft:mangrove_leaves
execute as @s[scores={virtues.player_id=1..8}] at @s run fill ~-8 ~-2 ~-8 ~8 ~20 ~8 air replace minecraft:cherry_leaves
execute as @s[scores={virtues.player_id=1..8}] at @s run fill ~-8 ~-2 ~-8 ~8 ~20 ~8 air replace minecraft:azalea_leaves
execute as @s[scores={virtues.player_id=1..8}] at @s run fill ~-8 ~-2 ~-8 ~8 ~20 ~8 air replace minecraft:flowering_azalea_leaves
