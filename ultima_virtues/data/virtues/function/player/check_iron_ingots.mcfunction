scoreboard players add @s virtues.is_metallurgist 0
execute if score @s virtues.is_metallurgist matches 0 run function virtues:player/convert_iron_ingots
