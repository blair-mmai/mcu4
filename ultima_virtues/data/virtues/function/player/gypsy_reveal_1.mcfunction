# virtues:player/gypsy_reveal_1
# Beat 1 of 5 in the resolution-reveal ceremony, called directly (as @s)
# from gypsy_align_<virtue> right after teleport/blindness-clear. Virtue-
# independent, so no branching needed here. Each later beat is scheduled
# ~3s apart and operates on @a[tag=virtues.pending_gypsy_reveal], since
# schedule function loses entity context - that tag (added by
# gypsy_align_<virtue>) and the aligned_<virtue> tag are what let beats 3-5
# find the right player and branch to the right virtue's text/item.

title @s times 10 60 10
title @s title {"text":"","color":"white"}
title @s subtitle {"text":"Your path is determined.","color":"gold","italic":true}
tellraw @s ["",{"text":"Your path is determined.","color":"gold","italic":true}]
schedule function virtues:player/gypsy_reveal_2 60t replace
