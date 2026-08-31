title @s title {"text":"The word","color":"white"}
title @s subtitle {"text":"Seek Zair the Wise in Paws for more.","color":"white"}
tellraw @s ["",{"text":"Romasco: Seek Zair the Wise in Paws for more on the word.","color":"yellow"}]
scoreboard players enable @s ROMASCOYN
title @s title {"text":"Know of the abyss?","color":"yellow"}
title @s subtitle {"text":"Know ye of the abyss?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger ROMASCOYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger ROMASCOYN set 2"}}]
