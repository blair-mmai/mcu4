execute store result score @s virtues.ingot_count run clear @s minecraft:iron_ingot
execute if score @s virtues.ingot_count matches 0 run return 0
scoreboard players operation @s virtues.ingot_blocks = @s virtues.ingot_count
scoreboard players operation @s virtues.ingot_blocks /= $nine virtues.const
scoreboard players operation @s virtues.ingot_remainder = @s virtues.ingot_count
scoreboard players operation @s virtues.ingot_remainder %= $nine virtues.const
scoreboard players operation @s virtues.ingot_nuggets = @s virtues.ingot_remainder
scoreboard players operation @s virtues.ingot_nuggets *= $nine virtues.const
execute if score @s virtues.ingot_blocks matches 1.. run function virtues:player/give_iron_blocks
execute if score @s virtues.ingot_nuggets matches 1.. run function virtues:player/give_iron_nuggets
