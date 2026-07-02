scoreboard players set @s virtues.firstjoin 1
scoreboard players set $world virtues.world_init 0
scoreboard players set @s virtues.tree_chest_given 0
effect clear @s
kill @e[type=minecraft:armor_stand,tag=virtues.area,distance=..50]
tellraw @s {"text":"Reset done. Exit, rejoin, then run /function virtues:dev/start_fresh","color":"yellow"}
