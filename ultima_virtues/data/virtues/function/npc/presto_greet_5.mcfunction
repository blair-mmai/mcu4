title @s title {"text":"Nightshade","color":"white"}
title @s subtitle {"text":"Ask the barkeep at 'The Axe-n-Ale' in Vesper.","color":"white"}
tellraw @s ["",{"text":"Presto: Yes, ask the barkeep at 'The Axe-n-Ale' in Vesper about nightshade.","color":"yellow"}]
scoreboard players enable @s PRESTOYN
title @s title {"text":"Know the trick?","color":"yellow"}
title @s subtitle {"text":"Dost thou know what these spells have in common?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger PRESTOYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger PRESTOYN set 2"}}]
