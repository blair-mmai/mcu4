execute if score @s FAULTLESSYN matches 1 run tellraw @s ["",{"text":"Faultless: Not good. Pride is a grave sin!","color":"yellow"}]
execute if score @s FAULTLESSYN matches 2 run tellraw @s ["",{"text":"Faultless: Good. Pride is evil's favorite sin!","color":"yellow"}]

execute unless score @s FAULTLESSYN matches 0 run scoreboard players set @s FAULTLESSYN 0
