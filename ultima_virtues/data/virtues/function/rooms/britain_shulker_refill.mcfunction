# virtues:rooms/britain_shulker_refill
# Keeps the Compassion Rune shulker (hotel room, end of hallway per Pepper's
# hint) unstealable and always stocked. The box itself is restored if broken
# (and any dropped shulker_box item near it killed before pickup, same
# pattern as protect_britain_composter), and slot 0 auto-refills with a
# fresh red_glazed_terracotta whenever it's empty/taken — having 2+ does
# nothing special, free duplication is fine.

execute at @e[tag=britain_shulker,limit=1] unless block ~ ~ ~ minecraft:shulker_box run setblock ~ ~ ~ minecraft:shulker_box
execute at @e[tag=britain_shulker,limit=1] as @e[type=minecraft:item,nbt={Item:{id:"minecraft:shulker_box"}},distance=..2] run kill @s

execute at @e[tag=britain_shulker,limit=1] unless block ~ ~ ~ minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:red_glazed_terracotta",Count:1b}]} run data remove block ~ ~ ~ Items[{Slot:0b}]
execute at @e[tag=britain_shulker,limit=1] unless block ~ ~ ~ minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:red_glazed_terracotta",Count:1b}]} run data modify block ~ ~ ~ Items append value {Slot:0b,id:"minecraft:red_glazed_terracotta",Count:1b,components:{"minecraft:custom_name":{text:"Rune of Compassion",italic:false}}}
