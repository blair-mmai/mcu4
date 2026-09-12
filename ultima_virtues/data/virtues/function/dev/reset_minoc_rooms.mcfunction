# virtues:dev/reset_minoc_rooms
# One-shot dev reset for Estro's 3 rental rooms -- run with
# /function virtues:dev/reset_minoc_rooms
# Clears all 3 rented flags and force-closes all 3 doors, so you can retest a
# purchase without waiting out the 200t auto-checkout timer between attempts.
# Any already-scheduled checkout from a prior test still fires later and just
# no-ops (door's already closed, flag's already 0).

scoreboard players set $minoc_room1_rented virtues.room_state 0
scoreboard players set $minoc_room2_rented virtues.room_state 0
scoreboard players set $minoc_room3_rented virtues.room_state 0

execute at @e[tag=minoc_room_door_1,limit=1] run setblock ~ ~ ~ minecraft:iron_door[facing=east,hinge=left,half=lower,open=false]
execute at @e[tag=minoc_room_door_1,limit=1] run setblock ~ ~1 ~ minecraft:iron_door[facing=east,hinge=left,half=upper,open=false]
execute at @e[tag=minoc_room_door_2,limit=1] run setblock ~ ~ ~ minecraft:iron_door[facing=east,hinge=left,half=lower,open=false]
execute at @e[tag=minoc_room_door_2,limit=1] run setblock ~ ~1 ~ minecraft:iron_door[facing=east,hinge=left,half=upper,open=false]
execute at @e[tag=minoc_room_door_3,limit=1] run setblock ~ ~ ~ minecraft:iron_door[facing=east,hinge=left,half=lower,open=false]
execute at @e[tag=minoc_room_door_3,limit=1] run setblock ~ ~1 ~ minecraft:iron_door[facing=east,hinge=left,half=upper,open=false]
