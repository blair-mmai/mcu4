execute if score @s SWINDRIKYN matches 1 run tellraw @s ["",{"text":"Swindrik: You must read to use moongates!","color":"yellow"}]
execute if score @s SWINDRIKYN matches 1 run xp add @s 10 points
execute if score @s SWINDRIKYN matches 1 store result score $swindrik_xp_temp virtues.xp_temp run data get entity @e[type=minecraft:villager,name="Swindrik",limit=1] Xp
execute if score @s SWINDRIKYN matches 1 run scoreboard players add $swindrik_xp_temp virtues.xp_temp 10
execute if score @s SWINDRIKYN matches 1 as @e[type=minecraft:villager,name="Swindrik",limit=1] store result entity @s Xp int 1 run scoreboard players get $swindrik_xp_temp virtues.xp_temp

execute if score @s SWINDRIKYN matches 2 run tellraw @s ["",{"text":"Swindrik: Well, you can always walk.","color":"yellow"}]

execute unless score @s SWINDRIKYN matches 0 run scoreboard players set @s SWINDRIKYN 0
