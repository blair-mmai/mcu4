title @s title {"text":"Here's your change.","color":"white"}
title @s subtitle {"text":"Come back when you'd like a room.","color":"white"}
tellraw @s ["",{"text":"Tyrone: Here's your change.","color":"yellow"}]
xp add @s 5 points
advancement revoke @s only virtues:skara_brae/trade_tyrone_l1
