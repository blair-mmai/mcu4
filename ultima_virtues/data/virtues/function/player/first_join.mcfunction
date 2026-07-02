# virtues:player/first_join
# Fires exactly once per player. Kicks off the opening title sequence.

scoreboard objectives add virtues.intro_timer dummy
scoreboard players set @s virtues.intro_timer 1

title @s title {"text":"","color":"white"}
title @s subtitle {"text":"You open your eyes.","color":"gray","italic":true}
