# virtues:tick
# Runs every tick. Checks for players who haven't been given their starting
# chest yet, and fires the first-join sequence for them exactly once.

scoreboard players add $world virtues.tick_count 1

# Redstone/physical puzzle mechanics — independent module, see puzzles/tick.mcfunction
function virtues:puzzles/tick

# Persistent world fixtures (auto-refill containers, etc.) — independent module
function virtues:fixtures/tick

# Haunted-inn-room mechanics (Skara Brae) — independent module, see rooms/tick.mcfunction
function virtues:rooms/tick

# Assign player ID to any player who hasn't been assigned one yet
execute as @a[scores={virtues.player_id=0}] run function virtues:player/assign_player_id

# Ambient farmer name-roll retired (2026-08-29) — it applied to ANY untagged
# farmer anywhere in the world, not just Britain, letting a farmer in any town
# roll into a Britain-specific identity (Fannie Mae/Freddie Mac Moo/Ginnie Mae).
# Those three are now assigned manually like every other named NPC, via
# tag_all_britain_npcs.mcfunction — same CustomName + npc_<name> tag convention.

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

# Detect /trigger MANTRA
scoreboard players enable @a MANTRA
execute as @a[scores={MANTRA=1..}] run function virtues:player/said_mantra
scoreboard players set @a[scores={MANTRA=1..}] MANTRA 0

# Detect /trigger SHOWDEBUG
scoreboard players enable @a SHOWDEBUG
execute as @a[scores={SHOWDEBUG=1..}] run function virtues:dev/show_debug
scoreboard players set @a[scores={SHOWDEBUG=1..}] SHOWDEBUG 0

# Detect /trigger RELAXABIT
scoreboard players enable @a RELAXABIT
execute as @a[scores={RELAXABIT=1..}] at @s if entity @e[type=minecraft:enderman,name=BELAATRIX,distance=..10] run function virtues:dev/relax_test
scoreboard players set @a[scores={RELAXABIT=1..}] RELAXABIT 0

# Detect compassion_yes prompt answer (dev test — Pepper-style yes/no dialogue)
scoreboard players enable @a compassion_yes
execute as @a[scores={compassion_yes=1..}] at @s run function virtues:dev/test_compassion_check

# Detect Celest's yes/no answer (Britain NPC roster)
scoreboard players enable @a CELESTYN
execute as @a[scores={CELESTYN=1..}] at @s run function virtues:npc/celest_check

# Detect Welcomer's potions yes/no answer (part of his roll table)
scoreboard players enable @a WELCOMERYN
execute as @a[scores={WELCOMERYN=1..}] at @s run function virtues:npc/welcomer_potions_check

# Detect Isaac's rune yes/no answer (Skara Brae ghost encounter). Only
# re-enabled while unresolved — otherwise old [Yes]/[No] chat text stays
# clickable forever and lets a player see (and farm) both answers.
execute if score $skara_ghost_resolved virtues.room_state matches 0 run scoreboard players enable @a[tag=skara_ghost_target] GHOSTYN
execute as @a[scores={GHOSTYN=1..}] at @s run function virtues:rooms/ghost_isaac_check

# Detect Hero's valor yes/no answer (part of his roll table)
# Only re-enabled under the 3-answer cap (virtues.hero_answered) — otherwise
# the old clickable [Yes]/[No] text stays live in chat scrollback forever and
# could be re-clicked to farm XP indefinitely.
scoreboard players add @a virtues.hero_answered 0
execute as @a[scores={virtues.hero_answered=0..2}] run scoreboard players enable @s HEROYN
execute as @a[scores={HEROYN=1..}] at @s run function virtues:npc/hero_valor_check

# Detect Tyrone's rental yes/no answer. No blanket re-enable here on purpose —
# tyrone_ask_rental.mcfunction enables the trigger itself, once, right when the
# prompt shows. Re-enabling it every tick (like other NPCs' Y/N do) would let an
# old chat click work again after walking away and coming back later.
execute as @a[scores={TYRONEYN=1..}] at @s run function virtues:npc/tyrone_rental_check

# Detect Trinsic's Lexington/Rigmore/Winthrop yes/no answers
scoreboard players enable @a LEXINGTONYN
execute as @a[scores={LEXINGTONYN=1..}] at @s run function virtues:npc/lexington_check
scoreboard players enable @a RIGMOREYN
execute as @a[scores={RIGMOREYN=1..}] at @s run function virtues:npc/rigmore_check
scoreboard players enable @a WINTHROPYN
execute as @a[scores={WINTHROPYN=1..}] at @s run function virtues:npc/winthrop_check
scoreboard players enable @a SWINDRIKYN
execute as @a[scores={SWINDRIKYN=1..}] at @s run function virtues:npc/swindrik_check

# Welcomer proximity greeting (Britain NPC roster) — repeatable: fires once per fresh
# approach (not every tick while standing still), state machine via virtues.near_welcomer
scoreboard players add @a virtues.near_welcomer 0
execute as @a[scores={virtues.near_welcomer=0}] at @s if entity @e[type=minecraft:villager,name="Welcomer",distance=..3] run function virtues:npc/welcomer_greet
execute as @a[scores={virtues.near_welcomer=0}] at @s if entity @e[type=minecraft:villager,name="Welcomer",distance=..3] run scoreboard players set @s virtues.near_welcomer 1
execute as @a[scores={virtues.near_welcomer=1}] at @s unless entity @e[type=minecraft:villager,name="Welcomer",distance=..3] run scoreboard players set @s virtues.near_welcomer 0

# Britain proximity NPCs — same repeatable state-machine pattern as Welcomer
scoreboard players add @a virtues.near_shapero 0
execute as @a[scores={virtues.near_shapero=0}] at @s if entity @e[type=minecraft:villager,name="Shapero",distance=..1] run function virtues:npc/shapero_greet
execute as @a[scores={virtues.near_shapero=0}] at @s if entity @e[type=minecraft:villager,name="Shapero",distance=..1] run scoreboard players set @s virtues.near_shapero 1
execute as @a[scores={virtues.near_shapero=1}] at @s unless entity @e[type=minecraft:villager,name="Shapero",distance=..1] run scoreboard players set @s virtues.near_shapero 0

scoreboard players add @a virtues.near_sprite 0
execute as @a[scores={virtues.near_sprite=0}] at @s if entity @e[type=minecraft:villager,name="Sprite",distance=..1] run function virtues:npc/sprite_greet
execute as @a[scores={virtues.near_sprite=0}] at @s if entity @e[type=minecraft:villager,name="Sprite",distance=..1] run scoreboard players set @s virtues.near_sprite 1
execute as @a[scores={virtues.near_sprite=1}] at @s unless entity @e[type=minecraft:villager,name="Sprite",distance=..1] run scoreboard players set @s virtues.near_sprite 0

scoreboard players add @a virtues.near_sebastian 0
execute as @a[scores={virtues.near_sebastian=0}] at @s if entity @e[type=minecraft:villager,name="Sebastian",distance=..1] run function virtues:npc/sebastian_greet
execute as @a[scores={virtues.near_sebastian=0}] at @s if entity @e[type=minecraft:villager,name="Sebastian",distance=..1] run scoreboard players set @s virtues.near_sebastian 1
execute as @a[scores={virtues.near_sebastian=1}] at @s unless entity @e[type=minecraft:villager,name="Sebastian",distance=..1] run scoreboard players set @s virtues.near_sebastian 0

scoreboard players add @a virtues.near_iolo 0
execute as @a[scores={virtues.near_iolo=0}] at @s if entity @e[type=minecraft:villager,name="Iolo",distance=..1] run function virtues:npc/iolo_greet
execute as @a[scores={virtues.near_iolo=0}] at @s if entity @e[type=minecraft:villager,name="Iolo",distance=..1] run scoreboard players set @s virtues.near_iolo 1
execute as @a[scores={virtues.near_iolo=1}] at @s unless entity @e[type=minecraft:villager,name="Iolo",distance=..1] run scoreboard players set @s virtues.near_iolo 0

scoreboard players add @a virtues.near_cricket 0
execute as @a[scores={virtues.near_cricket=0}] at @s if entity @e[type=minecraft:villager,name="Cricket",distance=..1] run function virtues:npc/cricket_greet
execute as @a[scores={virtues.near_cricket=0}] at @s if entity @e[type=minecraft:villager,name="Cricket",distance=..1] run scoreboard players set @s virtues.near_cricket 1
execute as @a[scores={virtues.near_cricket=1}] at @s unless entity @e[type=minecraft:villager,name="Cricket",distance=..1] run scoreboard players set @s virtues.near_cricket 0

scoreboard players add @a virtues.near_child 0
execute as @a[scores={virtues.near_child=0}] at @s if entity @e[type=minecraft:villager,name="Child",distance=..1] run function virtues:npc/child_greet
execute as @a[scores={virtues.near_child=0}] at @s if entity @e[type=minecraft:villager,name="Child",distance=..1] run scoreboard players set @s virtues.near_child 1
execute as @a[scores={virtues.near_child=1}] at @s unless entity @e[type=minecraft:villager,name="Child",distance=..1] run scoreboard players set @s virtues.near_child 0

scoreboard players add @a virtues.near_tween 0
execute as @a[scores={virtues.near_tween=0}] at @s if entity @e[type=minecraft:villager,name="Tween",distance=..1] run function virtues:npc/tween_greet
execute as @a[scores={virtues.near_tween=0}] at @s if entity @e[type=minecraft:villager,name="Tween",distance=..1] run scoreboard players set @s virtues.near_tween 1
execute as @a[scores={virtues.near_tween=1}] at @s unless entity @e[type=minecraft:villager,name="Tween",distance=..1] run scoreboard players set @s virtues.near_tween 0

scoreboard players add @a virtues.near_shalimar 0
execute as @a[scores={virtues.near_shalimar=0}] at @s if entity @e[type=minecraft:villager,name="Shalimar",distance=..1] run function virtues:npc/shalimar_greet
execute as @a[scores={virtues.near_shalimar=0}] at @s if entity @e[type=minecraft:villager,name="Shalimar",distance=..1] run scoreboard players set @s virtues.near_shalimar 1
execute as @a[scores={virtues.near_shalimar=1}] at @s unless entity @e[type=minecraft:villager,name="Shalimar",distance=..1] run scoreboard players set @s virtues.near_shalimar 0

scoreboard players add @a virtues.near_jason 0
execute as @a[scores={virtues.near_jason=0}] at @s if entity @e[type=minecraft:villager,name="Jason",distance=..2] run function virtues:npc/jason_greet
execute as @a[scores={virtues.near_jason=0}] at @s if entity @e[type=minecraft:villager,name="Jason",distance=..2] run scoreboard players set @s virtues.near_jason 1
execute as @a[scores={virtues.near_jason=1}] at @s unless entity @e[type=minecraft:villager,name="Jason",distance=..2] run scoreboard players set @s virtues.near_jason 0

scoreboard players add @a virtues.miner_tier 0
scoreboard players add @a virtues.near_winston_m 0
scoreboard players add @a virtues.winston_m_greet_count 0
execute as @a[scores={virtues.near_winston_m=0,virtues.winston_m_greet_count=..2}] at @s if entity @e[type=minecraft:villager,name="Winston M.",distance=..2] run function virtues:npc/winston_m_greet
execute as @a[scores={virtues.near_winston_m=0,virtues.winston_m_greet_count=..2}] at @s if entity @e[type=minecraft:villager,name="Winston M.",distance=..2] run scoreboard players add @s virtues.winston_m_greet_count 1
execute as @a[scores={virtues.near_winston_m=0,virtues.winston_m_greet_count=..2}] at @s if entity @e[type=minecraft:villager,name="Winston M.",distance=..2] run scoreboard players set @s virtues.near_winston_m 1
execute as @a[scores={virtues.near_winston_m=1}] at @s unless entity @e[type=minecraft:villager,name="Winston M.",distance=..2] run scoreboard players set @s virtues.near_winston_m 0

scoreboard players add @a virtues.near_pepper 0
scoreboard players add @a virtues.pepper_greet_count 0
execute as @a[scores={virtues.near_pepper=0,virtues.pepper_greet_count=..2}] at @s if entity @e[type=minecraft:villager,name="Pepper",distance=..2] run function virtues:npc/pepper_greet
execute as @a[scores={virtues.near_pepper=0,virtues.pepper_greet_count=..2}] at @s if entity @e[type=minecraft:villager,name="Pepper",distance=..2] run scoreboard players add @s virtues.pepper_greet_count 1
execute as @a[scores={virtues.near_pepper=0,virtues.pepper_greet_count=..2}] at @s if entity @e[type=minecraft:villager,name="Pepper",distance=..2] run scoreboard players set @s virtues.near_pepper 1
execute as @a[scores={virtues.near_pepper=1}] at @s unless entity @e[type=minecraft:villager,name="Pepper",distance=..2] run scoreboard players set @s virtues.near_pepper 0

# Jhelom proximity NPCs
scoreboard players add @a virtues.near_swen 0
execute as @a[scores={virtues.near_swen=0}] at @s if entity @e[type=minecraft:villager,name="Swen",distance=..2] run function virtues:npc/swen_greet
execute as @a[scores={virtues.near_swen=0}] at @s if entity @e[type=minecraft:villager,name="Swen",distance=..2] run scoreboard players set @s virtues.near_swen 1
execute as @a[scores={virtues.near_swen=1}] at @s unless entity @e[type=minecraft:villager,name="Swen",distance=..2] run scoreboard players set @s virtues.near_swen 0

scoreboard players add @a virtues.near_hero 0
execute as @a[scores={virtues.near_hero=0}] at @s if entity @e[type=minecraft:villager,name="Hero",distance=..2] run function virtues:npc/hero_greet
execute as @a[scores={virtues.near_hero=0}] at @s if entity @e[type=minecraft:villager,name="Hero",distance=..2] run scoreboard players set @s virtues.near_hero 1
execute as @a[scores={virtues.near_hero=1}] at @s unless entity @e[type=minecraft:villager,name="Hero",distance=..2] run scoreboard players set @s virtues.near_hero 0

scoreboard players add @a virtues.near_tyrone 0
execute as @a[scores={virtues.near_tyrone=0}] at @s if entity @e[type=minecraft:villager,name="Tyrone",distance=..2] run function virtues:npc/tyrone_greet
execute as @a[scores={virtues.near_tyrone=0}] at @s if entity @e[type=minecraft:villager,name="Tyrone",distance=..2] run scoreboard players set @s virtues.near_tyrone 1
execute as @a[scores={virtues.near_tyrone=1}] at @s unless entity @e[type=minecraft:villager,name="Tyrone",distance=..2] run scoreboard players set @s virtues.near_tyrone 0

# Moonglow proximity NPCs (all "1 Block" trigger detail per Blair's table)
scoreboard players add @a virtues.near_browning 0
execute as @a[scores={virtues.near_browning=0}] at @s if entity @e[type=minecraft:villager,name="Browning",distance=..1] run function virtues:npc/browning_greet
execute as @a[scores={virtues.near_browning=0}] at @s if entity @e[type=minecraft:villager,name="Browning",distance=..1] run scoreboard players set @s virtues.near_browning 1
execute as @a[scores={virtues.near_browning=1}] at @s unless entity @e[type=minecraft:villager,name="Browning",distance=..1] run scoreboard players set @s virtues.near_browning 0

scoreboard players add @a virtues.near_calabrini 0
execute as @a[scores={virtues.near_calabrini=0}] at @s if entity @e[type=minecraft:villager,name="Calabrini",distance=..2] run function virtues:npc/calabrini_greet
execute as @a[scores={virtues.near_calabrini=0}] at @s if entity @e[type=minecraft:villager,name="Calabrini",distance=..2] run scoreboard players set @s virtues.near_calabrini 1
execute as @a[scores={virtues.near_calabrini=1}] at @s unless entity @e[type=minecraft:villager,name="Calabrini",distance=..2] run scoreboard players set @s virtues.near_calabrini 0

scoreboard players add @a virtues.near_christen 0
execute as @a[scores={virtues.near_christen=0}] at @s if entity @e[type=minecraft:villager,name="Christen",distance=..1] run function virtues:npc/christen_greet
execute as @a[scores={virtues.near_christen=0}] at @s if entity @e[type=minecraft:villager,name="Christen",distance=..1] run scoreboard players set @s virtues.near_christen 1
execute as @a[scores={virtues.near_christen=1}] at @s unless entity @e[type=minecraft:villager,name="Christen",distance=..1] run scoreboard players set @s virtues.near_christen 0

scoreboard players add @a virtues.near_cromwell 0
execute as @a[scores={virtues.near_cromwell=0}] at @s if entity @e[type=minecraft:villager,name="Cromwell",distance=..1] run function virtues:npc/cromwell_greet
execute as @a[scores={virtues.near_cromwell=0}] at @s if entity @e[type=minecraft:villager,name="Cromwell",distance=..1] run scoreboard players set @s virtues.near_cromwell 1
execute as @a[scores={virtues.near_cromwell=1}] at @s unless entity @e[type=minecraft:villager,name="Cromwell",distance=..1] run scoreboard players set @s virtues.near_cromwell 0

scoreboard players add @a virtues.near_mariah 0
execute as @a[scores={virtues.near_mariah=0}] at @s if entity @e[type=minecraft:villager,name="Mariah",distance=..2] run function virtues:npc/mariah_greet
execute as @a[scores={virtues.near_mariah=0}] at @s if entity @e[type=minecraft:villager,name="Mariah",distance=..2] run scoreboard players set @s virtues.near_mariah 1
execute as @a[scores={virtues.near_mariah=1}] at @s unless entity @e[type=minecraft:villager,name="Mariah",distance=..2] run scoreboard players set @s virtues.near_mariah 0

scoreboard players add @a virtues.near_patric 0
execute as @a[scores={virtues.near_patric=0}] at @s if entity @e[type=minecraft:villager,name="Patric the Humble Shepherd",distance=..2] run function virtues:npc/patric_greet
execute as @a[scores={virtues.near_patric=0}] at @s if entity @e[type=minecraft:villager,name="Patric the Humble Shepherd",distance=..2] run scoreboard players set @s virtues.near_patric 1
execute as @a[scores={virtues.near_patric=1}] at @s unless entity @e[type=minecraft:villager,name="Patric the Humble Shepherd",distance=..2] run scoreboard players set @s virtues.near_patric 0

scoreboard players add @a virtues.near_rebelias 0
execute as @a[scores={virtues.near_rebelias=0}] at @s if entity @e[type=minecraft:villager,name="Rebelias",distance=..1] run function virtues:npc/rebelias_greet
execute as @a[scores={virtues.near_rebelias=0}] at @s if entity @e[type=minecraft:villager,name="Rebelias",distance=..1] run scoreboard players set @s virtues.near_rebelias 1
execute as @a[scores={virtues.near_rebelias=1}] at @s unless entity @e[type=minecraft:villager,name="Rebelias",distance=..1] run scoreboard players set @s virtues.near_rebelias 0

scoreboard players add @a virtues.near_scatu 0
execute as @a[scores={virtues.near_scatu=0}] at @s if entity @e[type=minecraft:villager,name="Scatu",distance=..2] run function virtues:npc/scatu_greet
execute as @a[scores={virtues.near_scatu=0}] at @s if entity @e[type=minecraft:villager,name="Scatu",distance=..2] run scoreboard players set @s virtues.near_scatu 1
execute as @a[scores={virtues.near_scatu=1}] at @s unless entity @e[type=minecraft:villager,name="Scatu",distance=..2] run scoreboard players set @s virtues.near_scatu 0

scoreboard players add @a virtues.near_shakespeare 0
execute as @a[scores={virtues.near_shakespeare=0}] at @s if entity @e[type=minecraft:villager,name="Shakespeare",distance=..1] run function virtues:npc/shakespeare_greet
execute as @a[scores={virtues.near_shakespeare=0}] at @s if entity @e[type=minecraft:villager,name="Shakespeare",distance=..1] run scoreboard players set @s virtues.near_shakespeare 1
execute as @a[scores={virtues.near_shakespeare=1}] at @s unless entity @e[type=minecraft:villager,name="Shakespeare",distance=..1] run scoreboard players set @s virtues.near_shakespeare 0

scoreboard players add @a virtues.near_shazom 0
execute as @a[scores={virtues.near_shazom=0}] at @s if entity @e[type=minecraft:villager,name="Shazom",distance=..2] run function virtues:npc/shazom_greet
execute as @a[scores={virtues.near_shazom=0}] at @s if entity @e[type=minecraft:villager,name="Shazom",distance=..2] run scoreboard players set @s virtues.near_shazom 1
execute as @a[scores={virtues.near_shazom=1}] at @s unless entity @e[type=minecraft:villager,name="Shazom",distance=..2] run scoreboard players set @s virtues.near_shazom 0

scoreboard players add @a virtues.near_william 0
execute as @a[scores={virtues.near_william=0}] at @s if entity @e[type=minecraft:villager,name="William",distance=..2] run function virtues:npc/william_greet
execute as @a[scores={virtues.near_william=0}] at @s if entity @e[type=minecraft:villager,name="William",distance=..2] run scoreboard players set @s virtues.near_william 1
execute as @a[scores={virtues.near_william=1}] at @s unless entity @e[type=minecraft:villager,name="William",distance=..2] run scoreboard players set @s virtues.near_william 0

scoreboard players add @a virtues.near_shaman 0
execute as @a[scores={virtues.near_shaman=0}] at @s if entity @e[type=minecraft:villager,name="Shaman",distance=..2] run function virtues:npc/shaman_greet
execute as @a[scores={virtues.near_shaman=0}] at @s if entity @e[type=minecraft:villager,name="Shaman",distance=..2] run scoreboard players set @s virtues.near_shaman 1
execute as @a[scores={virtues.near_shaman=1}] at @s unless entity @e[type=minecraft:villager,name="Shaman",distance=..2] run scoreboard players set @s virtues.near_shaman 0

scoreboard players add @a virtues.near_harmony 0
execute as @a[scores={virtues.near_harmony=0}] at @s if entity @e[type=minecraft:villager,name="Harmony",distance=..2] run function virtues:npc/harmony_greet
execute as @a[scores={virtues.near_harmony=0}] at @s if entity @e[type=minecraft:villager,name="Harmony",distance=..2] run scoreboard players set @s virtues.near_harmony 1
execute as @a[scores={virtues.near_harmony=1}] at @s unless entity @e[type=minecraft:villager,name="Harmony",distance=..2] run scoreboard players set @s virtues.near_harmony 0

scoreboard players add @a virtues.near_margot 0
execute as @a[scores={virtues.near_margot=0}] at @s if entity @e[type=minecraft:villager,name="Margot",distance=..2] run function virtues:npc/margot_greet
execute as @a[scores={virtues.near_margot=0}] at @s if entity @e[type=minecraft:villager,name="Margot",distance=..2] run scoreboard players set @s virtues.near_margot 1
execute as @a[scores={virtues.near_margot=1}] at @s unless entity @e[type=minecraft:villager,name="Margot",distance=..2] run scoreboard players set @s virtues.near_margot 0

# Trinsic proximity NPCs
scoreboard players add @a virtues.near_aristotle 0
execute as @a[scores={virtues.near_aristotle=0}] at @s if entity @e[type=minecraft:villager,name="Aristotle",distance=..2] run function virtues:npc/aristotle_greet
execute as @a[scores={virtues.near_aristotle=0}] at @s if entity @e[type=minecraft:villager,name="Aristotle",distance=..2] run scoreboard players set @s virtues.near_aristotle 1
execute as @a[scores={virtues.near_aristotle=1}] at @s unless entity @e[type=minecraft:villager,name="Aristotle",distance=..2] run scoreboard players set @s virtues.near_aristotle 0

scoreboard players add @a virtues.near_kline 0
execute as @a[scores={virtues.near_kline=0}] at @s if entity @e[type=minecraft:villager,name="Kline",distance=..2] run function virtues:npc/kline_greet
execute as @a[scores={virtues.near_kline=0}] at @s if entity @e[type=minecraft:villager,name="Kline",distance=..2] run scoreboard players set @s virtues.near_kline 1
execute as @a[scores={virtues.near_kline=1}] at @s unless entity @e[type=minecraft:villager,name="Kline",distance=..2] run scoreboard players set @s virtues.near_kline 0

scoreboard players add @a virtues.near_lexington 0
execute as @a[scores={virtues.near_lexington=0}] at @s if entity @e[type=minecraft:villager,name="Lexington",distance=..2] run function virtues:npc/lexington_greet
execute as @a[scores={virtues.near_lexington=0}] at @s if entity @e[type=minecraft:villager,name="Lexington",distance=..2] run scoreboard players set @s virtues.near_lexington 1
execute as @a[scores={virtues.near_lexington=1}] at @s unless entity @e[type=minecraft:villager,name="Lexington",distance=..2] run scoreboard players set @s virtues.near_lexington 0

scoreboard players add @a virtues.near_rigmore 0
execute as @a[scores={virtues.near_rigmore=0}] at @s if entity @e[type=minecraft:villager,name="Rigmore",distance=..2] run function virtues:npc/rigmore_greet
execute as @a[scores={virtues.near_rigmore=0}] at @s if entity @e[type=minecraft:villager,name="Rigmore",distance=..2] run scoreboard players set @s virtues.near_rigmore 1
execute as @a[scores={virtues.near_rigmore=1}] at @s unless entity @e[type=minecraft:villager,name="Rigmore",distance=..2] run scoreboard players set @s virtues.near_rigmore 0

scoreboard players add @a virtues.near_swindrik 0
execute as @a[scores={virtues.near_swindrik=0}] at @s if entity @e[type=minecraft:villager,name="Swindrik",distance=..1] run function virtues:npc/swindrik_greet
execute as @a[scores={virtues.near_swindrik=0}] at @s if entity @e[type=minecraft:villager,name="Swindrik",distance=..1] run scoreboard players set @s virtues.near_swindrik 1
execute as @a[scores={virtues.near_swindrik=1}] at @s unless entity @e[type=minecraft:villager,name="Swindrik",distance=..1] run scoreboard players set @s virtues.near_swindrik 0

scoreboard players add @a virtues.near_terrin 0
execute as @a[scores={virtues.near_terrin=0}] at @s if entity @e[type=minecraft:villager,name="Terrin",distance=..3] run function virtues:npc/terrin_greet
execute as @a[scores={virtues.near_terrin=0}] at @s if entity @e[type=minecraft:villager,name="Terrin",distance=..3] run scoreboard players set @s virtues.near_terrin 1
execute as @a[scores={virtues.near_terrin=1}] at @s unless entity @e[type=minecraft:villager,name="Terrin",distance=..3] run scoreboard players set @s virtues.near_terrin 0

scoreboard players add @a virtues.near_winthrop 0
execute as @a[scores={virtues.near_winthrop=0}] at @s if entity @e[type=minecraft:villager,name="Winthrop",distance=..3] run function virtues:npc/winthrop_greet
execute as @a[scores={virtues.near_winthrop=0}] at @s if entity @e[type=minecraft:villager,name="Winthrop",distance=..3] run scoreboard players set @s virtues.near_winthrop 1
execute as @a[scores={virtues.near_winthrop=1}] at @s unless entity @e[type=minecraft:villager,name="Winthrop",distance=..3] run scoreboard players set @s virtues.near_winthrop 0

scoreboard players add @a virtues.near_jean 0
execute as @a[scores={virtues.near_jean=0}] at @s if entity @e[type=minecraft:villager,name="Jean",distance=..2] run function virtues:npc/jean_greet
execute as @a[scores={virtues.near_jean=0}] at @s if entity @e[type=minecraft:villager,name="Jean",distance=..2] run scoreboard players set @s virtues.near_jean 1
execute as @a[scores={virtues.near_jean=1}] at @s unless entity @e[type=minecraft:villager,name="Jean",distance=..2] run scoreboard players set @s virtues.near_jean 0

scoreboard players add @a virtues.near_jumar 0
execute as @a[scores={virtues.near_jumar=0}] at @s if entity @e[type=minecraft:villager,name="Jumar",distance=..2] run function virtues:npc/jumar_greet
execute as @a[scores={virtues.near_jumar=0}] at @s if entity @e[type=minecraft:villager,name="Jumar",distance=..2] run scoreboard players set @s virtues.near_jumar 1
execute as @a[scores={virtues.near_jumar=1}] at @s unless entity @e[type=minecraft:villager,name="Jumar",distance=..2] run scoreboard players set @s virtues.near_jumar 0

scoreboard players add @a virtues.near_terran 0
execute as @a[scores={virtues.near_terran=0}] at @s if entity @e[type=minecraft:villager,name="Terran",distance=..2] run function virtues:npc/terran_greet
execute as @a[scores={virtues.near_terran=0}] at @s if entity @e[type=minecraft:villager,name="Terran",distance=..2] run scoreboard players set @s virtues.near_terran 1
execute as @a[scores={virtues.near_terran=1}] at @s unless entity @e[type=minecraft:villager,name="Terran",distance=..2] run scoreboard players set @s virtues.near_terran 0

scoreboard players add @a virtues.near_zajac 0
execute as @a[scores={virtues.near_zajac=0}] at @s if entity @e[type=minecraft:villager,name="Zajac",distance=..2] run function virtues:npc/zajac_greet
execute as @a[scores={virtues.near_zajac=0}] at @s if entity @e[type=minecraft:villager,name="Zajac",distance=..2] run scoreboard players set @s virtues.near_zajac 1
execute as @a[scores={virtues.near_zajac=1}] at @s unless entity @e[type=minecraft:villager,name="Zajac",distance=..2] run scoreboard players set @s virtues.near_zajac 0

scoreboard players add @a virtues.near_smith 0
execute as @a[scores={virtues.near_smith=0}] at @s if entity @e[type=minecraft:horse,name="Smith",distance=..1] run function virtues:npc/smith_greet
execute as @a[scores={virtues.near_smith=0}] at @s if entity @e[type=minecraft:horse,name="Smith",distance=..1] run scoreboard players set @s virtues.near_smith 1
execute as @a[scores={virtues.near_smith=1}] at @s unless entity @e[type=minecraft:horse,name="Smith",distance=..1] run scoreboard players set @s virtues.near_smith 0

# Detect /trigger GIVECHEST set <1-5> (1=bread 2=baked_potato 3=beetroot_soup 4=cookie 5=golden_carrot)
scoreboard players enable @a GIVECHEST
execute as @a[scores={GIVECHEST=1..}] run function virtues:player/give_chest_resolve
scoreboard players set @a[scores={GIVECHEST=1..}] GIVECHEST 0

# Detect /trigger TAKECHEST set <1-5> (same item mapping)
scoreboard players enable @a TAKECHEST
execute as @a[scores={TAKECHEST=1..}] run function virtues:player/take_chest_resolve
scoreboard players set @a[scores={TAKECHEST=1..}] TAKECHEST 0

# Clear vanilla advancement tabs every tick — they reappear faster than a 40-tick window catches
advancement revoke @a from minecraft:story/root
advancement revoke @a from minecraft:nether/root
advancement revoke @a from minecraft:end/root
advancement revoke @a from minecraft:adventure/root
advancement revoke @a from minecraft:husbandry/root

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

# Track whether each player has a hostile mob nearby (used to filter animal-punch detection)
scoreboard players set @a virtues.near_hostile 0
execute as @a at @s if entity @e[type=#virtues:hostile_mobs,distance=..10] run scoreboard players set @s virtues.near_hostile 1

# First-action milestone checks (dirt, tree) — opens Humility and Valor tabs
execute as @a run function virtues:player/check_first_actions

# Deal 0.5 heart damage every time a log is punched
execute as @a run function virtues:player/check_tree_damage
execute as @a run function virtues:player/check_stone_damage
execute as @a run function virtues:player/check_iron_ingots
execute as @a run function virtues:player/check_gold_ingots
execute as @a run function virtues:player/check_copper_ingots
execute as @a run function virtues:player/check_vegan_planting
execute as @a run function virtues:player/check_compassion_acts
execute as @a run function virtues:player/check_pillar

# Sample food counts for gifting detection (runs every tick so prev is accurate on circle entry)
execute as @a run function virtues:player/update_food_counts

# Theft watch countdown — set when chest opens in another's circle, detector ignores tick-0
execute as @a[scores={virtues.theft_watch=1..}] run scoreboard players remove @s virtues.theft_watch 1

# Circle entry detection — fires "This is X's circle" on the tick they cross from 6 to 5 blocks away
scoreboard players add @a virtues.in_circle 0
execute as @a[scores={virtues.in_circle=0}] at @s if entity @e[type=minecraft:marker,tag=virtues.owner,distance=..5] run function virtues:player/check_circle_ownership
execute as @a[scores={virtues.in_circle=0}] at @s if entity @e[type=minecraft:marker,tag=virtues.owner,distance=..5] run function virtues:player/enter_other_circle
execute as @a[scores={virtues.in_circle=1..}] at @s unless entity @e[type=minecraft:marker,tag=virtues.owner,distance=..5] run scoreboard players set @s virtues.in_circle 0



# Lycaeum NPC roster (proximity dialogue + Y/N questions)
scoreboard players add @a virtues.near_beth 0
execute as @a[scores={virtues.near_beth=0}] at @s if entity @e[type=minecraft:villager,name="Beth Frasier",distance=..2] run function virtues:npc/beth_frasier_greet
execute as @a[scores={virtues.near_beth=0}] at @s if entity @e[type=minecraft:villager,name="Beth Frasier",distance=..2] run scoreboard players set @s virtues.near_beth 1
execute as @a[scores={virtues.near_beth=1}] at @s unless entity @e[type=minecraft:villager,name="Beth Frasier",distance=..2] run scoreboard players set @s virtues.near_beth 0

scoreboard players add @a virtues.near_estro 0
execute as @a[scores={virtues.near_estro=0}] at @s if entity @e[type=minecraft:villager,name="Estro",distance=..2] run function virtues:npc/estro_greet
execute as @a[scores={virtues.near_estro=0}] at @s if entity @e[type=minecraft:villager,name="Estro",distance=..2] run scoreboard players set @s virtues.near_estro 1
execute as @a[scores={virtues.near_estro=1}] at @s unless entity @e[type=minecraft:villager,name="Estro",distance=..2] run scoreboard players set @s virtues.near_estro 0

scoreboard players add @a virtues.near_antos 0
execute as @a[scores={virtues.near_antos=0}] at @s if entity @e[type=minecraft:villager,name="Father Antos",distance=..2] run function virtues:npc/antos_greet
execute as @a[scores={virtues.near_antos=0}] at @s if entity @e[type=minecraft:villager,name="Father Antos",distance=..2] run scoreboard players set @s virtues.near_antos 1
execute as @a[scores={virtues.near_antos=1}] at @s unless entity @e[type=minecraft:villager,name="Father Antos",distance=..2] run scoreboard players set @s virtues.near_antos 0

scoreboard players add @a virtues.near_terence 0
execute as @a[scores={virtues.near_terence=0}] at @s if entity @e[type=minecraft:villager,name="Lord Terence",distance=..2] run function virtues:npc/terence_greet
execute as @a[scores={virtues.near_terence=0}] at @s if entity @e[type=minecraft:villager,name="Lord Terence",distance=..2] run scoreboard players set @s virtues.near_terence 1
execute as @a[scores={virtues.near_terence=1}] at @s unless entity @e[type=minecraft:villager,name="Lord Terence",distance=..2] run scoreboard players set @s virtues.near_terence 0

scoreboard players add @a virtues.near_nigel 0
execute as @a[scores={virtues.near_nigel=0}] at @s if entity @e[type=minecraft:villager,name="Nigel",distance=..2] run function virtues:npc/nigel_greet
execute as @a[scores={virtues.near_nigel=0}] at @s if entity @e[type=minecraft:villager,name="Nigel",distance=..2] run scoreboard players set @s virtues.near_nigel 1
execute as @a[scores={virtues.near_nigel=1}] at @s unless entity @e[type=minecraft:villager,name="Nigel",distance=..2] run scoreboard players set @s virtues.near_nigel 0

scoreboard players add @a virtues.near_robert 0
execute as @a[scores={virtues.near_robert=0}] at @s if entity @e[type=minecraft:villager,name="Robert Frasier",distance=..2] run function virtues:npc/robert_greet
execute as @a[scores={virtues.near_robert=0}] at @s if entity @e[type=minecraft:villager,name="Robert Frasier",distance=..2] run scoreboard players set @s virtues.near_robert 1
execute as @a[scores={virtues.near_robert=1}] at @s unless entity @e[type=minecraft:villager,name="Robert Frasier",distance=..2] run scoreboard players set @s virtues.near_robert 0

scoreboard players add @a virtues.near_scatuu 0
execute as @a[scores={virtues.near_scatuu=0}] at @s if entity @e[type=minecraft:villager,name="Scatuu",distance=..2] run function virtues:npc/scatuu_greet
execute as @a[scores={virtues.near_scatuu=0}] at @s if entity @e[type=minecraft:villager,name="Scatuu",distance=..2] run scoreboard players set @s virtues.near_scatuu 1
execute as @a[scores={virtues.near_scatuu=1}] at @s unless entity @e[type=minecraft:villager,name="Scatuu",distance=..2] run scoreboard players set @s virtues.near_scatuu 0

scoreboard players add @a virtues.near_shylock 0
execute as @a[scores={virtues.near_shylock=0}] at @s if entity @e[type=minecraft:villager,name="Shylock the Meek",distance=..2] run function virtues:npc/shylock_greet
execute as @a[scores={virtues.near_shylock=0}] at @s if entity @e[type=minecraft:villager,name="Shylock the Meek",distance=..2] run scoreboard players set @s virtues.near_shylock 1
execute as @a[scores={virtues.near_shylock=1}] at @s unless entity @e[type=minecraft:villager,name="Shylock the Meek",distance=..2] run scoreboard players set @s virtues.near_shylock 0

scoreboard players add @a virtues.near_tymus 0
execute as @a[scores={virtues.near_tymus=0}] at @s if entity @e[type=minecraft:villager,name="Tymus",distance=..2] run function virtues:npc/tymus_greet
execute as @a[scores={virtues.near_tymus=0}] at @s if entity @e[type=minecraft:villager,name="Tymus",distance=..2] run scoreboard players set @s virtues.near_tymus 1
execute as @a[scores={virtues.near_tymus=1}] at @s unless entity @e[type=minecraft:villager,name="Tymus",distance=..2] run scoreboard players set @s virtues.near_tymus 0

scoreboard players add @a virtues.near_starfire 0
execute as @a[scores={virtues.near_starfire=0}] at @s if entity @e[type=minecraft:villager,name="Starfire",distance=..2] run function virtues:npc/starfire_greet
execute as @a[scores={virtues.near_starfire=0}] at @s if entity @e[type=minecraft:villager,name="Starfire",distance=..2] run scoreboard players set @s virtues.near_starfire 1
execute as @a[scores={virtues.near_starfire=1}] at @s unless entity @e[type=minecraft:villager,name="Starfire",distance=..2] run scoreboard players set @s virtues.near_starfire 0

# Lycaeum Y/N answer detection
scoreboard players enable @a BETHYN
execute as @a[scores={BETHYN=1..}] at @s run function virtues:npc/beth_frasier_check
scoreboard players enable @a ESTROYN
execute as @a[scores={ESTROYN=1..}] at @s run function virtues:npc/estro_check
scoreboard players enable @a ANTOSYN
execute as @a[scores={ANTOSYN=1..}] at @s run function virtues:npc/antos_check
scoreboard players enable @a TERENCEYN
execute as @a[scores={TERENCEYN=1..}] at @s run function virtues:npc/terence_check
scoreboard players enable @a NIGELYN
execute as @a[scores={NIGELYN=1..}] at @s run function virtues:npc/nigel_check
scoreboard players enable @a ROBERTYN
execute as @a[scores={ROBERTYN=1..}] at @s run function virtues:npc/robert_check
scoreboard players enable @a SCATUUYN
execute as @a[scores={SCATUUYN=1..}] at @s run function virtues:npc/scatuu_check
scoreboard players enable @a SHYLOCKYN
execute as @a[scores={SHYLOCKYN=1..}] at @s run function virtues:npc/shylock_check
scoreboard players enable @a TYMUSYN
execute as @a[scores={TYMUSYN=1..}] at @s run function virtues:npc/tymus_check

# Magincia NPC roster (proximity dialogue + Y/N questions)
scoreboard players add @a virtues.near_faultless 0
execute as @a[scores={virtues.near_faultless=0}] at @s if entity @e[type=minecraft:villager,name="Faultless",distance=..2] run function virtues:npc/faultless_greet
execute as @a[scores={virtues.near_faultless=0}] at @s if entity @e[type=minecraft:villager,name="Faultless",distance=..2] run scoreboard players set @s virtues.near_faultless 1
execute as @a[scores={virtues.near_faultless=1}] at @s unless entity @e[type=minecraft:villager,name="Faultless",distance=..2] run scoreboard players set @s virtues.near_faultless 0

scoreboard players add @a virtues.near_heywood 0
execute as @a[scores={virtues.near_heywood=0}] at @s if entity @e[type=minecraft:villager,name="Heywood",distance=..2] run function virtues:npc/heywood_greet
execute as @a[scores={virtues.near_heywood=0}] at @s if entity @e[type=minecraft:villager,name="Heywood",distance=..2] run scoreboard players set @s virtues.near_heywood 1
execute as @a[scores={virtues.near_heywood=1}] at @s unless entity @e[type=minecraft:villager,name="Heywood",distance=..2] run scoreboard players set @s virtues.near_heywood 0

scoreboard players add @a virtues.near_katrina 0
execute as @a[scores={virtues.near_katrina=0}] at @s if entity @e[type=minecraft:villager,name="Katrina",distance=..2] run function virtues:npc/katrina_greet
execute as @a[scores={virtues.near_katrina=0}] at @s if entity @e[type=minecraft:villager,name="Katrina",distance=..2] run scoreboard players set @s virtues.near_katrina 1
execute as @a[scores={virtues.near_katrina=1}] at @s unless entity @e[type=minecraft:villager,name="Katrina",distance=..2] run scoreboard players set @s virtues.near_katrina 0

scoreboard players add @a virtues.near_nate 0
execute as @a[scores={virtues.near_nate=0}] at @s if entity @e[type=minecraft:villager,name="Nate the Snake",distance=..2] run function virtues:npc/nate_greet
execute as @a[scores={virtues.near_nate=0}] at @s if entity @e[type=minecraft:villager,name="Nate the Snake",distance=..2] run scoreboard players set @s virtues.near_nate 1
execute as @a[scores={virtues.near_nate=1}] at @s unless entity @e[type=minecraft:villager,name="Nate the Snake",distance=..2] run scoreboard players set @s virtues.near_nate 0

scoreboard players add @a virtues.near_virtuebane 0
execute as @a[scores={virtues.near_virtuebane=0}] at @s if entity @e[type=minecraft:villager,name="Virtuebane",distance=..2] run function virtues:npc/virtuebane_greet
execute as @a[scores={virtues.near_virtuebane=0}] at @s if entity @e[type=minecraft:villager,name="Virtuebane",distance=..2] run scoreboard players set @s virtues.near_virtuebane 1
execute as @a[scores={virtues.near_virtuebane=1}] at @s unless entity @e[type=minecraft:villager,name="Virtuebane",distance=..2] run scoreboard players set @s virtues.near_virtuebane 0

# Magincia Y/N answer detection
scoreboard players enable @a FAULTLESSYN
execute as @a[scores={FAULTLESSYN=1..}] at @s run function virtues:npc/faultless_check
scoreboard players enable @a HEYWOODYN
execute as @a[scores={HEYWOODYN=1..}] at @s run function virtues:npc/heywood_check
scoreboard players enable @a KATRINAYN
execute as @a[scores={KATRINAYN=1..}] at @s run function virtues:npc/katrina_check
scoreboard players enable @a VIRTUEBANEYN
execute as @a[scores={VIRTUEBANEYN=1..}] at @s run function virtues:npc/virtuebane_check

# Minoc NPC roster (proximity dialogue + Y/N questions)
scoreboard players add @a virtues.near_azure 0
execute as @a[scores={virtues.near_azure=0}] at @s if entity @e[type=minecraft:villager,name="Azure",distance=..2] run function virtues:npc/azure_greet
execute as @a[scores={virtues.near_azure=0}] at @s if entity @e[type=minecraft:villager,name="Azure",distance=..2] run scoreboard players set @s virtues.near_azure 1
execute as @a[scores={virtues.near_azure=1}] at @s unless entity @e[type=minecraft:villager,name="Azure",distance=..2] run scoreboard players set @s virtues.near_azure 0

scoreboard players add @a virtues.near_bob 0
execute as @a[scores={virtues.near_bob=0}] at @s if entity @e[type=minecraft:villager,name="Bob the Beggar",distance=..2] run function virtues:npc/bob_greet
execute as @a[scores={virtues.near_bob=0}] at @s if entity @e[type=minecraft:villager,name="Bob the Beggar",distance=..2] run scoreboard players set @s virtues.near_bob 1
execute as @a[scores={virtues.near_bob=1}] at @s unless entity @e[type=minecraft:villager,name="Bob the Beggar",distance=..2] run scoreboard players set @s virtues.near_bob 0

scoreboard players add @a virtues.near_damon 0
execute as @a[scores={virtues.near_damon=0}] at @s if entity @e[type=minecraft:villager,name="Damon",distance=..2] run function virtues:npc/damon_greet
execute as @a[scores={virtues.near_damon=0}] at @s if entity @e[type=minecraft:villager,name="Damon",distance=..2] run scoreboard players set @s virtues.near_damon 1
execute as @a[scores={virtues.near_damon=1}] at @s unless entity @e[type=minecraft:villager,name="Damon",distance=..2] run scoreboard players set @s virtues.near_damon 0

scoreboard players add @a virtues.near_gimble 0
execute as @a[scores={virtues.near_gimble=0}] at @s if entity @e[type=minecraft:villager,name="Gimble",distance=..2] run function virtues:npc/gimble_greet
execute as @a[scores={virtues.near_gimble=0}] at @s if entity @e[type=minecraft:villager,name="Gimble",distance=..2] run scoreboard players set @s virtues.near_gimble 1
execute as @a[scores={virtues.near_gimble=1}] at @s unless entity @e[type=minecraft:villager,name="Gimble",distance=..2] run scoreboard players set @s virtues.near_gimble 0

scoreboard players add @a virtues.near_jude 0
execute as @a[scores={virtues.near_jude=0}] at @s if entity @e[type=minecraft:villager,name="Jude",distance=..2] run function virtues:npc/jude_greet
execute as @a[scores={virtues.near_jude=0}] at @s if entity @e[type=minecraft:villager,name="Jude",distance=..2] run scoreboard players set @s virtues.near_jude 1
execute as @a[scores={virtues.near_jude=1}] at @s unless entity @e[type=minecraft:villager,name="Jude",distance=..2] run scoreboard players set @s virtues.near_jude 0

scoreboard players add @a virtues.near_julia 0
execute as @a[scores={virtues.near_julia=0}] at @s if entity @e[type=minecraft:villager,name="Julia",distance=..2] run function virtues:npc/julia_greet
execute as @a[scores={virtues.near_julia=0}] at @s if entity @e[type=minecraft:villager,name="Julia",distance=..2] run scoreboard players set @s virtues.near_julia 1
execute as @a[scores={virtues.near_julia=1}] at @s unless entity @e[type=minecraft:villager,name="Julia",distance=..2] run scoreboard players set @s virtues.near_julia 0

scoreboard players add @a virtues.near_merida 0
execute as @a[scores={virtues.near_merida=0}] at @s if entity @e[type=minecraft:villager,name="Merida",distance=..2] run function virtues:npc/merida_greet
execute as @a[scores={virtues.near_merida=0}] at @s if entity @e[type=minecraft:villager,name="Merida",distance=..2] run scoreboard players set @s virtues.near_merida 1
execute as @a[scores={virtues.near_merida=1}] at @s unless entity @e[type=minecraft:villager,name="Merida",distance=..2] run scoreboard players set @s virtues.near_merida 0

scoreboard players add @a virtues.near_mike 0
execute as @a[scores={virtues.near_mike=0}] at @s if entity @e[type=minecraft:villager,name="Mike Ward",distance=..2] run function virtues:npc/mike_greet
execute as @a[scores={virtues.near_mike=0}] at @s if entity @e[type=minecraft:villager,name="Mike Ward",distance=..2] run scoreboard players set @s virtues.near_mike 1
execute as @a[scores={virtues.near_mike=1}] at @s unless entity @e[type=minecraft:villager,name="Mike Ward",distance=..2] run scoreboard players set @s virtues.near_mike 0

scoreboard players add @a virtues.near_mischief 0
execute as @a[scores={virtues.near_mischief=0}] at @s if entity @e[type=minecraft:villager,name="Mischief",distance=..2] run function virtues:npc/mischief_greet
execute as @a[scores={virtues.near_mischief=0}] at @s if entity @e[type=minecraft:villager,name="Mischief",distance=..2] run scoreboard players set @s virtues.near_mischief 1
execute as @a[scores={virtues.near_mischief=1}] at @s unless entity @e[type=minecraft:villager,name="Mischief",distance=..2] run scoreboard players set @s virtues.near_mischief 0

scoreboard players add @a virtues.near_shentis 0
execute as @a[scores={virtues.near_shentis=0}] at @s if entity @e[type=minecraft:villager,name="Shentis",distance=..2] run function virtues:npc/shentis_greet
execute as @a[scores={virtues.near_shentis=0}] at @s if entity @e[type=minecraft:villager,name="Shentis",distance=..2] run scoreboard players set @s virtues.near_shentis 1
execute as @a[scores={virtues.near_shentis=1}] at @s unless entity @e[type=minecraft:villager,name="Shentis",distance=..2] run scoreboard players set @s virtues.near_shentis 0

scoreboard players add @a virtues.near_singsong 0
execute as @a[scores={virtues.near_singsong=0}] at @s if entity @e[type=minecraft:villager,name="Singsong",distance=..2] run function virtues:npc/singsong_greet
execute as @a[scores={virtues.near_singsong=0}] at @s if entity @e[type=minecraft:villager,name="Singsong",distance=..2] run scoreboard players set @s virtues.near_singsong 1
execute as @a[scores={virtues.near_singsong=1}] at @s unless entity @e[type=minecraft:villager,name="Singsong",distance=..2] run scoreboard players set @s virtues.near_singsong 0

scoreboard players add @a virtues.near_zircon 0
execute as @a[scores={virtues.near_zircon=0}] at @s if entity @e[type=minecraft:villager,name="Zircon",distance=..2] run function virtues:npc/zircon_greet
execute as @a[scores={virtues.near_zircon=0}] at @s if entity @e[type=minecraft:villager,name="Zircon",distance=..2] run scoreboard players set @s virtues.near_zircon 1
execute as @a[scores={virtues.near_zircon=1}] at @s unless entity @e[type=minecraft:villager,name="Zircon",distance=..2] run scoreboard players set @s virtues.near_zircon 0

# Minoc Y/N answer detection
scoreboard players enable @a AZUREYN
execute as @a[scores={AZUREYN=1..}] at @s run function virtues:npc/azure_check
scoreboard players enable @a BOBYN
execute as @a[scores={BOBYN=1..}] at @s run function virtues:npc/bob_check
scoreboard players enable @a DAMONYN
execute as @a[scores={DAMONYN=1..}] at @s run function virtues:npc/damon_check
scoreboard players enable @a GIMBLEYN
execute as @a[scores={GIMBLEYN=1..}] at @s run function virtues:npc/gimble_check
scoreboard players enable @a JUDEYN
execute as @a[scores={JUDEYN=1..}] at @s run function virtues:npc/jude_check
scoreboard players enable @a JULIAYN
execute as @a[scores={JULIAYN=1..}] at @s run function virtues:npc/julia_check
scoreboard players enable @a MERIDAYN
execute as @a[scores={MERIDAYN=1..}] at @s run function virtues:npc/merida_check
scoreboard players enable @a MIKEYN
execute as @a[scores={MIKEYN=1..}] at @s run function virtues:npc/mike_check
scoreboard players enable @a MISCHIEFYN
execute as @a[scores={MISCHIEFYN=1..}] at @s run function virtues:npc/mischief_check
scoreboard players enable @a SHENTISYN
execute as @a[scores={SHENTISYN=1..}] at @s run function virtues:npc/shentis_check
scoreboard players enable @a ZIRCONYN
execute as @a[scores={ZIRCONYN=1..}] at @s run function virtues:npc/zircon_check

# Skara Brae additional NPC roster (proximity dialogue + Y/N questions)
scoreboard players add @a virtues.near_ambule 0
execute as @a[scores={virtues.near_ambule=0}] at @s if entity @e[type=minecraft:villager,name="Ambule",distance=..2] run function virtues:npc/ambule_greet
execute as @a[scores={virtues.near_ambule=0}] at @s if entity @e[type=minecraft:villager,name="Ambule",distance=..2] run scoreboard players set @s virtues.near_ambule 1
execute as @a[scores={virtues.near_ambule=1}] at @s unless entity @e[type=minecraft:villager,name="Ambule",distance=..2] run scoreboard players set @s virtues.near_ambule 0

scoreboard players add @a virtues.near_barren 0
execute as @a[scores={virtues.near_barren=0}] at @s if entity @e[type=minecraft:villager,name="Barren",distance=..2] run function virtues:npc/barren_greet
execute as @a[scores={virtues.near_barren=0}] at @s if entity @e[type=minecraft:villager,name="Barren",distance=..2] run scoreboard players set @s virtues.near_barren 1
execute as @a[scores={virtues.near_barren=1}] at @s unless entity @e[type=minecraft:villager,name="Barren",distance=..2] run scoreboard players set @s virtues.near_barren 0

scoreboard players add @a virtues.near_emerson 0
execute as @a[scores={virtues.near_emerson=0}] at @s if entity @e[type=minecraft:villager,name="Emerson",distance=..2] run function virtues:npc/emerson_greet
execute as @a[scores={virtues.near_emerson=0}] at @s if entity @e[type=minecraft:villager,name="Emerson",distance=..2] run scoreboard players set @s virtues.near_emerson 1
execute as @a[scores={virtues.near_emerson=1}] at @s unless entity @e[type=minecraft:villager,name="Emerson",distance=..2] run scoreboard players set @s virtues.near_emerson 0

scoreboard players add @a virtues.near_granted 0
execute as @a[scores={virtues.near_granted=0}] at @s if entity @e[type=minecraft:villager,name="Granted",distance=..2] run function virtues:npc/granted_greet
execute as @a[scores={virtues.near_granted=0}] at @s if entity @e[type=minecraft:villager,name="Granted",distance=..2] run scoreboard players set @s virtues.near_granted 1
execute as @a[scores={virtues.near_granted=1}] at @s unless entity @e[type=minecraft:villager,name="Granted",distance=..2] run scoreboard players set @s virtues.near_granted 0

scoreboard players add @a virtues.near_presto 0
execute as @a[scores={virtues.near_presto=0}] at @s if entity @e[type=minecraft:villager,name="Presto",distance=..2] run function virtues:npc/presto_greet
execute as @a[scores={virtues.near_presto=0}] at @s if entity @e[type=minecraft:villager,name="Presto",distance=..2] run scoreboard players set @s virtues.near_presto 1
execute as @a[scores={virtues.near_presto=1}] at @s unless entity @e[type=minecraft:villager,name="Presto",distance=..2] run scoreboard players set @s virtues.near_presto 0

scoreboard players add @a virtues.near_romasco 0
execute as @a[scores={virtues.near_romasco=0}] at @s if entity @e[type=minecraft:villager,name="Romasco",distance=..2] run function virtues:npc/romasco_greet
execute as @a[scores={virtues.near_romasco=0}] at @s if entity @e[type=minecraft:villager,name="Romasco",distance=..2] run scoreboard players set @s virtues.near_romasco 1
execute as @a[scores={virtues.near_romasco=1}] at @s unless entity @e[type=minecraft:villager,name="Romasco",distance=..2] run scoreboard players set @s virtues.near_romasco 0

scoreboard players add @a virtues.near_santayana 0
execute as @a[scores={virtues.near_santayana=0}] at @s if entity @e[type=minecraft:villager,name="Santayana",distance=..2] run function virtues:npc/santayana_greet
execute as @a[scores={virtues.near_santayana=0}] at @s if entity @e[type=minecraft:villager,name="Santayana",distance=..2] run scoreboard players set @s virtues.near_santayana 1
execute as @a[scores={virtues.near_santayana=1}] at @s unless entity @e[type=minecraft:villager,name="Santayana",distance=..2] run scoreboard players set @s virtues.near_santayana 0

scoreboard players add @a virtues.near_shamino 0
execute as @a[scores={virtues.near_shamino=0}] at @s if entity @e[type=minecraft:villager,name="Shamino",distance=..2] run function virtues:npc/shamino_greet
execute as @a[scores={virtues.near_shamino=0}] at @s if entity @e[type=minecraft:villager,name="Shamino",distance=..2] run scoreboard players set @s virtues.near_shamino 1
execute as @a[scores={virtues.near_shamino=1}] at @s unless entity @e[type=minecraft:villager,name="Shamino",distance=..2] run scoreboard players set @s virtues.near_shamino 0

# Skara Brae additional Y/N answer detection
scoreboard players enable @a AMBULEYN
execute as @a[scores={AMBULEYN=1..}] at @s run function virtues:npc/ambule_check
scoreboard players enable @a EMERSONYN
execute as @a[scores={EMERSONYN=1..}] at @s run function virtues:npc/emerson_check
scoreboard players enable @a GRANTEDYN
execute as @a[scores={GRANTEDYN=1..}] at @s run function virtues:npc/granted_check
scoreboard players enable @a PRESTOYN
execute as @a[scores={PRESTOYN=1..}] at @s run function virtues:npc/presto_check
scoreboard players enable @a ROMASCOYN
execute as @a[scores={ROMASCOYN=1..}] at @s run function virtues:npc/romasco_check
scoreboard players enable @a SANTAYANAYN
execute as @a[scores={SANTAYANAYN=1..}] at @s run function virtues:npc/santayana_check
scoreboard players enable @a SHAMINOYN
execute as @a[scores={SHAMINOYN=1..}] at @s run function virtues:npc/shamino_check

# Yew NPC roster (proximity dialogue + Y/N questions)
scoreboard players add @a virtues.near_beggar 0
execute as @a[scores={virtues.near_beggar=0}] at @s if entity @e[type=minecraft:villager,name="Beggar",distance=..2] run function virtues:npc/beggar_greet
execute as @a[scores={virtues.near_beggar=0}] at @s if entity @e[type=minecraft:villager,name="Beggar",distance=..2] run scoreboard players set @s virtues.near_beggar 1
execute as @a[scores={virtues.near_beggar=1}] at @s unless entity @e[type=minecraft:villager,name="Beggar",distance=..2] run scoreboard players set @s virtues.near_beggar 0

scoreboard players add @a virtues.near_calumny 0
execute as @a[scores={virtues.near_calumny=0}] at @s if entity @e[type=minecraft:villager,name="Calumny",distance=..2] run function virtues:npc/calumny_greet
execute as @a[scores={virtues.near_calumny=0}] at @s if entity @e[type=minecraft:villager,name="Calumny",distance=..2] run scoreboard players set @s virtues.near_calumny 1
execute as @a[scores={virtues.near_calumny=1}] at @s unless entity @e[type=minecraft:villager,name="Calumny",distance=..2] run scoreboard players set @s virtues.near_calumny 0

scoreboard players add @a virtues.near_court_guard 0
execute as @a[scores={virtues.near_court_guard=0}] at @s if entity @e[type=minecraft:villager,name="Court Guard",distance=..2] run function virtues:npc/court_guard_greet
execute as @a[scores={virtues.near_court_guard=0}] at @s if entity @e[type=minecraft:villager,name="Court Guard",distance=..2] run scoreboard players set @s virtues.near_court_guard 1
execute as @a[scores={virtues.near_court_guard=1}] at @s unless entity @e[type=minecraft:villager,name="Court Guard",distance=..2] run scoreboard players set @s virtues.near_court_guard 0

scoreboard players add @a virtues.near_adruid 0
execute as @a[scores={virtues.near_adruid=0}] at @s if entity @e[type=minecraft:villager,name="A.Druid",distance=..2] run function virtues:npc/adruid_greet
execute as @a[scores={virtues.near_adruid=0}] at @s if entity @e[type=minecraft:villager,name="A.Druid",distance=..2] run scoreboard players set @s virtues.near_adruid 1
execute as @a[scores={virtues.near_adruid=1}] at @s unless entity @e[type=minecraft:villager,name="A.Druid",distance=..2] run scoreboard players set @s virtues.near_adruid 0

scoreboard players add @a virtues.near_dwp 0
execute as @a[scores={virtues.near_dwp=0}] at @s if entity @e[type=minecraft:villager,name="Dwp",distance=..2] run function virtues:npc/dwp_greet
execute as @a[scores={virtues.near_dwp=0}] at @s if entity @e[type=minecraft:villager,name="Dwp",distance=..2] run scoreboard players set @s virtues.near_dwp 1
execute as @a[scores={virtues.near_dwp=1}] at @s unless entity @e[type=minecraft:villager,name="Dwp",distance=..2] run scoreboard players set @s virtues.near_dwp 0

scoreboard players add @a virtues.near_frida 0
execute as @a[scores={virtues.near_frida=0}] at @s if entity @e[type=minecraft:villager,name="Frida",distance=..2] run function virtues:npc/frida_greet
execute as @a[scores={virtues.near_frida=0}] at @s if entity @e[type=minecraft:villager,name="Frida",distance=..2] run scoreboard players set @s virtues.near_frida 1
execute as @a[scores={virtues.near_frida=1}] at @s unless entity @e[type=minecraft:villager,name="Frida",distance=..2] run scoreboard players set @s virtues.near_frida 0

scoreboard players add @a virtues.near_guard 0
execute as @a[scores={virtues.near_guard=0}] at @s if entity @e[type=minecraft:villager,name="Guard",distance=..2] run function virtues:npc/guard_greet
execute as @a[scores={virtues.near_guard=0}] at @s if entity @e[type=minecraft:villager,name="Guard",distance=..2] run scoreboard players set @s virtues.near_guard 1
execute as @a[scores={virtues.near_guard=1}] at @s unless entity @e[type=minecraft:villager,name="Guard",distance=..2] run scoreboard players set @s virtues.near_guard 0

scoreboard players add @a virtues.near_jaana 0
execute as @a[scores={virtues.near_jaana=0}] at @s if entity @e[type=minecraft:villager,name="Jaana",distance=..2] run function virtues:npc/jaana_greet
execute as @a[scores={virtues.near_jaana=0}] at @s if entity @e[type=minecraft:villager,name="Jaana",distance=..2] run scoreboard players set @s virtues.near_jaana 1
execute as @a[scores={virtues.near_jaana=1}] at @s unless entity @e[type=minecraft:villager,name="Jaana",distance=..2] run scoreboard players set @s virtues.near_jaana 0

scoreboard players add @a virtues.near_jail_guard 0
execute as @a[scores={virtues.near_jail_guard=0}] at @s if entity @e[type=minecraft:villager,name="Jail Guard",distance=..2] run function virtues:npc/jail_guard_greet
execute as @a[scores={virtues.near_jail_guard=0}] at @s if entity @e[type=minecraft:villager,name="Jail Guard",distance=..2] run scoreboard players set @s virtues.near_jail_guard 1
execute as @a[scores={virtues.near_jail_guard=1}] at @s unless entity @e[type=minecraft:villager,name="Jail Guard",distance=..2] run scoreboard players set @s virtues.near_jail_guard 0

scoreboard players add @a virtues.near_pinrod 0
execute as @a[scores={virtues.near_pinrod=0}] at @s if entity @e[type=minecraft:villager,name="Pinrod",distance=..2] run function virtues:npc/pinrod_greet
execute as @a[scores={virtues.near_pinrod=0}] at @s if entity @e[type=minecraft:villager,name="Pinrod",distance=..2] run scoreboard players set @s virtues.near_pinrod 1
execute as @a[scores={virtues.near_pinrod=1}] at @s unless entity @e[type=minecraft:villager,name="Pinrod",distance=..2] run scoreboard players set @s virtues.near_pinrod 0

scoreboard players add @a virtues.near_ranger_rick 0
execute as @a[scores={virtues.near_ranger_rick=0}] at @s if entity @e[type=minecraft:villager,name="Ranger Rick",distance=..2] run function virtues:npc/ranger_rick_greet
execute as @a[scores={virtues.near_ranger_rick=0}] at @s if entity @e[type=minecraft:villager,name="Ranger Rick",distance=..2] run scoreboard players set @s virtues.near_ranger_rick 1
execute as @a[scores={virtues.near_ranger_rick=1}] at @s unless entity @e[type=minecraft:villager,name="Ranger Rick",distance=..2] run scoreboard players set @s virtues.near_ranger_rick 0

scoreboard players add @a virtues.near_short_round 0
execute as @a[scores={virtues.near_short_round=0}] at @s if entity @e[type=minecraft:villager,name="Short Round",distance=..2] run function virtues:npc/short_round_greet
execute as @a[scores={virtues.near_short_round=0}] at @s if entity @e[type=minecraft:villager,name="Short Round",distance=..2] run scoreboard players set @s virtues.near_short_round 1
execute as @a[scores={virtues.near_short_round=1}] at @s unless entity @e[type=minecraft:villager,name="Short Round",distance=..2] run scoreboard players set @s virtues.near_short_round 0

scoreboard players add @a virtues.near_cy_lent 0
execute as @a[scores={virtues.near_cy_lent=0}] at @s if entity @e[type=minecraft:villager,name="Cy Lent",distance=..2] run function virtues:npc/cy_lent_greet
execute as @a[scores={virtues.near_cy_lent=0}] at @s if entity @e[type=minecraft:villager,name="Cy Lent",distance=..2] run scoreboard players set @s virtues.near_cy_lent 1
execute as @a[scores={virtues.near_cy_lent=1}] at @s unless entity @e[type=minecraft:villager,name="Cy Lent",distance=..2] run scoreboard players set @s virtues.near_cy_lent 0

scoreboard players add @a virtues.near_talfourd 0
execute as @a[scores={virtues.near_talfourd=0}] at @s if entity @e[type=minecraft:villager,name="Talfourd",distance=..2] run function virtues:npc/talfourd_greet
execute as @a[scores={virtues.near_talfourd=0}] at @s if entity @e[type=minecraft:villager,name="Talfourd",distance=..2] run scoreboard players set @s virtues.near_talfourd 1
execute as @a[scores={virtues.near_talfourd=1}] at @s unless entity @e[type=minecraft:villager,name="Talfourd",distance=..2] run scoreboard players set @s virtues.near_talfourd 0

scoreboard players add @a virtues.near_vorpal 0
execute as @a[scores={virtues.near_vorpal=0}] at @s if entity @e[type=minecraft:villager,name="Vorpal",distance=..2] run function virtues:npc/vorpal_greet
execute as @a[scores={virtues.near_vorpal=0}] at @s if entity @e[type=minecraft:villager,name="Vorpal",distance=..2] run scoreboard players set @s virtues.near_vorpal 1
execute as @a[scores={virtues.near_vorpal=1}] at @s unless entity @e[type=minecraft:villager,name="Vorpal",distance=..2] run scoreboard players set @s virtues.near_vorpal 0

# Yew Y/N answer detection
scoreboard players enable @a BEGGARYN
execute as @a[scores={BEGGARYN=1..}] at @s run function virtues:npc/beggar_check
scoreboard players enable @a CALUMNYYN
execute as @a[scores={CALUMNYYN=1..}] at @s run function virtues:npc/calumny_check
scoreboard players enable @a COURTGUARDYN
execute as @a[scores={COURTGUARDYN=1..}] at @s run function virtues:npc/court_guard_check
scoreboard players enable @a ADRUIDYN
execute as @a[scores={ADRUIDYN=1..}] at @s run function virtues:npc/adruid_check
scoreboard players enable @a DWPYN
execute as @a[scores={DWPYN=1..}] at @s run function virtues:npc/dwp_check
scoreboard players enable @a FRIDAYN
execute as @a[scores={FRIDAYN=1..}] at @s run function virtues:npc/frida_check
scoreboard players enable @a GUARDYN
execute as @a[scores={GUARDYN=1..}] at @s run function virtues:npc/guard_check
scoreboard players enable @a JAANAYN
execute as @a[scores={JAANAYN=1..}] at @s run function virtues:npc/jaana_check
scoreboard players enable @a JAILGUARDYN
execute as @a[scores={JAILGUARDYN=1..}] at @s run function virtues:npc/jail_guard_check
scoreboard players enable @a PINRODYN
execute as @a[scores={PINRODYN=1..}] at @s run function virtues:npc/pinrod_check
scoreboard players enable @a RANGERYN
execute as @a[scores={RANGERYN=1..}] at @s run function virtues:npc/ranger_rick_check
scoreboard players enable @a SHORTYN
execute as @a[scores={SHORTYN=1..}] at @s run function virtues:npc/short_round_check
scoreboard players enable @a TALFOURDYN
execute as @a[scores={TALFOURDYN=1..}] at @s run function virtues:npc/talfourd_check
scoreboard players enable @a VORPALYN
execute as @a[scores={VORPALYN=1..}] at @s run function virtues:npc/vorpal_check
