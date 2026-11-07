# virtues:player/gypsy_start
# Fires when the player drinks the "Drink Me" potion from their starting
# chest (see advancement gypsy/drink_me_potion.json). Only actually starts
# the ritual if it hasn't already been started/finished - guards against a
# duplicate "Drink Me" potion (e.g. from creative) re-triggering it.

advancement revoke @s only virtues:gypsy/drink_me_potion
execute if score @s virtues.gypsy_stage matches 0 run function virtues:player/gypsy_round1
