scoreboard players enable @s compassion_yes
title @s subtitle {"text":"Do ye strive to be compassionate?","color":"white"}
title @s title {"text":"Tell me, stranger:","color":"white"}
playsound virtues:npc.wah_wah master @s ~ ~ ~ 1 1.0
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger compassion_yes set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger compassion_yes set 2"}}]
