execute if score @s AMBULEYN matches 1 run tellraw @s ["",{"text":"Ambule: Dear kind soul.","color":"yellow"}]
execute if score @s AMBULEYN matches 2 run tellraw @s ["",{"text":"Ambule: Stingy, I know thou hast many!","color":"yellow"}]

execute unless score @s AMBULEYN matches 0 run scoreboard players set @s AMBULEYN 0
