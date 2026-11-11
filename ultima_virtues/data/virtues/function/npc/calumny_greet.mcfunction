execute store result score @s virtues.roll_temp run random value 1..100
execute if score @s virtues.roll_temp matches 1..10 run function virtues:npc/calumny_greet_1
execute if score @s virtues.roll_temp matches 11..30 run function virtues:npc/calumny_greet_2
execute if score @s virtues.roll_temp matches 31..50 run function virtues:npc/calumny_greet_3
execute if score @s virtues.roll_temp matches 51..60 run function virtues:npc/calumny_greet_4
execute if score @s virtues.roll_temp matches 61..70 run function virtues:npc/calumny_greet_5
execute if score @s virtues.roll_temp matches 71..90 run function virtues:npc/calumny_greet_6
