scoreboard players enable @s TYRONEYN
title @s title {"text":"Tyrone","color":"white"}
title @s subtitle {"text":"Would you like a room rental?","color":"white"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger TYRONEYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger TYRONEYN set 2"}}]
