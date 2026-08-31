execute if score @s ROMASCOYN matches 1 run tellraw @s ["",{"text":"Romasco: A word of passage is needed at the last gate!","color":"yellow"}]
execute if score @s ROMASCOYN matches 2 run tellraw @s ["",{"text":"Romasco: Learn!","color":"yellow"}]

execute unless score @s ROMASCOYN matches 0 run scoreboard players set @s ROMASCOYN 0
