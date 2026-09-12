title @s title {"text":"Metallurgy...","color":"white"}
title @s subtitle {"text":"The real secret of iron, from Minoc itself!","color":"white"}
tellraw @s ["",{"text":"Zircon: The real secret of iron, from Minoc itself!","color":"yellow"}]
scoreboard players set @s virtues.iron_metallurgist 1
advancement grant @s only virtues:metallurgy/iron_metallurgist
xp add @s 5 points
advancement revoke @s only virtues:minoc/trade_zircon_iron
