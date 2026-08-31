title @s title {"text":"A secret","color":"white"}
title @s subtitle {"text":"Ask my sister, Mischief.","color":"white"}
tellraw @s ["",{"text":"Azure: Ask my sister, Mischief.","color":"yellow"}]
scoreboard players enable @s AZUREYN
title @s title {"text":"Seek a rune?","color":"yellow"}
title @s subtitle {"text":"Dost thou seek a rune?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger AZUREYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger AZUREYN set 2"}}]
