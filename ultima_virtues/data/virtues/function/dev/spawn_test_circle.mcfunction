summon minecraft:marker ~ ~ ~6
tag @e[type=minecraft:marker,distance=..8,limit=1,sort=nearest,tag=!virtues.owner] add virtues.owner
scoreboard players set @e[type=minecraft:marker,tag=virtues.owner,distance=..8,limit=1,sort=nearest] virtues.player_id 999
tellraw @s {"text":"Spawned a test circle marker (player_id 999) 6 blocks north. Walk to it to enter it.","color":"gray","italic":true}
