title @s title {"text":"Resurrection","color":"white"}
title @s subtitle {"text":"Ash, ginseng, garlic, silk, bloodmoss, mandrake!","color":"white"}
tellraw @s ["",{"text":"Nigel: Yes, resurrection it takes ash, ginseng, garlic, silk, bloodmoss, and mandrake!","color":"yellow"}]
scoreboard players enable @s NIGELYN
title @s title {"text":"Know its name?","color":"yellow"}
title @s subtitle {"text":"Dost thou know what it is?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger NIGELYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger NIGELYN set 2"}}]
