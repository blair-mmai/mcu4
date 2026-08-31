title @s title {"text":"Let me see…","color":"white"}
title @s subtitle {"text":"The book you seek is in ...(4,8)-something…","color":"white"}
tellraw @s ["",{"text":"Lord Terence: The book you seek is in ...(4,8)-something…","color":"yellow"}]
scoreboard players enable @s TERENCEYN
title @s title {"text":"Seek a book?","color":"yellow"}
title @s subtitle {"text":"Art thou looking for a particular book?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger TERENCEYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger TERENCEYN set 2"}}]
