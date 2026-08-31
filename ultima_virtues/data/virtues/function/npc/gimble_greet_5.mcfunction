title @s title {"text":"Fading","color":"white"}
title @s subtitle {"text":"I will soon sleep forever.","color":"white"}
tellraw @s ["",{"text":"Gimble: I will soon sleep forever.","color":"yellow"}]
scoreboard players enable @s GIMBLEYN
title @s title {"text":"A last drink?","color":"yellow"}
title @s subtitle {"text":"Could thou spare a gold piece for a last drink?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger GIMBLEYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger GIMBLEYN set 2"}}]
