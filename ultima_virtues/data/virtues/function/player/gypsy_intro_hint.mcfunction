# virtues:player/gypsy_intro_hint
# Scheduled ~3s after "Ready...?". Third beat: the Talk/Type hint, then
# schedules the actual round1 start. Fresh title times, same reason as
# gypsy_intro_ready.

title @a[tag=virtues.pending_gypsy_round1] times 10 60 10
title @a[tag=virtues.pending_gypsy_round1] title {"text":"","color":"white"}
title @a[tag=virtues.pending_gypsy_round1] subtitle {"text":"(Use 'T' to Talk/Type)","color":"gray","italic":true}
tellraw @a[tag=virtues.pending_gypsy_round1] ["",{"text":"(Use 'T' to Talk/Type)","color":"gray","italic":true}]
schedule function virtues:player/gypsy_round1_delayed 60t replace
