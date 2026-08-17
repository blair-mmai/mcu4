# Yes: +1 villagerXP to Welcomer, +5 playerXP
execute if score @s WELCOMERYN matches 1 run tellraw @s ["",{"text":"Welcomer: Celest will trade ye for one!","color":"yellow"}]
execute if score @s WELCOMERYN matches 1 run xp add @s 5 points
execute if score @s WELCOMERYN matches 1 store result score $welcomer_xp_temp virtues.xp_temp run data get entity @e[type=minecraft:villager,name="Welcomer",limit=1] Xp
execute if score @s WELCOMERYN matches 1 run scoreboard players add $welcomer_xp_temp virtues.xp_temp 1
execute if score @s WELCOMERYN matches 1 as @e[type=minecraft:villager,name="Welcomer",limit=1] store result entity @s Xp int 1 run scoreboard players get $welcomer_xp_temp virtues.xp_temp

# No: -50 playerXP
execute if score @s WELCOMERYN matches 2 run tellraw @s ["",{"text":"Welcomer: Yeah, you're prolly not worth it...","color":"yellow"}]
execute if score @s WELCOMERYN matches 2 run xp add @s -50 points

execute unless score @s WELCOMERYN matches 0 run scoreboard players set @s WELCOMERYN 0
