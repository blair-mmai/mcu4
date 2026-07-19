# virtues:load
# Runs once when the datapack is (re)loaded.
# Sets up the scoreboard objectives we need to track per-player state.

scoreboard objectives add virtues.tick_count dummy
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
scoreboard objectives add RELAXABIT trigger
scoreboard objectives add SHOWDEBUG trigger
scoreboard objectives add GIVECHEST trigger
scoreboard objectives add TAKECHEST trigger
scoreboard objectives add virtues.name_roll dummy
scoreboard objectives add virtues.player_id dummy
scoreboard objectives add virtues.next_player_id dummy
scoreboard objectives add virtues.chest_spawned dummy
scoreboard objectives add virtues.circle_check dummy
scoreboard objectives add virtues.circle_owner_id dummy
scoreboard players add $world virtues.next_player_id 0
scoreboard objectives add virtues.trade_timer dummy
scoreboard objectives add virtues.music_state dummy
scoreboard objectives add virtues.music_desired dummy
scoreboard objectives add virtues.music_timer dummy
scoreboard objectives add virtues.greeted_fannie dummy
scoreboard objectives add virtues.greeted_freddie dummy
scoreboard objectives add virtues.greeted_ginnie dummy
scoreboard objectives add virtues.bowl_prev dummy
scoreboard objectives add virtues.announced_compassion dummy
scoreboard objectives add virtues.announced_valor dummy
scoreboard objectives add virtues.announced_humility dummy
scoreboard objectives add virtues.announced_vegan dummy
scoreboard objectives add virtues.mined_stone minecraft.mined:minecraft.stone
scoreboard objectives add virtues.stone_baseline dummy
scoreboard objectives add virtues.hit_hostile dummy
scoreboard objectives add virtues.ingot_count dummy
scoreboard objectives add virtues.used_wheat_seeds minecraft.used:minecraft.wheat_seeds
scoreboard objectives add virtues.used_oak_sap minecraft.used:minecraft.oak_sapling
scoreboard objectives add virtues.used_birch_sap minecraft.used:minecraft.birch_sapling
scoreboard objectives add virtues.used_spruce_sap minecraft.used:minecraft.spruce_sapling
scoreboard objectives add virtues.used_jungle_sap minecraft.used:minecraft.jungle_sapling
scoreboard objectives add virtues.used_acacia_sap minecraft.used:minecraft.acacia_sapling
scoreboard objectives add virtues.used_dark_oak_sap minecraft.used:minecraft.dark_oak_sapling
scoreboard objectives add virtues.used_cherry_sap minecraft.used:minecraft.cherry_sapling
scoreboard objectives add virtues.used_mangrove_sap minecraft.used:minecraft.mangrove_propagule
scoreboard objectives add virtues.used_beetroot_seeds minecraft.used:minecraft.beetroot_seeds
scoreboard objectives add virtues.used_pumpkin_seeds minecraft.used:minecraft.pumpkin_seeds
scoreboard objectives add virtues.used_melon_seeds minecraft.used:minecraft.melon_seeds
scoreboard objectives add virtues.seed_delta dummy
scoreboard objectives add virtues.wheat_baseline dummy
scoreboard objectives add virtues.sapling_baseline dummy
scoreboard objectives add virtues.beetroot_baseline dummy
scoreboard objectives add virtues.pumpkin_baseline dummy
scoreboard objectives add virtues.melon_baseline dummy
scoreboard objectives add virtues.ingot_blocks dummy
scoreboard objectives add virtues.ingot_remainder dummy
scoreboard objectives add virtues.ingot_nuggets dummy
scoreboard objectives add virtues.is_metallurgist dummy
scoreboard objectives add virtues.const dummy
scoreboard players set $nine virtues.const 9

# Wipe all vanilla advancement tabs so they never show
advancement revoke @a from minecraft:story
advancement revoke @a from minecraft:nether
advancement revoke @a from minecraft:end
advancement revoke @a from minecraft:adventure
advancement revoke @a from minecraft:husbandry
advancement revoke @a only minecraft:adventure/kill_a_mob
advancement revoke @a only minecraft:adventure/bow_and_arrow
advancement revoke @a only minecraft:adventure/shoot_arrow

tellraw @a [{"text":"Ultima Virtues datapack loaded.","color":"gray","italic":true}]
