scoreboard players set @s virtues.val_tab_done 1
advancement grant @s only virtues:valor/root
advancement grant @s only virtues:valor/punched_tree
scoreboard players add @s virtues.announced_valor 0
execute if score @s virtues.announced_valor matches 0 run tellraw @a ["",{"selector":"@s","color":"white"},{"text":" has uncovered the advancements of Valor.","color":"yellow"}]
scoreboard players set @s virtues.announced_valor 1
tellraw @s {"text":"That stung. Courage has a cost.","color":"yellow"}
