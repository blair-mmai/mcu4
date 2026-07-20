advancement revoke @s only virtues:compassion/xc_detector

# Bail out if a hostile mob was nearby this tick (set before advancements fire, persists even if mob just died)
execute if score @s virtues.near_hostile matches 1 run return 0

advancement grant @s only virtues:compassion/root
scoreboard players add @s virtues.announced_compassion 0
execute if score @s virtues.announced_compassion matches 0 run tellraw @a ["",{"selector":"@s","color":"white"},{"text":" has uncovered the advancements of Compassion.","color":"yellow"}]
execute if score @s virtues.announced_compassion matches 0 run scoreboard players set @s virtues.announced_compassion 1
scoreboard players add @s virtues.animal_punches 1

execute if score @s virtues.animal_punches matches 1 run advancement grant @s only virtues:compassion/puncher_of_animals
execute if score @s virtues.animal_punches matches 1 run advancement revoke @s only virtues:compassion/animal_lover
execute if score @s virtues.animal_punches matches 2 run advancement grant @s only virtues:compassion/repeat_offender
execute if score @s virtues.animal_punches matches 2 run advancement revoke @s only virtues:compassion/animal_lover
execute if score @s virtues.animal_punches matches 3 run advancement grant @s only virtues:compassion/cruel_by_nature
execute if score @s virtues.animal_punches matches 4.. run advancement grant @s only virtues:compassion/callous_brute

execute if score @s virtues.animal_punches matches 1 run effect give @s nausea 3 1
execute if score @s virtues.animal_punches matches 2 run effect give @s nausea 3 1
execute if score @s virtues.animal_punches matches 2 run effect give @s poison 3 1
execute if score @s virtues.animal_punches matches 3 run effect give @s nausea 6 1
execute if score @s virtues.animal_punches matches 3 run effect give @s poison 6 1
execute if score @s virtues.animal_punches matches 4.. run effect give @s nausea 15 1
execute if score @s virtues.animal_punches matches 4.. run effect give @s poison 15 1

tellraw @s {"text":"That was needlessly cruel.","color":"yellow"}
