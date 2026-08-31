execute if score @s BEGGARYN matches 1 run tellraw @s ["",{"text":"Beggar: Thou art in the wrong cell.","color":"yellow"}]
execute if score @s BEGGARYN matches 2 run tellraw @s ["",{"text":"Beggar: Good.","color":"yellow"}]

execute unless score @s BEGGARYN matches 0 run scoreboard players set @s BEGGARYN 0
