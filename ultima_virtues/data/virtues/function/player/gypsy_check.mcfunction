# virtues:player/gypsy_check
# Fires when a player mid-ritual (virtues.gypsy_stage 1-4) answers a round
# (GYPSYQ>=1). Stores the pick into that round's objective, resets the
# trigger, advances the stage, then shows the next round or resolves.

execute if score @s virtues.gypsy_stage matches 1 run scoreboard players operation @s virtues.gypsy_r1 = @s GYPSYQ
execute if score @s virtues.gypsy_stage matches 2 run scoreboard players operation @s virtues.gypsy_r2 = @s GYPSYQ
execute if score @s virtues.gypsy_stage matches 3 run scoreboard players operation @s virtues.gypsy_r3 = @s GYPSYQ
execute if score @s virtues.gypsy_stage matches 4 run scoreboard players operation @s virtues.gypsy_r4 = @s GYPSYQ
scoreboard players set @s GYPSYQ 0
scoreboard players add @s virtues.gypsy_stage 1
execute if score @s virtues.gypsy_stage matches 2 run function virtues:player/gypsy_round2
execute if score @s virtues.gypsy_stage matches 3 run function virtues:player/gypsy_round3
execute if score @s virtues.gypsy_stage matches 4 run function virtues:player/gypsy_round4
execute if score @s virtues.gypsy_stage matches 5 run function virtues:player/gypsy_resolve
