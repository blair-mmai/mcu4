# virtues:player/gypsy_align_faith
# Resolved outcome: Faith -> "Outside Mysterious Door" (Blair's LocationStarts
# tab). Player is teleported there directly - the staging-plot chest they
# leave behind only has flavor lore, not this reward.

tag @s add aligned_faith
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42

loot give @s loot virtues:chests/gypsy_reward_faith

tp @s -348 112 -142

effect clear @s minecraft:blindness
give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[-348,112,-142],dimension:"minecraft:overworld"},tracked:false}]

title @s title {"text":"","color":"white"}
title @s subtitle {"text":"You trust the unseen.","color":"gold","italic":true}
tellraw @s ["",{"text":"You trust what you cannot yet see.","color":"gold","italic":true}]
tellraw @s ["",{"text":"That egg hasn't hatched, and may not need to. Faith doesn't ask for proof.","color":"gray","italic":true}]
