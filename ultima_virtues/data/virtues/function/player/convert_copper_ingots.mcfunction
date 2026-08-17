execute store result score @s virtues.copper_ingot_count run clear @s minecraft:copper_ingot
execute if score @s virtues.copper_ingot_count matches 0 run return 0
scoreboard players operation @s virtues.copper_ingot_blocks = @s virtues.copper_ingot_count
scoreboard players operation @s virtues.copper_ingot_blocks /= $nine virtues.const
scoreboard players operation @s virtues.copper_ingot_remainder = @s virtues.copper_ingot_count
scoreboard players operation @s virtues.copper_ingot_remainder %= $nine virtues.const
scoreboard players operation @s virtues.copper_ingot_nuggets = @s virtues.copper_ingot_remainder
scoreboard players operation @s virtues.copper_ingot_nuggets *= $nine virtues.const
execute if score @s virtues.copper_ingot_blocks matches 1.. run function virtues:player/give_copper_blocks
execute if score @s virtues.copper_ingot_nuggets matches 1.. run function virtues:player/give_copper_nuggets
