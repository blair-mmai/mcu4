execute if score @s JAANAYN matches 1 run tellraw @s ["",{"text":"Jaana: Many a grave has been unjustly filled in the name of justice.","color":"yellow"}]
execute if score @s JAANAYN matches 2 run tellraw @s ["",{"text":"Jaana: Alas.","color":"yellow"}]

execute unless score @s JAANAYN matches 0 run scoreboard players set @s JAANAYN 0
