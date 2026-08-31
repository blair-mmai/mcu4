execute if score @s KATRINAYN matches 1 run tellraw @s ["",{"text":"Katrina: Undo that or your efforts are meaningless.","color":"yellow"}]
execute if score @s KATRINAYN matches 2 run tellraw @s ["",{"text":"Katrina: The rune of Humility is in the Lycaeum.  Ignore temptations.","color":"yellow"}]

execute unless score @s KATRINAYN matches 0 run scoreboard players set @s KATRINAYN 0
