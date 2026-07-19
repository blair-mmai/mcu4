scoreboard players add @s virtues.total_logs_base 0
scoreboard players operation @s virtues.log_delta = @s virtues.mined_oak
scoreboard players operation @s virtues.log_delta += @s virtues.mined_birch
scoreboard players operation @s virtues.log_delta += @s virtues.mined_spruce
scoreboard players operation @s virtues.log_delta += @s virtues.mined_jungle
scoreboard players operation @s virtues.log_delta += @s virtues.mined_acacia
scoreboard players operation @s virtues.log_delta += @s virtues.mined_dark_oak
scoreboard players operation @s virtues.log_delta -= @s virtues.total_logs_base
execute if score @s virtues.log_delta matches 1.. run damage @s 1
execute if score @s virtues.log_delta matches 1.. run item damage entity @s weapon.mainhand 9 minecraft:player
execute if score @s virtues.log_delta matches 1.. run advancement grant @s only virtues:vegan/root
execute if score @s virtues.log_delta matches 1.. run advancement grant @s only virtues:vegan/tree_abuser
scoreboard players add @s virtues.announced_vegan 0
execute if score @s virtues.log_delta matches 1.. if score @s virtues.announced_vegan matches 0 run tellraw @a ["",{"selector":"@s","color":"white"},{"text":" has uncovered the advancements of Vegan.","color":"yellow"}]
execute if score @s virtues.log_delta matches 1.. if score @s virtues.announced_vegan matches 0 run scoreboard players set @s virtues.announced_vegan 1
execute if score @s virtues.log_delta matches 1.. run scoreboard players operation @s virtues.total_logs_base += @s virtues.log_delta
