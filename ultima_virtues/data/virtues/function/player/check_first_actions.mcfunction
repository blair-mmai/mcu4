scoreboard players add @s virtues.hum_tab_done 0
execute if score @s virtues.hum_tab_done matches 0 if score @s virtues.mined_dirt matches 1.. run function virtues:player/first_dirt

scoreboard players add @s virtues.val_tab_done 0
execute if score @s virtues.val_tab_done matches 0 if score @s virtues.mined_oak matches 1.. run function virtues:player/first_tree
execute if score @s virtues.val_tab_done matches 0 if score @s virtues.mined_birch matches 1.. run function virtues:player/first_tree
execute if score @s virtues.val_tab_done matches 0 if score @s virtues.mined_spruce matches 1.. run function virtues:player/first_tree
execute if score @s virtues.val_tab_done matches 0 if score @s virtues.mined_jungle matches 1.. run function virtues:player/first_tree
execute if score @s virtues.val_tab_done matches 0 if score @s virtues.mined_acacia matches 1.. run function virtues:player/first_tree
execute if score @s virtues.val_tab_done matches 0 if score @s virtues.mined_dark_oak matches 1.. run function virtues:player/first_tree
