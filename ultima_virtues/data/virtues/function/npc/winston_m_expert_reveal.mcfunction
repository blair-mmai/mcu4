execute if score @s virtues.miner_tier matches ..2 run scoreboard players set @s virtues.miner_tier 3
tellraw @s ["",{"text":"Winston M.: You are now an Expert Miner!","color":"yellow"}]
advancement grant @s only virtues:mining/expert_miner
