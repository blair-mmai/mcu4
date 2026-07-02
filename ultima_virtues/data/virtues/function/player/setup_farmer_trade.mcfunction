# virtues:player/setup_farmer_trade
# Run this targeting a specific farmer villager entity (e.g.
# execute as @e[type=minecraft:villager,...] run function virtues:player/setup_farmer_trade)
# to give them the brown -> red mushroom trade.
#
# This is a novice-level trade: 16 brown mushroom in, 1 red mushroom out.
# Completing it also grants this villager XP so they level up normally.

data merge entity @s {
  VillagerData: { profession: "minecraft:farmer", level: 1 },
  Offers: {
    Recipes: [
      {
        buy: { id: "minecraft:brown_mushroom", Count: 16 },
        sell: { id: "minecraft:red_mushroom", Count: 1 },
        maxUses: 999999,
        xp: 5,
        rewardExp: 1b
      }
    ]
  }
}
