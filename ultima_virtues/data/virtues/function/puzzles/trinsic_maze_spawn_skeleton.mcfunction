scoreboard players set @s virtues.egg_present 0
summon minecraft:skeleton ~ ~1 ~ {Tags:["trinsic_maze_new_skeleton"]}
execute as @e[type=minecraft:skeleton,tag=trinsic_maze_new_skeleton,limit=1] run item replace entity @s armor.head with minecraft:leather_helmet
tag @e[tag=trinsic_maze_new_skeleton] remove trinsic_maze_new_skeleton
