scoreboard players add @s virtues.iron_metallurgist 0
execute if score @s virtues.iron_metallurgist matches 0 run function virtues:player/convert_iron_ingots
