scoreboard players enable @s WELCOMERYN
title @s title {"text":"Tell me Stranger...","color":"yellow"}
title @s subtitle {"text":"Would you like to know about potions?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger WELCOMERYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger WELCOMERYN set 2"}}]
