advancement revoke @s only virtues:compassion/got_mushroom
advancement grant @s only virtues:compassion/root
advancement grant @s only virtues:compassion/first_mushroom
scoreboard players add @s virtues.announced_compassion 0
execute if score @s virtues.announced_compassion matches 0 run tellraw @a ["",{"selector":"@s","color":"white"},{"text":" has uncovered the advancements of Compassion.","color":"yellow"}]
execute if score @s virtues.announced_compassion matches 0 run scoreboard players set @s virtues.announced_compassion 1
