title @s title {"text":"Mandrake root","color":"white"}
title @s subtitle {"text":"Found in the Fens of the Dead, Bloody Plains.","color":"white"}
tellraw @s ["",{"text":"Calumny: Mandrake root is found only in the Fens of the Dead and in the Bloody Plains where the ground is always damp.","color":"yellow"}]
scoreboard players enable @s CALUMNYYN
title @s title {"text":"Cast it?","color":"yellow"}
title @s subtitle {"text":"Can thou cast it?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger CALUMNYYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger CALUMNYYN set 2"}}]
