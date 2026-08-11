execute if score @s compassion_yes matches 1 at @e[type=villager,limit=1,sort=nearest] run summon item ~ ~1 ~ {Item:{id:"minecraft:beetroot_soup",Count:1b},Motion:[0.0,0.35,0.0]}
execute if score @s compassion_yes matches 1 run tellraw @s ["",{"text":"The villager tosses you a bowl of beetroot soup.","color":"yellow"}]
execute if score @s compassion_yes matches 1 run scoreboard players set @s compassion_yes 0
