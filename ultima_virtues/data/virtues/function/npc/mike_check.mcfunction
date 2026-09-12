execute if score @s MIKEYN matches 1 run tellraw @s ["",{"text":"Mike Ward: The rune of spirituality is not in Skara Brae.","color":"yellow"}]
execute if score @s MIKEYN matches 2 run tellraw @s ["",{"text":"Mike Ward: The rune of spirituality is not in Skara Brae.","color":"yellow"}]

execute unless score @s MIKEYN matches 0 run scoreboard players set @s MIKEYN 0
