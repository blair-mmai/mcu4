# virtues:player/gypsy_intro
# Fired by gypsy_start right after the player drinks "Drink Me". First of 3
# paced beats before round 1 starts: this line, then "Ready...?"
# (gypsy_intro_ready), then the Talk/Type hint (gypsy_intro_hint), each a
# schedule tick apart rather than all firing in the same instant.

title @s times 10 60 10
title @s title {"text":"A Voice stirs...","color":"yellow"}
title @s subtitle {"text":"It has questions for you.","color":"yellow"}
tellraw @s ["",{"text":"A Voice speaks, quiet and close: these questions will decide your path.","color":"yellow","italic":true}]
tag @s add virtues.pending_gypsy_round1
schedule function virtues:player/gypsy_intro_ready 60t replace
