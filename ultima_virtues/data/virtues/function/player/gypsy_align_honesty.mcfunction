# virtues:player/gypsy_align_honesty
# Resolved outcome: Honesty -> Moonglow (moongate near Moonglow, per Blair's
# LocationStarts tab).

tag @s add aligned_honesty
effect clear @s minecraft:blindness
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42

execute at @s as @e[type=minecraft:marker,tag=virtues.owner,distance=..5,limit=1,sort=nearest] if score @s virtues.player_id = @p[distance=..5,limit=1,sort=nearest] virtues.player_id at @s run loot insert ~ ~ ~ loot virtues:chests/gypsy_reward_honesty

give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[418,107,-291],dimension:"minecraft:overworld"},tracked:false}]

title @s title {"text":"","color":"white"}
title @s subtitle {"text":"You feel most drawn to the plain truth of things.","color":"gold","italic":true}
tellraw @s ["",{"text":"You feel most drawn to the plain truth of things.","color":"gold","italic":true}]
tellraw @s ["",{"text":"The stone in your pocket catches the light oddly. Someone who deals in enchantment might know why.","color":"gray","italic":true}]
