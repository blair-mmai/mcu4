# virtues:player/gypsy_reveal_2
# Beat 2 of 5. "The Voice says: 'Here you go.'" - virtue-independent.

title @a[tag=virtues.pending_gypsy_reveal] times 10 60 10
title @a[tag=virtues.pending_gypsy_reveal] title {"text":"The Voice says:","color":"yellow"}
title @a[tag=virtues.pending_gypsy_reveal] subtitle {"text":"\"Here you go.\"","color":"yellow","italic":true}
tellraw @a[tag=virtues.pending_gypsy_reveal] ["",{"text":"The Voice says: \"Here you go.\"","color":"yellow","italic":true}]
schedule function virtues:player/gypsy_reveal_3 60t replace
