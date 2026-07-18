# Runs as player (@s=player, position=player). Checks if the nearby marker belongs to this player.
execute at @s as @e[type=minecraft:marker,tag=virtues.owner,distance=..5,limit=1,sort=nearest] if score @s virtues.player_id = @p[distance=..5,limit=1,sort=nearest] virtues.player_id run scoreboard players set @p[distance=..5,limit=1,sort=nearest] virtues.circle_check 1
execute if score @s virtues.circle_check matches 1 run function virtues:player/enter_circle
scoreboard players set @s virtues.circle_check 0
