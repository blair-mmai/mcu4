advancement revoke @s only virtues:compassion/xc_detector

# Bail out if a hostile mob is within range — covers melee, knockback, and bow range
scoreboard players set @s virtues.hit_hostile 0
execute at @s if entity @e[type=#virtues:hostile_mobs,distance=..20] run scoreboard players set @s virtues.hit_hostile 1
execute if score @s virtues.hit_hostile matches 1 run return 0

advancement grant @s only virtues:compassion/root
scoreboard players add @s virtues.animal_punches 1

execute if score @s virtues.animal_punches matches 1 run advancement grant @s only virtues:compassion/xc1
execute if score @s virtues.animal_punches matches 2 run advancement grant @s only virtues:compassion/xc2
execute if score @s virtues.animal_punches matches 3 run advancement grant @s only virtues:compassion/xc3
execute if score @s virtues.animal_punches matches 4.. run advancement grant @s only virtues:compassion/callous_brute

execute if score @s virtues.animal_punches matches 1 run effect give @s nausea 3 1
execute if score @s virtues.animal_punches matches 2 run effect give @s nausea 3 1
execute if score @s virtues.animal_punches matches 2 run effect give @s poison 3 1
execute if score @s virtues.animal_punches matches 3 run effect give @s nausea 6 1
execute if score @s virtues.animal_punches matches 3 run effect give @s poison 6 1
execute if score @s virtues.animal_punches matches 4.. run effect give @s nausea 15 1
execute if score @s virtues.animal_punches matches 4.. run effect give @s poison 15 1

tellraw @s {"text":"That was needlessly cruel.","color":"yellow"}
