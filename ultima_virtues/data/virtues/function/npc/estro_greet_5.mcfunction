title @s title {"text":"Still looking…","color":"white"}
title @s subtitle {"text":"It must be here somewhere!  …2.1….2.1…","color":"white"}
tellraw @s ["",{"text":"Estro: It must be here somewhere!  …2.1….2.1…","color":"yellow"}]
scoreboard players enable @s ESTROYN
title @s title {"text":"Ever sinned?","color":"yellow"}
title @s subtitle {"text":"Hast thou never committed any crime!?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger ESTROYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger ESTROYN set 2"}}]
