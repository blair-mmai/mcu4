# Active window: 2000-7999
execute if score $daytime moongate.daytime matches 2000..7999 run particle minecraft:portal 226.85 74.0 -96.69 1.5 1.5 1.5 0.05 15 normal
execute if score $daytime moongate.daytime matches 2000..7999 run particle minecraft:end_rod 226.85 74.0 -96.69 0.8 0.8 0.8 0.02 5 normal
execute if score $daytime moongate.daytime matches 2000..7999 as @a[x=226.85,y=74.0,z=-96.69,distance=..2,scores={moongate.cooldown=0}] run function moongate:gate/return_to_spawn
