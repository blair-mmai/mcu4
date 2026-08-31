execute if score @s HEYWOODYN matches 1 run tellraw @s ["",{"text":"Heywood: Thou shalt find shame!","color":"yellow"}]
execute if score @s HEYWOODYN matches 2 run tellraw @s ["",{"text":"Heywood: A proud soul surely knows not its worth!","color":"yellow"}]

execute unless score @s HEYWOODYN matches 0 run scoreboard players set @s HEYWOODYN 0
