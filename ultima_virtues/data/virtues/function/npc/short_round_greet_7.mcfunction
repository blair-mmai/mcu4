title @s title {"text":"Yay, Crafting!","color":"white"}
title @s subtitle {"text":"Crafting is the best!","color":"white"}
tellraw @s ["",{"text":"Short Round: Crafting is the best!","color":"yellow"}]
scoreboard players enable @s SHORTYN
title @s title {"text":"Mine or Craft?","color":"yellow"}
title @s subtitle {"text":"Do you like to Mine or Craft?","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and select either: ","color":"gray"},{"text":"[Mine]","color":"green","click_event":{"action":"run_command","command":"/trigger SHORTYN set 1"}},{"text":" "},{"text":"[Craft]","color":"red","click_event":{"action":"run_command","command":"/trigger SHORTYN set 2"}}]
