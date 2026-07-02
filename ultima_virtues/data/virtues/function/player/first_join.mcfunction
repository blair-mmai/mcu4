# virtues:player/first_join
# Fires exactly once per player. Kicks off the opening title sequence.
# Uses a per-player scoreboard timer (virtues.intro_timer) advanced in the
# tick function rather than /schedule, since /schedule does not preserve
# the executing player context (@s) into the scheduled function.

scoreboard objectives add virtues.intro_timer dummy
scoreboard players set @s virtues.intro_timer 1

title @s title {"text":"","color":"white"}
title @s subtitle {"text":"You are a stranger here.","color":"gray","italic":true}
