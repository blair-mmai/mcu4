execute if score @s ZIRCONARMORYN matches 1 run tellraw @s ["",{"text":"Zircon: Ask PIEDRO at the counter!","color":"yellow"}]
execute if score @s ZIRCONARMORYN matches 1 run scoreboard players set @s virtues.unlocked_mystic_armor 1
execute if score @s ZIRCONARMORYN matches 1 run data merge entity @e[type=minecraft:villager,tag=npc_piedro,limit=1] {VillagerData:{level:5}}
execute if score @s ZIRCONARMORYN matches 2 run tellraw @s ["",{"text":"Zircon: Hmmm.","color":"yellow"}]

execute unless score @s ZIRCONARMORYN matches 0 run scoreboard players set @s ZIRCONARMORYN 0
