title @s title {"text":"Hey, Psst…","color":"white"}
title @s subtitle {"text":"The Rune is at the end of a Hallway!","color":"white"}
tellraw @s ["",{"text":"The Rune is at the end of a Hallway!","color":"yellow"}]
xp add @s 5 points
advancement revoke @s only virtues:compassion/npc/trade_pepper
