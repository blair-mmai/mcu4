# virtues:player/drank_return_potion
# Reward for drinking Potion of Return. Reuses the same marker-lookup
# teleport built for the moongate dwell mechanic (return_to_chest_teleport)
# since the destination is identical - 2 blocks above the player's own
# starting chest.

advancement revoke @s only virtues:compassion/drink_return_potion
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1
function virtues:player/return_to_chest_teleport
