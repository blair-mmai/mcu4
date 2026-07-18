scoreboard players add $world virtues.next_player_id 1
scoreboard players operation @s virtues.player_id = $world virtues.next_player_id
execute at @s as @e[type=minecraft:marker,tag=virtues.owner,distance=..20,limit=1,sort=nearest] run scoreboard players operation @s virtues.player_id = @p[distance=..20,limit=1,sort=nearest] virtues.player_id
