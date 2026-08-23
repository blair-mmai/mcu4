# virtues:rooms/skara_room_button_check
# Magic button (birch_button, marker skara_room_button_1), script-detected only —
# no real redstone to the door (same lesson as Jhelom's helmet/door puzzle: a
# scripted setblock gives no genuine power, so wiring it for real would be fragile).
# Edge-detected against $skara_button_prev so a held-down press doesn't refire
# every tick it stays powered.
#
# Before the roll has happened: button can only CLOSE an open door, never open
# one (while armed the door's already force-shut every tick anyway, so this
# mainly matters in the rented-but-not-yet-armed window).
# Once $skara_ghost_triggered is set (the roll happened, win or lose the 80/20,
# or the daybreak fallback kicked in) — normal behavior: press opens the door
# briefly, then it auto-closes on its own (see skara_room_door_autoclose.mcfunction).

scoreboard players add $skara_button_prev virtues.room_state 0
scoreboard players set $skara_button_pressed virtues.room_state 0
execute at @e[tag=skara_room_button_1,limit=1] if block ~ ~ ~ minecraft:birch_button[powered=true] run scoreboard players set $skara_button_pressed virtues.room_state 1

scoreboard players set $skara_button_edge virtues.room_state 0
execute if score $skara_button_pressed virtues.room_state matches 1 if score $skara_button_prev virtues.room_state matches 0 run scoreboard players set $skara_button_edge virtues.room_state 1
scoreboard players operation $skara_button_prev virtues.room_state = $skara_button_pressed virtues.room_state

execute if score $skara_button_edge virtues.room_state matches 1 if score $skara_ghost_triggered virtues.room_state matches 1 at @e[tag=skara_room_door_1,limit=1] if block ~ ~ ~ minecraft:iron_door[open=false] run playsound minecraft:block.iron_door.open block @a ~ ~ ~
execute if score $skara_button_edge virtues.room_state matches 1 if score $skara_ghost_triggered virtues.room_state matches 1 at @e[tag=skara_room_door_1,limit=1] run setblock ~ ~ ~ minecraft:iron_door[facing=east,hinge=left,half=lower,open=true]
execute if score $skara_button_edge virtues.room_state matches 1 if score $skara_ghost_triggered virtues.room_state matches 1 at @e[tag=skara_room_door_1,limit=1] run setblock ~ ~1 ~ minecraft:iron_door[facing=east,hinge=left,half=upper,open=true]
execute if score $skara_button_edge virtues.room_state matches 1 if score $skara_ghost_triggered virtues.room_state matches 1 run schedule function virtues:rooms/skara_room_door_autoclose 60t replace
execute if score $skara_button_edge virtues.room_state matches 1 if score $skara_ghost_triggered virtues.room_state matches 1 run scoreboard players set $skara_ghost_encounter_active virtues.room_state 0
execute if score $skara_button_edge virtues.room_state matches 1 if score $skara_ghost_triggered virtues.room_state matches 1 run tag @a[tag=skara_ghost_target] remove skara_ghost_target

execute if score $skara_button_edge virtues.room_state matches 1 unless score $skara_ghost_triggered virtues.room_state matches 1 at @e[tag=skara_room_door_1,limit=1] if block ~ ~ ~ minecraft:iron_door[open=true] run playsound minecraft:block.iron_door.close block @a ~ ~ ~
execute if score $skara_button_edge virtues.room_state matches 1 unless score $skara_ghost_triggered virtues.room_state matches 1 at @e[tag=skara_room_door_1,limit=1] if block ~ ~ ~ minecraft:iron_door[open=true] run setblock ~ ~ ~ minecraft:iron_door[facing=east,hinge=left,half=lower,open=false]
execute if score $skara_button_edge virtues.room_state matches 1 unless score $skara_ghost_triggered virtues.room_state matches 1 at @e[tag=skara_room_door_1,limit=1] if block ~ ~ ~ minecraft:iron_door[open=true] run setblock ~ ~1 ~ minecraft:iron_door[facing=east,hinge=left,half=upper,open=false]
