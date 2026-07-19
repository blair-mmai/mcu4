scoreboard players enable @s TAKECHEST
execute if score @s TAKECHEST matches 1.. run function virtues:player/take_chest_resolve
scoreboard players set @s TAKECHEST 0
