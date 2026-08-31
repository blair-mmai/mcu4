title @s title {"text":"The mantra","color":"white"}
title @s subtitle {"text":"Faultless knows the mantra, ask him!","color":"white"}
tellraw @s ["",{"text":"Heywood: Faultless knows the mantra of pride ask him!","color":"yellow"}]
scoreboard players enable @s HEYWOODYN
title @s title {"text":"Art thou proud?","color":"yellow"}
title @s subtitle {"text":"Art thou proud?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger HEYWOODYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger HEYWOODYN set 2"}}]
