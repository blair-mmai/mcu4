advancement revoke @s everything
effect clear @s
attribute @s minecraft:max_health base set 20
scoreboard players set @s virtues.hum_tab_done 0
scoreboard players set @s virtues.val_tab_done 0
scoreboard players set @s virtues.announced_compassion 0
scoreboard players set @s virtues.announced_valor 0
scoreboard players set @s virtues.announced_humility 0
scoreboard players set @s virtues.announced_vegan 0
scoreboard players set @s virtues.animal_punches 0
scoreboard players operation @s virtues.dirt_baseline = @s virtues.mined_dirt
scoreboard players operation @s virtues.grass_baseline = @s virtues.mined_grass
scoreboard players operation @s virtues.oak_baseline = @s virtues.mined_oak
scoreboard players operation @s virtues.birch_baseline = @s virtues.mined_birch
scoreboard players operation @s virtues.spruce_baseline = @s virtues.mined_spruce
scoreboard players operation @s virtues.jungle_baseline = @s virtues.mined_jungle
scoreboard players operation @s virtues.acacia_baseline = @s virtues.mined_acacia
scoreboard players operation @s virtues.dark_oak_baseline = @s virtues.mined_dark_oak
scoreboard players operation @s virtues.total_logs_base = @s virtues.mined_oak
scoreboard players operation @s virtues.total_logs_base += @s virtues.mined_birch
scoreboard players operation @s virtues.total_logs_base += @s virtues.mined_spruce
scoreboard players operation @s virtues.total_logs_base += @s virtues.mined_jungle
scoreboard players operation @s virtues.total_logs_base += @s virtues.mined_acacia
scoreboard players operation @s virtues.total_logs_base += @s virtues.mined_dark_oak
scoreboard players operation @s virtues.stone_baseline = @s virtues.mined_stone
scoreboard players operation @s virtues.wheat_baseline = @s virtues.used_wheat_seeds
scoreboard players operation @s virtues.sapling_baseline = @s virtues.used_oak_sap
scoreboard players operation @s virtues.sapling_baseline += @s virtues.used_birch_sap
scoreboard players operation @s virtues.sapling_baseline += @s virtues.used_spruce_sap
scoreboard players operation @s virtues.sapling_baseline += @s virtues.used_jungle_sap
scoreboard players operation @s virtues.sapling_baseline += @s virtues.used_acacia_sap
scoreboard players operation @s virtues.sapling_baseline += @s virtues.used_dark_oak_sap
scoreboard players operation @s virtues.sapling_baseline += @s virtues.used_cherry_sap
scoreboard players operation @s virtues.sapling_baseline += @s virtues.used_mangrove_sap
scoreboard players operation @s virtues.beetroot_baseline = @s virtues.used_beetroot_seeds
scoreboard players operation @s virtues.pumpkin_baseline = @s virtues.used_pumpkin_seeds
scoreboard players operation @s virtues.melon_baseline = @s virtues.used_melon_seeds
scoreboard players operation @s virtues.wheat_feed_baseline = @s virtues.used_wheat
scoreboard players operation @s virtues.animals_bred_baseline = @s virtues.animals_bred
recipe give @s *
advancement revoke @s only virtues:compassion/xc_detector
execute at @s as @e[type=minecraft:marker,tag=virtues.owner,distance=..500,limit=1,sort=nearest] run scoreboard players operation @s virtues.player_id = @p[distance=..500,limit=1,sort=nearest] virtues.player_id
tellraw @s {"text":"Progress reset. Pick up a mushroom or punch an animal for Compassion, dig dirt for Humility, punch an evil mob for Valor.","color":"yellow"}
