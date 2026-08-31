execute if score @s PINRODYN matches 1 run tellraw @s ["",{"text":"Pinrod: Good, the druids chant the mantra!","color":"yellow"}]
execute if score @s PINRODYN matches 2 run tellraw @s ["",{"text":"Pinrod: Cad.","color":"yellow"}]

execute unless score @s PINRODYN matches 0 run scoreboard players set @s PINRODYN 0
