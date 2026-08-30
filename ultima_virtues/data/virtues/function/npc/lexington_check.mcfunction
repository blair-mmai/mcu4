execute if score @s LEXINGTONYN matches 1 run tellraw @s ["",{"text":"Lexington: Good.  Practice often.","color":"yellow"}]
execute if score @s LEXINGTONYN matches 2 run tellraw @s ["",{"text":"Lexington: Crouch with a rune and 'tellraw' your mantra.","color":"yellow"}]

execute unless score @s LEXINGTONYN matches 0 run scoreboard players set @s LEXINGTONYN 0
