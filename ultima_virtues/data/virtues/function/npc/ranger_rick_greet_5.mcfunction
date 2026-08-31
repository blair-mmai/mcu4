title @s title {"text":"The range","color":"white"}
title @s subtitle {"text":"Where the deer and the antelope play.","color":"white"}
tellraw @s ["",{"text":"Ranger Rick: Where the deer and the antelope play.","color":"yellow"}]
scoreboard players enable @s RANGERYN
title @s title {"text":"Heard of it?","color":"yellow"}
title @s subtitle {"text":"Ever heard of such a place?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger RANGERYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger RANGERYN set 2"}}]
