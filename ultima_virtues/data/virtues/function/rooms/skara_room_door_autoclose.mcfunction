# virtues:rooms/skara_room_door_autoclose
# Scheduled 60t (3s) after the magic button opens the door post-resolution.
# Closes it unconditionally — if the ghost is somehow re-armed by then this is a
# harmless no-op since skara_ghost_active_check already force-holds it shut.

execute at @e[tag=skara_room_door_1,limit=1] if block ~ ~ ~ minecraft:iron_door[open=true] run playsound minecraft:block.iron_door.close block @a ~ ~ ~
execute at @e[tag=skara_room_door_1,limit=1] run setblock ~ ~ ~ minecraft:iron_door[facing=east,hinge=left,half=lower,open=false]
execute at @e[tag=skara_room_door_1,limit=1] run setblock ~ ~1 ~ minecraft:iron_door[facing=east,hinge=left,half=upper,open=false]
