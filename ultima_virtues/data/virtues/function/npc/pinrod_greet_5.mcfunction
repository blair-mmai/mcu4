title @s title {"text":"On justice","color":"white"}
title @s subtitle {"text":"The steel is justice's agent, humanity its perpetrator!","color":"white"}
tellraw @s ["",{"text":"Pinrod: Justice is hardest to find at the point of a sword, the steel is an agent of justice, humanity the perpetrator!","color":"yellow"}]
scoreboard players enable @s PINRODYN
title @s title {"text":"Fight for it?","color":"yellow"}
title @s subtitle {"text":"Fight ye for justice?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger PINRODYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger PINRODYN set 2"}}]
