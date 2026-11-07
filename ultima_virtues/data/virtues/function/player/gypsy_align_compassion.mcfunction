# virtues:player/gypsy_align_compassion
# Resolved outcome: Compassion -> Britain (moongate near Britain, per
# Blair's LocationStarts tab).

tag @s add aligned_compassion
effect clear @s minecraft:blindness
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42

execute at @s as @e[type=minecraft:marker,tag=virtues.owner,distance=..5,limit=1,sort=nearest] if score @s virtues.player_id = @p[distance=..5,limit=1,sort=nearest] virtues.player_id at @s run loot insert ~ ~ ~ loot virtues:chests/gypsy_reward_compassion

give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[70,70,527],dimension:"minecraft:overworld"},tracked:false}]

title @s title {"text":"","color":"white"}
title @s subtitle {"text":"You feel for others before you feel for yourself.","color":"gold","italic":true}
tellraw @s ["",{"text":"You feel for others before you feel for yourself.","color":"gold","italic":true}]
tellraw @s ["",{"text":"That mushroom looks plain, but someone in Britain pays well for plain things.","color":"gray","italic":true}]
