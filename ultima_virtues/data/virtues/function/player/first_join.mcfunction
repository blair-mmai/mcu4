# virtues:player/first_join
# Fires exactly once per player. Kicks off the opening title sequence.

scoreboard objectives add virtues.intro_timer dummy
scoreboard players set @s virtues.intro_timer 1
# virtues.player_id is already assigned by assign_player_id.mcfunction, which
# runs earlier in the same tick (see tick.mcfunction) — do not reassign it
# here, that would burn a second counter value per real player.
function virtues:player/assign_starting_plot

recipe give @s *
recipe take @s virtues:potion_of_compassion
effect clear @s
attribute @s minecraft:max_health base set 20
function virtues:player/spawn_starting_chest
effect give @s minecraft:blindness 600 1
stopsound @s music
title @s times 10 70 20
title @s title {"text":"","color":"white"}
title @s subtitle {"text":"You open your eyes.","color":"gray","italic":true}
tellraw @s {"text":"You open your eyes.","color":"gray","italic":true}

# Gypsy-style virtue-alignment Q&A — 4 rounds while still blinded in the
# circle. Blindness is re-upped each round so it can't run out mid-answer;
# gypsy_align_<virtue> clears it for good once the ritual resolves.
function virtues:player/gypsy_round1
