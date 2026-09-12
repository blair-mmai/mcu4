execute if score @s ESTROLYN matches 1 run tellraw @s ["",{"text":"Estrol: I believe thou art boasting a lie!","color":"yellow"}]
execute if score @s ESTROLYN matches 2 run tellraw @s ["",{"text":"Estrol: Then speak to the judge in Yew!","color":"yellow"}]

execute unless score @s ESTROLYN matches 0 run scoreboard players set @s ESTROLYN 0
