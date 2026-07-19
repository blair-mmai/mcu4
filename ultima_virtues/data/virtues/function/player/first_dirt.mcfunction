scoreboard players set @s virtues.hum_tab_done 1
advancement grant @s only virtues:humility/root
advancement grant @s only virtues:humility/dug_dirt
scoreboard players add @s virtues.announced_humility 0
execute if score @s virtues.announced_humility matches 0 run tellraw @a ["",{"selector":"@s","color":"white"},{"text":" has uncovered the advancements of Humility.","color":"yellow"}]
scoreboard players set @s virtues.announced_humility 1
