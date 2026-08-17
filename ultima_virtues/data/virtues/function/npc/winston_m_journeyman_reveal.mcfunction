execute if score @s virtues.miner_tier matches ..1 run scoreboard players set @s virtues.miner_tier 2
tellraw @s ["",{"text":"Winston M.: You are now a Journeyman Miner!","color":"yellow"}]
advancement grant @s only virtues:mining/journeyman_miner
