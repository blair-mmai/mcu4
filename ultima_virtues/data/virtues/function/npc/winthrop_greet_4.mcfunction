title @s title {"text":"Ah, the rune...","color":"white"}
title @s subtitle {"text":"A nitwit named Terrin knew of it.","color":"white"}
tellraw @s ["",{"text":"Winthrop: There is a nitwit who knew named... Terrin.","color":"yellow"}]
scoreboard players enable @s WINTHROPYN
title @s title {"text":"The rune?","color":"yellow"}
title @s subtitle {"text":"Dost thou know Terrin?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger WINTHROPYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger WINTHROPYN set 2"}}]
