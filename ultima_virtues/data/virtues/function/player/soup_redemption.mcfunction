advancement revoke @s only virtues:compassion/soup_redemption

execute if advancement @s granted virtues:compassion/callous_brute run function virtues:player/soup_redemption_brute
execute unless advancement @s granted virtues:compassion/callous_brute if advancement @s granted virtues:compassion/cruel_by_nature run function virtues:player/soup_redemption_xc3
execute unless advancement @s granted virtues:compassion/callous_brute unless advancement @s granted virtues:compassion/cruel_by_nature if advancement @s granted virtues:compassion/repeat_offender run function virtues:player/soup_redemption_xc2
execute unless advancement @s granted virtues:compassion/callous_brute unless advancement @s granted virtues:compassion/cruel_by_nature unless advancement @s granted virtues:compassion/repeat_offender if advancement @s granted virtues:compassion/puncher_of_animals run function virtues:player/soup_redemption_xc1
