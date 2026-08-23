scoreboard players enable @s HEROYN
title @s title {"text":"Tell me Stranger...","color":"white"}
title @s subtitle {"text":"Do thou strive to be valiant against evil?","color":"white"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger HEROYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger HEROYN set 2"}}]
