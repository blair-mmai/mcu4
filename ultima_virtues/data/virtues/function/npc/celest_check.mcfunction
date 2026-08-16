# Yes: give Potion of Compassion, +5 villagerXP to Celest, +5 playerXP
execute if score @s CELESTYN matches 1 run give @s minecraft:potion[potion_contents={custom_effects:[{id:"minecraft:nausea",duration:200,amplifier:0}]},custom_name={"text":"Potion of Compassion","italic":false}] 1
execute if score @s CELESTYN matches 1 run tellraw @s ["",{"text":"This potion will return you to us!","color":"yellow"}]
execute if score @s CELESTYN matches 1 run xp add @s 5 points
execute if score @s CELESTYN matches 1 store result score $celest_xp_temp virtues.xp_temp run data get entity @e[type=minecraft:villager,name="Celest",limit=1] Xp
execute if score @s CELESTYN matches 1 run scoreboard players add $celest_xp_temp virtues.xp_temp 5
execute if score @s CELESTYN matches 1 as @e[type=minecraft:villager,name="Celest",limit=1] store result entity @s Xp int 1 run scoreboard players get $celest_xp_temp virtues.xp_temp

# No: -5 playerXP, different tellraw, no potion, no villagerXP
execute if score @s CELESTYN matches 2 run tellraw @s ["",{"text":"Oh, okay then.","color":"yellow"}]
execute if score @s CELESTYN matches 2 run xp add @s -5 points

execute unless score @s CELESTYN matches 0 run scoreboard players set @s CELESTYN 0
