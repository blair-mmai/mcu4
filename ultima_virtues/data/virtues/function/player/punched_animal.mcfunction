advancement revoke @s only virtues:compassion/xc_detector

# Bail out if a hostile mob is within melee range — player likely hit them, not a passive
scoreboard players set @s virtues.hit_hostile 0
execute at @s if entity @e[type=minecraft:zombie,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:skeleton,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:creeper,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:spider,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:cave_spider,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:witch,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:pillager,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:vindicator,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:evoker,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:ravager,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:husk,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:stray,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:drowned,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:phantom,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:warden,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:breeze,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:blaze,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:wither_skeleton,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:piglin_brute,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:slime,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:magma_cube,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:endermite,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
execute at @s if entity @e[type=minecraft:silverfish,distance=..4] run scoreboard players set @s virtues.hit_hostile 1
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
