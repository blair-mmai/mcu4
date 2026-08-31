title @s title {"text":"Like thee","color":"white"}
title @s subtitle {"text":"Like thee!","color":"white"}
tellraw @s ["",{"text":"Vorpal: Like thee!","color":"yellow"}]
scoreboard players enable @s VORPALYN
title @s title {"text":"Here to bug me?","color":"yellow"}
title @s subtitle {"text":"Art thou here to bug me?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger VORPALYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger VORPALYN set 2"}}]
