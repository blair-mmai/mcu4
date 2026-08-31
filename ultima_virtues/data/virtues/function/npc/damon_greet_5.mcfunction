title @s title {"text":"The mantra","color":"white"}
title @s subtitle {"text":"Listen to the bard's song, the key's in its verse!","color":"white"}
tellraw @s ["",{"text":"Damon: Listen to the bard's song for in its verse lies the key!","color":"yellow"}]
scoreboard players enable @s DAMONYN
title @s title {"text":"Think alone?","color":"yellow"}
title @s subtitle {"text":"Can't a man just think to himself?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger DAMONYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger DAMONYN set 2"}}]
