# virtues:npc/estro_room2_reveal -- same pattern as room1, priced 6 gold / 2 copper change.

scoreboard players set $estro_r2_was_vacant virtues.room_state 1
execute if score $minoc_room2_rented virtues.room_state matches 1 run scoreboard players set $estro_r2_was_vacant virtues.room_state 0

execute if score $estro_r2_was_vacant virtues.room_state matches 1 run title @s title {"text":"","color":"white"}
execute if score $estro_r2_was_vacant virtues.room_state matches 1 run title @s subtitle {"text":"OK, room 2. Here's your change.","color":"white"}
execute if score $estro_r2_was_vacant virtues.room_state matches 1 run tellraw @s ["",{"text":"Estro: Here's your change -- room's ready, door shuts in 20s.","color":"yellow"}]
execute if score $estro_r2_was_vacant virtues.room_state matches 1 at @e[tag=minoc_room_door_2,limit=1] if block ~ ~ ~ minecraft:iron_door[open=false] run playsound minecraft:block.iron_door.open block @a ~ ~ ~
execute if score $estro_r2_was_vacant virtues.room_state matches 1 at @e[tag=minoc_room_door_2,limit=1] run setblock ~ ~ ~ minecraft:iron_door[facing=east,hinge=left,half=lower,open=true]
execute if score $estro_r2_was_vacant virtues.room_state matches 1 at @e[tag=minoc_room_door_2,limit=1] run setblock ~ ~1 ~ minecraft:iron_door[facing=east,hinge=left,half=upper,open=true]
execute if score $estro_r2_was_vacant virtues.room_state matches 1 run scoreboard players set $minoc_room2_rented virtues.room_state 1
execute if score $estro_r2_was_vacant virtues.room_state matches 1 run schedule function virtues:rooms/minoc_room2_checkout 400t replace

execute unless score $estro_r2_was_vacant virtues.room_state matches 1 run tellraw @s ["",{"text":"Estro: Sorry, that room's occupied -- here's your gold back.","color":"yellow"}]
execute unless score $estro_r2_was_vacant virtues.room_state matches 1 run give @s minecraft:gold_nugget 6

advancement revoke @s only virtues:minoc/trade_estro_room2
