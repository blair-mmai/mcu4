title @s title {"text":"The altars","color":"white"}
title @s subtitle {"text":"The dungeon altar rooms need 4 stones each!","color":"white"}
tellraw @s ["",{"text":"Tymus: The dungeon altar rooms need 4 stones each!","color":"yellow"}]
scoreboard players enable @s TYMUSYN
title @s title {"text":"How many?","color":"yellow"}
title @s subtitle {"text":"Know ye how many cities follow truth?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger TYMUSYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger TYMUSYN set 2"}}]
