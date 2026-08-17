title @s title {"text":"About this Potion...","color":"white"}
title @s subtitle {"text":"This potion will teleport you back to our portal!","color":"white"}
tellraw @s ["",{"text":"Welcomer: This potion will teleport you back to our portal!","color":"yellow"}]
xp add @s 4 points
execute store result score $welcomer_xp_temp virtues.xp_temp run data get entity @e[type=minecraft:villager,name="Welcomer",limit=1] Xp
scoreboard players add $welcomer_xp_temp virtues.xp_temp 1
execute as @e[type=minecraft:villager,name="Welcomer",limit=1] store result entity @s Xp int 1 run scoreboard players get $welcomer_xp_temp virtues.xp_temp
advancement revoke @s only virtues:compassion/npc/trade_welcomer_l2
