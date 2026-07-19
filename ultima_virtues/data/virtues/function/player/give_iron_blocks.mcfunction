give @s minecraft:iron_block 1
scoreboard players remove @s virtues.ingot_blocks 1
execute if score @s virtues.ingot_blocks matches 1.. run function virtues:player/give_iron_blocks
