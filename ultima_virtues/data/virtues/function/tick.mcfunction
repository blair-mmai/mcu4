# virtues:tick
# Runs every tick. Checks for players who haven't been given their starting
# chest yet, and fires the first-join sequence for them exactly once.

scoreboard players add $world virtues.tick_count 1

# Assign player ID to any player who hasn't been assigned one yet
execute as @a[scores={virtues.player_id=0}] run function virtues:player/assign_player_id

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
execute as @a[scores={virtues.in_circle=1..}] run scoreboard players set @s virtues.music_desired 4
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

# Named farmer greetings — fire once when player first walks within 4 blocks
scoreboard players add @a virtues.greeted_fannie 0
scoreboard players add @a virtues.greeted_freddie 0
scoreboard players add @a virtues.greeted_ginnie 0
execute as @a[scores={virtues.greeted_fannie=0}] at @s if entity @e[type=minecraft:villager,name="Fannie Mae",distance=..4] run function virtues:player/greet_fannie
execute as @a[scores={virtues.greeted_freddie=0}] at @s if entity @e[type=minecraft:villager,name="Freddie Mac Moo",distance=..4] run function virtues:player/greet_freddie
execute as @a[scores={virtues.greeted_ginnie=0}] at @s if entity @e[type=minecraft:villager,name="Ginnie Mae",distance=..4] run function virtues:player/greet_ginnie

# Double health of hostile mobs that haven't been buffed yet
execute if score $world virtues.trade_timer matches 40.. as @e[type=#virtues:hostile_mobs,tag=!virtues.buffed] run function virtues:mob/buff_health

# Re-apply custom trades every 40 ticks (vanilla regenerates on profession re-link, not every tick)
scoreboard players add $world virtues.trade_timer 1
execute if score $world virtues.trade_timer matches 40.. run function virtues:player/run_trade_setup
execute if score $world virtues.trade_timer matches 40.. run scoreboard players set $world virtues.trade_timer 0

# Detect /trigger RELAXABIT
scoreboard players enable @a RELAXABIT
execute as @a[scores={RELAXABIT=1..}] at @s if entity @e[type=minecraft:enderman,name=BELAATRIX,distance=..10] run function virtues:dev/relax_test
scoreboard players set @a[scores={RELAXABIT=1..}] RELAXABIT 0

# Detect /trigger GIVECHEST set <1-5> (1=bread 2=baked_potato 3=beetroot_soup 4=cookie 5=golden_carrot)
scoreboard players enable @a GIVECHEST
execute as @a[scores={GIVECHEST=1..}] run function virtues:player/give_chest_resolve
scoreboard players set @a[scores={GIVECHEST=1..}] GIVECHEST 0

# Detect /trigger TAKECHEST set <1-5> (same item mapping)
scoreboard players enable @a TAKECHEST
execute as @a[scores={TAKECHEST=1..}] run function virtues:player/take_chest_resolve
scoreboard players set @a[scores={TAKECHEST=1..}] TAKECHEST 0

# Clear vanilla advancement tabs every tick — they reappear faster than a 40-tick window catches
advancement revoke @a from minecraft:story
advancement revoke @a from minecraft:nether
advancement revoke @a from minecraft:end
advancement revoke @a from minecraft:adventure
advancement revoke @a from minecraft:husbandry

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
execute as @a run function virtues:player/check_stone_damage
execute as @a run function virtues:player/check_iron_ingots
execute as @a run function virtues:player/check_vegan_planting

# Circle entry detection — fires "This is X's circle" on the tick they cross from 6 to 5 blocks away
scoreboard players add @a virtues.in_circle 0
execute as @a[scores={virtues.in_circle=0}] at @s if entity @e[type=minecraft:marker,tag=virtues.owner,distance=..5] run function virtues:player/check_circle_ownership
execute as @a[scores={virtues.in_circle=0}] at @s if entity @e[type=minecraft:marker,tag=virtues.owner,distance=..5] run function virtues:player/enter_other_circle
execute as @a[scores={virtues.in_circle=1..}] at @s unless entity @e[type=minecraft:marker,tag=virtues.owner,distance=..5] run scoreboard players set @s virtues.in_circle 0


