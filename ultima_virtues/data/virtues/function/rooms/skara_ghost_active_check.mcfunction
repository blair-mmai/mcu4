# virtues:rooms/skara_ghost_active_check
# While the ghost encounter is armed, force the door shut every tick — belt and
# suspenders alongside it being an iron door (can't be right-clicked open at all).
# Confirmed blockstate: facing=east, hinge=left.

execute if score $skara_ghost_armed virtues.room_state matches 1 at @e[tag=skara_room_door_1,limit=1] run setblock ~ ~ ~ minecraft:iron_door[facing=east,hinge=left,half=lower,open=false]
execute if score $skara_ghost_armed virtues.room_state matches 1 at @e[tag=skara_room_door_1,limit=1] run setblock ~ ~1 ~ minecraft:iron_door[facing=east,hinge=left,half=upper,open=false]
