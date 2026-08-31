execute store result score @s virtues.roll_temp run random value 1..100
execute if score @s virtues.roll_temp matches 1..20 run function virtues:npc/court_guard_greet_1
execute if score @s virtues.roll_temp matches 21..40 run function virtues:npc/court_guard_greet_2
execute if score @s virtues.roll_temp matches 41..60 run function virtues:npc/court_guard_greet_3
execute if score @s virtues.roll_temp matches 61..80 run function virtues:npc/court_guard_greet_4
execute if score @s virtues.roll_temp matches 81..100 run function virtues:npc/court_guard_greet_5
