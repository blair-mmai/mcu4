execute if score @s VORPALYN matches 1 run tellraw @s ["",{"text":"Vorpal: Eat death, scum puppy!","color":"yellow"}]
execute if score @s VORPALYN matches 2 run tellraw @s ["",{"text":"Vorpal: Well thou art!","color":"yellow"}]

execute unless score @s VORPALYN matches 0 run scoreboard players set @s VORPALYN 0
