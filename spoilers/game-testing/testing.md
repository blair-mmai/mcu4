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
| V_CMP_04 | Complete V_CMP_03 | Trade mushroom soup → wooden bowl 10 times (L3 Journeyman) | "Soup Kitchen" advancement granted after 10th trade. |
| V_CMP_05 | Complete V_CMP_04 | Trade mushroom soup → brown glazed terracotta (L4 Expert, once only) | "Rune of Compassion" advancement granted. |

## Compassion — negative branch

| ID | Setup | Action | Expected |
|----|-------|--------|----------|
| V_XC_01 | Find a passive animal (cow, pig, sheep or chicken) | Hit it with bare hand | "Puncher of Animals" advancement granted. Nausea 3s applied. Yellow: *"That was needlessly cruel."* |
| V_XC_02 | Complete V_XC_01 | Punch another animal | "Really? Again?" — Nausea 6s. |
| V_XC_03 | Complete V_XC_02 | Punch another animal | "You're worse than Hilter." — Nausea 9s. |
| V_XC_04 | Complete V_XC_03 | Punch another animal | "Callous Brute" — Nausea 15s + Poison 15s. |

## Humility

| ID | Setup | Action | Expected |
|----|-------|--------|----------|
| V_HUM_01 | In any area with dirt | Dig dirt | Humility tab opens silently. "Grounded" toast: *"Somehow, this feels cathartic."* |

## Valor

| ID | Setup | Action | Expected |
|----|-------|--------|----------|
| V_VAL_01 | Find or place any log | Break it (first ever log broken) | Valor tab opens. "Tree Bruiser" toast. Half-heart damage. Yellow: *"That stung. Courage has a cost."* |

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
| Remove all effects | `/effect clear @s` |
