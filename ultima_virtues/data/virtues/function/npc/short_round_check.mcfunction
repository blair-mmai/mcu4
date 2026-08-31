execute if score @s SHORTYN matches 1 run tellraw @s ["",{"text":"Short Round: Write to Lord British and tell him!!!","color":"yellow"}]
execute if score @s SHORTYN matches 2 run tellraw @s ["",{"text":"Short Round: I am so sorry we all wish you would!","color":"yellow"}]

execute unless score @s SHORTYN matches 0 run scoreboard players set @s SHORTYN 0
