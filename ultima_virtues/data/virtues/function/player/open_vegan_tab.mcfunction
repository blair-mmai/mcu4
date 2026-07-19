advancement grant @s only virtues:vegan/root
scoreboard players add @s virtues.announced_vegan 0
execute if score @s virtues.announced_vegan matches 0 run tellraw @a ["",{"selector":"@s","color":"white"},{"text":" has uncovered the advancements of Vegan.","color":"yellow"}]
execute if score @s virtues.announced_vegan matches 0 run scoreboard players set @s virtues.announced_vegan 1
