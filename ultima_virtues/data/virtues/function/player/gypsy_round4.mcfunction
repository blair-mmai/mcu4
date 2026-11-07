# virtues:player/gypsy_round4
# Options: 1=Faith 2=Honesty 3=Honor. Last round - gypsy_check calls
# gypsy_resolve right after this one's answer comes in.

effect give @s minecraft:blindness 600 1
scoreboard players enable @s GYPSYQ
title @s title {"text":"A final voice...","color":"yellow"}
title @s subtitle {"text":"One last request.","color":"yellow"}
tellraw @s ["",{"text":"A dying stranger asks you to deliver a sealed letter - unread.","color":"yellow","italic":true}]
tellraw @s ["",{"text":"Type 'T' and choose: ","color":"gray"},{"text":"[Trust their word. Carry it exactly as asked, no questions.]","color":"red","click_event":{"action":"run_command","command":"/trigger GYPSYQ set 1"}}]
tellraw @s ["",{"text":"             ","color":"gray"},{"text":"[Read it first. You won't carry something you don't understand.]","color":"aqua","click_event":{"action":"run_command","command":"/trigger GYPSYQ set 2"}}]
tellraw @s ["",{"text":"             ","color":"gray"},{"text":"[Deliver it exactly as promised - a promise is a promise, sealed or not.]","color":"gold","click_event":{"action":"run_command","command":"/trigger GYPSYQ set 3"}}]
