execute if score @s TALFOURDYN matches 1 run tellraw @s ["",{"text":"Talfourd: Doubtful.","color":"yellow"}]
execute if score @s TALFOURDYN matches 2 run tellraw @s ["",{"text":"Talfourd: Then do thy penance in a cell, and with the felon search ye well.","color":"yellow"}]

execute unless score @s TALFOURDYN matches 0 run scoreboard players set @s TALFOURDYN 0
