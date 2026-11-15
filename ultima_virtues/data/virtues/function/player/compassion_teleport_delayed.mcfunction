# virtues:player/compassion_teleport_delayed
# Fired 5 ticks (0.25s) after the whoosh sound in reveal_compassion_clue,
# via schedule - gives the sound a moment to actually play before the
# teleport moves the player and cuts it off. schedule dispatches with no
# entity context, so we find the player back via the tag set before
# scheduling rather than relying on @s.
# Destination: Britain's moongate (confirmed by Blair 2026-11-14), replacing
# the old hardcoded coords from a since-abandoned test world that put a
# player inside solid ground.

execute as @a[tag=virtues.pending_compassion_teleport] run teleport @s 69.597 70 527.234
tag @a[tag=virtues.pending_compassion_teleport] remove virtues.pending_compassion_teleport
