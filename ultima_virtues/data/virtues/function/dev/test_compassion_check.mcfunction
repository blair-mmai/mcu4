execute if score @s compassion_yes matches 1 run give @s minecraft:beetroot_soup 1
execute if score @s compassion_yes matches 1 run tellraw @s ["",{"text":"The villager tosses you a bowl of beetroot soup.","color":"yellow"}]
execute if score @s compassion_yes matches 2 run tellraw @s ["",{"text":"The villager says \"Alas...\"","color":"yellow"}]
execute unless score @s compassion_yes matches 0 run scoreboard players set @s compassion_yes 0
