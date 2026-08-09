# virtues:player/return_to_chest
# Entry point, called when the portal dwell timer completes. Teleports
# immediately (no point delaying that - the ambient portal hum was masking
# a pre-departure whoosh anyway), then schedules the whoosh to play 5 ticks
# (0.25s) after arrival, once the player is clear of the portal's ambient
# sound.

function virtues:player/return_to_chest_teleport
tag @s add virtues.pending_home_sound
schedule function virtues:player/return_to_chest_sound_delayed 5t replace
