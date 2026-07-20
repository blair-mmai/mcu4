# Detect chest opens while in another player's circle
scoreboard players add @s virtues.chests_opened_baseline 0
scoreboard players operation @s virtues.chests_opened_delta = @s virtues.chests_opened
scoreboard players operation @s virtues.chests_opened_delta -= @s virtues.chests_opened_baseline
execute if score @s virtues.chests_opened_delta matches 1.. if score @s virtues.in_circle matches 2 run advancement grant @s only virtues:core/thats_not_yours
execute if score @s virtues.chests_opened_delta matches 1.. if score @s virtues.in_circle matches 2 run tellraw @s {"text":"That chest belongs to someone else.","color":"red"}
execute if score @s virtues.in_circle matches 2 run function virtues:player/check_gifting
execute if score @s virtues.chests_opened_delta matches 1.. run scoreboard players operation @s virtues.chests_opened_baseline += @s virtues.chests_opened_delta

scoreboard players add @s virtues.animals_bred_baseline 0
scoreboard players operation @s virtues.animals_bred_delta = @s virtues.animals_bred
scoreboard players operation @s virtues.animals_bred_delta -= @s virtues.animals_bred_baseline
execute if score @s virtues.animals_bred_delta matches 1.. run function virtues:player/grant_animal_lover
execute if score @s virtues.animals_bred_delta matches 1.. run scoreboard players operation @s virtues.animals_bred_baseline += @s virtues.animals_bred_delta
