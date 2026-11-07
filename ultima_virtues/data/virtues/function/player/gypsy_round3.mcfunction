# virtues:player/gypsy_round3
# Options: 1=Wisdom 2=Sacrifice 3=Honor

effect give @s minecraft:blindness 600 1
scoreboard players enable @s GYPSYQ
title @s title {"text":"A third voice...","color":"yellow"}
title @s subtitle {"text":"A choice at the crossroads.","color":"yellow"}
tellraw @s ["",{"text":"A hermit offers a shortcut through the swamp - for something precious of yours.","color":"yellow","italic":true}]
tellraw @s ["",{"text":"Type 'T' and choose: ","color":"gray"},{"text":"[Study the paths yourself. A stranger's shortcut isn't worth trusting blind.]","color":"red","click_event":{"action":"run_command","command":"/trigger GYPSYQ set 1"}}]
tellraw @s ["",{"text":"             ","color":"gray"},{"text":"[Give up your own meal so the hermit eats, shortcut or not.]","color":"aqua","click_event":{"action":"run_command","command":"/trigger GYPSYQ set 2"}}]
tellraw @s ["",{"text":"             ","color":"gray"},{"text":"[Wait for the traveler behind you rather than slip through alone.]","color":"gold","click_event":{"action":"run_command","command":"/trigger GYPSYQ set 3"}}]
