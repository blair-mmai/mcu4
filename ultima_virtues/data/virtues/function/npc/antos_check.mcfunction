execute if score @s ANTOSYN matches 1 run tellraw @s ["",{"text":"Father Antos: May thou succeed!","color":"yellow"}]
execute if score @s ANTOSYN matches 2 run tellraw @s ["",{"text":"Father Antos: Oh.","color":"yellow"}]

execute unless score @s ANTOSYN matches 0 run scoreboard players set @s ANTOSYN 0
