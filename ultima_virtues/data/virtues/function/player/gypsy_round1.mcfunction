# virtues:player/gypsy_round1
# Round 1 of the Gypsy-style virtue-alignment Q&A. Fired once directly from
# first_join while the player is still blinded in their stone circle. Rounds
# 2-4 are driven reactively by gypsy_check once each answer comes in.
# Options: 1=Valor 2=Justice 3=Sacrifice

scoreboard players set @s virtues.gypsy_stage 1
effect give @s minecraft:blindness 600 1
attribute @s minecraft:movement_speed base set 0
attribute @s minecraft:jump_strength base set 0
scoreboard players enable @s GYPSYQ
title @s title {"text":"A voice speaks in the dark...","color":"yellow"}
title @s subtitle {"text":"Someone is pinned beneath a collapsing wall. You have one chance to act.","color":"yellow"}
tellraw @s ["",{"text":"Type 'T' and choose: ","color":"gray"},{"text":"[Charge in and pull them free yourself, blade first.]","color":"red","click_event":{"action":"run_command","command":"/trigger GYPSYQ set 1"}}]
tellraw @s ["",{"text":"             ","color":"gray"},{"text":"[Read the wall's cracks first, and act on what you can trust to hold.]","color":"aqua","click_event":{"action":"run_command","command":"/trigger GYPSYQ set 2"}}]
tellraw @s ["",{"text":"             ","color":"gray"},{"text":"[Take their place under the wall, if it means they walk free.]","color":"gold","click_event":{"action":"run_command","command":"/trigger GYPSYQ set 3"}}]
