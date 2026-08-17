execute if score @s virtues.miner_tier matches ..0 run scoreboard players set @s virtues.miner_tier 1
title @s title {"text":"Apprentice Miner!","color":"white"}
title @s subtitle {"text":"A badge of honor - no effect on its own.","color":"white"}
tellraw @s ["",{"text":"Winston M.: You are now an Apprentice Miner!","color":"yellow"}]
