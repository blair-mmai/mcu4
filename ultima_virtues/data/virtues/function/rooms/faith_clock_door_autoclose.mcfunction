# virtues:rooms/faith_clock_door_autoclose
# Scheduled 60t after faith_clock_door_cycle opens the door. Closes it
# unconditionally, same pattern as skara_room_door_autoclose.mcfunction.
# facing=west, hinge=right - must match faith_clock_door_cycle.

execute at @e[tag=clock_door,limit=1] if block ~ ~ ~ minecraft:iron_door[open=true] run playsound minecraft:block.iron_door.close block @a ~ ~ ~
execute at @e[tag=clock_door,limit=1] run setblock ~ ~ ~ minecraft:iron_door[facing=west,hinge=right,half=lower,open=false]
execute at @e[tag=clock_door,limit=1] run setblock ~ ~1 ~ minecraft:iron_door[facing=west,hinge=right,half=upper,open=false]
