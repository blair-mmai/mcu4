execute store result score @s virtues.food_curr run clear @s minecraft:bread 0
scoreboard players operation @s virtues.food_delta = @s virtues.bread_prev
scoreboard players operation @s virtues.food_delta -= @s virtues.food_curr
execute if score @s virtues.food_delta matches 1.. run function virtues:player/gave_bread

execute store result score @s virtues.food_curr run clear @s minecraft:baked_potato 0
scoreboard players operation @s virtues.food_delta = @s virtues.potato_prev
scoreboard players operation @s virtues.food_delta -= @s virtues.food_curr
execute if score @s virtues.food_delta matches 1.. run function virtues:player/gave_baked_potato

execute store result score @s virtues.food_curr run clear @s minecraft:beetroot_soup 0
scoreboard players operation @s virtues.food_delta = @s virtues.beetroot_prev
scoreboard players operation @s virtues.food_delta -= @s virtues.food_curr
execute if score @s virtues.food_delta matches 1.. run function virtues:player/gave_beetroot_soup

execute store result score @s virtues.food_curr run clear @s minecraft:cookie 0
scoreboard players operation @s virtues.food_delta = @s virtues.cookie_prev
scoreboard players operation @s virtues.food_delta -= @s virtues.food_curr
execute if score @s virtues.food_delta matches 1.. run function virtues:player/gave_cookie

execute store result score @s virtues.food_curr run clear @s minecraft:golden_carrot 0
scoreboard players operation @s virtues.food_delta = @s virtues.gcarrot_prev
scoreboard players operation @s virtues.food_delta -= @s virtues.food_curr
execute if score @s virtues.food_delta matches 1.. run function virtues:player/gave_golden_carrot
