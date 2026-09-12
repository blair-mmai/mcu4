execute if score @s ZIRCONBOWSYN matches 1 run tellraw @s ["",{"text":"Zircon: Ask PETER at the counter!","color":"yellow"}]
execute if score @s ZIRCONBOWSYN matches 1 run scoreboard players set @s virtues.unlocked_mystic_bows 1
execute if score @s ZIRCONBOWSYN matches 1 run data merge entity @e[type=minecraft:villager,tag=npc_peter,limit=1] {VillagerData:{level:5}}
execute if score @s ZIRCONBOWSYN matches 2 run tellraw @s ["",{"text":"Zircon: Hmmm.","color":"yellow"}]

execute unless score @s ZIRCONBOWSYN matches 0 run scoreboard players set @s ZIRCONBOWSYN 0
