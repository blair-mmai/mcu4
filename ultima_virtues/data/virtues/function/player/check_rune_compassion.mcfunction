advancement revoke @s only virtues:compassion/rune_placed_detector
execute if score @s virtues.in_circle matches 1 at @e[type=minecraft:marker,tag=virtues.pillar_compassion,limit=1] if block ~ ~ ~ minecraft:brown_glazed_terracotta if block ~ ~5 ~ minecraft:brown_glazed_terracotta run function virtues:player/complete_rune_compassion
