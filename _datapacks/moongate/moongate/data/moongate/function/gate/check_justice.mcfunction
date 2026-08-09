# Active window: 6000-11999
execute if score $daytime moongate.daytime matches 6000..11999 run particle minecraft:portal JUSTICE_X JUSTICE_Y JUSTICE_Z 1.5 1.5 1.5 0.05 15 normal
execute if score $daytime moongate.daytime matches 6000..11999 run particle minecraft:end_rod JUSTICE_X JUSTICE_Y JUSTICE_Z 0.8 0.8 0.8 0.02 5 normal
execute if score $daytime moongate.daytime matches 6000..11999 as @a[x=JUSTICE_X,y=JUSTICE_Y,z=JUSTICE_Z,distance=..2,scores={moongate.cooldown=0}] run function moongate:gate/return_to_spawn
