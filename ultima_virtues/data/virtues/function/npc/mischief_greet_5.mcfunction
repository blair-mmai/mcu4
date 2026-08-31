title @s title {"text":"The rune","color":"white"}
title @s subtitle {"text":"It lies within the fires of the forge!","color":"white"}
tellraw @s ["",{"text":"Mischief: The rune of sacrifice is hard to get. It lies within the fires of the forge!","color":"yellow"}]
scoreboard players enable @s MISCHIEFYN
title @s title {"text":"Hast the rune?","color":"yellow"}
title @s subtitle {"text":"Hast thou the rune?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger MISCHIEFYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger MISCHIEFYN set 2"}}]
