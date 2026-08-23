# virtues:rooms/ghost_isaac_encounter
# Fires on ANY successful sleep, anywhere — guarded internally to only matter
# while the Skara Brae ghost encounter is armed. Currently a 100% roll (set via
# the "matches 1..100" range below — drop it back down, e.g. 1..80, to reintroduce
# a chance of just sleeping through instead). On success: force the player awake
# (a same-position teleport interrupts sleep — there's no vanilla "wake player"
# command), then layer the scare in on a timeline:
#   t=0    playsound, nausea (18s), blindness (25s) all start together
#   t=5s   title/dialogue reveal (scheduled) — nausea and blindness both still
#          well within their duration at this point
# Self-revokes so it can fire again on the player's next sleep attempt.

execute if score $skara_ghost_armed virtues.room_state matches 1 run scoreboard players set $skara_ghost_roll virtues.room_state 0
execute if score $skara_ghost_armed virtues.room_state matches 1 store result score $skara_ghost_roll virtues.room_state run random value 1..100

# The button unlocks once a roll has happened at all, win or lose the 80/20 —
# a safety valve so a player who never gets to answer Isaac (or the 20% who
# just slept through) still has a way out.
execute if score $skara_ghost_armed virtues.room_state matches 1 run scoreboard players set $skara_ghost_triggered virtues.room_state 1

execute if score $skara_ghost_armed virtues.room_state matches 1 if score $skara_ghost_roll virtues.room_state matches 1..100 run tag @s add skara_ghost_target
execute if score $skara_ghost_armed virtues.room_state matches 1 if score $skara_ghost_roll virtues.room_state matches 1..100 run tp @s ~ ~ ~
execute if score $skara_ghost_armed virtues.room_state matches 1 if score $skara_ghost_roll virtues.room_state matches 1..100 run playsound minecraft:entity.vex.ambient hostile @s ~ ~ ~ 3 1
execute if score $skara_ghost_armed virtues.room_state matches 1 if score $skara_ghost_roll virtues.room_state matches 1..100 run effect give @s minecraft:nausea 18 0
execute if score $skara_ghost_armed virtues.room_state matches 1 if score $skara_ghost_roll virtues.room_state matches 1..100 run effect give @s minecraft:blindness 25 0
execute if score $skara_ghost_armed virtues.room_state matches 1 if score $skara_ghost_roll virtues.room_state matches 1..100 run schedule function virtues:rooms/ghost_isaac_title_reveal 100t replace

advancement revoke @s only virtues:skara_brae/ghost_isaac_sleep
