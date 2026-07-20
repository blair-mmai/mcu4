advancement revoke @s from minecraft:story
advancement revoke @s from minecraft:nether
advancement revoke @s from minecraft:end
advancement revoke @s from minecraft:adventure
advancement revoke @s from minecraft:husbandry
scoreboard players set @s virtues.vanilla_cleared 1
advancement revoke @s only virtues:compassion/root
advancement revoke @s only virtues:compassion/first_mushroom
advancement revoke @s only virtues:compassion/xc_detector
advancement revoke @s only virtues:compassion/hay_thief_detector
advancement revoke @s only virtues:core/thats_not_yours
advancement revoke @s only virtues:core/stealing_is_bad
advancement revoke @s only virtues:compassion/puncher_of_animals
advancement revoke @s only virtues:compassion/repeat_offender
advancement revoke @s only virtues:compassion/cruel_by_nature
advancement revoke @s only virtues:compassion/callous_brute
advancement revoke @s only virtues:compassion/fungal_exchange
advancement revoke @s only virtues:compassion/plea_for_help
advancement revoke @s only virtues:compassion/bowl_detector
advancement revoke @s only virtues:compassion/soup_kitchen
advancement revoke @s only virtues:compassion/rune_of_compassion
advancement revoke @s only virtues:compassion/compassionate
advancement revoke @s only virtues:valor/root
advancement revoke @s only virtues:valor/punched_tree
advancement revoke @s only virtues:valor/v1
advancement revoke @s only virtues:valor/v2
advancement revoke @s only virtues:valor/v3
advancement revoke @s only virtues:valor/valiant
advancement revoke @s only virtues:valor/xv1
advancement revoke @s only virtues:valor/xv2
advancement revoke @s only virtues:valor/xv3
advancement revoke @s only virtues:humility/root
advancement revoke @s only virtues:humility/dug_dirt
advancement revoke @s only virtues:humility/h1
advancement revoke @s only virtues:humility/h2
advancement revoke @s only virtues:humility/h3
advancement revoke @s only virtues:humility/humble
advancement revoke @s only virtues:humility/xh1
advancement revoke @s only virtues:humility/xh2
advancement revoke @s only virtues:humility/xh3
scoreboard players set @s virtues.hum_tab_done 0
scoreboard players operation @s virtues.dirt_baseline = @s virtues.mined_dirt
scoreboard players operation @s virtues.grass_baseline = @s virtues.mined_grass
scoreboard players set @s virtues.val_tab_done 0
scoreboard players operation @s virtues.oak_baseline = @s virtues.mined_oak
scoreboard players operation @s virtues.birch_baseline = @s virtues.mined_birch
scoreboard players operation @s virtues.spruce_baseline = @s virtues.mined_spruce
scoreboard players operation @s virtues.jungle_baseline = @s virtues.mined_jungle
scoreboard players operation @s virtues.acacia_baseline = @s virtues.mined_acacia
scoreboard players operation @s virtues.dark_oak_baseline = @s virtues.mined_dark_oak
scoreboard players set @s virtues.animal_punches 0
scoreboard players set @s virtues.chests_opened 0
scoreboard players set @s virtues.bowls_traded 0
tellraw @s {"text":"Advancements reset. Use virtues:dev/trigger_dirt, trigger_tree, or trigger_animal to test each.","color":"yellow"}
