execute if score @s GIMBLEYN matches 1 run tellraw @s ["",{"text":"Gimble: Remember Azure knows of the rune!","color":"yellow"}]
execute if score @s GIMBLEYN matches 2 run tellraw @s ["",{"text":"Gimble: I am saddened.","color":"yellow"}]

execute unless score @s GIMBLEYN matches 0 run scoreboard players set @s GIMBLEYN 0
