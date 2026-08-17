title @s title {"text":"About this bottle...","color":"white"}
title @s subtitle {"text":"Fill it with water and trade with Celest!","color":"white"}
tellraw @s ["",{"text":"Welcomer: Fill it with water and trade with Celest!","color":"yellow"}]
xp add @s 4 points
execute store result score $welcomer_xp_temp virtues.xp_temp run data get entity @e[type=minecraft:villager,name="Welcomer",limit=1] Xp
scoreboard players add $welcomer_xp_temp virtues.xp_temp 1
execute as @e[type=minecraft:villager,name="Welcomer",limit=1] store result entity @s Xp int 1 run scoreboard players get $welcomer_xp_temp virtues.xp_temp
advancement revoke @s only virtues:compassion/npc/trade_welcomer_l2
