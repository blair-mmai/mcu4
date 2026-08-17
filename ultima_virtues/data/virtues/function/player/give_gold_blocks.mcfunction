give @s minecraft:gold_block 1
scoreboard players remove @s virtues.gold_ingot_blocks 1
execute if score @s virtues.gold_ingot_blocks matches 1.. run function virtues:player/give_gold_blocks
