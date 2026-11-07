# virtues:player/gypsy_align_valor
# Resolved outcome: Valor -> Jhelom (moongate near Jhelom, per Blair's
# LocationStarts tab).

tag @s add aligned_valor
effect clear @s minecraft:blindness
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42

execute at @s as @e[type=minecraft:marker,tag=virtues.owner,distance=..5,limit=1,sort=nearest] if score @s virtues.player_id = @p[distance=..5,limit=1,sort=nearest] virtues.player_id at @s run loot insert ~ ~ ~ loot virtues:chests/gypsy_reward_valor

give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[-271,75,12],dimension:"minecraft:overworld"},tracked:false}]

title @s title {"text":"","color":"white"}
title @s subtitle {"text":"Your blood runs hot for the fight.","color":"gold","italic":true}
tellraw @s ["",{"text":"Your blood runs hot for the fight.","color":"gold","italic":true}]
tellraw @s ["",{"text":"That horn hasn't been blown yet. Some calls are worth saving for the right moment.","color":"gray","italic":true}]
