scoreboard players enable @s compassion_yes
tellraw @s ["",{"text":"Do you strive to be compassionate? "},{"text":"[Yes]","color":"green","click_event":{"action":"run_command","command":"/trigger compassion_yes set 1"}}]
