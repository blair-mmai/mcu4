# virtues:player/clear_old_circle_ownership
# Called from spawn_starting_chest.mcfunction, right before it creates a new
# owner marker. Finds and kills any PREVIOUS owner marker this player
# already had (wherever in the world it is) and un-forceloads its chunk,
# so re-initiating a circle (e.g. via resetting virtues.firstjoin) doesn't
# leave two markers simultaneously reading as "this player's circle" to
# check_circle_ownership.mcfunction/enter_other_circle.mcfunction. Safe to
# call even if there's no previous marker - the comparisons just won't match.

scoreboard players operation $circle_init_requester virtues.circle_owner_id = @s virtues.player_id
execute as @e[type=minecraft:marker,tag=virtues.owner] if score @s virtues.player_id = $circle_init_requester virtues.circle_owner_id at @s run forceload remove ~ ~
execute as @e[type=minecraft:marker,tag=virtues.owner] if score @s virtues.player_id = $circle_init_requester virtues.circle_owner_id run kill @s
