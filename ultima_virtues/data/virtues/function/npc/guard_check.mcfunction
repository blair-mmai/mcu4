execute if score @s GUARDYN matches 1 run tellraw @s ["",{"text":"Guard: Unlikely!","color":"yellow"}]
execute if score @s GUARDYN matches 2 run tellraw @s ["",{"text":"Guard: Strive to be!","color":"yellow"}]

execute unless score @s GUARDYN matches 0 run scoreboard players set @s GUARDYN 0
