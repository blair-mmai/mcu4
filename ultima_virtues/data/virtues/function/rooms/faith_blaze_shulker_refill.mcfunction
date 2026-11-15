# virtues:rooms/faith_blaze_shulker_refill
# Keeps the blaze_powder ingredient shulker (Faith waiting-room, used for
# Potion of Faith's "carrier" ingredient - NOT the Rune of Faith shulker,
# see faith_shulker_refill.mcfunction) unstealable and always stocked.
# Box itself is yellow_shulker_box (restored if broken, dropped item killed
# before pickup), and slot 0 self-corrects to exactly 1 blaze_powder
# whenever it's empty or has extras stacked in.

execute at @e[tag=faith_blaze_shulker,limit=1] unless block ~ ~ ~ minecraft:yellow_shulker_box run setblock ~ ~ ~ minecraft:yellow_shulker_box
execute at @e[tag=faith_blaze_shulker,limit=1] as @e[type=minecraft:item,nbt={Item:{id:"minecraft:yellow_shulker_box"}},distance=..2] run kill @s

execute at @e[tag=faith_blaze_shulker,limit=1] unless block ~ ~ ~ minecraft:yellow_shulker_box{Items:[{Slot:0b,id:"minecraft:blaze_powder",Count:1b}]} run data remove block ~ ~ ~ Items[{Slot:0b}]
execute at @e[tag=faith_blaze_shulker,limit=1] unless block ~ ~ ~ minecraft:yellow_shulker_box{Items:[{Slot:0b,id:"minecraft:blaze_powder",Count:1b}]} run data modify block ~ ~ ~ Items append value {Slot:0b,id:"minecraft:blaze_powder",Count:1b}
