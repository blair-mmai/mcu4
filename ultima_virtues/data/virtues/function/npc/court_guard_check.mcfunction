execute if score @s COURTGUARDYN matches 1 run tellraw @s ["",{"text":"Court Guard: Then enter.","color":"yellow"}]
execute if score @s COURTGUARDYN matches 2 run tellraw @s ["",{"text":"Court Guard: Then do not disturb the proceedings!","color":"yellow"}]

execute unless score @s COURTGUARDYN matches 0 run scoreboard players set @s COURTGUARDYN 0
