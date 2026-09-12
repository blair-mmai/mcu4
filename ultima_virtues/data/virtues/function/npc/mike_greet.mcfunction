execute store result score @s virtues.roll_temp run random value 1..100
execute if score @s virtues.roll_temp matches 1..10 run function virtues:npc/mike_greet_1
execute if score @s virtues.roll_temp matches 11..35 run function virtues:npc/mike_greet_2
execute if score @s virtues.roll_temp matches 36..55 run function virtues:npc/mike_greet_3
execute if score @s virtues.roll_temp matches 56..80 run function virtues:npc/mike_greet_4
execute if score @s virtues.roll_temp matches 81..100 run function virtues:npc/mike_greet_5
