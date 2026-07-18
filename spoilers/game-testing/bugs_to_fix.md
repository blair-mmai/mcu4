# Bugs to Fix

## BUG-02: Stone circle does not auto-spawn in new world
**Description:** New world starts empty — stone circle with chest should spawn near spawn point on first load.
**To fix:** Save stone circle as structure block in existing world → copy `.nbt` to datapack → wire into `world_init.mcfunction` with `place structure virtues:stone_circle`.
**Files involved:**
- `ultima_virtues/data/virtues/function/world_init.mcfunction`
- `ultima_virtues/data/virtues/structure/stone_circle.nbt` (does not exist yet)



## BUG-01: Soup redemption not firing
**Description:** Trading mushroom soup for an empty bowl with any farmer should remove one anti-Compassion advancement (callous_brute → xc3 → xc2 → xc1). Not working.
**What was tried:**
- `minecraft:villager_trade` advancement trigger — did not fire in 26.2
- `minecraft:inventory_changed` advancement trigger — did not fire in 26.2
- Tick-based `execute store result score @s virtues.bowl_count if items entity @s * minecraft:bowl` — did not fire
**Suspected cause:** `if items entity @s * minecraft:bowl` — `*` is not a valid slot in 26.2 and causes a parse error that silently breaks the entire tick.mcfunction, stopping ALL game logic. Removed from tick to unblock. Need correct slot syntax.
**Files involved:**
- `ultima_virtues/data/virtues/function/tick.mcfunction` (soup redemption block)
- `ultima_virtues/data/virtues/function/player/soup_redemption.mcfunction`
- `ultima_virtues/data/virtues/function/player/soup_redemption_brute/xc1/xc2/xc3.mcfunction`
- `ultima_virtues/data/virtues/advancement/compassion/soup_redemption.json`
