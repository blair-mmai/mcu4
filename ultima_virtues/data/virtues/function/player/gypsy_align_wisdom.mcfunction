# virtues:player/gypsy_align_wisdom
# Resolved outcome: Wisdom -> Lycaeum (moongate near Lycaeum, per Blair's
# LocationStarts tab).

tag @s add aligned_wisdom
effect clear @s minecraft:blindness
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42

execute at @s as @e[type=minecraft:marker,tag=virtues.owner,distance=..5,limit=1,sort=nearest] if score @s virtues.player_id = @p[distance=..5,limit=1,sort=nearest] virtues.player_id at @s run loot insert ~ ~ ~ loot virtues:chests/gypsy_reward_wisdom

give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[10,74,-355],dimension:"minecraft:overworld"},tracked:false}]

title @s title {"text":"","color":"white"}
title @s subtitle {"text":"You trust what can be learned over what can be guessed.","color":"gold","italic":true}
tellraw @s ["",{"text":"You trust what can be learned over what can be guessed.","color":"gold","italic":true}]
tellraw @s ["",{"text":"That ink hasn't written anything yet. Somewhere, someone fills books like this for a living.","color":"gray","italic":true}]
