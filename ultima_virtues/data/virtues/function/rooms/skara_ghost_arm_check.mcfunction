# virtues:rooms/skara_ghost_arm_check
# Interior polished blackstone pressure plate (marker skara_room_plate_1) —
# stepping on it, once the room's been rented, slams the door shut (with sound —
# the actual scare moment) and arms the ghost encounter. skara_ghost_active_check
# keeps it force-shut silently every tick after this; the sound only plays once,
# right here, at the moment of the slam. Gated on armed/resolved both still 0 so
# it only ever fires once per rental. Also clears $skara_room_rented back to 0
# here — once the plate's tripped, the "rented but not yet occupied" window is
# over, distinct from whether the door can later be opened again.
#
# Tags whichever player triggered the plate as skara_ghost_target and starts
# the vex ambience loop ($skara_ghost_encounter_active) right here — it should
# keep making noise through the whole ordeal (including a second sleep attempt),
# not just during the brief window between the roll and answering Isaac. Stops
# only once the button actually opens the door (see skara_room_button_check).

scoreboard players set $skara_plate_pressed virtues.room_state 0
execute if score $skara_room_rented virtues.room_state matches 1 if score $skara_ghost_armed virtues.room_state matches 0 if score $skara_ghost_resolved virtues.room_state matches 0 at @e[tag=skara_room_plate_1,limit=1] if block ~ ~ ~ minecraft:polished_blackstone_pressure_plate[powered=true] run scoreboard players set $skara_plate_pressed virtues.room_state 1

execute if score $skara_plate_pressed virtues.room_state matches 1 run scoreboard players set $skara_ghost_armed virtues.room_state 1
execute if score $skara_plate_pressed virtues.room_state matches 1 run scoreboard players set $skara_room_rented virtues.room_state 0
execute if score $skara_plate_pressed virtues.room_state matches 1 run scoreboard players set $skara_ghost_triggered virtues.room_state 0
execute if score $skara_plate_pressed virtues.room_state matches 1 run scoreboard players set $skara_ghost_encounter_active virtues.room_state 1
execute if score $skara_plate_pressed virtues.room_state matches 1 at @e[tag=skara_room_plate_1,limit=1] as @a[distance=..2] run tag @s add skara_ghost_target
execute if score $skara_plate_pressed virtues.room_state matches 1 at @e[tag=skara_room_door_1,limit=1] if block ~ ~ ~ minecraft:iron_door[open=true] run playsound minecraft:block.iron_door.close block @a ~ ~ ~
execute if score $skara_plate_pressed virtues.room_state matches 1 at @e[tag=skara_room_door_1,limit=1] run setblock ~ ~ ~ minecraft:iron_door[facing=east,hinge=left,half=lower,open=false]
execute if score $skara_plate_pressed virtues.room_state matches 1 at @e[tag=skara_room_door_1,limit=1] run setblock ~ ~1 ~ minecraft:iron_door[facing=east,hinge=left,half=upper,open=false]
