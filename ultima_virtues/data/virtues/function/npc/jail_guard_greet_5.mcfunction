title @s title {"text":"The felons","color":"white"}
title @s subtitle {"text":"Felons are jailed in the right hand cell.","color":"white"}
tellraw @s ["",{"text":"Jail Guard: Felons are jailed in the right hand cell.","color":"yellow"}]
scoreboard players enable @s JAILGUARDYN
title @s title {"text":"Turn thyself in?","color":"yellow"}
title @s subtitle {"text":"Hast thou come to turn thyself in?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger JAILGUARDYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger JAILGUARDYN set 2"}}]
