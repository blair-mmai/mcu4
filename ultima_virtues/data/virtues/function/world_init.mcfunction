# virtues:world_init
# Runs once ever — places world fixtures that should exist exactly once.
# Triggered from tick.mcfunction when virtues.world_init score is 0.

# TODO: place stone_circle structure once saved from world
# place structure virtues:stone_circle ~ ~ ~

# Mark world as initialised so this never runs again
scoreboard players set $world virtues.world_init 1
