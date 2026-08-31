title @s title {"text":"The chamber","color":"white"}
title @s subtitle {"text":"Within this chamber justice is served.","color":"white"}
tellraw @s ["",{"text":"Court Guard: Within this chamber justice is served.","color":"yellow"}]
scoreboard players enable @s COURTGUARDYN
title @s title {"text":"Business here?","color":"yellow"}
title @s subtitle {"text":"Dost thou have business before the court?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger COURTGUARDYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger COURTGUARDYN set 2"}}]
