scoreboard players add @s virtues.hum_tab_done 0
scoreboard players add @s virtues.dirt_baseline 0
scoreboard players add @s virtues.grass_baseline 0
execute if score @s virtues.hum_tab_done matches 0 run scoreboard players operation @s virtues.log_delta = @s virtues.mined_dirt
execute if score @s virtues.hum_tab_done matches 0 run scoreboard players operation @s virtues.log_delta -= @s virtues.dirt_baseline
execute if score @s virtues.hum_tab_done matches 0 if score @s virtues.log_delta matches 1.. run function virtues:player/first_dirt
execute if score @s virtues.hum_tab_done matches 0 run scoreboard players operation @s virtues.log_delta = @s virtues.mined_grass
execute if score @s virtues.hum_tab_done matches 0 run scoreboard players operation @s virtues.log_delta -= @s virtues.grass_baseline
execute if score @s virtues.hum_tab_done matches 0 if score @s virtues.log_delta matches 1.. run function virtues:player/first_dirt

