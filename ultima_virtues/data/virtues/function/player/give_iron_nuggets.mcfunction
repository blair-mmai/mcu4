give @s minecraft:iron_nugget 1
scoreboard players remove @s virtues.ingot_nuggets 1
execute if score @s virtues.ingot_nuggets matches 1.. run function virtues:player/give_iron_nuggets
