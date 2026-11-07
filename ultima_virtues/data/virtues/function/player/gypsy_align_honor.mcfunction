# virtues:player/gypsy_align_honor
# Resolved outcome: Honor -> Trinsic (moongate near Trinsic, per Blair's
# LocationStarts tab).

tag @s add aligned_honor
effect clear @s minecraft:blindness
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42

execute at @s as @e[type=minecraft:marker,tag=virtues.owner,distance=..5,limit=1,sort=nearest] if score @s virtues.player_id = @p[distance=..5,limit=1,sort=nearest] virtues.player_id at @s run loot insert ~ ~ ~ loot virtues:chests/gypsy_reward_honor

give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[-1919,71,-1965],dimension:"minecraft:overworld"},tracked:false}]

title @s title {"text":"","color":"white"}
title @s subtitle {"text":"You hold your word above your own comfort.","color":"gold","italic":true}
tellraw @s ["",{"text":"You hold your word above your own comfort.","color":"gold","italic":true}]
tellraw @s ["",{"text":"That fruit might take you somewhere unexpected if eaten carelessly. Best saved for someone who keeps their word.","color":"gray","italic":true}]
