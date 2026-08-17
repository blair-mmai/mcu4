execute store result score @s virtues.roll_temp run random value 1..100
execute if score @s virtues.roll_temp matches 1..15 run function virtues:npc/welcomer_greet_1
execute if score @s virtues.roll_temp matches 16..30 run function virtues:npc/welcomer_greet_2
execute if score @s virtues.roll_temp matches 31..45 run function virtues:npc/welcomer_greet_6
execute if score @s virtues.roll_temp matches 46..60 run function virtues:npc/welcomer_greet_3
execute if score @s virtues.roll_temp matches 61..75 run function virtues:npc/welcomer_greet_4
execute if score @s virtues.roll_temp matches 76..85 run function virtues:npc/welcomer_greet_5
execute if score @s virtues.roll_temp matches 86..100 run function virtues:npc/welcomer_ask_potions
