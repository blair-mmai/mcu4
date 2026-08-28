execute store result score @s virtues.roll_temp run random value 1..100
execute if score @s virtues.roll_temp matches 1..33 run function virtues:npc/cromwell_greet_1
execute if score @s virtues.roll_temp matches 34..66 run function virtues:npc/cromwell_greet_2
execute if score @s virtues.roll_temp matches 67..100 run function virtues:npc/cromwell_greet_3
