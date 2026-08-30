title @s title {"text":"I teach ENLIGHTENMENT!","color":"white"}
title @s subtitle {"text":"One must meditate at a stone circle at dawn!","color":"white"}
tellraw @s ["",{"text":"Lexington: One must meditate at a stone circle at dawn!","color":"yellow"}]
scoreboard players enable @s LEXINGTONYN
title @s title {"text":"Meditate?","color":"yellow"}
title @s subtitle {"text":"Do you know how to meditate?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger LEXINGTONYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger LEXINGTONYN set 2"}}]
