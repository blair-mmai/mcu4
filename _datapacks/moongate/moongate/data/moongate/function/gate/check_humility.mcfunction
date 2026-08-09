# Active window: 14000-19999
execute if score $daytime moongate.daytime matches 14000..19999 run particle minecraft:portal HUMILITY_X HUMILITY_Y HUMILITY_Z 1.5 1.5 1.5 0.05 15 normal
execute if score $daytime moongate.daytime matches 14000..19999 run particle minecraft:end_rod HUMILITY_X HUMILITY_Y HUMILITY_Z 0.8 0.8 0.8 0.02 5 normal
execute if score $daytime moongate.daytime matches 14000..19999 as @a[x=HUMILITY_X,y=HUMILITY_Y,z=HUMILITY_Z,distance=..2,scores={moongate.cooldown=0}] run function moongate:gate/return_to_spawn
