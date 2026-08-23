# virtues:rooms/skara_ghost_ambience
# Repeats a vex sound every 3s (60 ticks, set via $skara_amb_period in load.mcfunction)
# for as long as $skara_ghost_encounter_active
# is set — from the moment the plate arms the room until the player actually exits
# via the button (see skara_ghost_arm_check / skara_room_button_check), spanning
# any number of sleep attempts, not just the brief roll-to-answer window.
# Rotates between two clips (ambient chitter, charge screech) for variety instead
# of repeating the exact same sound every time.
#
# Runs from the plain tick loop with no position context, so ~ ~ ~ in playsound
# would resolve to world origin, not the player — fixed by explicitly running
# "as @a[tag] at @s" so the sound's source position is the player's own location.

execute if score $skara_ghost_encounter_active virtues.room_state matches 1 run scoreboard players operation $skara_amb_mod virtues.room_state = $world virtues.tick_count
execute if score $skara_ghost_encounter_active virtues.room_state matches 1 run scoreboard players operation $skara_amb_mod virtues.room_state %= $skara_amb_period virtues.room_state

execute if score $skara_ghost_encounter_active virtues.room_state matches 1 if score $skara_amb_mod virtues.room_state matches 0 store result score $skara_amb_sound virtues.room_state run random value 1..3
execute if score $skara_ghost_encounter_active virtues.room_state matches 1 if score $skara_amb_mod virtues.room_state matches 0 if score $skara_amb_sound virtues.room_state matches 1 as @a[tag=skara_ghost_target] at @s run playsound minecraft:entity.vex.ambient hostile @s ~ ~ ~ 3 1
execute if score $skara_ghost_encounter_active virtues.room_state matches 1 if score $skara_amb_mod virtues.room_state matches 0 if score $skara_amb_sound virtues.room_state matches 2..3 as @a[tag=skara_ghost_target] at @s run playsound minecraft:entity.vex.charge hostile @s ~ ~ ~ 3 1
