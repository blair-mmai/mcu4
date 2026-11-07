# virtues:player/gypsy_round1_delayed
# Scheduled ~3s after gypsy_intro_hint's Talk/Type beat (last of the 3 paced
# intro beats). schedule function loses entity context, so this finds the
# player via the tag gypsy_intro set and runs the real round1 function as
# them.

execute as @a[tag=virtues.pending_gypsy_round1] at @s run function virtues:player/gypsy_round1
tag @a[tag=virtues.pending_gypsy_round1] remove virtues.pending_gypsy_round1
