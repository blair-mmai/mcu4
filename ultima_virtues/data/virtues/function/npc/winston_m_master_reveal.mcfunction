execute if score @s virtues.miner_tier matches ..3 run scoreboard players set @s virtues.miner_tier 4
title @s title {"text":"Master Miner!","color":"white"}
title @s subtitle {"text":"There is nothing left for Winston M. to teach you.","color":"white"}
tellraw @s ["",{"text":"Winston M.: You are now a Master Miner!","color":"yellow"}]
advancement grant @s only virtues:mining/master_miner
