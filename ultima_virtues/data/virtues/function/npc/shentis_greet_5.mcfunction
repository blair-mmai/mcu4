title @s title {"text":"On virtue","color":"white"}
title @s subtitle {"text":"Avatars strive to be virtuous.","color":"white"}
tellraw @s ["",{"text":"Shentis: Avatars strive to be virtuous.","color":"yellow"}]
scoreboard players enable @s SHENTISYN
title @s title {"text":"Strive for virtue?","color":"yellow"}
title @s subtitle {"text":"Dost thou strive for virtue?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger SHENTISYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger SHENTISYN set 2"}}]
