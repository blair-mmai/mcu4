# virtues:rooms/justice_rune_shulker_refill
# Keeps the Rune of Justice shulker (Yew) always stocked. Slot 0 auto-refills
# with a fresh named lime_glazed_terracotta whenever it's empty/taken, so any
# player (or the same player again) can always get one — having 2+ does
# nothing special, free duplication is fine. Same pattern as Britain's
# compassion_rune_shulker_refill.mcfunction.

execute at @e[tag=shulker_justice,limit=1] unless block ~ ~ ~ minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:lime_glazed_terracotta"}]} run data remove block ~ ~ ~ Items[{Slot:0b}]
execute at @e[tag=shulker_justice,limit=1] unless block ~ ~ ~ minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:lime_glazed_terracotta"}]} run data modify block ~ ~ ~ Items append value {Slot:0b,id:"minecraft:lime_glazed_terracotta",Count:1b,components:{"minecraft:custom_name":{text:"Rune of Justice",italic:false}}}
