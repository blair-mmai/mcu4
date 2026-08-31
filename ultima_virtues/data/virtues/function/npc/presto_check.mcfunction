execute if score @s PRESTOYN matches 1 run tellraw @s ["",{"text":"Presto: What?","color":"yellow"}]
execute if score @s PRESTOYN matches 2 run tellraw @s ["",{"text":"Presto: Guess!","color":"yellow"}]

execute unless score @s PRESTOYN matches 0 run scoreboard players set @s PRESTOYN 0
