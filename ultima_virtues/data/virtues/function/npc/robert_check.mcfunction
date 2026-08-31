execute if score @s ROBERTYN matches 1 run tellraw @s ["",{"text":"Robert Frasier: It is 'ver'! Seek ye now the other parts!","color":"yellow"}]
execute if score @s ROBERTYN matches 2 run tellraw @s ["",{"text":"Robert Frasier: Perhaps another time.","color":"yellow"}]

execute unless score @s ROBERTYN matches 0 run scoreboard players set @s ROBERTYN 0
