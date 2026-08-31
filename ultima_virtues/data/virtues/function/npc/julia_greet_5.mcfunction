title @s title {"text":"The house","color":"white"}
title @s subtitle {"text":"Many poor and destitute souls dwell here.","color":"white"}
tellraw @s ["",{"text":"Julia: Within this house are many poor and destitute souls.","color":"yellow"}]
scoreboard players enable @s JULIAYN
title @s title {"text":"Wilt thou help?","color":"yellow"}
title @s subtitle {"text":"Wilt thou help?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger JULIAYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger JULIAYN set 2"}}]
