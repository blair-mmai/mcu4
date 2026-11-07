# virtues:player/gypsy_align_sacrifice
# Resolved outcome: Sacrifice -> Minoc (moongate near Minoc, per Blair's
# LocationStarts tab).

tag @s add aligned_sacrifice
effect clear @s minecraft:blindness
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42

execute at @s as @e[type=minecraft:marker,tag=virtues.owner,distance=..5,limit=1,sort=nearest] if score @s virtues.player_id = @p[distance=..5,limit=1,sort=nearest] virtues.player_id at @s run loot insert ~ ~ ~ loot virtues:chests/gypsy_reward_sacrifice

give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[-332,75,263],dimension:"minecraft:overworld"},tracked:false}]

title @s title {"text":"","color":"white"}
title @s subtitle {"text":"You give before you're asked to.","color":"gold","italic":true}
tellraw @s ["",{"text":"You give before you're asked to.","color":"gold","italic":true}]
tellraw @s ["",{"text":"Those seeds are barely worth planting on their own. They might be worth more given away.","color":"gray","italic":true}]
