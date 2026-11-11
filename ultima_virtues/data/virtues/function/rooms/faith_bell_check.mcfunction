# virtues:rooms/faith_bell_check
# Detects any player ringing a bell (minecraft.custom:minecraft.bell_ring stat,
# same baseline/delta edge-detection style as check_compassion_acts.mcfunction).
# Not scoped to the faith_bell marker's position - there's only one bell in the
# world right now. If a second bell gets built elsewhere, add a distance check
# against @e[tag=faith_bell] here before resetting the timer.

scoreboard players add @s virtues.bell_rings_baseline 0
scoreboard players operation @s virtues.bell_rings_delta = @s virtues.bell_rings
scoreboard players operation @s virtues.bell_rings_delta -= @s virtues.bell_rings_baseline
execute if score @s virtues.bell_rings_delta matches 1.. run function virtues:rooms/faith_bell_rung
execute if score @s virtues.bell_rings_delta matches 1.. run scoreboard players operation @s virtues.bell_rings_baseline += @s virtues.bell_rings_delta
