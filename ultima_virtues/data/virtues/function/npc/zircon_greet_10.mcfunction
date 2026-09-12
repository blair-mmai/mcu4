title @s title {"text":"Mystic Armor","color":"white"}
title @s subtitle {"text":"My greatest work went to Sir Simon and Lady Tessa.","color":"white"}
tellraw @s ["",{"text":"Zircon: Ah, yes, the mystic weapons, and armour, my greatest work! Those I gave unto Sir Simon and Lady Tessa.","color":"yellow"}]
scoreboard players enable @s ZIRCONARMORYN
title @s title {"text":"Seek MYSTIC Armor?","color":"yellow"}
title @s subtitle {"text":"Seek thee MYSTIC Armor?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger ZIRCONARMORYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger ZIRCONARMORYN set 2"}}]
