advancement revoke @s only virtues:compassion/soup_redemption

execute if advancement @s granted virtues:compassion/callous_brute run function virtues:player/soup_redemption_brute
execute unless advancement @s granted virtues:compassion/callous_brute if advancement @s granted virtues:compassion/xc3 run function virtues:player/soup_redemption_xc3
execute unless advancement @s granted virtues:compassion/callous_brute unless advancement @s granted virtues:compassion/xc3 if advancement @s granted virtues:compassion/xc2 run function virtues:player/soup_redemption_xc2
execute unless advancement @s granted virtues:compassion/callous_brute unless advancement @s granted virtues:compassion/xc3 unless advancement @s granted virtues:compassion/xc2 if advancement @s granted virtues:compassion/xc1 run function virtues:player/soup_redemption_xc1
