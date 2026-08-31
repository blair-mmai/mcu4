execute if score @s SHENTISYN matches 1 run tellraw @s ["",{"text":"Shentis: Then perhaps thou shalt become an avatar!","color":"yellow"}]
execute if score @s SHENTISYN matches 2 run tellraw @s ["",{"text":"Shentis: An avatar thou art not!","color":"yellow"}]

execute unless score @s SHENTISYN matches 0 run scoreboard players set @s SHENTISYN 0
