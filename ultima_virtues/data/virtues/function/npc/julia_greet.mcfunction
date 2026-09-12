execute store result score @s virtues.roll_temp run random value 1..100
execute if score @s virtues.roll_temp matches 1..20 run function virtues:npc/julia_greet_1
execute if score @s virtues.roll_temp matches 21..35 run function virtues:npc/julia_greet_2
execute if score @s virtues.roll_temp matches 36..50 run function virtues:npc/julia_greet_3
execute if score @s virtues.roll_temp matches 51..65 run function virtues:npc/julia_greet_4
execute if score @s virtues.roll_temp matches 66..80 run function virtues:npc/julia_greet_5
execute if score @s virtues.roll_temp matches 81..100 run function virtues:npc/julia_greet_6
