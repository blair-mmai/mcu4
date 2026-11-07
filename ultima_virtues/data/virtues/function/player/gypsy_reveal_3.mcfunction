# virtues:player/gypsy_reveal_3
# Beat 3 of 5. Gives the mystery item and announces it. Branches on the
# aligned_<virtue> tag set by gypsy_align_<virtue>.

title @a[tag=virtues.pending_gypsy_reveal] times 10 60 10

execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_honesty] run give @s minecraft:lapis_lazuli
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_honesty] run title @s title {"text":"","color":"white"}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_honesty] run title @s subtitle {"text":"You are given lapis lazuli.","color":"yellow","italic":true}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_honesty] run tellraw @s ["",{"text":"You are given lapis lazuli.","color":"yellow","italic":true}]

execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_valor] run give @s minecraft:goat_horn[minecraft:instrument="minecraft:call_goat_horn"]
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_valor] run title @s title {"text":"","color":"white"}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_valor] run title @s subtitle {"text":"You are given a goat horn.","color":"yellow","italic":true}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_valor] run tellraw @s ["",{"text":"You are given a goat horn.","color":"yellow","italic":true}]

execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_honor] run give @s minecraft:chorus_fruit
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_honor] run title @s title {"text":"","color":"white"}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_honor] run title @s subtitle {"text":"You are given chorus fruit.","color":"yellow","italic":true}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_honor] run tellraw @s ["",{"text":"You are given chorus fruit.","color":"yellow","italic":true}]

execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_justice] run give @s minecraft:oak_leaves
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_justice] run title @s title {"text":"","color":"white"}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_justice] run title @s subtitle {"text":"You are given oak leaves.","color":"yellow","italic":true}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_justice] run tellraw @s ["",{"text":"You are given oak leaves.","color":"yellow","italic":true}]

execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_wisdom] run give @s minecraft:ink_sac
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_wisdom] run title @s title {"text":"","color":"white"}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_wisdom] run title @s subtitle {"text":"You are given an ink sac.","color":"yellow","italic":true}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_wisdom] run tellraw @s ["",{"text":"You are given an ink sac.","color":"yellow","italic":true}]

execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_faith] run give @s minecraft:egg
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_faith] run title @s title {"text":"","color":"white"}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_faith] run title @s subtitle {"text":"You are given an egg.","color":"yellow","italic":true}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_faith] run tellraw @s ["",{"text":"You are given an egg.","color":"yellow","italic":true}]

execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_compassion] run give @s minecraft:brown_mushroom
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_compassion] run title @s title {"text":"","color":"white"}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_compassion] run title @s subtitle {"text":"You are given a brown mushroom.","color":"yellow","italic":true}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_compassion] run tellraw @s ["",{"text":"You are given a brown mushroom.","color":"yellow","italic":true}]

execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_sacrifice] run give @s minecraft:beetroot_seeds
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_sacrifice] run title @s title {"text":"","color":"white"}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_sacrifice] run title @s subtitle {"text":"You are given beetroot seeds.","color":"yellow","italic":true}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_sacrifice] run tellraw @s ["",{"text":"You are given beetroot seeds.","color":"yellow","italic":true}]

execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_spirituality] run give @s minecraft:honey_bottle
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_spirituality] run title @s title {"text":"","color":"white"}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_spirituality] run title @s subtitle {"text":"You are given a honey bottle.","color":"yellow","italic":true}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_spirituality] run tellraw @s ["",{"text":"You are given a honey bottle.","color":"yellow","italic":true}]

schedule function virtues:player/gypsy_reveal_4 60t replace
