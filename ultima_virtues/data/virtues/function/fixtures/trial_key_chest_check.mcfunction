# virtues:fixtures/trial_key_chest_check
# Keeps a dedicated chest slot (container slot 0) always stocked with a
# Trial Key. Checked every tick — if a player removes it, it's replaced
# within a tick, effectively instant even in multiplayer since this isn't
# gated on any one player's presence/interaction.
#
# Position: an invisible marker entity tagged trial_key_chest_1, placed
# exactly at the chest's block position (moves with the structure on export,
# same as the Jhelom switch marker).

execute at @e[tag=trial_key_chest_1,limit=1] unless items block ~ ~ ~ container.0 minecraft:trial_key run item replace block ~ ~ ~ container.0 with minecraft:trial_key
