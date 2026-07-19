execute if score @s virtues.in_circle matches 0 run return 0
scoreboard players set $temp virtues.circle_owner_id 0
execute at @s as @e[type=minecraft:marker,tag=virtues.owner,distance=..5,limit=1,sort=nearest] run scoreboard players operation $temp virtues.circle_owner_id = @s virtues.player_id
execute as @a if score @s virtues.player_id = $temp virtues.circle_owner_id run tag @s add virtues.temp_owner
execute if score @s virtues.in_circle matches 2 if entity @a[tag=virtues.temp_owner] run tellraw @s ["",{"text":"You took ","color":"yellow"},{"translate":"item.minecraft.golden_carrot","color":"white"},{"text":" from ","color":"yellow"},{"selector":"@a[tag=virtues.temp_owner]","color":"white"},{"text":"'s chest.","color":"yellow"}]
execute if score @s virtues.in_circle matches 2 unless entity @a[tag=virtues.temp_owner] run tellraw @s ["",{"text":"You took ","color":"yellow"},{"translate":"item.minecraft.golden_carrot","color":"white"},{"text":" from someone else's chest.","color":"yellow"}]
tag @a remove virtues.temp_owner
