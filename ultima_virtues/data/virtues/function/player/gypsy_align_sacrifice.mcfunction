# virtues:player/gypsy_align_sacrifice
# Resolved outcome: Sacrifice -> Minoc (moongate near Minoc, per Blair's
# LocationStarts tab). Player is teleported there directly - the
# staging-plot chest they leave behind only has flavor lore, not this reward.

tag @s add aligned_sacrifice
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42

loot give @s loot virtues:chests/gypsy_reward_sacrifice

tp @s -332 75 263

effect clear @s minecraft:blindness
give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[-332,75,263],dimension:"minecraft:overworld"},tracked:false}]

title @s title {"text":"","color":"white"}
title @s subtitle {"text":"You give freely.","color":"gold","italic":true}
tellraw @s ["",{"text":"You give before you're asked to.","color":"gold","italic":true}]
tellraw @s ["",{"text":"Those seeds are barely worth planting on their own. They might be worth more given away.","color":"gray","italic":true}]
