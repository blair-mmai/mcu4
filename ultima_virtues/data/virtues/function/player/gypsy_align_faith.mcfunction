# virtues:player/gypsy_align_faith
# Resolved outcome: Faith -> "Outside Mysterious Door" (Blair's LocationStarts
# tab, Ultima_IV_NPC_Dialogue_COMPLETE-with-MC.xlsx).

tag @s add aligned_faith
effect clear @s minecraft:blindness
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42

execute at @s as @e[type=minecraft:marker,tag=virtues.owner,distance=..5,limit=1,sort=nearest] if score @s virtues.player_id = @p[distance=..5,limit=1,sort=nearest] virtues.player_id at @s run loot insert ~ ~ ~ loot virtues:chests/gypsy_reward_faith

give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[-348,112,-142],dimension:"minecraft:overworld"},tracked:false}]

title @s title {"text":"","color":"white"}
title @s subtitle {"text":"You trust what you cannot yet see.","color":"gold","italic":true}
tellraw @s ["",{"text":"You trust what you cannot yet see.","color":"gold","italic":true}]
tellraw @s ["",{"text":"That egg hasn't hatched, and may not need to. Faith doesn't ask for proof.","color":"gray","italic":true}]
