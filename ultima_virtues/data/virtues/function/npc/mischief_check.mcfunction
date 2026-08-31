execute if score @s MISCHIEFYN matches 1 run tellraw @s ["",{"text":"Mischief: Then ask Merida of the mantra!","color":"yellow"}]
execute if score @s MISCHIEFYN matches 2 run tellraw @s ["",{"text":"Mischief: Return when thou dost find it!","color":"yellow"}]

execute unless score @s MISCHIEFYN matches 0 run scoreboard players set @s MISCHIEFYN 0
