title @s title {"text":"Honor?","color":"white"}
title @s subtitle {"text":"Wisdom on honor is found here.","color":"white"}
tellraw @s ["",{"text":"Rigmore: Wisdom on the virtue of honor is found throughout this towne.","color":"yellow"}]
scoreboard players enable @s RIGMOREYN
title @s title {"text":"Honor?","color":"yellow"}
title @s subtitle {"text":"Dost thou seek to know honor?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger RIGMOREYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger RIGMOREYN set 2"}}]
