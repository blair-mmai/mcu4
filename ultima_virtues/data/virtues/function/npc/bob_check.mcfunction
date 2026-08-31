execute if score @s BOBYN matches 1 run tellraw @s ["",{"text":"Bob the Beggar: Then please share it with me!","color":"yellow"}]
execute if score @s BOBYN matches 2 run tellraw @s ["",{"text":"Bob the Beggar: Then join me and we can beg together!","color":"yellow"}]

execute unless score @s BOBYN matches 0 run scoreboard players set @s BOBYN 0
