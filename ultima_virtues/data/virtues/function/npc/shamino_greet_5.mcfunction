title @s title {"text":"The truth","color":"white"}
title @s subtitle {"text":"That which lies within the codex!","color":"white"}
tellraw @s ["",{"text":"Shamino: That which lies within the codex!","color":"yellow"}]
scoreboard players enable @s SHAMINOYN
title @s title {"text":"Seek 'truth'?","color":"yellow"}
title @s subtitle {"text":"Dost thou seek this 'truth'?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger SHAMINOYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger SHAMINOYN set 2"}}]
