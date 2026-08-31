execute if score @s ZIRCONYN matches 1 run tellraw @s ["",{"text":"Zircon: Ask at the counter!","color":"yellow"}]
execute if score @s ZIRCONYN matches 2 run tellraw @s ["",{"text":"Zircon: Hmmm.","color":"yellow"}]

execute unless score @s ZIRCONYN matches 0 run scoreboard players set @s ZIRCONYN 0
