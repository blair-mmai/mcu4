# virtues:player/justice_teleport
# Reward for drinking Potion of Justice. Replaces Ultima IV's Gate Spell -
# teleports straight to Yew's moongate (same fixed coordinate already used
# by gypsy_align_justice.mcfunction). Shared destination for every player,
# same as Potion of Compassion - not a per-player lookup like Potion of
# Return's own stone circle.

advancement revoke @s only virtues:justice/drink_potion_of_justice
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1
teleport @s -512 69 -275
