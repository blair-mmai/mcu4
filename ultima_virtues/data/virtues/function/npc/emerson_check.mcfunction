execute if score @s EMERSONYN matches 1 run tellraw @s ["",{"text":"Emerson: A good path.","color":"yellow"}]
execute if score @s EMERSONYN matches 2 run tellraw @s ["",{"text":"Emerson: An evil path!","color":"yellow"}]

execute unless score @s EMERSONYN matches 0 run scoreboard players set @s EMERSONYN 0
