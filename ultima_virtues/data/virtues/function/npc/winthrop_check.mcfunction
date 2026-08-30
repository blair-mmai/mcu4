execute if score @s WINTHROPYN matches 1 run tellraw @s ["",{"text":"Winthrop: Ask Terrin of the rune.","color":"yellow"}]
execute if score @s WINTHROPYN matches 1 run xp add @s 2 points
execute if score @s WINTHROPYN matches 2 run tellraw @s ["",{"text":"Winthrop: Find Terrin and ask of the rune!","color":"yellow"}]
execute if score @s WINTHROPYN matches 2 run xp add @s 2 points
execute unless score @s WINTHROPYN matches 0 run scoreboard players set @s WINTHROPYN 0
