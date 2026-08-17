give @s minecraft:gold_nugget 1
scoreboard players remove @s virtues.gold_ingot_nuggets 1
execute if score @s virtues.gold_ingot_nuggets matches 1.. run function virtues:player/give_gold_nuggets
