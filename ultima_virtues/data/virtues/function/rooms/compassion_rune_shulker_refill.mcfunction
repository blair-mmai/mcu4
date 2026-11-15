# virtues:rooms/compassion_rune_shulker_refill
# Keeps the Compassion Rune shulker (hotel room, end of hallway per Pepper's
# hint) always stocked. Slot 0 auto-refills with a fresh red_glazed_terracotta
# whenever it's empty/taken, so any player (or the same player again) can
# always get one — having 2+ does nothing special, free duplication is fine.

execute at @e[tag=shulker_compassion,limit=1] unless block ~ ~ ~ minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:red_glazed_terracotta"}]} run data remove block ~ ~ ~ Items[{Slot:0b}]
execute at @e[tag=shulker_compassion,limit=1] unless block ~ ~ ~ minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:red_glazed_terracotta"}]} run data modify block ~ ~ ~ Items append value {Slot:0b,id:"minecraft:red_glazed_terracotta",Count:1b,components:{"minecraft:custom_name":{text:"Rune of Compassion",italic:false}}}
