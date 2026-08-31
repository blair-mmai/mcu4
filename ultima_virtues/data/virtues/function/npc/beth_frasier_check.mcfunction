execute if score @s BETHYN matches 1 run tellraw @s ["",{"text":"Beth Frasier: Then may thou find it!","color":"yellow"}]
execute if score @s BETHYN matches 2 run tellraw @s ["",{"text":"Beth Frasier: Then thou shalt not find it!","color":"yellow"}]

execute unless score @s BETHYN matches 0 run scoreboard players set @s BETHYN 0
