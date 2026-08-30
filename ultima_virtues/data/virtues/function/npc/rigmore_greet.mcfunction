execute store result score @s virtues.roll_temp run random value 1..100
execute if score @s virtues.roll_temp matches 1..25 run function virtues:npc/rigmore_greet_1
execute if score @s virtues.roll_temp matches 26..50 run function virtues:npc/rigmore_greet_2
execute if score @s virtues.roll_temp matches 51..75 run function virtues:npc/rigmore_greet_3
execute if score @s virtues.roll_temp matches 76..100 run function virtues:npc/rigmore_greet_4
