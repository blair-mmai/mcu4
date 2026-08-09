# Active window: 8000-13999
execute if score $daytime moongate.daytime matches 8000..13999 run particle minecraft:portal SACRIFICE_X SACRIFICE_Y SACRIFICE_Z 1.5 1.5 1.5 0.05 15 normal
execute if score $daytime moongate.daytime matches 8000..13999 run particle minecraft:end_rod SACRIFICE_X SACRIFICE_Y SACRIFICE_Z 0.8 0.8 0.8 0.02 5 normal
execute if score $daytime moongate.daytime matches 8000..13999 as @a[x=SACRIFICE_X,y=SACRIFICE_Y,z=SACRIFICE_Z,distance=..2,scores={moongate.cooldown=0}] run function moongate:gate/return_to_spawn
