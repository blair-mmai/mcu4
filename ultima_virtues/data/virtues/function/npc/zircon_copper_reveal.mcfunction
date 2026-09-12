title @s title {"text":"Metallurgy...","color":"white"}
title @s subtitle {"text":"Only Minoc's masters truly know copper!","color":"white"}
tellraw @s ["",{"text":"Zircon: Only Minoc's masters truly know copper!","color":"yellow"}]
scoreboard players set @s virtues.copper_metallurgist 1
advancement grant @s only virtues:metallurgy/copper_metallurgist
xp add @s 5 points
advancement revoke @s only virtues:minoc/trade_zircon_copper
