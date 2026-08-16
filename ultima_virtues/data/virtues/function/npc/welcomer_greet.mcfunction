execute store result score @s virtues.roll_temp run random value 1..100
execute if score @s virtues.roll_temp matches 1..20 run function virtues:npc/welcomer_greet_1
execute if score @s virtues.roll_temp matches 21..40 run function virtues:npc/welcomer_greet_2
execute if score @s virtues.roll_temp matches 41..55 run function virtues:npc/welcomer_greet_3
execute if score @s virtues.roll_temp matches 56..70 run function virtues:npc/welcomer_greet_4
execute if score @s virtues.roll_temp matches 71..85 run function virtues:npc/welcomer_greet_5
execute if score @s virtues.roll_temp matches 86..100 run function virtues:npc/welcomer_ask_potions
