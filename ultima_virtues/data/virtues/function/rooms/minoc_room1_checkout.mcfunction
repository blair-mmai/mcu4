# virtues:rooms/minoc_room1_checkout
# Scheduled 200t (10s) after room1 is rented. Closes the door and frees the
# room for the next renter -- unconditional, same pattern as Skara Brae's
# skara_room_door_autoclose.

execute at @e[tag=minoc_room_door_1,limit=1] if block ~ ~ ~ minecraft:iron_door[open=true] run playsound minecraft:block.iron_door.close block @a ~ ~ ~
execute at @e[tag=minoc_room_door_1,limit=1] run setblock ~ ~ ~ minecraft:iron_door[facing=east,hinge=left,half=lower,open=false]
execute at @e[tag=minoc_room_door_1,limit=1] run setblock ~ ~1 ~ minecraft:iron_door[facing=east,hinge=left,half=upper,open=false]
scoreboard players set $minoc_room1_rented virtues.room_state 0
