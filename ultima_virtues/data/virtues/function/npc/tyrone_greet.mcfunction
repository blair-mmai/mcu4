# virtues:npc/tyrone_greet
# Fires once per fresh proximity approach (see tick.mcfunction's virtues.near_tyrone
# state machine). Below level 2, just the L1 flavor line. At level 2+, offers the
# room rental — but only if it's night AND the room is actually vacant (declines
# otherwise, closing the gap where another player could rent out from under
# someone already mid-stay).

execute store result score $tyrone_level virtues.room_state run data get entity @e[type=minecraft:villager,name="Tyrone",limit=1] VillagerData.level

execute if score $tyrone_level virtues.room_state matches ..1 run function virtues:npc/tyrone_greet_1

scoreboard players set $tyrone_vacant virtues.room_state 1
execute if score $skara_room_rented virtues.room_state matches 1 run scoreboard players set $tyrone_vacant virtues.room_state 0
execute if score $skara_ghost_armed virtues.room_state matches 1 run scoreboard players set $tyrone_vacant virtues.room_state 0

execute if score $tyrone_level virtues.room_state matches 2.. unless score $tyrone_vacant virtues.room_state matches 1 run tellraw @s ["",{"text":"Tyrone: Sorry, the room's occupied right now.","color":"yellow"}]

execute if score $tyrone_level virtues.room_state matches 2.. if score $tyrone_vacant virtues.room_state matches 1 store result score $tyrone_time virtues.room_state run time query day
execute if score $tyrone_level virtues.room_state matches 2.. if score $tyrone_vacant virtues.room_state matches 1 if score $tyrone_time virtues.room_state matches 13000..23000 run function virtues:npc/tyrone_ask_rental
execute if score $tyrone_level virtues.room_state matches 2.. if score $tyrone_vacant virtues.room_state matches 1 unless score $tyrone_time virtues.room_state matches 13000..23000 run tellraw @s ["",{"text":"Tyrone: I don't rent rooms during day!","color":"yellow"}]
