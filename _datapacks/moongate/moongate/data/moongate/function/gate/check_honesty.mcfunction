# Active window: 0-5999 (dawn)
execute if score $daytime moongate.daytime matches 0..5999 run particle minecraft:portal HONESTY_X HONESTY_Y HONESTY_Z 1.5 1.5 1.5 0.05 15 normal
execute if score $daytime moongate.daytime matches 0..5999 run particle minecraft:end_rod HONESTY_X HONESTY_Y HONESTY_Z 0.8 0.8 0.8 0.02 5 normal
execute if score $daytime moongate.daytime matches 0..5999 as @a[x=HONESTY_X,y=HONESTY_Y,z=HONESTY_Z,distance=..2,scores={moongate.cooldown=0}] run function moongate:gate/return_to_spawn
