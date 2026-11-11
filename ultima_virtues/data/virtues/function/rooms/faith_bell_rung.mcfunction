# virtues:rooms/faith_bell_rung
# Resets the shared faith waiting-room timer to 0 (was -1 = inactive, or
# mid-count from an earlier ring). Timer starts advancing again next tick.

scoreboard players set $faith_timer virtues.room_state 0
