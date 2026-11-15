# virtues:rooms/protect_composter_britain
# Keeps Britain's communal composter from being stolen: instantly restores
# the block if broken, and kills any dropped composter item near it before
# a player can pick it up. Resets compost level to 0 on a break (acceptable
# — it's a repeatedly-fillable fixture, not state worth preserving).

execute at @e[type=minecraft:marker,tag=composter_britain,limit=1] unless block ~ ~ ~ minecraft:composter run setblock ~ ~ ~ minecraft:composter
execute at @e[type=minecraft:marker,tag=composter_britain,limit=1] as @e[type=minecraft:item,nbt={Item:{id:"minecraft:composter"}},distance=..2] run kill @s
