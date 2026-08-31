execute if score @s GRANTEDYN matches 1 run tellraw @s ["",{"text":"Granted: In return I will tell thee that the ankh knows of the rune and my friend Ambule knows the mantra!","color":"yellow"}]
execute if score @s GRANTEDYN matches 2 run tellraw @s ["",{"text":"Granted: Jerk!","color":"yellow"}]

execute unless score @s GRANTEDYN matches 0 run scoreboard players set @s GRANTEDYN 0
