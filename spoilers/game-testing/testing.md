# Game Testing — mcu4

Add new tests as mechanics are implemented.

## Beginning of game

| ID | Setup | Action | Expected |
|----|-------|--------|----------|
| G_01 | Fresh world, datapack enabled, cheats on | Enter world for first time | Subtitles sequence: *"You open your eyes."* → *"You find yourself in a field."* → *"You are a Stranger here."* → silence → *"...you feel an urge to punch a tree."* |
| G_02 | Complete G_01, wait ~16 seconds | Sequence ends | Stone circle (8 mossy cobblestone pillars with glazed terracotta bases) and chest appear around player |
| G_03 | Complete G_02 | Walk away then walk back within 5 blocks of chest | Yellow message: *"This is [username]'s circle."* |
| G_04 | Complete G_02 | Open chest | Contains: 1 brown mushroom, 1 name tag, 1 anvil |
| G_05 | Complete G_02 | Pick up the brown mushroom | Compassion advancement tab appears, "A Farmer might value that." toast fires |

## Compassion — positive branch

| ID | Setup | Action | Expected |
|----|-------|--------|----------|
| V_CMP_01 | Mushroom in inventory | Pick it up | Compassion tab opens. "A Farmer might value that." advancement granted. |
| V_CMP_02 | Compassion tab open | Find a farmer villager (L1 Novice) | Trade: 10 brown mushrooms → 1 red mushroom. "Fungal Exchange" advancement granted. |
| V_CMP_03 | Complete V_CMP_02 | Trade: 10 red mushrooms → wooden bowl (L2 Apprentice) | "A Plea for Help?" advancement granted. |
| V_CMP_04 | Complete V_CMP_03 | Trade mushroom soup → wooden bowl 5 times (L3 Journeyman) | "Soup Kitchen" advancement granted after 5th trade. |
| V_CMP_05 | Complete V_CMP_04 | Trade mushroom soup → brown glazed terracotta (L4 Expert, once only) | "Rune of Compassion" advancement granted. Farmer levels to Master. |
| V_CMP_06 | Complete V_CMP_05 | Do first Master trade: empty bowl → mushroom soup | "Compassionate" final goal advancement granted. (Dawn prayer ritual not yet implemented — currently fires on first master trade.) |

### Farmer trade chain (for reference)

| Level | Trades available |
|-------|-----------------|
| L1 Novice | 2 dirt → 1 mycelium; 2 brown mushroom → 1 red mushroom; 4 wheat seeds → 1 bone meal |
| L2 Apprentice | + 2 red mushroom → wooden bowl (xp:60); 1 wheat → 1 bread; 3 wheat → 1 bread |
| L3 Journeyman | + mushroom soup → wooden bowl (xp:16 each, 5 trades to level) |
| L4 Expert | + mushroom soup → rune (xp:100, maxUses:1) |
| L5 Master | + empty bowl → mushroom soup (xp:0) |

## Compassion — negative branch

| ID | Setup | Action | Expected |
|----|-------|--------|----------|
| V_XC_01 | Find a passive animal (cow, pig, sheep or chicken) | Hit it with bare hand | "Puncher of Animals" advancement granted. Nausea 3s applied. Yellow: *"That was needlessly cruel."* |
| V_XC_02 | Complete V_XC_01 | Punch another animal | "Really? Again?" — Nausea 6s. |
| V_XC_03 | Complete V_XC_02 | Punch another animal | "You're worse than Hilter." — Nausea 9s. |
| V_XC_04 | Complete V_XC_03 | Punch another animal | "Callous Brute" — Nausea 15s + Poison 15s. |
| V_XC_05 | Any time after C tab is open | Break a hay bale (pick it up) | "Village Thief" anti-advancement granted under Compassion. Nausea II + Poison II for 15s. |

**Notes on anti-advancements:**
- xC1 and xC2 are warning level — do not block Compassion enlightenment
- xC3 (Callous Brute) and Village Thief block enlightenment — must be cleared by dawn prayer ritual first (not yet implemented)
- Clearing gives private tellraw: *"you feel a little less callous"* or *"you are forgiven for your thieving ways"*

## Humility

| ID | Setup | Action | Expected |
|----|-------|--------|----------|
| V_HUM_01 | In any area with dirt or grass | Dig dirt or grass block | Humility tab opens. "Grounded" toast: *"Somehow, digging feels cathartic."* |

## Valor

| ID | Setup | Action | Expected |
|----|-------|--------|----------|
| V_VAL_01 | Find or place any log | Break it (first ever log broken) | Valor tab opens. "Tree Bruiser" toast. Half-heart damage. Yellow: *"That stung. Courage has a cost."* |

## End game — Calming BELAATRIX

Pre-requisites (lore-discovered, not explained directly):
- Player is enlightened in all 8 virtues and At Peace across all virtues simultaneously
- Full netherite armor equipped
- A pale oak boat placed on water
- An enderman named with a name tag reading "BELAATRIX" (her true name, discovered through lore) lured into the pale oak boat

| ID | Setup | Action | Expected |
|----|-------|--------|----------|
| E_01 | BELAATRIX enderman in pale oak boat, player in same boat taking damage | `/trigger RELAXABIT` | "Yer Hysterical!" goal advancement granted and announced to all players. |
| E_02 | Complete E_01 | — | BELAATRIX enderman despawns (kill — appears to vanish into space). |
| E_03 | Complete E_01 | — | Fireworks burst in 5 directions around player (red/yellow/blue large balls, stars, bursts). |
| E_04 | Complete E_01 | — | Gold broadcast to all: *"[username] has calmed the storm."* |

---

## Dev / reset commands

| What to reset | Command |
|---------------|---------|
| First join sequence + circle | `/function virtues:dev/reset_player` then exit and rejoin |
| Re-run intro sequence only | `/function virtues:dev/start_fresh` |
| All advancements | `/function virtues:dev/reset_advancements` |
| Trigger dirt (Humility tab) | `/function virtues:dev/trigger_dirt` |
| Trigger tree (Valor tab) | `/function virtues:dev/trigger_tree` |
| Trigger animal punch | `/function virtues:dev/trigger_animal` (run up to 4x to walk xC chain) |
| Test ending fireworks only | `/function virtues:dev/ending_fireworks` |
| Trigger ending sequence | `/trigger RELAXABIT` (requires BELAATRIX enderman within 10 blocks) |
| Remove all effects | `/effect clear @s` |

## Known gotchas

- `pillager_head` is not a valid vanilla item ID — advancements with invalid icons silently fail to load; use `wither_skeleton_skull` instead
- `player_message` advancement trigger does not exist in 26.x vanilla — use `/trigger` scoreboard approach
- Vanilla tab suppression: roots use `minecraft:impossible` trigger; tick function also revokes from players every join via `virtues.vanilla_cleared` flag
- BELAATRIX enderman selector uses `name=BELAATRIX` (not `tag=` or NBT) — this matches the name tag applied via anvil
- Distance check in tick function uses `at @s` so distance=..10 measures from player position, not world origin
