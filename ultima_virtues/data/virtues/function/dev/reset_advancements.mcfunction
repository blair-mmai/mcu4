advancement revoke @s only virtues:compassion/root
advancement revoke @s only virtues:compassion/first_mushroom
advancement revoke @s only virtues:compassion/xc_detector
advancement revoke @s only virtues:compassion/xc1
advancement revoke @s only virtues:compassion/xc2
advancement revoke @s only virtues:compassion/xc3
advancement revoke @s only virtues:compassion/callous_brute
advancement revoke @s only virtues:compassion/c1
advancement revoke @s only virtues:compassion/c2
advancement revoke @s only virtues:compassion/c3
advancement revoke @s only virtues:compassion/c4
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
tellraw @s {"text":"Advancements reset. Use virtues:dev/trigger_dirt, trigger_tree, or trigger_animal to test each.","color":"yellow"}
