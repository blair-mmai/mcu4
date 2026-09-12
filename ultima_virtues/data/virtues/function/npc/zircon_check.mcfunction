execute if score @s ZIRCONYN matches 1 run tellraw @s ["",{"text":"Zircon: Ask PIERRE at the counter!","color":"yellow"}]
execute if score @s ZIRCONYN matches 1 run scoreboard players set @s virtues.unlocked_mystic_weapons 1
execute if score @s ZIRCONYN matches 1 run data merge entity @e[type=minecraft:villager,tag=npc_pierre,limit=1] {VillagerData:{level:5}}
execute if score @s ZIRCONYN matches 2 run tellraw @s ["",{"text":"Zircon: Hmmm.","color":"yellow"}]

execute unless score @s ZIRCONYN matches 0 run scoreboard players set @s ZIRCONYN 0
