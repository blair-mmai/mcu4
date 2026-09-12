title @s title {"text":"Musing","color":"white"}
title @s subtitle {"text":"Oh, just about things.","color":"white"}
tellraw @s ["",{"text":"Damon: Oh, just about things.","color":"yellow"}]
scoreboard players enable @s DAMONYN
title @s title {"text":"Muse alone?","color":"yellow"}
title @s subtitle {"text":"Can't a man just muse to himself?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger DAMONYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger DAMONYN set 2"}}]
