title @s title {"text":"On Yew","color":"white"}
title @s subtitle {"text":"Yes 'tis a fair city!","color":"white"}
tellraw @s ["",{"text":"Dwp: Yes 'tis a fair city!","color":"yellow"}]
scoreboard players enable @s DWPYN
title @s title {"text":"Dost thou like it?","color":"yellow"}
title @s subtitle {"text":"Dost thou like it?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger DWPYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger DWPYN set 2"}}]
