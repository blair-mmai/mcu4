# virtues:player/gypsy_align_justice
# Resolved outcome: Justice -> Yew (moongate near Yew/Lycaeum, per Blair's
# LocationStarts tab). Player is teleported there directly - the
# staging-plot chest they leave behind only has flavor lore, not this reward.

tag @s add aligned_justice
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42

loot give @s loot virtues:chests/gypsy_reward_justice

tp @s -512 69 -275

effect clear @s minecraft:blindness
give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[-512,69,-275],dimension:"minecraft:overworld"},tracked:false}]

title @s title {"text":"","color":"white"}
title @s subtitle {"text":"The scales settle.","color":"gold","italic":true}
tellraw @s ["",{"text":"You weigh both sides before you act.","color":"gold","italic":true}]
tellraw @s ["",{"text":"Those leaves don't look like evidence of anything. Maybe that's exactly why they're worth keeping.","color":"gray","italic":true}]
