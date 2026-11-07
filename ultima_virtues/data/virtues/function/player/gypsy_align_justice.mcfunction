# virtues:player/gypsy_align_justice
# Resolved outcome: Justice -> Yew (moongate near Yew/Lycaeum, per Blair's
# LocationStarts tab).

tag @s add aligned_justice
effect clear @s minecraft:blindness
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42

execute at @s as @e[type=minecraft:marker,tag=virtues.owner,distance=..5,limit=1,sort=nearest] if score @s virtues.player_id = @p[distance=..5,limit=1,sort=nearest] virtues.player_id at @s run loot insert ~ ~ ~ loot virtues:chests/gypsy_reward_justice

give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[-512,69,-275],dimension:"minecraft:overworld"},tracked:false}]

title @s title {"text":"","color":"white"}
title @s subtitle {"text":"You weigh both sides before you act.","color":"gold","italic":true}
tellraw @s ["",{"text":"You weigh both sides before you act.","color":"gold","italic":true}]
tellraw @s ["",{"text":"Those leaves don't look like evidence of anything. Maybe that's exactly why they're worth keeping.","color":"gray","italic":true}]
