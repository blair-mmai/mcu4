# virtues:player/return_to_chest_sound_delayed
# Fired 5 ticks after arriving home. schedule dispatches with no entity
# context, so we find the pending player back via tag rather than @s, and
# use "at @s" to re-anchor position to their actual location before playing
# (schedule doesn't inherit position, so a bare ~ ~ ~ here resolves wrong).

execute as @a[tag=virtues.pending_home_sound] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1
tag @a[tag=virtues.pending_home_sound] remove virtues.pending_home_sound
