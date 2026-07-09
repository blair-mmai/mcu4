execute store result score @s virtues.name_roll run random value 1..3
execute if score @s virtues.name_roll matches 1 run data modify entity @s CustomName set value {text:"Fannie Mae"}
execute if score @s virtues.name_roll matches 2 run data modify entity @s CustomName set value {text:"Freddie Mac Moo"}
execute if score @s virtues.name_roll matches 3 run data modify entity @s CustomName set value {text:"Ginnie Mae"}
tag @s add virtues.named
