# virtues:player/gypsy_reveal_4
# Beat 4 of 5. Gives a lodestone compass pointing back at the player's own
# stone circle (not the town-start destination - see gypsy_give_home_compass
# for the per-player marker lookup) and announces it.

title @a[tag=virtues.pending_gypsy_reveal] times 10 60 10
title @a[tag=virtues.pending_gypsy_reveal] title {"text":"","color":"white"}
title @a[tag=virtues.pending_gypsy_reveal] subtitle {"text":"And a compass.","color":"yellow","italic":true}
tellraw @a[tag=virtues.pending_gypsy_reveal] ["",{"text":"And a compass.","color":"yellow","italic":true}]

execute as @a[tag=virtues.pending_gypsy_reveal] run function virtues:player/gypsy_give_home_compass

schedule function virtues:player/gypsy_reveal_5 60t replace
