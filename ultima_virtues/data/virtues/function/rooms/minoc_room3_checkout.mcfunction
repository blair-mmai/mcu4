# virtues:rooms/minoc_room3_checkout -- same as room1_checkout, for door 3.

execute at @e[tag=minoc_room_door_3,limit=1] if block ~ ~ ~ minecraft:iron_door[open=true] run playsound minecraft:block.iron_door.close block @a ~ ~ ~
execute at @e[tag=minoc_room_door_3,limit=1] run setblock ~ ~ ~ minecraft:iron_door[facing=east,hinge=left,half=lower,open=false]
execute at @e[tag=minoc_room_door_3,limit=1] run setblock ~ ~1 ~ minecraft:iron_door[facing=east,hinge=left,half=upper,open=false]
scoreboard players set $minoc_room3_rented virtues.room_state 0
