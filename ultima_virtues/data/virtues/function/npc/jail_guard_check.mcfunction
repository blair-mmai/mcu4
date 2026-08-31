execute if score @s JAILGUARDYN matches 1 run tellraw @s ["",{"text":"Jail Guard: In which cell dost thou belong, felonies or misdemeanors.","color":"yellow"}]
execute if score @s JAILGUARDYN matches 2 run tellraw @s ["",{"text":"Jail Guard: Just visiting, eh.","color":"yellow"}]

execute unless score @s JAILGUARDYN matches 0 run scoreboard players set @s JAILGUARDYN 0
