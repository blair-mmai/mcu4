advancement revoke @s only virtues:humility/root
advancement revoke @s only virtues:humility/dug_dirt
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
advancement revoke @s only virtues:compassion/compassionate
advancement revoke @s only virtues:compassion/planted_brown_mushroom
advancement revoke @s only virtues:valor/root
advancement revoke @s only virtues:valor/punched_tree
scoreboard players set @s virtues.hum_tab_done 1
scoreboard players set @s virtues.val_tab_done 1
scoreboard players set @s virtues.animal_punches 0
tellraw @s {"text":"Advancements reset. Use virtues:dev/trigger_dirt, trigger_tree, or trigger_animal to test each.","color":"yellow"}
