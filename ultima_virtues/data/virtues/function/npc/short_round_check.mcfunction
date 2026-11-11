execute if score @s SHORTYN matches 1 run tellraw @s ["",{"text":"Short Round: Hm. Where can one learn Metallurgy?","color":"yellow"}]
execute if score @s SHORTYN matches 2 run tellraw @s ["",{"text":"Short Round: Justin will trade a cookie for a table","color":"yellow"}]

execute unless score @s SHORTYN matches 0 run scoreboard players set @s SHORTYN 0
