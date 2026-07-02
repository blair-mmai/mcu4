# virtues:player/intro_sequence
# Called every tick from the main tick function. Drives the multi-line
# title intro for any player whose virtues.intro_timer is active (>0),
# then spawns the starting chests once the sequence finishes.
#
# Timer values (ticks, 20 ticks = 1 second):
#   1        -> line 1 already shown by first_join.mcfunction
#   60       -> line 2
#   120      -> line 3
#   180      -> line 4
#   220      -> spawn chests, end sequence (timer set to 0)

execute as @a[scores={virtues.intro_timer=60}] run title @s subtitle {"text":"Eight ways to be.","color":"gray","italic":true}
execute as @a[scores={virtues.intro_timer=120}] run title @s subtitle {"text":"The world is watching.","color":"gray","italic":true}
execute as @a[scores={virtues.intro_timer=180}] run title @s subtitle {"text":"Begin.","color":"gray","italic":true}
execute as @a[scores={virtues.intro_timer=220}] at @s run function virtues:player/spawn_chests
execute as @a[scores={virtues.intro_timer=220}] run scoreboard players set @s virtues.intro_timer 0

# Advance the timer for anyone currently mid-sequence (1 through 219)
execute as @a[scores={virtues.intro_timer=1..219}] run scoreboard players add @s virtues.intro_timer 1
