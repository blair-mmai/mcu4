# virtues:player/gypsy_give_home_compass
# Called "as @s" (the player). Finds @s's own stone-circle owner marker via
# the same player_id-matching pattern as return_to_chest_teleport.mcfunction,
# reads its exact position into storage, then hands off to give_home_compass
# (a macro function) to actually give a compass pointing there. Replaces the
# old per-virtue hardcoded-town-coordinate compass in gypsy_reveal_4.

scoreboard players operation $portal_home virtues.player_id = @s virtues.player_id
execute as @e[type=minecraft:marker,tag=virtues.owner] if score @s virtues.player_id = $portal_home virtues.player_id run tag @s add virtues.temp_home_target

execute at @e[type=minecraft:marker,tag=virtues.temp_home_target,limit=1] store result storage virtues:temp compass_pos.x int 1 run data get entity @s Pos[0] 1
execute at @e[type=minecraft:marker,tag=virtues.temp_home_target,limit=1] store result storage virtues:temp compass_pos.y int 1 run data get entity @s Pos[1] 1
execute at @e[type=minecraft:marker,tag=virtues.temp_home_target,limit=1] store result storage virtues:temp compass_pos.z int 1 run data get entity @s Pos[2] 1

tag @e[tag=virtues.temp_home_target] remove virtues.temp_home_target

function virtues:player/give_home_compass with storage virtues:temp compass_pos
