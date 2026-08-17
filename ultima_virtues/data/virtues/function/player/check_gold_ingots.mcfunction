scoreboard players add @s virtues.gold_metallurgist 0
execute if score @s virtues.gold_metallurgist matches 0 run function virtues:player/convert_gold_ingots
