# s1: wheat seeds
scoreboard players add @s virtues.wheat_baseline 0
scoreboard players operation @s virtues.seed_delta = @s virtues.used_wheat_seeds
scoreboard players operation @s virtues.seed_delta -= @s virtues.wheat_baseline
execute if score @s virtues.seed_delta matches 1.. run advancement grant @s only virtues:vegan/s1_wheat_seeds
scoreboard players operation @s virtues.wheat_baseline = @s virtues.used_wheat_seeds

# s2: any sapling
scoreboard players add @s virtues.sapling_baseline 0
scoreboard players operation @s virtues.seed_delta = @s virtues.used_oak_sap
scoreboard players operation @s virtues.seed_delta += @s virtues.used_birch_sap
scoreboard players operation @s virtues.seed_delta += @s virtues.used_spruce_sap
scoreboard players operation @s virtues.seed_delta += @s virtues.used_jungle_sap
scoreboard players operation @s virtues.seed_delta += @s virtues.used_acacia_sap
scoreboard players operation @s virtues.seed_delta += @s virtues.used_dark_oak_sap
scoreboard players operation @s virtues.seed_delta += @s virtues.used_cherry_sap
scoreboard players operation @s virtues.seed_delta += @s virtues.used_mangrove_sap
scoreboard players operation @s virtues.seed_delta -= @s virtues.sapling_baseline
execute if score @s virtues.seed_delta matches 1.. run advancement grant @s only virtues:vegan/s2_sapling
scoreboard players operation @s virtues.sapling_baseline += @s virtues.seed_delta

# s3: beetroot seeds
scoreboard players add @s virtues.beetroot_baseline 0
scoreboard players operation @s virtues.seed_delta = @s virtues.used_beetroot_seeds
scoreboard players operation @s virtues.seed_delta -= @s virtues.beetroot_baseline
execute if score @s virtues.seed_delta matches 1.. run advancement grant @s only virtues:vegan/s3_beetroot_seeds
scoreboard players operation @s virtues.beetroot_baseline = @s virtues.used_beetroot_seeds

# s4: pumpkin seeds
scoreboard players add @s virtues.pumpkin_baseline 0
scoreboard players operation @s virtues.seed_delta = @s virtues.used_pumpkin_seeds
scoreboard players operation @s virtues.seed_delta -= @s virtues.pumpkin_baseline
execute if score @s virtues.seed_delta matches 1.. run advancement grant @s only virtues:vegan/s4_pumpkin_seeds
scoreboard players operation @s virtues.pumpkin_baseline = @s virtues.used_pumpkin_seeds

# s5: melon seeds
scoreboard players add @s virtues.melon_baseline 0
scoreboard players operation @s virtues.seed_delta = @s virtues.used_melon_seeds
scoreboard players operation @s virtues.seed_delta -= @s virtues.melon_baseline
execute if score @s virtues.seed_delta matches 1.. run advancement grant @s only virtues:vegan/s5_melon_seeds
scoreboard players operation @s virtues.melon_baseline = @s virtues.used_melon_seeds
