execute if score @s VIRTUEBANEYN matches 1 run tellraw @s ["",{"text":"Virtuebane: Good! Welcome to Hell.","color":"yellow"}]
execute if score @s VIRTUEBANEYN matches 2 run tellraw @s ["",{"text":"Virtuebane: Ah, well.  Sinners are the best winnersss…","color":"yellow"}]

execute unless score @s VIRTUEBANEYN matches 0 run scoreboard players set @s VIRTUEBANEYN 0
