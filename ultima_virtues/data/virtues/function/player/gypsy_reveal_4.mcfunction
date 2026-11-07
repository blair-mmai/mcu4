# virtues:player/gypsy_reveal_4
# Beat 4 of 5. Gives the lodestone compass (pointing at this virtue's real
# town-start location) and announces it. Branches on the aligned_<virtue>
# tag, since the target coordinates differ per virtue.

title @a[tag=virtues.pending_gypsy_reveal] times 10 60 10
title @a[tag=virtues.pending_gypsy_reveal] title {"text":"","color":"white"}
title @a[tag=virtues.pending_gypsy_reveal] subtitle {"text":"And a compass.","color":"yellow","italic":true}
tellraw @a[tag=virtues.pending_gypsy_reveal] ["",{"text":"And a compass.","color":"yellow","italic":true}]

execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_honesty] run give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[418,107,-291],dimension:"minecraft:overworld"},tracked:false}]
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_valor] run give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[-271,75,12],dimension:"minecraft:overworld"},tracked:false}]
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_honor] run give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[-1919,71,-1965],dimension:"minecraft:overworld"},tracked:false}]
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_justice] run give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[-512,69,-275],dimension:"minecraft:overworld"},tracked:false}]
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_wisdom] run give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[10,74,-355],dimension:"minecraft:overworld"},tracked:false}]
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_faith] run give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[-348,112,-142],dimension:"minecraft:overworld"},tracked:false}]
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_compassion] run give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[70,70,527],dimension:"minecraft:overworld"},tracked:false}]
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_sacrifice] run give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[-332,75,263],dimension:"minecraft:overworld"},tracked:false}]
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_spirituality] run give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[-405,72,-542],dimension:"minecraft:overworld"},tracked:false}]

schedule function virtues:player/gypsy_reveal_5 60t replace
