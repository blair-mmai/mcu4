# Detect players standing inside the archway opening; after a 2.5s (50 tick)
# continuous dwell, send them home to their own starting chest. Decorative
# only otherwise - matches "portal only serves as a potion-teleport
# destination for now" (rune/gate trigger logic is dormant, see tick.mcfunction).

# Reset the timer for anyone who isn't currently standing in the opening
execute as @a unless entity @s[x=-385.44,dx=1,y=67,dy=6,z=-241.715,dz=1] run scoreboard players set @s moongate.portal_dwell 0

# Count up while they remain inside it, with a soft ambient cue each tick
# so standing there doesn't silently start a countdown - gives a chance to
# step out if you didn't mean to trigger the return trip
execute as @a[x=-385.44,dx=1,y=67,dy=6,z=-241.715,dz=1] run scoreboard players add @s moongate.portal_dwell 1
execute as @a[x=-385.44,dx=1,y=67,dy=6,z=-241.715,dz=1] at @s run playsound minecraft:block.portal.ambient ambient @s ~ ~ ~ 0.15 1

# At 50 ticks (2.5s), send them home and reset so it doesn't refire every tick after
execute as @a[scores={moongate.portal_dwell=50..}] run function virtues:player/return_to_chest
execute as @a[scores={moongate.portal_dwell=50..}] run scoreboard players set @s moongate.portal_dwell 0
