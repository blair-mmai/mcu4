title @s title {"text":"The mantra","color":"white"}
title @s subtitle {"text":"A hidden shepherd is said to know it.","color":"white"}
tellraw @s ["",{"text":"Merida: I am told that a hidden shepherd knows the mantra.","color":"yellow"}]
scoreboard players enable @s MERIDAYN
title @s title {"text":"Know it?","color":"yellow"}
title @s subtitle {"text":"Know ye the mantra?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger MERIDAYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger MERIDAYN set 2"}}]
