# virtues:player/gypsy_align_honesty
# Resolved outcome: Honesty -> Moonglow (moongate near Moonglow, per Blair's
# LocationStarts tab). Player is teleported there directly - the
# staging-plot chest they leave behind only has flavor lore, not this reward.

tag @s add aligned_honesty
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42

loot give @s loot virtues:chests/gypsy_reward_honesty

tp @s 418 107 -291

effect clear @s minecraft:blindness
give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[418,107,-291],dimension:"minecraft:overworld"},tracked:false}]

title @s title {"text":"","color":"white"}
title @s subtitle {"text":"The truth settles in.","color":"gold","italic":true}
tellraw @s ["",{"text":"You feel most drawn to the plain truth of things.","color":"gold","italic":true}]
tellraw @s ["",{"text":"The stone in your pocket catches the light oddly. Someone who deals in enchantment might know why.","color":"gray","italic":true}]
