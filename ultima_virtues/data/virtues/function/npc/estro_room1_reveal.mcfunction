# virtues:npc/estro_room1_reveal
# Fires every time the room1 trade (3 gold_nugget -> 1 copper_nugget) completes.
# Snapshot vacancy BEFORE any writes (same lesson as Tyrone's rental check) --
# every branch below reads the snapshot, not the live/mutating flag.
# Unlike Tyrone, this trade already took real payment unconditionally, so the
# "occupied" branch has to refund it instead of just apologizing.

scoreboard players set $estro_r1_was_vacant virtues.room_state 1
execute if score $minoc_room1_rented virtues.room_state matches 1 run scoreboard players set $estro_r1_was_vacant virtues.room_state 0

execute if score $estro_r1_was_vacant virtues.room_state matches 1 run title @s title {"text":"","color":"white"}
execute if score $estro_r1_was_vacant virtues.room_state matches 1 run title @s subtitle {"text":"OK, room 1. Here's your change.","color":"white"}
execute if score $estro_r1_was_vacant virtues.room_state matches 1 run tellraw @s ["",{"text":"Estro: Here's your change -- room's ready, door shuts in 20s.","color":"yellow"}]
execute if score $estro_r1_was_vacant virtues.room_state matches 1 at @e[tag=minoc_room_door_1,limit=1] if block ~ ~ ~ minecraft:iron_door[open=false] run playsound minecraft:block.iron_door.open block @a ~ ~ ~
execute if score $estro_r1_was_vacant virtues.room_state matches 1 at @e[tag=minoc_room_door_1,limit=1] run setblock ~ ~ ~ minecraft:iron_door[facing=east,hinge=left,half=lower,open=true]
execute if score $estro_r1_was_vacant virtues.room_state matches 1 at @e[tag=minoc_room_door_1,limit=1] run setblock ~ ~1 ~ minecraft:iron_door[facing=east,hinge=left,half=upper,open=true]
execute if score $estro_r1_was_vacant virtues.room_state matches 1 run scoreboard players set $minoc_room1_rented virtues.room_state 1
# Auto-checkout: closes the door + clears the flag on its own after a fixed stay
# length, no bed/plate needed. Tune the delay below (currently 400t = 20s) once
# a real length is decided.
execute if score $estro_r1_was_vacant virtues.room_state matches 1 run schedule function virtues:rooms/minoc_room1_checkout 400t replace

execute unless score $estro_r1_was_vacant virtues.room_state matches 1 run tellraw @s ["",{"text":"Estro: Sorry, that room's occupied -- here's your gold back.","color":"yellow"}]
execute unless score $estro_r1_was_vacant virtues.room_state matches 1 run give @s minecraft:gold_nugget 3

advancement revoke @s only virtues:minoc/trade_estro_room1
