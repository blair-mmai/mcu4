execute store result score @s virtues.roll_temp run random value 1..100
execute if score @s virtues.roll_temp matches 1..10 run function virtues:npc/short_round_greet_1
execute if score @s virtues.roll_temp matches 11..20 run function virtues:npc/short_round_greet_2
execute if score @s virtues.roll_temp matches 21..50 run function virtues:npc/short_round_greet_3
execute if score @s virtues.roll_temp matches 51..60 run function virtues:npc/short_round_greet_4
execute if score @s virtues.roll_temp matches 61..70 run function virtues:npc/short_round_greet_5
execute if score @s virtues.roll_temp matches 71..80 run function virtues:npc/short_round_greet_6
execute if score @s virtues.roll_temp matches 81..100 run function virtues:npc/short_round_greet_7
