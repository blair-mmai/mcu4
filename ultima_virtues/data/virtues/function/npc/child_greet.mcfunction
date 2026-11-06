title @s title {"text":"Meh!","color":"white"}
execute if score @s virtues.child_greet_toggle matches 0 run title @s subtitle {"text":"Is the game of hide and seek over, yet?","color":"white"}
execute if score @s virtues.child_greet_toggle matches 0 run tellraw @s ["",{"text":"Child: Is Hide and Seek over yet?","color":"yellow"}]
execute if score @s virtues.child_greet_toggle matches 1 run title @s subtitle {"text":"Feeding others vegan soup shows compassion!","color":"white"}
execute if score @s virtues.child_greet_toggle matches 1 run tellraw @s ["",{"text":"Child: Meh! Giving vegan soup shows Compassion!","color":"yellow"}]
scoreboard players add @s virtues.child_greet_toggle 1
execute if score @s virtues.child_greet_toggle matches 2 run scoreboard players set @s virtues.child_greet_toggle 0
