# virtues:puzzles/jhelom_sword_check
# Armorer store sword-orientation puzzle. Four item frames, each tagged
# jhelom_sword_1..4. Solved only when ALL FOUR match their target Rotation
# (0-7, 45-degree steps) AT THE SAME TIME — re-checked every tick, so
# breaking the combination after solving turns the switch back off.
#
# Solution code: S-W-E-N (SWEN), per the confirmed mapping
# 0=NE, 1=E, 2=SE, 3=S, 4=SW, 5=W, 6=NW, 7=N.
#
# Switch: an invisible marker entity tagged jhelom_switch_1, placed exactly
# at the real lever's position (face=floor, facing=south). Solving the puzzle
# turns the lever OFF (reveals the door); unsolving turns it back ON
# (conceals it), matching Blair's default-after-placement state.

scoreboard players set $jhelom_sword_solved virtues.puzzle_temp 1
execute unless entity @e[type=minecraft:item_frame,tag=jhelom_sword_1,limit=1,nbt={ItemRotation:3b}] run scoreboard players set $jhelom_sword_solved virtues.puzzle_temp 0
execute unless entity @e[type=minecraft:item_frame,tag=jhelom_sword_2,limit=1,nbt={ItemRotation:5b}] run scoreboard players set $jhelom_sword_solved virtues.puzzle_temp 0
execute unless entity @e[type=minecraft:item_frame,tag=jhelom_sword_3,limit=1,nbt={ItemRotation:1b}] run scoreboard players set $jhelom_sword_solved virtues.puzzle_temp 0
execute unless entity @e[type=minecraft:item_frame,tag=jhelom_sword_4,limit=1,nbt={ItemRotation:7b}] run scoreboard players set $jhelom_sword_solved virtues.puzzle_temp 0

execute if score $jhelom_sword_solved virtues.puzzle_temp matches 1 at @e[tag=jhelom_switch_1,limit=1] run setblock ~ ~ ~ minecraft:lever[face=floor,facing=south,powered=false]
execute if score $jhelom_sword_solved virtues.puzzle_temp matches 0 at @e[tag=jhelom_switch_1,limit=1] run setblock ~ ~ ~ minecraft:lever[face=floor,facing=south,powered=true]
