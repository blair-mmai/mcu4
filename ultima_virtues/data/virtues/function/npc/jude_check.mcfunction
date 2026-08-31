execute if score @s JUDEYN matches 1 run tellraw @s ["",{"text":"Jude: It can be found at lat-P'F\" long-M'F\" on the darkest night!","color":"yellow"}]
execute if score @s JUDEYN matches 2 run tellraw @s ["",{"text":"Jude: Oh.","color":"yellow"}]

execute unless score @s JUDEYN matches 0 run scoreboard players set @s JUDEYN 0
