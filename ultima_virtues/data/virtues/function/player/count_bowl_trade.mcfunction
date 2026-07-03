scoreboard players add @s virtues.bowls_traded 1
advancement revoke @s only virtues:compassion/bowl_detector
execute if score @s virtues.bowls_traded matches 10.. run advancement grant @s only virtues:compassion/soup_kitchen
