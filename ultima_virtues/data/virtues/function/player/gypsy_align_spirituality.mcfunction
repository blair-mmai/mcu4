# virtues:player/gypsy_align_spirituality
# Resolved outcome: Spirituality -> Skara Brae. Reached when the 4 round
# picks' vectors nearly cancel out (r < 0.05) - a deliberate consequence of
# Spirituality being K+T+L+C (all four principles at once), not a special case.
# Coordinates are Skara Brae's Cheap Room, on the white shulker chest, per
# Blair's LocationStarts tab.

tag @s add aligned_spirituality
effect clear @s minecraft:blindness
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42

execute at @s as @e[type=minecraft:marker,tag=virtues.owner,distance=..5,limit=1,sort=nearest] if score @s virtues.player_id = @p[distance=..5,limit=1,sort=nearest] virtues.player_id at @s run loot insert ~ ~ ~ loot virtues:chests/gypsy_reward_spirituality

give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[-405,72,-542],dimension:"minecraft:overworld"},tracked:false}]

title @s title {"text":"","color":"white"}
title @s subtitle {"text":"You feel the pull of everything at once, and nothing in particular.","color":"gold","italic":true}
tellraw @s ["",{"text":"You feel the pull of everything at once, and nothing in particular.","color":"gold","italic":true}]
tellraw @s ["",{"text":"The honey hasn't spoiled in your pocket yet. Bees don't forget where it came from.","color":"gray","italic":true}]
