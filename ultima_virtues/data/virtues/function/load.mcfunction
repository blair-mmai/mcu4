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
scoreboard objectives add virtues.oak_baseline dummy
scoreboard objectives add virtues.birch_baseline dummy
scoreboard objectives add virtues.spruce_baseline dummy
scoreboard objectives add virtues.jungle_baseline dummy
scoreboard objectives add virtues.acacia_baseline dummy
scoreboard objectives add virtues.dark_oak_baseline dummy
scoreboard objectives add virtues.log_delta dummy
scoreboard objectives add virtues.world_init dummy
scoreboard objectives add virtues.reset_timer dummy
scoreboard objectives add virtues.in_circle dummy
scoreboard objectives add virtues.mined_dirt minecraft.mined:minecraft.dirt
scoreboard objectives add virtues.mined_grass minecraft.mined:minecraft.grass_block
scoreboard objectives add virtues.dirt_baseline dummy
scoreboard objectives add virtues.grass_baseline dummy
scoreboard objectives add virtues.hum_tab_done dummy
scoreboard objectives add virtues.val_tab_done dummy
scoreboard objectives add virtues.animal_punches dummy
scoreboard objectives add virtues.total_logs_base dummy
scoreboard objectives add virtues.bowls_traded dummy
scoreboard objectives add virtues.hay_stolen dummy
scoreboard objectives add virtues.vanilla_cleared dummy
scoreboard objectives add RELAXABIT trigger
scoreboard objectives add virtues.name_roll dummy
scoreboard objectives add virtues.greeted_fannie dummy
scoreboard objectives add virtues.greeted_freddie dummy
scoreboard objectives add virtues.greeted_ginnie dummy

# Wipe all vanilla advancement tabs so they never show
advancement revoke @a from minecraft:story
advancement revoke @a from minecraft:nether
advancement revoke @a from minecraft:end
advancement revoke @a from minecraft:adventure
advancement revoke @a from minecraft:husbandry

tellraw @a [{"text":"Ultima Virtues datapack loaded.","color":"gray","italic":true}]
