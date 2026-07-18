scoreboard players set @s virtues.in_circle 2

# Get the nearby marker's player_id into a temp holder
scoreboard players set $temp virtues.circle_owner_id 0
execute at @s as @e[type=minecraft:marker,tag=virtues.owner,distance=..5,limit=1,sort=nearest] run scoreboard players operation $temp virtues.circle_owner_id = @s virtues.player_id

# Find the online player whose player_id matches and tag them temporarily
execute as @a if score @s virtues.player_id = $temp virtues.circle_owner_id run tag @s add virtues.temp_owner

# Tellraw with owner name, or fallback if owner is offline/unknown
execute if entity @a[tag=virtues.temp_owner] run tellraw @s ["",{"text":"You are in ","color":"yellow"},{"selector":"@a[tag=virtues.temp_owner]","color":"yellow"},{"text":"'s circle.","color":"yellow"}]
execute unless entity @a[tag=virtues.temp_owner] run tellraw @s {"text":"You are in someone else's circle.","color":"yellow"}

# Clean up
tag @a remove virtues.temp_owner
