# virtues:player/gypsy_align_spirituality
# Resolved outcome: Spirituality -> Skara Brae. Reached when the 4 round
# picks' vectors nearly cancel out (r < 0.05) - a deliberate consequence of
# Spirituality being K+T+L+C (all four principles at once), not a special
# case. Coordinates are Skara Brae's Cheap Room, on the white shulker chest,
# per Blair's LocationStarts tab. Item/compass are given with ceremony via
# the shared gypsy_reveal_1..5 chain.

tag @s add aligned_spirituality
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42
tp @s -405 72 -542
effect clear @s minecraft:blindness
tag @s add virtues.pending_gypsy_reveal
function virtues:player/gypsy_reveal_1
