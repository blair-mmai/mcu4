scoreboard players add @s virtues.stone_baseline 0
scoreboard players operation @s virtues.log_delta = @s virtues.mined_stone
scoreboard players operation @s virtues.log_delta -= @s virtues.stone_baseline
execute if score @s virtues.log_delta matches 1.. if items entity @s weapon.mainhand #virtues:wood_pickaxes run item damage entity @s weapon.mainhand 9 minecraft:player
execute if score @s virtues.log_delta matches 1.. if items entity @s weapon.mainhand #virtues:stone_pickaxes run item damage entity @s weapon.mainhand 9 minecraft:player
execute if score @s virtues.log_delta matches 1.. run scoreboard players operation @s virtues.stone_baseline += @s virtues.log_delta
