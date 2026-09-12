# virtues:npc/estro_greet
# Fires once per fresh proximity approach (see tick.mcfunction's virtues.near_estro
# state machine, same pattern as Estrol/Tyrone/etc).

title @s title {"text":"Rooms","color":"white"}
title @s subtitle {"text":"3, 6, or 9 gold nuggets -- finer stays cost more.","color":"white"}
tellraw @s ["",{"text":"Estro: Rooms for rent -- 3, 6, or 9 gold nuggets, finer stays cost more. See my trades.","color":"yellow"}]
