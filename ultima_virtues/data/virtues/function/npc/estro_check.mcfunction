execute if score @s ESTROYN matches 1 run tellraw @s ["",{"text":"Estro: I believe thou art boasting a lie!","color":"yellow"}]
execute if score @s ESTROYN matches 2 run tellraw @s ["",{"text":"Estro: Then speak to the judge in Yew!","color":"yellow"}]

execute unless score @s ESTROYN matches 0 run scoreboard players set @s ESTROYN 0
