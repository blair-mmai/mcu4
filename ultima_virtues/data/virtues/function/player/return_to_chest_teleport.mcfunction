# virtues:player/return_to_chest_teleport
# The actual marker-lookup teleport, moved out of return_to_chest.mcfunction
# so the whoosh sound there can play 5 ticks before this runs. Teleports @s
# to 2 blocks above their own starting chest, located via their
# virtues.owner marker (placed at the chest's position in
# spawn_starting_chest.mcfunction).

scoreboard players operation $portal_home virtues.player_id = @s virtues.player_id
execute as @e[type=minecraft:marker,tag=virtues.owner] if score @s virtues.player_id = $portal_home virtues.player_id run tag @s add virtues.temp_home_target
execute at @e[type=minecraft:marker,tag=virtues.temp_home_target,limit=1] run teleport @s ~ ~2 ~
tag @e[tag=virtues.temp_home_target] remove virtues.temp_home_target
