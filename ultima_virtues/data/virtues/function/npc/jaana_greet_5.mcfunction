title @s title {"text":"On calling","color":"white"}
title @s subtitle {"text":"Let justice be thy calling not thy excuse!","color":"white"}
tellraw @s ["",{"text":"Jaana: Let justice be thy calling not thy excuse!","color":"yellow"}]
scoreboard players enable @s JAANAYN
title @s title {"text":"Art thou just?","color":"yellow"}
title @s subtitle {"text":"Art thou just?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger JAANAYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger JAANAYN set 2"}}]
