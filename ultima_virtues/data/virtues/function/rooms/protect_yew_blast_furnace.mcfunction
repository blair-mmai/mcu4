# virtues:rooms/protect_yew_blast_furnace
# Keeps Yew's communal blast furnace from being stolen: instantly restores
# the block if broken, and kills any dropped blast_furnace item near it
# before a player can pick it up. Same pattern as
# protect_britain_composter.mcfunction.

execute at @e[type=minecraft:marker,tag=yew_blast_furnace,limit=1] unless block ~ ~ ~ minecraft:blast_furnace run setblock ~ ~ ~ minecraft:blast_furnace
execute at @e[type=minecraft:marker,tag=yew_blast_furnace,limit=1] as @e[type=minecraft:item,nbt={Item:{id:"minecraft:blast_furnace"}},distance=..2] run kill @s
