# virtues:tick
# Runs every tick. Checks for players who haven't been given their starting
# chest yet, and fires the first-join sequence for them exactly once.

# Assign random name to any farmer villager that hasn't been named yet
execute as @e[type=minecraft:villager,tag=!virtues.named] run function virtues:player/assign_farmer_name
execute as @e[type=minecraft:villager,tag=virtues.named] if data entity @s {VillagerData:{profession:"minecraft:none"}} run function virtues:player/reset_farmer_name

# Music state machine
scoreboard players add @a virtues.music_state 0
scoreboard players add @a virtues.music_timer 0
scoreboard players remove @a[scores={virtues.music_timer=1..}] virtues.music_timer 1
scoreboard players set @a virtues.music_desired 1
execute as @a at @s if entity @e[type=minecraft:villager,distance=..48] run scoreboard players set @s virtues.music_desired 2
execute as @a if items entity @s weapon.mainhand #virtues:weapons run scoreboard players set @s virtues.music_desired 3
execute as @a[scores={virtues.in_circle=1}] run scoreboard players set @s virtues.music_desired 4
execute as @a unless score @s virtues.music_desired = @s virtues.music_state run scoreboard players set @s virtues.music_timer 0
execute as @a[scores={virtues.music_desired=4,virtues.music_state=1..3}] run scoreboard players set @s virtues.music_timer 0
execute as @a[scores={virtues.music_desired=1,virtues.music_timer=0}] at @s unless score @s virtues.music_state matches 1 run function virtues:music/play_wanderer
execute as @a[scores={virtues.music_desired=1,virtues.music_timer=0,virtues.music_state=1}] at @s run function virtues:music/play_wanderer
execute as @a[scores={virtues.music_desired=2,virtues.music_timer=0}] at @s unless score @s virtues.music_state matches 2 run function virtues:music/play_towns
execute as @a[scores={virtues.music_desired=2,virtues.music_timer=0,virtues.music_state=2}] at @s run function virtues:music/play_towns
execute as @a[scores={virtues.music_desired=3,virtues.music_timer=0}] at @s unless score @s virtues.music_state matches 3 run function virtues:music/play_combat
execute as @a[scores={virtues.music_desired=3,virtues.music_timer=0,virtues.music_state=3}] at @s run function virtues:music/play_combat
execute as @a[scores={virtues.music_desired=4,virtues.music_timer=0}] at @s unless score @s virtues.music_state matches 4 run function virtues:music/play_shrines
execute as @a[scores={virtues.music_desired=4,virtues.music_timer=0,virtues.music_state=4}] at @s run function virtues:music/play_shrines

# Soup redemption — detect when bowl enters inventory
scoreboard players add @a virtues.bowl_prev 0
execute as @a store result score @s virtues.bowl_count if items entity @s * minecraft:bowl
execute as @a if score @s virtues.bowl_count > @s virtues.bowl_prev run function virtues:player/soup_redemption
execute as @a store result score @s virtues.bowl_prev if items entity @s * minecraft:bowl

# Named farmer greetings — fire once when player first walks within 4 blocks
scoreboard players add @a virtues.greeted_fannie 0
scoreboard players add @a virtues.greeted_freddie 0
scoreboard players add @a virtues.greeted_ginnie 0
execute as @a[scores={virtues.greeted_fannie=0}] at @s if entity @e[type=minecraft:villager,name="Fannie Mae",distance=..4] run function virtues:player/greet_fannie
execute as @a[scores={virtues.greeted_freddie=0}] at @s if entity @e[type=minecraft:villager,name="Freddie Mac Moo",distance=..4] run function virtues:player/greet_freddie
execute as @a[scores={virtues.greeted_ginnie=0}] at @s if entity @e[type=minecraft:villager,name="Ginnie Mae",distance=..4] run function virtues:player/greet_ginnie

# Re-apply custom trades every 40 ticks (vanilla regenerates on profession re-link, not every tick)
scoreboard players add $world virtues.trade_timer 1
execute if score $world virtues.trade_timer matches 40.. run function virtues:player/run_trade_setup
execute if score $world virtues.trade_timer matches 40.. run scoreboard players set $world virtues.trade_timer 0

# Detect /trigger RELAXABIT
scoreboard players enable @a RELAXABIT
execute as @a[scores={RELAXABIT=1..}] at @s if entity @e[type=minecraft:enderman,name=BELAATRIX,distance=..10] run function virtues:dev/relax_test
scoreboard players set @a[scores={RELAXABIT=1..}] RELAXABIT 0

# Clear vanilla advancement tabs for any player who hasn't been cleaned yet this session
scoreboard players add @a virtues.vanilla_cleared 0
execute as @a[scores={virtues.vanilla_cleared=0}] run advancement revoke @s from minecraft:story
execute as @a[scores={virtues.vanilla_cleared=0}] run advancement revoke @s from minecraft:nether
execute as @a[scores={virtues.vanilla_cleared=0}] run advancement revoke @s from minecraft:end
execute as @a[scores={virtues.vanilla_cleared=0}] run advancement revoke @s from minecraft:adventure
execute as @a[scores={virtues.vanilla_cleared=0}] run advancement revoke @s from minecraft:husbandry
scoreboard players set @a[scores={virtues.vanilla_cleared=0}] virtues.vanilla_cleared 1

# Run world init exactly once
scoreboard players add $world virtues.world_init 0
execute if score $world virtues.world_init matches 0 run function virtues:world_init

# Any player who doesn't have a score yet on virtues.firstjoin gets initialized to 0
scoreboard players add @a virtues.firstjoin 0

# Players still at 0 get the first join treatment, then get bumped to 1 so this
# never fires again for them.
execute as @a[scores={virtues.firstjoin=0}] at @s run function virtues:player/first_join
scoreboard players set @a[scores={virtues.firstjoin=0}] virtues.firstjoin 1

# Drive any in-progress intro title sequences
function virtues:player/intro_sequence

# First-action milestone checks (dirt, tree) — opens Humility and Valor tabs
execute as @a run function virtues:player/check_first_actions

# Deal 0.5 heart damage every time a log is punched
execute as @a run function virtues:player/check_tree_damage

# Circle entry detection — fires "This is X's circle" on the tick they cross from 6 to 5 blocks away
scoreboard players add @a virtues.in_circle 0
execute as @a[scores={virtues.in_circle=0}] at @s if entity @e[type=minecraft:marker,tag=virtues.owner,distance=..5] run function virtues:player/enter_circle
execute as @a[scores={virtues.in_circle=1}] at @s unless entity @e[type=minecraft:marker,tag=virtues.owner,distance=..5] run scoreboard players set @s virtues.in_circle 0


