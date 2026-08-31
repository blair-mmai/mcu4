title @s title {"text":"On pride","color":"white"}
title @s subtitle {"text":"Flourishes without truth, love, courage.","color":"white"}
tellraw @s ["",{"text":"Katrina: Pride flourishes in the absence of truth, love and courage.","color":"yellow"}]
scoreboard players enable @s KATRINAYN
title @s title {"text":"Art thou proud?","color":"yellow"}
title @s subtitle {"text":"Art thou proud?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger KATRINAYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger KATRINAYN set 2"}}]
