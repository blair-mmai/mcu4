# virtues:player/gypsy_align_wisdom
# Resolved outcome: Wisdom -> Lycaeum (moongate near Lycaeum, per Blair's
# LocationStarts tab). Player is teleported there directly - the
# staging-plot chest they leave behind only has flavor lore, not this reward.

tag @s add aligned_wisdom
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42

loot give @s loot virtues:chests/gypsy_reward_wisdom

tp @s 10 74 -355

effect clear @s minecraft:blindness
give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[10,74,-355],dimension:"minecraft:overworld"},tracked:false}]

title @s title {"text":"","color":"white"}
title @s subtitle {"text":"Knowledge calls to you.","color":"gold","italic":true}
tellraw @s ["",{"text":"You trust what can be learned over what can be guessed.","color":"gold","italic":true}]
tellraw @s ["",{"text":"That ink hasn't written anything yet. Somewhere, someone fills books like this for a living.","color":"gray","italic":true}]
