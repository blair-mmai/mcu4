title @s title {"text":"The quest","color":"white"}
title @s subtitle {"text":"I'm not so sure, but it should be fun!","color":"white"}
tellraw @s ["",{"text":"Short Round: I'm not so sure, but it should be fun!","color":"yellow"}]
scoreboard players enable @s SHORTYN
title @s title {"text":"Having fun?","color":"yellow"}
title @s subtitle {"text":"Art thou having fun?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger SHORTYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger SHORTYN set 2"}}]
