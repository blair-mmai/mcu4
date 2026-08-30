# virtues:puzzles/trinsic_maze_spawn_check
# Trinsic's shulker-box maze. Each box that should spawn a mob gets a marker
# tagged skeleton_inside or wither_inside, egg in slot 0 (container.0..26 isn't
# valid slot-range syntax; same single-slot convention as the Trial Key chest).
# Repeatable: each marker tracks its own "egg present" state on itself
# (virtues.egg_present, a scoreboard score works on any entity, not just
# players) — arms when the egg is present, fires + rearms-to-off when it's
# removed. The box then auto-refills the egg (same pattern as the Trial Key
# chest) so the player never has to put it back manually — infinite spawns.
# Detection MUST run before refill each tick, or the egg would already be back
# by the time "unless items block" checks for its absence.

scoreboard players add @e[tag=skeleton_inside] virtues.egg_present 0
execute as @e[tag=skeleton_inside] at @s if items block ~ ~ ~ container.0 minecraft:skeleton_spawn_egg if score @s virtues.egg_present matches 0 run scoreboard players set @s virtues.egg_present 1
execute as @e[tag=skeleton_inside] at @s unless items block ~ ~ ~ container.0 minecraft:skeleton_spawn_egg if score @s virtues.egg_present matches 1 run function virtues:puzzles/trinsic_maze_spawn_skeleton
execute at @e[tag=skeleton_inside] unless items block ~ ~ ~ container.0 minecraft:skeleton_spawn_egg run item replace block ~ ~ ~ container.0 with minecraft:skeleton_spawn_egg

scoreboard players add @e[tag=wither_inside] virtues.egg_present 0
execute as @e[tag=wither_inside] at @s if items block ~ ~ ~ container.0 minecraft:wither_skeleton_spawn_egg if score @s virtues.egg_present matches 0 run scoreboard players set @s virtues.egg_present 1
execute as @e[tag=wither_inside] at @s unless items block ~ ~ ~ container.0 minecraft:wither_skeleton_spawn_egg if score @s virtues.egg_present matches 1 run function virtues:puzzles/trinsic_maze_spawn_wither
execute at @e[tag=wither_inside] unless items block ~ ~ ~ container.0 minecraft:wither_skeleton_spawn_egg run item replace block ~ ~ ~ container.0 with minecraft:wither_skeleton_spawn_egg
