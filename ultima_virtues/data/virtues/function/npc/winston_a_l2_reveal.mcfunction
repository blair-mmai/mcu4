title @s title {"text":"Iron Smelting...","color":"white"}
title @s subtitle {"text":"You can see that iron ingots aren't so easy to make, eh?","color":"white"}
tellraw @s ["",{"text":"Winston A.: You can see that iron ingots aren't so easy to make, eh?","color":"yellow"}]
xp add @s 5 points
advancement revoke @s only virtues:compassion/npc/trade_winston_a_l2
