execute if score @s SANTAYANAYN matches 1 run tellraw @s ["",{"text":"Santayana: Doubtful!","color":"yellow"}]
execute if score @s SANTAYANAYN matches 2 run tellraw @s ["",{"text":"Santayana: Few can, but strive to do so!","color":"yellow"}]

execute unless score @s SANTAYANAYN matches 0 run scoreboard players set @s SANTAYANAYN 0
