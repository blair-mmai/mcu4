title @s title {"text":"On wonder","color":"white"}
title @s subtitle {"text":"Philosophical minds find wonder in the familiar!","color":"white"}
tellraw @s ["",{"text":"Santayana: In philosophical minds the familiar excites wonder!","color":"yellow"}]
scoreboard players enable @s SANTAYANAYN
title @s title {"text":"The right path?","color":"yellow"}
title @s subtitle {"text":"Dost thou always tread the right path?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger SANTAYANAYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger SANTAYANAYN set 2"}}]
