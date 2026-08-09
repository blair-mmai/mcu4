# Active window: 12000-17999
execute if score $daytime moongate.daytime matches 12000..17999 run particle minecraft:portal SPIRITUALITY_X SPIRITUALITY_Y SPIRITUALITY_Z 1.5 1.5 1.5 0.05 15 normal
execute if score $daytime moongate.daytime matches 12000..17999 run particle minecraft:end_rod SPIRITUALITY_X SPIRITUALITY_Y SPIRITUALITY_Z 0.8 0.8 0.8 0.02 5 normal
execute if score $daytime moongate.daytime matches 12000..17999 as @a[x=SPIRITUALITY_X,y=SPIRITUALITY_Y,z=SPIRITUALITY_Z,distance=..2,scores={moongate.cooldown=0}] run function moongate:gate/return_to_spawn
