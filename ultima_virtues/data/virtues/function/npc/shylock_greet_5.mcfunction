title @s title {"text":"The plea","color":"white"}
title @s subtitle {"text":"Yes, please give me money! oh... please...","color":"white"}
tellraw @s ["",{"text":"Shylock the Meek: Yes, please give me money! oh... please...","color":"yellow"}]
scoreboard players enable @s SHYLOCKYN
title @s title {"text":"Help him?","color":"yellow"}
title @s subtitle {"text":"Wilt thou help me? Oh... please...","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger SHYLOCKYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger SHYLOCKYN set 2"}}]
