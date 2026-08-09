advancement revoke @s only virtues:compassion/drink_compassion_potion
title @s times 10 180 10
title @s subtitle {"text":"'BEL'"}
title @s title {"text":"You see a vision:"}
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1
tag @s add virtues.pending_compassion_teleport
schedule function virtues:player/compassion_teleport_delayed 5t replace
