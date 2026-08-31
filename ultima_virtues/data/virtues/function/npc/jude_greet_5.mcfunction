title @s title {"text":"The skull","color":"white"}
title @s subtitle {"text":"I used it!","color":"white"}
tellraw @s ["",{"text":"Jude: I used it!","color":"yellow"}]
scoreboard players enable @s JUDEYN
title @s title {"text":"Will thee swear?","color":"yellow"}
title @s subtitle {"text":"Swear to destroy it at the mouth of the abyss?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger JUDEYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger JUDEYN set 2"}}]
