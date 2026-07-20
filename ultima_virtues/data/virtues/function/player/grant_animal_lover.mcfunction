tellraw @s "grant_animal_lover fired"
# Breeding forgiveness is blocked while callous_brute is active — requires stone circle mantra first
execute if entity @s[advancements={virtues:compassion/callous_brute=true}] run return 0

advancement grant @s only virtues:compassion/animal_lover

# Capture which anti to clear BEFORE revoking anything (avoids cascade)
scoreboard players set @s virtues.clear_anti 0
execute if entity @s[advancements={virtues:compassion/puncher_of_animals=true}] run scoreboard players set @s virtues.clear_anti 1
execute if entity @s[advancements={virtues:compassion/repeat_offender=true}] run scoreboard players set @s virtues.clear_anti 2
execute if entity @s[advancements={virtues:compassion/cruel_by_nature=true}] run scoreboard players set @s virtues.clear_anti 3

# Clear exactly the one worst minor anti
execute if score @s virtues.clear_anti matches 1 run advancement revoke @s only virtues:compassion/puncher_of_animals
execute if score @s virtues.clear_anti matches 1 run scoreboard players remove @s virtues.animal_punches 1
execute if score @s virtues.clear_anti matches 1 run title @s actionbar {"text":"Forgiven: Puncher of Animals","color":"green"}
execute if score @s virtues.clear_anti matches 2 run advancement revoke @s only virtues:compassion/repeat_offender
execute if score @s virtues.clear_anti matches 2 run scoreboard players remove @s virtues.animal_punches 1
execute if score @s virtues.clear_anti matches 2 run title @s actionbar {"text":"Forgiven: Repeat Offender","color":"green"}
execute if score @s virtues.clear_anti matches 3 run advancement revoke @s only virtues:compassion/cruel_by_nature
execute if score @s virtues.clear_anti matches 3 run scoreboard players remove @s virtues.animal_punches 1
execute if score @s virtues.clear_anti matches 3 run title @s actionbar {"text":"Forgiven: Cruel by Nature","color":"green"}
