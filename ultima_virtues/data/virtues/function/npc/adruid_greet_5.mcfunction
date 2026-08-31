title @s title {"text":"The shrine","color":"white"}
title @s subtitle {"text":"The shrine is to the east then north!","color":"white"}
tellraw @s ["",{"text":"A.Druid: The shrine is to the east then north!","color":"yellow"}]
scoreboard players enable @s ADRUIDYN
title @s title {"text":"Hast the rune?","color":"yellow"}
title @s subtitle {"text":"Dost thou have the rune?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger ADRUIDYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger ADRUIDYN set 2"}}]
