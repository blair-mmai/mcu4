execute if score @s DWPYN matches 1 run tellraw @s ["",{"text":"Dwp: Let it be as thine!","color":"yellow"}]
execute if score @s DWPYN matches 2 run tellraw @s ["",{"text":"Dwp: A pity.","color":"yellow"}]

execute unless score @s DWPYN matches 0 run scoreboard players set @s DWPYN 0
