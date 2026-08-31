execute if score @s NIGELYN matches 1 run tellraw @s ["",{"text":"Nigel: That's right. It's RECALL.","color":"yellow"}]
execute if score @s NIGELYN matches 2 run tellraw @s ["",{"text":"Nigel: It's RECALL. To resurrect the recently dead.","color":"yellow"}]

execute unless score @s NIGELYN matches 0 run scoreboard players set @s NIGELYN 0
