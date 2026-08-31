execute if score @s TYMUSYN matches 1 run tellraw @s ["",{"text":"Tymus: That's right. A BUNCH. I, ahem, know too.","color":"yellow"}]
execute if score @s TYMUSYN matches 2 run tellraw @s ["",{"text":"Tymus: Travel and learn!","color":"yellow"}]

execute unless score @s TYMUSYN matches 0 run scoreboard players set @s TYMUSYN 0
