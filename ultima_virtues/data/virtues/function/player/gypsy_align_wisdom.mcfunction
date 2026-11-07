# virtues:player/gypsy_align_wisdom
# Resolved outcome: Wisdom -> Lycaeum (moongate near Lycaeum, per Blair's
# LocationStarts tab). Player is teleported there directly - the
# staging-plot chest they leave behind only has flavor lore. Item/compass
# are given with ceremony via the shared gypsy_reveal_1..5 chain.

tag @s add aligned_wisdom
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:jump_strength base set 0.42
tp @s 10 74 -355
effect clear @s minecraft:blindness
tag @s add virtues.pending_gypsy_reveal
function virtues:player/gypsy_reveal_1
