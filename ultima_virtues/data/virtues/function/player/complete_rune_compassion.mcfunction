execute at @e[type=minecraft:marker,tag=virtues.pillar_compassion,limit=1] run fill ~ ~ ~ ~ ~5 ~ minecraft:obsidian
advancement grant @s only virtues:compassion/rune_of_compassion
title @s title {"text":"Rune of Compassion","color":"aqua"}
