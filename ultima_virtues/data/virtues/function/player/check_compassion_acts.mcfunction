scoreboard players add @s virtues.animals_bred_baseline 0
scoreboard players operation @s virtues.animals_bred_delta = @s virtues.animals_bred
scoreboard players operation @s virtues.animals_bred_delta -= @s virtues.animals_bred_baseline
tellraw @s [{"text":"bred_delta: ","color":"aqua"},{"score":{"name":"@s","objective":"virtues.animals_bred_delta"},"color":"white"}]
execute if score @s virtues.animals_bred_delta matches 1.. run function virtues:player/fed_animal
execute if score @s virtues.animals_bred_delta matches 1.. run scoreboard players operation @s virtues.animals_bred_baseline += @s virtues.animals_bred_delta
