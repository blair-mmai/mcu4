title @s title {"text":"Mystic Bows","color":"white"}
title @s subtitle {"text":"My finest mystic bows went to Lord British.","color":"white"}
tellraw @s ["",{"text":"Zircon: My finest mystic bows went to Lord British.","color":"yellow"}]
scoreboard players enable @s ZIRCONBOWSYN
title @s title {"text":"Seek MYSTIC Bows?","color":"yellow"}
title @s subtitle {"text":"Seek thee MYSTIC Bows?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger ZIRCONBOWSYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger ZIRCONBOWSYN set 2"}}]
