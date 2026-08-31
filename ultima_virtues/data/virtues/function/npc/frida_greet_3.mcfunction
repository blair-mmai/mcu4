title @s title {"text":"Duty","color":"white"}
title @s subtitle {"text":"I beg and live hand-to-mouth every day.","color":"white"}
tellraw @s ["",{"text":"Frida: I beg and live hand-to-mouth every day.","color":"yellow"}]
scoreboard players enable @s FRIDAYN
title @s title {"text":"Help my baby?","color":"yellow"}
title @s subtitle {"text":"Wilt thou give me money to heal my baby?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger FRIDAYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger FRIDAYN set 2"}}]
