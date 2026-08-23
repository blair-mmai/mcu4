execute store result score @s virtues.roll_temp run random value 1..100
execute if score @s virtues.roll_temp matches 1..40 run function virtues:npc/hero_greet_1
execute if score @s virtues.roll_temp matches 41..80 run function virtues:npc/hero_greet_2
execute if score @s virtues.roll_temp matches 81..100 if score @s virtues.hero_answered matches 0..2 run function virtues:npc/hero_ask_valor
execute if score @s virtues.roll_temp matches 81..100 unless score @s virtues.hero_answered matches 0..2 run function virtues:npc/hero_greet_1
