# virtues:player/give_home_compass
# Macro function - called "with storage virtues:temp compass_pos" by
# gypsy_give_home_compass.mcfunction, which fills in x/y/z from the caller's
# own stone circle. Kept as its own tiny file since macro lines (the leading
# $) can only be resolved via "function ... with storage/entity/block".

$give @s minecraft:compass[minecraft:lodestone_tracker={target:{pos:[$(x),$(y),$(z)],dimension:"minecraft:overworld"},tracked:false}]
