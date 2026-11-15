# virtues:rooms/faith_shulker_refill
# Keeps the Rune of Faith shulker (Faith waiting-room) unstealable and always
# stocked. Box itself is yellow_shulker_box (restored if broken, dropped item
# killed before pickup, same pattern as the other protected fixtures), and
# slot 0 self-corrects to exactly 1 named yellow_glazed_terracotta whenever
# it's empty or has extras stacked in.

execute at @e[tag=faith_shulker,limit=1] unless block ~ ~ ~ minecraft:yellow_shulker_box run setblock ~ ~ ~ minecraft:yellow_shulker_box
execute at @e[tag=faith_shulker,limit=1] as @e[type=minecraft:item,nbt={Item:{id:"minecraft:yellow_shulker_box"}},distance=..2] run kill @s

execute at @e[tag=faith_shulker,limit=1] unless block ~ ~ ~ minecraft:yellow_shulker_box{Items:[{Slot:0b,id:"minecraft:yellow_glazed_terracotta",Count:1b}]} run data remove block ~ ~ ~ Items[{Slot:0b}]
execute at @e[tag=faith_shulker,limit=1] unless block ~ ~ ~ minecraft:yellow_shulker_box{Items:[{Slot:0b,id:"minecraft:yellow_glazed_terracotta",Count:1b}]} run data modify block ~ ~ ~ Items append value {Slot:0b,id:"minecraft:yellow_glazed_terracotta",Count:1b,components:{"minecraft:custom_name":{text:"Rune of Faith",italic:false}}}
