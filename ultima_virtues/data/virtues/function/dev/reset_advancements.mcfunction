advancement revoke @s from minecraft:story
advancement revoke @s from minecraft:nether
advancement revoke @s from minecraft:end
advancement revoke @s from minecraft:adventure
advancement revoke @s from minecraft:husbandry
scoreboard players set @s virtues.vanilla_cleared 1
advancement revoke @s only virtues:vegan/root
advancement revoke @s only virtues:vegan/l6_enlightened
advancement revoke @s only virtues:vegan/tree_abuser
advancement revoke @s only virtues:vegan/s1_wheat_seeds
advancement revoke @s only virtues:vegan/s2_sapling
advancement revoke @s only virtues:vegan/s3_beetroot_seeds
advancement revoke @s only virtues:vegan/s4_pumpkin_seeds
advancement revoke @s only virtues:vegan/s5_melon_seeds
advancement revoke @s only virtues:vegan/p1_bread
advancement revoke @s only virtues:vegan/p2_baked_potato
advancement revoke @s only virtues:vegan/p3_beetroot
advancement revoke @s only virtues:vegan/p4_cookie
advancement revoke @s only virtues:vegan/p5_golden_carrot
advancement revoke @s only virtues:vegan/g1_bread
advancement revoke @s only virtues:vegan/g2_baked_potato
advancement revoke @s only virtues:vegan/g3_beetroot
advancement revoke @s only virtues:vegan/g4_cookie
advancement revoke @s only virtues:vegan/g5_golden_carrot
advancement revoke @s only virtues:compassion/root
advancement revoke @s only virtues:compassion/first_mushroom
advancement revoke @s only virtues:compassion/got_mushroom
advancement revoke @s only virtues:compassion/xc_detector
advancement revoke @s only virtues:compassion/hay_thief_detector
advancement revoke @s only virtues:core/thats_not_yours
advancement revoke @s only virtues:core/stealing_is_bad
advancement revoke @s only virtues:compassion/puncher_of_animals
advancement revoke @s only virtues:compassion/repeat_offender
advancement revoke @s only virtues:compassion/cruel_by_nature
advancement revoke @s only virtues:compassion/callous_brute
advancement revoke @s only virtues:compassion/animal_lover
advancement revoke @s only virtues:compassion/fungal_exchange
advancement revoke @s only virtues:compassion/plea_for_help
advancement revoke @s only virtues:compassion/bowl_detector
advancement revoke @s only virtues:compassion/soup_kitchen
advancement revoke @s only virtues:compassion/soup_redemption
advancement revoke @s only virtues:compassion/rune_of_compassion
advancement revoke @s only virtues:compassion/compassionate
advancement revoke @s only virtues:compassion/say_mantra
advancement revoke @s only virtues:compassion/say_mantra_in_circle
advancement revoke @s only virtues:compassion/take_a_stand
advancement revoke @s only virtues:compassion/assume_position
advancement revoke @s only virtues:compassion/aim
advancement revoke @s only virtues:compassion/fire
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
scoreboard players set @s virtues.bread_prev 0
scoreboard players set @s virtues.potato_prev 0
scoreboard players set @s virtues.beetroot_prev 0
scoreboard players set @s virtues.cookie_prev 0
scoreboard players set @s virtues.gcarrot_prev 0
scoreboard players set @s virtues.animal_punches 0
scoreboard players set @s virtues.animals_bred 0
scoreboard players set @s virtues.animals_bred_baseline 0
scoreboard players set @s virtues.chests_opened 0
scoreboard players set @s virtues.bowls_traded 0
tellraw @s {"text":"Advancements reset. Use virtues:dev/trigger_dirt, trigger_tree, or trigger_animal to test each.","color":"yellow"}
