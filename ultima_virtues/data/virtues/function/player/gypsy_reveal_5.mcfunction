# virtues:player/gypsy_reveal_5
# Beat 5 of 5 - final reveal line + clue, then cleans up the chain's tag.
# Branches on the aligned_<virtue> tag.

title @a[tag=virtues.pending_gypsy_reveal] times 10 60 10
title @a[tag=virtues.pending_gypsy_reveal] title {"text":"","color":"white"}

execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_honesty] run title @s subtitle {"text":"The truth settles in.","color":"gold","italic":true}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_honesty] run tellraw @s ["",{"text":"You feel most drawn to the plain truth of things.","color":"gold","italic":true}]
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_honesty] run tellraw @s ["",{"text":"The stone in your pocket catches the light oddly. Someone who deals in enchantment might know why.","color":"gray","italic":true}]

execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_valor] run title @s subtitle {"text":"Your blood runs hot.","color":"gold","italic":true}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_valor] run tellraw @s ["",{"text":"Your blood runs hot for the fight.","color":"gold","italic":true}]
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_valor] run tellraw @s ["",{"text":"That horn hasn't been blown yet. Some calls are worth saving for the right moment.","color":"gray","italic":true}]

execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_honor] run title @s subtitle {"text":"Your word is your bond.","color":"gold","italic":true}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_honor] run tellraw @s ["",{"text":"You hold your word above your own comfort.","color":"gold","italic":true}]
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_honor] run tellraw @s ["",{"text":"That fruit might take you somewhere unexpected if eaten carelessly. Best saved for someone who keeps their word.","color":"gray","italic":true}]

execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_justice] run title @s subtitle {"text":"The scales settle.","color":"gold","italic":true}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_justice] run tellraw @s ["",{"text":"You weigh both sides before you act.","color":"gold","italic":true}]
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_justice] run tellraw @s ["",{"text":"Those leaves don't look like evidence of anything. Maybe that's exactly why they're worth keeping.","color":"gray","italic":true}]

execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_wisdom] run title @s subtitle {"text":"Knowledge calls to you.","color":"gold","italic":true}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_wisdom] run tellraw @s ["",{"text":"You trust what can be learned over what can be guessed.","color":"gold","italic":true}]
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_wisdom] run tellraw @s ["",{"text":"That ink hasn't written anything yet. Somewhere, someone fills books like this for a living.","color":"gray","italic":true}]

execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_faith] run title @s subtitle {"text":"You trust the unseen.","color":"gold","italic":true}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_faith] run tellraw @s ["",{"text":"You trust what you cannot yet see.","color":"gold","italic":true}]
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_faith] run tellraw @s ["",{"text":"That egg hasn't hatched, and may not need to. Faith doesn't ask for proof.","color":"gray","italic":true}]

execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_compassion] run title @s subtitle {"text":"Compassion stirs in you.","color":"gold","italic":true}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_compassion] run tellraw @s ["",{"text":"You feel for others before you feel for yourself.","color":"gold","italic":true}]
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_compassion] run tellraw @s ["",{"text":"That mushroom looks plain, but someone in Britain pays well for plain things.","color":"gray","italic":true}]

execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_sacrifice] run title @s subtitle {"text":"You give freely.","color":"gold","italic":true}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_sacrifice] run tellraw @s ["",{"text":"You give before you're asked to.","color":"gold","italic":true}]
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_sacrifice] run tellraw @s ["",{"text":"Those seeds are barely worth planting on their own. They might be worth more given away.","color":"gray","italic":true}]

execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_spirituality] run title @s subtitle {"text":"Everything, and nothing.","color":"gold","italic":true}
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_spirituality] run tellraw @s ["",{"text":"You feel the pull of everything at once, and nothing in particular.","color":"gold","italic":true}]
execute as @a[tag=virtues.pending_gypsy_reveal,tag=aligned_spirituality] run tellraw @s ["",{"text":"The honey hasn't spoiled in your pocket yet. Bees don't forget where it came from.","color":"gray","italic":true}]

tag @a[tag=virtues.pending_gypsy_reveal] remove virtues.pending_gypsy_reveal
