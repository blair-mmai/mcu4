# Rune trigger detection
scoreboard players enable @a MOONGATE
execute as @a[scores={MOONGATE=1..}] if items entity @s weapon.mainhand minecraft:white_glazed_terracotta run function moongate:rune/use_honesty
execute as @a[scores={MOONGATE=1..}] if items entity @s weapon.mainhand minecraft:orange_glazed_terracotta run function moongate:rune/use_compassion
execute as @a[scores={MOONGATE=1..}] if items entity @s weapon.mainhand minecraft:yellow_glazed_terracotta run function moongate:rune/use_valor
execute as @a[scores={MOONGATE=1..}] if items entity @s weapon.mainhand minecraft:lime_glazed_terracotta run function moongate:rune/use_justice
execute as @a[scores={MOONGATE=1..}] if items entity @s weapon.mainhand minecraft:light_blue_glazed_terracotta run function moongate:rune/use_sacrifice
execute as @a[scores={MOONGATE=1..}] if items entity @s weapon.mainhand minecraft:purple_glazed_terracotta run function moongate:rune/use_honor
execute as @a[scores={MOONGATE=1..}] if items entity @s weapon.mainhand minecraft:cyan_glazed_terracotta run function moongate:rune/use_spirituality
execute as @a[scores={MOONGATE=1..}] if items entity @s weapon.mainhand minecraft:pink_glazed_terracotta run function moongate:rune/use_humility
scoreboard players set @a[scores={MOONGATE=1..}] MOONGATE 0

# Decrement teleport cooldowns
scoreboard players remove @a[scores={moongate.cooldown=1..}] moongate.cooldown 1

# Sample daytime once per tick
execute store result score $daytime moongate.daytime run time query daytime

# Ambient visual for the gate opening (decorative only, no teleport function)
function moongate:gate/ambient_glow

# Check each gate's active window and handle players
function moongate:gate/check_honesty
function moongate:gate/check_compassion
function moongate:gate/check_valor
function moongate:gate/check_justice
function moongate:gate/check_sacrifice
function moongate:gate/check_honor
function moongate:gate/check_spirituality
function moongate:gate/check_humility
