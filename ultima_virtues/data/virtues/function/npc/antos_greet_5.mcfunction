title @s title {"text":"The book","color":"white"}
title @s subtitle {"text":"Seek the book of truth in the 4th Stack.","color":"white"}
tellraw @s ["",{"text":"Father Antos: Seek ye the book of truth where other books lie...in the 4th Stack.","color":"yellow"}]
scoreboard players enable @s ANTOSYN
title @s title {"text":"On the quest?","color":"yellow"}
title @s subtitle {"text":"Art thou on the quest?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger ANTOSYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger ANTOSYN set 2"}}]
