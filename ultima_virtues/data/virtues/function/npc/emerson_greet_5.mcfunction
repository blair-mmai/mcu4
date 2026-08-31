title @s title {"text":"The wound","color":"white"}
title @s subtitle {"text":"Only the triumph of principles brings peace!","color":"white"}
tellraw @s ["",{"text":"Emerson: Nothing can bring thee peace but the triumph of principles!","color":"yellow"}]
scoreboard players enable @s EMERSONYN
title @s title {"text":"Good in spirit?","color":"yellow"}
title @s subtitle {"text":"Art thou good in spirit?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger EMERSONYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger EMERSONYN set 2"}}]
