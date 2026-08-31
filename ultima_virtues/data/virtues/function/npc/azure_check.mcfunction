execute if score @s AZUREYN matches 1 run tellraw @s ["",{"text":"Azure: Which?","color":"yellow"}]
execute if score @s AZUREYN matches 2 run tellraw @s ["",{"text":"Azure: I see.","color":"yellow"}]

execute unless score @s AZUREYN matches 0 run scoreboard players set @s AZUREYN 0
