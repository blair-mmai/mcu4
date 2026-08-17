scoreboard players add @s virtues.copper_metallurgist 0
execute if score @s virtues.copper_metallurgist matches 0 run function virtues:player/convert_copper_ingots
