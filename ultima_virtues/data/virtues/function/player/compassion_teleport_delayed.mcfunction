# virtues:player/compassion_teleport_delayed
# Fired 5 ticks (0.25s) after the whoosh sound in reveal_compassion_clue,
# via schedule - gives the sound a moment to actually play before the
# teleport moves the player and cuts it off. schedule dispatches with no
# entity context, so we find the player back via the tag set before
# scheduling rather than relying on @s.

execute as @a[tag=virtues.pending_compassion_teleport] run teleport @s -385.76 67 -235.4
tag @a[tag=virtues.pending_compassion_teleport] remove virtues.pending_compassion_teleport
