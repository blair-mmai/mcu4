execute if score @s MERIDAYN matches 1 run tellraw @s ["",{"text":"Merida: Good!","color":"yellow"}]
execute if score @s MERIDAYN matches 2 run tellraw @s ["",{"text":"Merida: The shrine is on a lake to the east!","color":"yellow"}]

execute unless score @s MERIDAYN matches 0 run scoreboard players set @s MERIDAYN 0
