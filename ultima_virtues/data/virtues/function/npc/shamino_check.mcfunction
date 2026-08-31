execute if score @s SHAMINOYN matches 1 run tellraw @s ["",{"text":"Shamino: Some things take forever but brick by brick mountains can be built!","color":"yellow"}]
execute if score @s SHAMINOYN matches 2 run tellraw @s ["",{"text":"Shamino: Alas.","color":"yellow"}]

execute unless score @s SHAMINOYN matches 0 run scoreboard players set @s SHAMINOYN 0
