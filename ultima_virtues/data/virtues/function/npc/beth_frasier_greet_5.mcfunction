title @s title {"text":"On truth","color":"white"}
title @s subtitle {"text":"We live truth to the fullest!","color":"white"}
tellraw @s ["",{"text":"Beth Frasier: Our people believe in truth as a way of life and live it to the fullest!","color":"yellow"}]
scoreboard players enable @s BETHYN
title @s title {"text":"Seek truth?","color":"yellow"}
title @s subtitle {"text":"Dost thou seek truth?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger BETHYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger BETHYN set 2"}}]
