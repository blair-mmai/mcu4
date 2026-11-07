# virtues:player/gypsy_round2
# Options: 1=Honesty 2=Justice 3=Compassion. Called by gypsy_check once stage
# advances to 2; stage is already set by the time this runs.

effect give @s minecraft:blindness 600 1
scoreboard players enable @s GYPSYQ
title @s title {"text":"Another voice...","color":"yellow"}
title @s subtitle {"text":"A secret weighs on you.","color":"yellow"}
tellraw @s ["",{"text":"A locked diary could hurt a friend if its secret is told - or let someone else be unfairly blamed if it isn't.","color":"yellow","italic":true}]
tellraw @s ["",{"text":"Type 'T' and choose: ","color":"gray"},{"text":"[Tell the truth outright, whatever it costs.]","color":"red","click_event":{"action":"run_command","command":"/trigger GYPSYQ set 1"}}]
tellraw @s ["",{"text":"             ","color":"gray"},{"text":"[Hand it to whoever has the right to judge it, and trust their ruling.]","color":"aqua","click_event":{"action":"run_command","command":"/trigger GYPSYQ set 2"}}]
tellraw @s ["",{"text":"             ","color":"gray"},{"text":"[Burn the diary. Spare them both the pain of knowing.]","color":"gold","click_event":{"action":"run_command","command":"/trigger GYPSYQ set 3"}}]
