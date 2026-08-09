# Active window: 10000-15999
execute if score $daytime moongate.daytime matches 10000..15999 run particle minecraft:portal HONOR_X HONOR_Y HONOR_Z 1.5 1.5 1.5 0.05 15 normal
execute if score $daytime moongate.daytime matches 10000..15999 run particle minecraft:end_rod HONOR_X HONOR_Y HONOR_Z 0.8 0.8 0.8 0.02 5 normal
execute if score $daytime moongate.daytime matches 10000..15999 as @a[x=HONOR_X,y=HONOR_Y,z=HONOR_Z,distance=..2,scores={moongate.cooldown=0}] run function moongate:gate/return_to_spawn
