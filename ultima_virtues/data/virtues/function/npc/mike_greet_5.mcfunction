title @s title {"text":"The rune","color":"white"}
title @s subtitle {"text":"The rune of our city is missing!","color":"white"}
tellraw @s ["",{"text":"Mike Ward: The rune of our city is missing!","color":"yellow"}]
scoreboard players enable @s MIKEYN
title @s title {"text":"Know of it?","color":"yellow"}
title @s subtitle {"text":"Know thee of the rune?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger MIKEYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger MIKEYN set 2"}}]
