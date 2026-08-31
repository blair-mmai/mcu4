title @s title {"text":"Advice","color":"white"}
title @s subtitle {"text":"Thou would be advised to visit the Seer often!","color":"white"}
tellraw @s ["",{"text":"Scatuu: Thou would be well advised to visit the Seer often!","color":"yellow"}]
scoreboard players enable @s SCATUUYN
title @s title {"text":"Partial avatar?","color":"yellow"}
title @s subtitle {"text":"Art thou a partial avatar?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger SCATUUYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger SCATUUYN set 2"}}]
