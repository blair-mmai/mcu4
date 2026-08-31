title @s title {"text":"The word","color":"white"}
title @s subtitle {"text":"I know but one of three syllables.","color":"white"}
tellraw @s ["",{"text":"Robert Frasier: I know but one of three syllables.","color":"yellow"}]
scoreboard players enable @s ROBERTYN
title @s title {"text":"Know it now?","color":"yellow"}
title @s subtitle {"text":"Dost thou wish to know it now?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger ROBERTYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger ROBERTYN set 2"}}]
