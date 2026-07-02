setblock ~2 ~ ~ minecraft:chest
execute positioned ~2 ~ ~ run loot insert ~ ~ ~ loot virtues:chests/starting_chest
summon minecraft:marker ~2 ~ ~
tag @e[type=minecraft:marker,distance=..4,limit=1,sort=nearest] add virtues.area
tag @e[type=minecraft:marker,distance=..4,limit=1,sort=nearest,tag=virtues.area] add virtues.owner
# North — Humility — White terracotta
setblock ~2 ~1 ~-4 minecraft:mossy_cobblestone
setblock ~2 ~ ~-4 minecraft:mossy_cobblestone
setblock ~2 ~-1 ~-4 minecraft:mossy_cobblestone
setblock ~2 ~-2 ~-4 minecraft:mossy_cobblestone
setblock ~2 ~-3 ~-4 minecraft:white_glazed_terracotta

# NE — Insight — Yellow terracotta
setblock ~5 ~1 ~-3 minecraft:mossy_cobblestone
setblock ~5 ~ ~-3 minecraft:mossy_cobblestone
setblock ~5 ~-1 ~-3 minecraft:mossy_cobblestone
setblock ~5 ~-2 ~-3 minecraft:mossy_cobblestone
setblock ~5 ~-3 ~-3 minecraft:yellow_glazed_terracotta

# East — Valor — Orange terracotta
setblock ~6 ~1 ~ minecraft:mossy_cobblestone
setblock ~6 ~ ~ minecraft:mossy_cobblestone
setblock ~6 ~-1 ~ minecraft:mossy_cobblestone
setblock ~6 ~-2 ~ minecraft:mossy_cobblestone
setblock ~6 ~-3 ~ minecraft:orange_glazed_terracotta

# SE — Sacrifice — Red terracotta
setblock ~5 ~1 ~3 minecraft:mossy_cobblestone
setblock ~5 ~ ~3 minecraft:mossy_cobblestone
setblock ~5 ~-1 ~3 minecraft:mossy_cobblestone
setblock ~5 ~-2 ~3 minecraft:mossy_cobblestone
setblock ~5 ~-3 ~3 minecraft:red_glazed_terracotta

# South — Compassion — Brown terracotta
setblock ~2 ~1 ~4 minecraft:mossy_cobblestone
setblock ~2 ~ ~4 minecraft:mossy_cobblestone
setblock ~2 ~-1 ~4 minecraft:mossy_cobblestone
setblock ~2 ~-2 ~4 minecraft:mossy_cobblestone
setblock ~2 ~-3 ~4 minecraft:brown_glazed_terracotta

# SW — Guidance — Blue terracotta
setblock ~-1 ~1 ~3 minecraft:mossy_cobblestone
setblock ~-1 ~ ~3 minecraft:mossy_cobblestone
setblock ~-1 ~-1 ~3 minecraft:mossy_cobblestone
setblock ~-1 ~-2 ~3 minecraft:mossy_cobblestone
setblock ~-1 ~-3 ~3 minecraft:blue_glazed_terracotta

# West — Fortitude — Cyan terracotta
setblock ~-2 ~1 ~ minecraft:mossy_cobblestone
setblock ~-2 ~ ~ minecraft:mossy_cobblestone
setblock ~-2 ~-1 ~ minecraft:mossy_cobblestone
setblock ~-2 ~-2 ~ minecraft:mossy_cobblestone
setblock ~-2 ~-3 ~ minecraft:cyan_glazed_terracotta

# NW — Spirituality — Green terracotta
setblock ~-1 ~1 ~-3 minecraft:mossy_cobblestone
setblock ~-1 ~ ~-3 minecraft:mossy_cobblestone
setblock ~-1 ~-1 ~-3 minecraft:mossy_cobblestone
setblock ~-1 ~-2 ~-3 minecraft:mossy_cobblestone
setblock ~-1 ~-3 ~-3 minecraft:green_glazed_terracotta
