execute if score @s RIGMOREYN matches 1 run tellraw @s ["",{"text":"Rigmore: Enter and find thy path.","color":"yellow"}]
execute if score @s RIGMOREYN matches 1 run xp add @s 20 points
execute if score @s RIGMOREYN matches 2 run tellraw @s ["",{"text":"Rigmore: Then this is the wrong place for you!","color":"yellow"}]
execute if score @s RIGMOREYN matches 2 run xp add @s -50 points
execute unless score @s RIGMOREYN matches 0 run scoreboard players set @s RIGMOREYN 0
