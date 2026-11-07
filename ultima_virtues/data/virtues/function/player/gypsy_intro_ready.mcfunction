# virtues:player/gypsy_intro_ready
# Scheduled ~3s after gypsy_intro's opening line. Second beat: "Ready...?"
# Fresh title times so it gets its own full 3s stay rather than inheriting
# whatever's left of the previous title's display cycle.

title @a[tag=virtues.pending_gypsy_round1] times 10 60 10
title @a[tag=virtues.pending_gypsy_round1] title {"text":"","color":"white"}
title @a[tag=virtues.pending_gypsy_round1] subtitle {"text":"Ready...?","color":"yellow","italic":true}
tellraw @a[tag=virtues.pending_gypsy_round1] ["",{"text":"Ready...?","color":"yellow","italic":true}]
schedule function virtues:player/gypsy_intro_hint 60t replace
