scoreboard players enable @s compassion_yes
title @s title {"text":"Compassion?","color":"white"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger compassion_yes set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger compassion_yes set 2"}}]
