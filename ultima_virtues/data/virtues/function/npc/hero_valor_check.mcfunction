# Yes: +100 villagerXP to Hero, +20 playerXP
execute if score @s HEROYN matches 1 run tellraw @s ["",{"text":"Hero: Return to me with a totem of undying!","color":"yellow"}]
execute if score @s HEROYN matches 1 run xp add @s 20 points
execute if score @s HEROYN matches 1 store result score $hero_xp_temp virtues.xp_temp run data get entity @e[type=minecraft:villager,name="Hero",limit=1] Xp
execute if score @s HEROYN matches 1 run scoreboard players add $hero_xp_temp virtues.xp_temp 100
execute if score @s HEROYN matches 1 as @e[type=minecraft:villager,name="Hero",limit=1] store result entity @s Xp int 1 run scoreboard players get $hero_xp_temp virtues.xp_temp

# No: -100 playerXP
execute if score @s HEROYN matches 2 run tellraw @s ["",{"text":"Hero: Hmm.  I thought you looked kind of pale.","color":"yellow"}]
execute if score @s HEROYN matches 2 run xp add @s -100 points

# Counts toward the 3-answer cap (virtues.hero_answered), not a one-shot flag
execute unless score @s HEROYN matches 0 run scoreboard players add @s virtues.hero_answered 1
execute unless score @s HEROYN matches 0 run scoreboard players set @s HEROYN 0
