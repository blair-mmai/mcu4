execute store result score @s virtues.roll_temp run random value 1..100
execute if score @s virtues.roll_temp matches 1..20 run function virtues:npc/william_greet_1
execute if score @s virtues.roll_temp matches 21..50 run function virtues:npc/william_greet_2
execute if score @s virtues.roll_temp matches 51..70 run function virtues:npc/william_greet_3
execute if score @s virtues.roll_temp matches 71..100 run function virtues:npc/william_greet_4
