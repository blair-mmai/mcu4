# virtues:rooms/faith_clock_door_cycle
# Fires every 1000 ticks of faith_timer. Opens clock_door, then schedules it
# shut again 60t later (3s) - same "normal amount of time" duration used for
# Skara Brae's room door (see skara_room_door_autoclose.mcfunction).
# PLACEHOLDER facing/hinge below (north/left) - set these to match the real
# door's actual orientation, same as skara_room_door_1/minoc room doors do.

execute at @e[tag=clock_door,limit=1] if block ~ ~ ~ minecraft:iron_door[open=false] run playsound minecraft:block.iron_door.open block @a ~ ~ ~
execute at @e[tag=clock_door,limit=1] run setblock ~ ~ ~ minecraft:iron_door[facing=north,hinge=left,half=lower,open=true]
execute at @e[tag=clock_door,limit=1] run setblock ~ ~1 ~ minecraft:iron_door[facing=north,hinge=left,half=upper,open=true]
schedule function virtues:rooms/faith_clock_door_autoclose 60t replace
