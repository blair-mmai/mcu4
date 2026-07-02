# virtues:load
# Runs once when the datapack is (re)loaded.
# Sets up the scoreboard objectives we need to track per-player state.

scoreboard objectives add virtues.firstjoin dummy
scoreboard objectives add virtues.chest dummy

# Tracks logs mined (any common log type) so we can detect "first tree punched"
scoreboard objectives add virtues.mined_oak minecraft.mined:minecraft.oak_log
scoreboard objectives add virtues.mined_birch minecraft.mined:minecraft.birch_log
scoreboard objectives add virtues.mined_spruce minecraft.mined:minecraft.spruce_log
scoreboard objectives add virtues.mined_jungle minecraft.mined:minecraft.jungle_log
scoreboard objectives add virtues.mined_acacia minecraft.mined:minecraft.acacia_log
scoreboard objectives add virtues.mined_dark_oak minecraft.mined:minecraft.dark_oak_log

# Tracks whether this player has already had a chest spawned from punching
# a tree, so it only happens once.
scoreboard objectives add virtues.tree_chest_given dummy

tellraw @a [{"text":"Ultima Virtues datapack loaded.","color":"gray","italic":true}]
