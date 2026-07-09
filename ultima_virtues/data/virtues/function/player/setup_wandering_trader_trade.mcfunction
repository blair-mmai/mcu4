# virtues:player/setup_wandering_trader_trade
# Called from tick.mcfunction for all wandering traders.
# Injects custom trades — replaces vanilla offers entirely.
#
# Trade: netherite sword -> enderman spawn egg (one per trader, one-time only)

execute if data entity @s Offers run data modify entity @s Offers.Recipes set value [{buy:{id:"minecraft:netherite_sword",count:1},sell:{id:"minecraft:enderman_spawn_egg",count:1},maxUses:1,xp:0}]
