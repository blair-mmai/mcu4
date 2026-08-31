execute if score @s ADRUIDYN matches 1 run tellraw @s ["",{"text":"A.Druid: Now learn the mantra, and seek the green stone in 'Wrong'!","color":"yellow"}]
execute if score @s ADRUIDYN matches 2 run tellraw @s ["",{"text":"A.Druid: Ask Talfourd for he knows of the rune.","color":"yellow"}]

execute unless score @s ADRUIDYN matches 0 run scoreboard players set @s ADRUIDYN 0
