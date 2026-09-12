title @s title {"text":"I'm poor.","color":"white"}
title @s subtitle {"text":"But I always give some to the poorer.","color":"white"}
tellraw @s ["",{"text":"Alex: But I always give some to the poorer.","color":"yellow"}]
scoreboard players enable @s ALEXYN
title @s title {"text":"Give to the poor?","color":"yellow"}
title @s subtitle {"text":"Dost thou give to the poor?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger ALEXYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger ALEXYN set 2"}}]
