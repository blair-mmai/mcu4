give @s minecraft:copper_nugget 1
scoreboard players remove @s virtues.copper_ingot_nuggets 1
execute if score @s virtues.copper_ingot_nuggets matches 1.. run function virtues:player/give_copper_nuggets
