scoreboard players enable @s GIVECHEST
execute if score @s GIVECHEST matches 1.. run function virtues:player/give_chest_resolve
scoreboard players set @s GIVECHEST 0
