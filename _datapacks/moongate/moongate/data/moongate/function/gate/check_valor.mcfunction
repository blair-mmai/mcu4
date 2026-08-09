# Active window: 4000-9999
execute if score $daytime moongate.daytime matches 4000..9999 run particle minecraft:portal VALOR_X VALOR_Y VALOR_Z 1.5 1.5 1.5 0.05 15 normal
execute if score $daytime moongate.daytime matches 4000..9999 run particle minecraft:end_rod VALOR_X VALOR_Y VALOR_Z 0.8 0.8 0.8 0.02 5 normal
execute if score $daytime moongate.daytime matches 4000..9999 as @a[x=VALOR_X,y=VALOR_Y,z=VALOR_Z,distance=..2,scores={moongate.cooldown=0}] run function moongate:gate/return_to_spawn
