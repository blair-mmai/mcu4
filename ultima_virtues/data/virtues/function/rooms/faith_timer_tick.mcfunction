# virtues:rooms/faith_timer_tick
# Advances the shared faith_timer while active (>=0, i.e. bell has been rung
# at least once) and fires the door cycle on every positive multiple of 1000.

execute if score $faith_timer virtues.room_state matches 0.. run scoreboard players add $faith_timer virtues.room_state 1

scoreboard players operation $faith_timer_mod virtues.room_state = $faith_timer virtues.room_state
scoreboard players operation $faith_timer_mod virtues.room_state %= $thousand virtues.const

execute if score $faith_timer virtues.room_state matches 1.. if score $faith_timer_mod virtues.room_state matches 0 run function virtues:rooms/faith_clock_door_cycle
