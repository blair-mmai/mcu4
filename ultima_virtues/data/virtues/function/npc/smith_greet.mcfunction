execute store result score @s virtues.roll_temp run random value 1..100
execute if score @s virtues.roll_temp matches 1..30 run function virtues:npc/smith_greet_1
execute if score @s virtues.roll_temp matches 31..60 run function virtues:npc/smith_greet_2
execute if score @s virtues.roll_temp matches 61..100 run function virtues:npc/smith_greet_3
