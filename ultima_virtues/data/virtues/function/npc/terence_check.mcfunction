execute if score @s TERENCEYN matches 1 run tellraw @s ["",{"text":"Lord Terence: Which book?","color":"yellow"}]
execute if score @s TERENCEYN matches 2 run tellraw @s ["",{"text":"Lord Terence: Feel free to browse.","color":"yellow"}]

execute unless score @s TERENCEYN matches 0 run scoreboard players set @s TERENCEYN 0
