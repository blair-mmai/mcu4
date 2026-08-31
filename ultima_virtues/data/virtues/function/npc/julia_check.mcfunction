execute if score @s JULIAYN matches 1 run tellraw @s ["",{"text":"Julia: I would join thee.","color":"yellow"}]
execute if score @s JULIAYN matches 2 run tellraw @s ["",{"text":"Julia: Bum.","color":"yellow"}]

execute unless score @s JULIAYN matches 0 run scoreboard players set @s JULIAYN 0
