title @s title {"text":"The mantra","color":"white"}
title @s subtitle {"text":"Antithesis of humility, is 'MUL'.","color":"white"}
tellraw @s ["",{"text":"Faultless: The mantra for pride, being the antithesis of humility, is 'MUL'.","color":"yellow"}]
scoreboard players enable @s FAULTLESSYN
title @s title {"text":"Art thou proud?","color":"yellow"}
title @s subtitle {"text":"Art thou proud?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger FAULTLESSYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger FAULTLESSYN set 2"}}]
