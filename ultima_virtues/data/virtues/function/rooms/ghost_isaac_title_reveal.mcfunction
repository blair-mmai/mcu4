# virtues:rooms/ghost_isaac_title_reveal
# Scheduled 100t (5s) after ghost_isaac_encounter fires — the title/dialogue beat,
# delayed so nausea (18s) and blindness (25s) are already running when it lands.
# No player context survives a schedule call, so this targets whoever's tagged
# skara_ghost_target (set in ghost_isaac_encounter, cleared in ghost_isaac_check)
# instead of @a — otherwise it broadcast to every online player, not just the
# one actually in the room (confirmed bug: a second tester saw it elsewhere).
# Re-applies both effects here too, so they're guaranteed to still be running
# through the title reveal regardless of whatever the original grant's actual
# remaining duration was by this point.

effect give @a[tag=skara_ghost_target] minecraft:nausea 15 0
effect give @a[tag=skara_ghost_target] minecraft:blindness 20 0
title @a[tag=skara_ghost_target] times 10 100 20
title @a[tag=skara_ghost_target] title {"text":"I am Isaac...","color":"gray"}
title @a[tag=skara_ghost_target] subtitle {"text":"I protect the rune. Dost thou seek it?","color":"gray"}
tellraw @a[tag=skara_ghost_target] ["",{"text":"Isaac: I protect the rune. Dost thou seek it? Type 'T' and select either: ","color":"gray"},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger GHOSTYN set 1"}},{"text":" "},{"text":"[No]","color":"red","click_event":{"action":"run_command","command":"/trigger GHOSTYN set 2"}}]
