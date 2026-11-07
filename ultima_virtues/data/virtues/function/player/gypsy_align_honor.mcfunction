# virtues:player/gypsy_align_honor
# Resolved outcome: Honor -> Trinsic (moongate near Trinsic, per Blair's
# LocationStarts tab). Player is teleported there directly - the
# staging-plot chest they leave behind only has flavor lore, not this reward.

tag @s add aligned_honor
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42

loot give @s loot virtues:chests/gypsy_reward_honor

tp @s -1919 71 -1965

effect clear @s minecraft:blindness
give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[-1919,71,-1965],dimension:"minecraft:overworld"},tracked:false}]

title @s title {"text":"","color":"white"}
title @s subtitle {"text":"Your word is your bond.","color":"gold","italic":true}
tellraw @s ["",{"text":"You hold your word above your own comfort.","color":"gold","italic":true}]
tellraw @s ["",{"text":"That fruit might take you somewhere unexpected if eaten carelessly. Best saved for someone who keeps their word.","color":"gray","italic":true}]
