title @s title {"text":"To buy food","color":"white"}
title @s subtitle {"text":"To buy food!","color":"white"}
tellraw @s ["",{"text":"Granted: To buy food!","color":"yellow"}]
scoreboard players enable @s GRANTEDYN
title @s title {"text":"Food or money?","color":"yellow"}
title @s subtitle {"text":"Wilt thou give me food or money?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger GRANTEDYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger GRANTEDYN set 2"}}]
