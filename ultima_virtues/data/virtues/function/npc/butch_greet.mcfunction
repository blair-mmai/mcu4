# virtues:npc/butch_greet
# Fires once per fresh proximity approach (see tick.mcfunction's virtues.near_butch
# state machine, same pattern as Estro/etc).

title @s title {"text":"Howdy! Hungry?","color":"white"}
title @s subtitle {"text":"Hungry? We've got a fine selection of goods.","color":"white"}
tellraw @s ["",{"text":"Butch: Hungry? We've got a fine selection of goods.","color":"yellow"}]
