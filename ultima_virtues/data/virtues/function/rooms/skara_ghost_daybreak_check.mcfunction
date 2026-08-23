# virtues:rooms/skara_ghost_daybreak_check
# Multiplayer softlock guard: if OTHER players sleeping skips the night, the
# trapped player's own minecraft:slept_in_bed trigger may never fire (they never
# actually got in a bed), so the roll — and the button-unlock it grants — would
# never happen. If it's day again while still armed and never triggered, unlock
# the button anyway.

execute if score $skara_ghost_armed virtues.room_state matches 1 if score $skara_ghost_triggered virtues.room_state matches 0 store result score $skara_day_check virtues.room_state run time query day
execute if score $skara_ghost_armed virtues.room_state matches 1 if score $skara_ghost_triggered virtues.room_state matches 0 if score $skara_day_check virtues.room_state matches 0..12000 run scoreboard players set $skara_ghost_triggered virtues.room_state 1
