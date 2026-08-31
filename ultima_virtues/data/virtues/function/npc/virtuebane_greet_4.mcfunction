title @s title {"text":"Magincia's Fall","color":"white"}
title @s subtitle {"text":"Our virtue was ill-placed in pride!","color":"white"}
tellraw @s ["",{"text":"Virtuebane: Magincia fell unto the realm of darkness due to its virtue ill-placed in pride!","color":"yellow"}]
scoreboard players enable @s VIRTUEBANEYN
title @s title {"text":"Art thou proud?","color":"yellow"}
title @s subtitle {"text":"Art thou proud?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger VIRTUEBANEYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger VIRTUEBANEYN set 2"}}]
