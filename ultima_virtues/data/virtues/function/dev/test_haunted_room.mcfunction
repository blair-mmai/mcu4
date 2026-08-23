# virtues:dev/test_haunted_room
# One-shot dev reset for the Skara Brae haunted room — run with
# /function virtues:dev/test_haunted_room
# Clears all room state to "freshly rented, door open, standing outside" so you
# can walk straight into a clean test without chasing down six commands by hand.

time set night
scoreboard players set $skara_room_rented virtues.room_state 1
scoreboard players set $skara_ghost_armed virtues.room_state 0
scoreboard players set $skara_ghost_resolved virtues.room_state 0
scoreboard players set $skara_ghost_triggered virtues.room_state 0
scoreboard players set $skara_ghost_encounter_active virtues.room_state 0
scoreboard players set @a GHOSTYN 0
tag @a[tag=skara_ghost_target] remove skara_ghost_target

execute at @e[tag=skara_room_door_1,limit=1] run playsound minecraft:block.iron_door.open block @a ~ ~ ~
execute at @e[tag=skara_room_door_1,limit=1] run setblock ~ ~ ~ minecraft:iron_door[facing=east,hinge=left,half=lower,open=true]
execute at @e[tag=skara_room_door_1,limit=1] run setblock ~ ~1 ~ minecraft:iron_door[facing=east,hinge=left,half=upper,open=true]
