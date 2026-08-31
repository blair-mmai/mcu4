execute if score @s SCATUUYN matches 1 run tellraw @s ["",{"text":"Scatuu: When thou art 8 parts avatar, seek Zircon in Minoc and ask of mystics!","color":"yellow"}]
execute if score @s SCATUUYN matches 2 run tellraw @s ["",{"text":"Scatuu: When thou art 8 parts avatar, seek Zircon in Minoc and ask of mystics!","color":"yellow"}]

execute unless score @s SCATUUYN matches 0 run scoreboard players set @s SCATUUYN 0
