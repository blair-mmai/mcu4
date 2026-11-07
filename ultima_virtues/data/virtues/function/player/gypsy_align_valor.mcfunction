# virtues:player/gypsy_align_valor
# Resolved outcome: Valor -> Jhelom (moongate near Jhelom, per Blair's
# LocationStarts tab). Player is teleported there directly - the
# staging-plot chest they leave behind only has flavor lore, not this reward.

tag @s add aligned_valor
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42

loot give @s loot virtues:chests/gypsy_reward_valor

tp @s -271 75 12

effect clear @s minecraft:blindness
give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[-271,75,12],dimension:"minecraft:overworld"},tracked:false}]

title @s title {"text":"","color":"white"}
title @s subtitle {"text":"Your blood runs hot.","color":"gold","italic":true}
tellraw @s ["",{"text":"Your blood runs hot for the fight.","color":"gold","italic":true}]
tellraw @s ["",{"text":"That horn hasn't been blown yet. Some calls are worth saving for the right moment.","color":"gray","italic":true}]
