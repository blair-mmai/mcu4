execute if score @s SHYLOCKYN matches 1 run tellraw @s ["",{"text":"Shylock the Meek: Oh... please...","color":"yellow"}]
execute if score @s SHYLOCKYN matches 2 run tellraw @s ["",{"text":"Shylock the Meek: Oh... please...","color":"yellow"}]

execute unless score @s SHYLOCKYN matches 0 run scoreboard players set @s SHYLOCKYN 0
