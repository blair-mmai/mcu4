# virtues:tick
# Runs every tick. Checks for players who haven't been given their starting
# chest yet, and fires the first-join sequence for them exactly once.

# Any player who doesn't have a score yet on virtues.firstjoin gets initialized to 0
scoreboard players add @a virtues.firstjoin 0

# Players still at 0 get the first join treatment, then get bumped to 1 so this
# never fires again for them.
execute as @a[scores={virtues.firstjoin=0}] at @s run function virtues:player/first_join
scoreboard players set @a[scores={virtues.firstjoin=0}] virtues.firstjoin 1

# Drive any in-progress intro title sequences
function virtues:player/intro_sequence

# Check for first tree punch -> spawn starting chest
function virtues:player/check_tree_punch
