title @s title {"text":"A Totem of Undying!","color":"white"}
title @s subtitle {"text":"The rune is hidden in a corner of this city!","color":"white"}
tellraw @s ["",{"text":"Hero: The rune is hidden in a corner of this city!","color":"yellow"}]
xp add @s 5 points
advancement revoke @s only virtues:valor/npc/trade_hero_l2
