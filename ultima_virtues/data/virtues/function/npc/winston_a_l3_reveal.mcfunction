title @s title {"text":"Metallurgy...","color":"white"}
title @s subtitle {"text":"Until you KNOW iron, you're not fit to hold ingots!","color":"white"}
tellraw @s ["",{"text":"Winston A.: Until you KNOW iron, you're not fit to hold ingots!","color":"yellow"}]
scoreboard players set @s virtues.iron_metallurgist 1
advancement grant @s only virtues:metallurgy/iron_metallurgist
xp add @s 5 points
advancement revoke @s only virtues:compassion/npc/trade_winston_a_l3
