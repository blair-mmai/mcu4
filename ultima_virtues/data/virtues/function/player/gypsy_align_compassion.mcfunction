# virtues:player/gypsy_align_compassion
# Resolved outcome: Compassion -> Britain (moongate near Britain, per
# Blair's LocationStarts tab). Player is teleported there directly - the
# staging-plot chest they leave behind only has flavor lore, not this reward.

tag @s add aligned_compassion
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42

loot give @s loot virtues:chests/gypsy_reward_compassion

tp @s 70 70 527

effect clear @s minecraft:blindness
give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[70,70,527],dimension:"minecraft:overworld"},tracked:false}]

title @s title {"text":"","color":"white"}
title @s subtitle {"text":"Compassion stirs in you.","color":"gold","italic":true}
tellraw @s ["",{"text":"You feel for others before you feel for yourself.","color":"gold","italic":true}]
tellraw @s ["",{"text":"That mushroom looks plain, but someone in Britain pays well for plain things.","color":"gray","italic":true}]
