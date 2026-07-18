scoreboard players set @s virtues.intro_timer 1
scoreboard players set @s virtues.chest_spawned 0
effect give @s minecraft:blindness 22 1
stopsound @s music
tellraw @s {"text":"Replaying intro...","color":"gray","italic":true}
