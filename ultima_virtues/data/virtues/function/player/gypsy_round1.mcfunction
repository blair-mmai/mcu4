# virtues:player/gypsy_round1
# Round 1 of the Gypsy-style virtue-alignment Q&A. Fired by gypsy_start once
# the player drinks "Drink Me" (blindness/movement-freeze are already applied
# by first_join from the moment they woke - this just starts the actual
# ritual). Rounds 2-4 are driven reactively by gypsy_check as answers come in.
# Options: 1=Valor 2=Justice 3=Sacrifice

scoreboard players set @s virtues.gypsy_stage 1
effect give @s minecraft:blindness 600 1
scoreboard players enable @s GYPSYQ
title @s title {"text":"The Voice says:","color":"yellow"}
title @s subtitle {"text":"Question 1....","color":"yellow"}
tellraw @s ["",{"text":"Q1. Someone is pinned beneath a collapsing wall. You have one chance to act.","color":"yellow","italic":true}]
tellraw @s ["",{"text":"Type 'T' and choose: ","color":"gray"},{"text":"[Charge in and pull them free yourself, blade first.]","color":"red","click_event":{"action":"run_command","command":"/trigger GYPSYQ set 1"}}]
tellraw @s ["",{"text":"             ","color":"gray"},{"text":"[Read the wall's cracks first, and act on what you can trust to hold.]","color":"aqua","click_event":{"action":"run_command","command":"/trigger GYPSYQ set 2"}}]
tellraw @s ["",{"text":"             ","color":"gray"},{"text":"[Take their place under the wall, if it means they walk free.]","color":"gold","click_event":{"action":"run_command","command":"/trigger GYPSYQ set 3"}}]
