title @s title {"text":"Illness","color":"white"}
title @s subtitle {"text":"I have terminal leg rot.","color":"white"}
tellraw @s ["",{"text":"Bob the Beggar: I have terminal leg rot.","color":"yellow"}]
scoreboard players enable @s BOBYN
title @s title {"text":"Any money?","color":"yellow"}
title @s subtitle {"text":"Hast thou any money?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger BOBYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger BOBYN set 2"}}]
