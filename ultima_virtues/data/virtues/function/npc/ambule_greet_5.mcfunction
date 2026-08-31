title @s title {"text":"The plea","color":"white"}
title @s subtitle {"text":"Oh, please... Oh, please...","color":"white"}
tellraw @s ["",{"text":"Ambule: Oh, please... Oh, please...","color":"yellow"}]
scoreboard players enable @s AMBULEYN
title @s title {"text":"A gold piece?","color":"yellow"}
title @s subtitle {"text":"Wilt thou please give me a gold piece?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger AMBULEYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger AMBULEYN set 2"}}]
