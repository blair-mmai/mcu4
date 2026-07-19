scoreboard players add @s virtues.total_logs_base 0
scoreboard players operation @s virtues.log_delta = @s virtues.mined_oak
scoreboard players operation @s virtues.log_delta += @s virtues.mined_birch
scoreboard players operation @s virtues.log_delta += @s virtues.mined_spruce
scoreboard players operation @s virtues.log_delta += @s virtues.mined_jungle
scoreboard players operation @s virtues.log_delta += @s virtues.mined_acacia
scoreboard players operation @s virtues.log_delta += @s virtues.mined_dark_oak
scoreboard players operation @s virtues.log_delta -= @s virtues.total_logs_base
execute if score @s virtues.log_delta matches 1.. run damage @s 2
execute if score @s virtues.log_delta matches 1.. run function virtues:player/open_vegan_tab
execute if score @s virtues.log_delta matches 1.. run advancement grant @s only virtues:vegan/tree_abuser
execute if score @s virtues.log_delta matches 1.. run scoreboard players operation @s virtues.total_logs_base += @s virtues.log_delta
