execute if score @s virtues.miner_tier matches ..1 run scoreboard players set @s virtues.miner_tier 2
title @s title {"text":"Journeyman Miner!","color":"white"}
title @s subtitle {"text":"Cobblestone comes much more easily to you now.","color":"white"}
tellraw @s ["",{"text":"Winston M.: You are now a Journeyman Miner!","color":"yellow"}]
advancement grant @s only virtues:mining/journeyman_miner
