# virtues:player/spawn_chests
# Called once, at the end of the intro title sequence, at the player's
# current position. Places two chests near the player:
#   1. The player's personal starting chest (named, tagged, contains seeds
#      for each virtue chain)
#   2. The "Private" chest (open temptation - tests the player immediately)
#
# Both chests are placed slightly offset from the player so they don't
# spawn inside them.

# --- Personal starting chest ---
# Placed 2 blocks in front of the player (relative to their facing direction
# is hard to guarantee in pure mcfunction without rotation math, so we place
# it at a fixed small offset - acceptable for v1).

setblock ~2 ~ ~ minecraft:chest{CustomName:'{"text":"A Stranger\u0027s Pack","italic":false}'}

execute positioned ~2 ~ ~ run loot insert ~ ~ ~ loot virtues:chests/starting_chest

# Tag this exact chest location so it can't be broken/looted by other
# players later - handled at the block-interaction level in a future pass.
# For v1 we rely on it being out of the way rather than hard-locking it.

# --- The "Private" chest ---
# Placed a few blocks away in a different direction so it reads as a
# separate, deliberate object rather than part of the starting pack.

setblock ~-3 ~ ~2 minecraft:chest{CustomName:'{"text":"Private","italic":false}'}

execute positioned ~-3 ~ ~2 run loot insert ~ ~ ~ loot virtues:chests/private_chest

# Mark this player as having an active "private chest" watch so we can
# detect if/when they open it (handled via advancement predicate, see
# compassion/opened_private_chest.json equivalent under core/).
