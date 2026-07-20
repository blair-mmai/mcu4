# virtues:player/intro_sequence
# Called every tick from the main tick function. Drives the multi-line
# title intro for any player whose virtues.intro_timer is active (>0),
# then spawns the starting chest and circle once the sequence finishes.
#
# Timer values (ticks, 20 ticks = 1 second):
#   1        -> "You open your eyes." (shown by first_join.mcfunction)
#   60       -> "You find yourself in a field."
#   120      -> "You are a stranger here."
#   180      -> "...you feel an urge to punch a tree."
#   240      -> spawn chest + circle, end sequence

execute as @a[scores={virtues.intro_timer=60}] run title @s times 10 70 20
execute as @a[scores={virtues.intro_timer=60}] run title @s subtitle {"text":"You find yourself in a field.","color":"gray","italic":true}
execute as @a[scores={virtues.intro_timer=60}] run tellraw @s {"text":"You find yourself in a field.","color":"gray","italic":true}
execute as @a[scores={virtues.intro_timer=120}] run title @s times 10 70 20
execute as @a[scores={virtues.intro_timer=120}] run title @s subtitle {"text":"You are a stranger here.","color":"gray","italic":true}
execute as @a[scores={virtues.intro_timer=120}] run tellraw @s {"text":"You are a stranger here.","color":"gray","italic":true}
execute as @a[scores={virtues.intro_timer=180}] run title @s times 10 70 20
execute as @a[scores={virtues.intro_timer=180}] run title @s subtitle {"text":"...you feel an urge to punch a tree.","color":"gray","italic":true}
execute as @a[scores={virtues.intro_timer=180}] run tellraw @s {"text":"...you feel an urge to punch a tree.","color":"gray","italic":true}
execute as @a[scores={virtues.intro_timer=240,virtues.chest_spawned=0}] at @s run function virtues:player/spawn_starting_chest
execute as @a[scores={virtues.intro_timer=240}] run scoreboard players set @s virtues.intro_timer 0

# Advance the timer for anyone currently mid-sequence (1 through 239)
execute as @a[scores={virtues.intro_timer=1..239}] run scoreboard players add @s virtues.intro_timer 1
