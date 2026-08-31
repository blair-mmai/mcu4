execute if score @s RANGERYN matches 1 run tellraw @s ["",{"text":"Ranger Rick: Seldom is heard a discouraging word!","color":"yellow"}]
execute if score @s RANGERYN matches 2 run tellraw @s ["",{"text":"Ranger Rick: Ah, what'ya have to ruin it for!","color":"yellow"}]

execute unless score @s RANGERYN matches 0 run scoreboard players set @s RANGERYN 0
