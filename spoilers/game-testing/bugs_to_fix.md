# Bugs to Fix

## BUG-01: Soup redemption not firing
**Description:** Trading mushroom soup for an empty bowl with any farmer should remove one anti-Compassion advancement (callous_brute → xc3 → xc2 → xc1). Not working.
**What was tried:**
- `minecraft:villager_trade` advancement trigger — did not fire in 26.2
- `minecraft:inventory_changed` advancement trigger — did not fire in 26.2
- Tick-based `execute store result score @s virtues.bowl_count if items entity @s * minecraft:bowl` — did not fire
**Suspected cause:** `if items entity @s * minecraft:bowl` slot syntax may be wrong in 26.2, or `store result` from `if items` doesn't return item count as expected.
**Files involved:**
- `ultima_virtues/data/virtues/function/tick.mcfunction` (soup redemption block)
- `ultima_virtues/data/virtues/function/player/soup_redemption.mcfunction`
- `ultima_virtues/data/virtues/function/player/soup_redemption_brute/xc1/xc2/xc3.mcfunction`
- `ultima_virtues/data/virtues/advancement/compassion/soup_redemption.json`
