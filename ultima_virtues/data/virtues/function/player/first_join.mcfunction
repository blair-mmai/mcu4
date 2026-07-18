# virtues:player/first_join
# Fires exactly once per player. Kicks off the opening title sequence.

scoreboard objectives add virtues.intro_timer dummy
scoreboard players set @s virtues.intro_timer 1
scoreboard players add $world virtues.next_player_id 1
scoreboard players operation @s virtues.player_id = $world virtues.next_player_id

effect give @s minecraft:blindness 22 1
stopsound @s music
title @s title {"text":"","color":"white"}
title @s subtitle {"text":"You open your eyes.","color":"gray","italic":true}
tellraw @s {"text":"You open your eyes.","color":"gray","italic":true}
