execute if score @s FRIDAYN matches 1 run tellraw @s ["",{"text":"Frida: Thou art kind and just!","color":"yellow"}]
execute if score @s FRIDAYN matches 2 run tellraw @s ["",{"text":"Frida: Evil wretch, curse thee!","color":"yellow"}]

execute unless score @s FRIDAYN matches 0 run scoreboard players set @s FRIDAYN 0
