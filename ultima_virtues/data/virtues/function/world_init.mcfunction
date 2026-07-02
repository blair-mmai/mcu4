# virtues:world_init
# Runs once ever — places world fixtures that should exist exactly once.
# Triggered from tick.mcfunction when virtues.world_init score is 0.

# Place the offering fire ~18 blocks from spawn
setblock 18 ~ 0 minecraft:soul_campfire

# Mark world as initialised so this never runs again
scoreboard players set $world virtues.world_init 1
