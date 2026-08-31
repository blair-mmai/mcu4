execute if score @s DAMONYN matches 1 run tellraw @s ["",{"text":"Damon: Well I hope so!","color":"yellow"}]
execute if score @s DAMONYN matches 2 run tellraw @s ["",{"text":"Damon: Oh, yes I can thou bandersnatch!","color":"yellow"}]

execute unless score @s DAMONYN matches 0 run scoreboard players set @s DAMONYN 0
