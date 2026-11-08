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
# Must re-anchor position here: assign_starting_plot teleported the player
# entity, but a bare `function` call inherits the STALE pre-teleport position
# from tick.mcfunction's original "at @s" - without this, spawn_starting_chest
# builds the chest/pillars back where the player was standing before the
# teleport, not where they actually landed.
execute at @s run function virtues:player/spawn_starting_chest
stopsound @s music
title @s times 10 70 20
title @s title {"text":"","color":"white"}
title @s subtitle {"text":"You open your eyes.","color":"gray","italic":true}
tellraw @s {"text":"You open your eyes.","color":"gray","italic":true}

# Blind and frozen from the moment they wake, indefinitely - no time
# pressure. They can still open the chest and read the lore books; nothing
# else happens until they work out they need to drink the "Drink Me" potion
# in there, which fires gypsy_start -> gypsy_round1 (see
# advancement/gypsy/drink_me_potion.json).
scoreboard players set @s virtues.gypsy_stage 0
effect give @s minecraft:blindness infinite 1
attribute @s minecraft:movement_speed base set 0
attribute @s minecraft:jump_strength base set 0
