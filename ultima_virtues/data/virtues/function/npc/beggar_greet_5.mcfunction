title @s title {"text":"The felon","color":"white"}
title @s subtitle {"text":"That other felon is a mean nasty ugly villain!","color":"white"}
tellraw @s ["",{"text":"Beggar: That other felon is a mean nasty ugly villain!","color":"yellow"}]
scoreboard players enable @s BEGGARYN
title @s title {"text":"With the felon?","color":"yellow"}
title @s subtitle {"text":"Should thou be in with the felon?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger BEGGARYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger BEGGARYN set 2"}}]
