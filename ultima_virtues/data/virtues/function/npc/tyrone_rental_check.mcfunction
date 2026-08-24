# virtues:npc/tyrone_rental_check
# Snapshots vacancy into $tyrone_was_vacant BEFORE making any changes — every
# branch below reads that snapshot, not the live (mutating) room-state scores,
# since setting $skara_room_rented mid-function was previously making the
# "someone beat you to it" line fire against its own just-made change.

scoreboard players set $tyrone_was_vacant virtues.room_state 1
execute if score $skara_room_rented virtues.room_state matches 1 run scoreboard players set $tyrone_was_vacant virtues.room_state 0
execute if score $skara_ghost_armed virtues.room_state matches 1 run scoreboard players set $tyrone_was_vacant virtues.room_state 0

execute if score @s TYRONEYN matches 1 if score $tyrone_was_vacant virtues.room_state matches 1 run tellraw @s ["",{"text":"Tyrone: Then welcome — the room's yours for the night.","color":"yellow"}]
execute if score @s TYRONEYN matches 1 if score $tyrone_was_vacant virtues.room_state matches 1 at @e[tag=skara_room_door_1,limit=1] if block ~ ~ ~ minecraft:iron_door[open=false] run playsound minecraft:block.iron_door.open block @a ~ ~ ~
execute if score @s TYRONEYN matches 1 if score $tyrone_was_vacant virtues.room_state matches 1 at @e[tag=skara_room_door_1,limit=1] run setblock ~ ~ ~ minecraft:iron_door[facing=east,hinge=left,half=lower,open=true]
execute if score @s TYRONEYN matches 1 if score $tyrone_was_vacant virtues.room_state matches 1 at @e[tag=skara_room_door_1,limit=1] run setblock ~ ~1 ~ minecraft:iron_door[facing=east,hinge=left,half=upper,open=true]
execute if score @s TYRONEYN matches 1 if score $tyrone_was_vacant virtues.room_state matches 1 run scoreboard players set $skara_room_rented virtues.room_state 1
# Full clean slate for the new stay — anything left over from a previous rental
# (resolved/triggered/active all stuck at their prior values otherwise) would
# block the pressure plate from arming again, or leave the ambience/button in
# the wrong state from the start.
execute if score @s TYRONEYN matches 1 if score $tyrone_was_vacant virtues.room_state matches 1 run scoreboard players set $skara_ghost_armed virtues.room_state 0
execute if score @s TYRONEYN matches 1 if score $tyrone_was_vacant virtues.room_state matches 1 run scoreboard players set $skara_ghost_resolved virtues.room_state 0
execute if score @s TYRONEYN matches 1 if score $tyrone_was_vacant virtues.room_state matches 1 run scoreboard players set $skara_ghost_triggered virtues.room_state 0
execute if score @s TYRONEYN matches 1 if score $tyrone_was_vacant virtues.room_state matches 1 run scoreboard players set $skara_ghost_encounter_active virtues.room_state 0
execute if score @s TYRONEYN matches 1 if score $tyrone_was_vacant virtues.room_state matches 1 run tag @a[tag=skara_ghost_target] remove skara_ghost_target

execute if score @s TYRONEYN matches 1 unless score $tyrone_was_vacant virtues.room_state matches 1 run tellraw @s ["",{"text":"Tyrone: Sorry, someone just beat you to it.","color":"yellow"}]

execute if score @s TYRONEYN matches 2 run tellraw @s ["",{"text":"Tyrone: Suit yourself.","color":"yellow"}]

execute unless score @s TYRONEYN matches 0 run scoreboard players set @s TYRONEYN 0
