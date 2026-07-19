# virtues:player/first_join
# Fires exactly once per player. Kicks off the opening title sequence.

scoreboard objectives add virtues.intro_timer dummy
scoreboard players set @s virtues.intro_timer 1
scoreboard players add $world virtues.next_player_id 1
scoreboard players operation @s virtues.player_id = $world virtues.next_player_id

advancement grant @s only virtues:compassion/root
scoreboard players add @s virtues.announced_compassion 0
execute if score @s virtues.announced_compassion matches 0 run tellraw @a ["",{"selector":"@s","color":"white"},{"text":" has uncovered the advancements of Compassion.","color":"yellow"}]
scoreboard players set @s virtues.announced_compassion 1

recipe give @s *
effect give @s minecraft:blindness 22 1
stopsound @s music
title @s title {"text":"","color":"white"}
title @s subtitle {"text":"You open your eyes.","color":"gray","italic":true}
tellraw @s {"text":"You open your eyes.","color":"gray","italic":true}
