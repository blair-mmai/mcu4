scoreboard players enable @s CELESTYN
title @s title {"text":"Tell me Stranger...","color":"yellow"}
title @s subtitle {"text":"Do you strive to be Compassionate?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger CELESTYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger CELESTYN set 2"}}]
advancement revoke @s only virtues:compassion/npc/trade_celest
