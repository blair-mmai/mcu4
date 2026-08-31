execute if score @s CALUMNYYN matches 1 run tellraw @s ["",{"text":"Calumny: It requires but one bloodmoss!","color":"yellow"}]
execute if score @s CALUMNYYN matches 2 run tellraw @s ["",{"text":"Calumny: Adept.","color":"yellow"}]

execute unless score @s CALUMNYYN matches 0 run scoreboard players set @s CALUMNYYN 0
