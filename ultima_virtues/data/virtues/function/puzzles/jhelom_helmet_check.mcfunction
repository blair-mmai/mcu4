# virtues:puzzles/jhelom_helmet_check
# Helmet-orientation puzzle. One item frame, tagged jhelom_helmet_1. Solved
# (switch ON, door open) when the helmet is upside down (ItemRotation 4,
# i.e. 180 degrees from default) — re-checked every tick.
#
# Switch: a vertically wall-mounted lever, hidden from view, tagged
# jhelom_switch_2 via a marker at its exact block position. Purely visual
# feedback — "down" = ON, matching the helmet being solved.
#
# Door: real vanilla redstone from the lever to the door was unreliable
# (a scripted setblock on the lever doesn't send the neighbor-update a door
# needs, and even a manual click did nothing — the door wasn't actually
# wired to open/close from power at all). So the door itself is now driven
# directly by the same condition, via a marker tagged jhelom_door_2 placed
# at the door's lower-half block. Confirmed blockstate: facing=east,
# hinge=right.
#
# A scripted setblock plays no sound, so open/close is edge-detected against
# $jhelom_door_state (previous solved state) and the vanilla door sound is
# played manually, once per transition, instead of every tick.
#
# Safety exit: a pale oak button next to the door, tagged jhelom_button_1
# via a marker at its position, also counts as "solved" while pressed — lets
# a player get out if someone else spins the helmet mid-puzzle. It's read
# directly by the script (not real redstone into the door) so it can't
# desync from the door's actual state the way the lever originally did.

execute if entity @e[type=minecraft:item_frame,tag=jhelom_helmet_1,limit=1,nbt={ItemRotation:4b}] at @e[tag=jhelom_switch_2,limit=1] run setblock ~ ~ ~ minecraft:lever[face=wall,facing=north,powered=true]
execute unless entity @e[type=minecraft:item_frame,tag=jhelom_helmet_1,limit=1,nbt={ItemRotation:4b}] at @e[tag=jhelom_switch_2,limit=1] run setblock ~ ~ ~ minecraft:lever[face=wall,facing=north,powered=false]

scoreboard players add $jhelom_door_state virtues.puzzle_temp 0
scoreboard players set $jhelom_door_solved virtues.puzzle_temp 0
execute if entity @e[type=minecraft:item_frame,tag=jhelom_helmet_1,limit=1,nbt={ItemRotation:4b}] run scoreboard players set $jhelom_door_solved virtues.puzzle_temp 1
execute at @e[tag=jhelom_button_1,limit=1] if block ~ ~ ~ minecraft:pale_oak_button[powered=true] run scoreboard players set $jhelom_door_solved virtues.puzzle_temp 1

execute if score $jhelom_door_solved virtues.puzzle_temp matches 1 if score $jhelom_door_state virtues.puzzle_temp matches 0 at @e[tag=jhelom_door_2,limit=1] run setblock ~ ~ ~ minecraft:iron_door[facing=east,hinge=right,half=lower,open=true]
execute if score $jhelom_door_solved virtues.puzzle_temp matches 1 if score $jhelom_door_state virtues.puzzle_temp matches 0 at @e[tag=jhelom_door_2,limit=1] run setblock ~ ~1 ~ minecraft:iron_door[facing=east,hinge=right,half=upper,open=true]
execute if score $jhelom_door_solved virtues.puzzle_temp matches 1 if score $jhelom_door_state virtues.puzzle_temp matches 0 at @e[tag=jhelom_door_2,limit=1] run playsound minecraft:block.iron_door.open block @a ~ ~ ~
execute if score $jhelom_door_solved virtues.puzzle_temp matches 1 if score $jhelom_door_state virtues.puzzle_temp matches 0 run scoreboard players set $jhelom_door_state virtues.puzzle_temp 1

execute if score $jhelom_door_solved virtues.puzzle_temp matches 0 if score $jhelom_door_state virtues.puzzle_temp matches 1 at @e[tag=jhelom_door_2,limit=1] run setblock ~ ~ ~ minecraft:iron_door[facing=east,hinge=right,half=lower,open=false]
execute if score $jhelom_door_solved virtues.puzzle_temp matches 0 if score $jhelom_door_state virtues.puzzle_temp matches 1 at @e[tag=jhelom_door_2,limit=1] run setblock ~ ~1 ~ minecraft:iron_door[facing=east,hinge=right,half=upper,open=false]
execute if score $jhelom_door_solved virtues.puzzle_temp matches 0 if score $jhelom_door_state virtues.puzzle_temp matches 1 at @e[tag=jhelom_door_2,limit=1] run playsound minecraft:block.iron_door.close block @a ~ ~ ~
execute if score $jhelom_door_solved virtues.puzzle_temp matches 0 if score $jhelom_door_state virtues.puzzle_temp matches 1 run scoreboard players set $jhelom_door_state virtues.puzzle_temp 0
