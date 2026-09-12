execute if score @s ALEXYN matches 1 run tellraw @s ["",{"text":"Alex: You must never expect anything back.","color":"yellow"}]
execute if score @s ALEXYN matches 2 run tellraw @s ["",{"text":"Alex: Some don't.  But not around here.","color":"yellow"}]

execute unless score @s ALEXYN matches 0 run scoreboard players set @s ALEXYN 0
