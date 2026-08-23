# virtues:rooms/ghost_isaac_check
# Isaac's Y/N response. Either answer resolves and disarms the encounter — the
# room's magic button gets full normal open behavior from here on, and the player
# can sleep for real. No item reward yet (Spirituality potion doesn't exist yet).
#
# Guarded on $skara_ghost_resolved still being 0 at the moment of processing (not
# just gating the trigger's re-enable in tick.mcfunction) — two very fast clicks
# can land in the same tick before resolved actually flips, letting a second
# answer sneak through the re-enable gate alone.
#
# Answering does NOT stop the ambience or remove the target tag — those persist
# until the player actually exits via the button (see skara_room_button_check),
# since the ordeal isn't really over just because the question got answered.

execute if score $skara_ghost_resolved virtues.room_state matches 0 if score @s GHOSTYN matches 1 run tellraw @s ["",{"text":"Isaac: Then drink 2 Spirituality potions.","color":"gray"}]
execute if score $skara_ghost_resolved virtues.room_state matches 0 if score @s GHOSTYN matches 2 run tellraw @s ["",{"text":"Isaac: You are not worthy of it.","color":"gray"}]

execute if score $skara_ghost_resolved virtues.room_state matches 0 unless score @s GHOSTYN matches 0 run scoreboard players set $skara_ghost_armed virtues.room_state 0
execute if score $skara_ghost_resolved virtues.room_state matches 0 unless score @s GHOSTYN matches 0 run scoreboard players set $skara_ghost_resolved virtues.room_state 1
execute unless score @s GHOSTYN matches 0 run scoreboard players set @s GHOSTYN 0
