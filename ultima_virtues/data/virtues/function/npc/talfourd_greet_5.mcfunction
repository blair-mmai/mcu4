title @s title {"text":"The rune","color":"white"}
title @s subtitle {"text":"It is hidden well!","color":"white"}
tellraw @s ["",{"text":"Talfourd: It is hidden well!","color":"yellow"}]
scoreboard players enable @s TALFOURDYN
title @s title {"text":"Guilty of none?","color":"yellow"}
title @s subtitle {"text":"Can thou honestly claim to be guilty of no crime ever?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger TALFOURDYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger TALFOURDYN set 2"}}]
