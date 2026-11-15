# virtues:rooms/yew_shulker_refill
# Keeps the Rune of Justice shulker (Yew) unstealable and always stocked.
# The box itself is restored if broken (and any dropped shulker_box item
# near it killed before pickup, same pattern as protect_yew_blast_furnace),
# and slot 0 auto-refills with a fresh named lime_glazed_terracotta whenever
# it's empty/taken — having 2+ does nothing special, free duplication is
# fine. Same pattern as Britain's britain_shulker_refill.mcfunction.

execute at @e[tag=yew_shulker,limit=1] unless block ~ ~ ~ minecraft:black_shulker_box run setblock ~ ~ ~ minecraft:black_shulker_box
execute at @e[tag=yew_shulker,limit=1] as @e[type=minecraft:item,nbt={Item:{id:"minecraft:black_shulker_box"}},distance=..2] run kill @s

execute at @e[tag=yew_shulker,limit=1] unless block ~ ~ ~ minecraft:black_shulker_box{Items:[{Slot:0b,id:"minecraft:lime_glazed_terracotta",Count:1b}]} run data remove block ~ ~ ~ Items[{Slot:0b}]
execute at @e[tag=yew_shulker,limit=1] unless block ~ ~ ~ minecraft:black_shulker_box{Items:[{Slot:0b,id:"minecraft:lime_glazed_terracotta",Count:1b}]} run data modify block ~ ~ ~ Items append value {Slot:0b,id:"minecraft:lime_glazed_terracotta",Count:1b,components:{"minecraft:custom_name":{text:"Rune of Justice",italic:false}}}
