title @s title {"text":"On justice","color":"white"}
title @s subtitle {"text":"Justice punishes the bad and rewards the good!","color":"white"}
tellraw @s ["",{"text":"Guard: Justice means not only to punish the bad but also to reward the good!","color":"yellow"}]
scoreboard players enable @s GUARDYN
title @s title {"text":"Always just?","color":"yellow"}
title @s subtitle {"text":"Art thou always just?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger GUARDYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger GUARDYN set 2"}}]
