tp @s SPAWN_X SPAWN_Y SPAWN_Z
particle minecraft:portal SPAWN_X SPAWN_Y SPAWN_Z 1 1 1 0.05 80 force
playsound minecraft:block.portal.travel master @s ~ ~ ~ 1 1
scoreboard players set @s moongate.cooldown 40
