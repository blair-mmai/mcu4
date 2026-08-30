title @s title {"text":"Here's your change.","color":"white"}
title @s subtitle {"text":"Enjoy your stay.","color":"white"}
tellraw @s ["",{"text":"Zajac: Here's your change. Enjoy your stay.","color":"yellow"}]
execute at @e[tag=trinsic_room_door_1,limit=1] if block ~ ~ ~ minecraft:iron_door[open=false] run playsound minecraft:block.iron_door.open block @a ~ ~ ~
execute at @e[tag=trinsic_room_door_1,limit=1] run setblock ~ ~ ~ minecraft:iron_door[facing=north,hinge=right,half=lower,open=true]
execute at @e[tag=trinsic_room_door_1,limit=1] run setblock ~ ~1 ~ minecraft:iron_door[facing=north,hinge=right,half=upper,open=true]
advancement revoke @s only virtues:trinsic/trade_zajac_l1
