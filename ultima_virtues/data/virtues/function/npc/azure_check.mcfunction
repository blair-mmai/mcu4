execute if score @s AZUREYN matches 1 run tellraw @s ["",{"text":"Azure: Well, I carved it!","color":"yellow"}]
execute if score @s AZUREYN matches 2 run tellraw @s ["",{"text":"Azure: It's around somewhere.","color":"yellow"}]

execute unless score @s AZUREYN matches 0 run scoreboard players set @s AZUREYN 0
