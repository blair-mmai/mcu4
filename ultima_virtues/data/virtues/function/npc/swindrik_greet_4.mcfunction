title @s title {"text":"You see..","color":"white"}
title @s subtitle {"text":"A tall wizard reading om potions.","color":"white"}
tellraw @s ["",{"text":"Swindrik: A tall wizard reading on potions.","color":"yellow"}]
scoreboard players enable @s SWINDRIKYN
title @s title {"text":"Reading up?","color":"yellow"}
title @s subtitle {"text":"Do you read up on potions?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger SWINDRIKYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger SWINDRIKYN set 2"}}]
