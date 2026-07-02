# Compassion (Love)

> To care for others without expectation of return.

**Anti-virtue: Callousness**

## Virtue actions

| Action | MC Trigger | Conflicts With | Result |
|--------|-----------|----------------|--------|
| Feed a villager | TBD | — | Positive effect + score |
| Breed animals | `minecraft.custom:minecraft.animals_bred` | Humility (using resources) | Positive effect + score |
| Plant a mushroom | `virtues:compassion/planted_brown_mushroom` | — | Toast + score |
| Put food in another player's named chest while not hungry (hunger > 6) | chest ownership tag check + `execute if entity @s[nbt={FoodLevel:7..}]` | Sacrifice (if starving instead) | Score |

## Anti-virtue actions

| Action | MC Trigger | Result |
|--------|-----------|--------|
| Punch an animal | advancement: `virtues:compassion/punched_animal` | Nausea effect |
| Break a hay bale in a village | `minecraft.mined:minecraft.hay_block` near village | Score penalty |
| Open a chest in a village | `minecraft.custom:minecraft.open_chest` near village | Score penalty |

## Rune

In *Ultima IV*, each virtue is represented by a rune the player must discover. In this datapack, **glazed terracotta blocks stand in for runes** — each virtue has a corresponding color, placed at the base of its pillar in the starting stone circle.

Compassion's rune color is **brown glazed terracotta**.

**Obtaining the Compassion rune — farmer villager trade progression:**

| Level | Trade | Notes |
|-------|-------|-------|
| L1 Novice | 10 brown mushrooms → 1 red mushroom | Levels up after 1 trade |
| L1 Novice | Composter → Mycelium | Bonus trade at same level |
| L2 Apprentice | 10 red mushrooms → 1 wooden bowl | Levels up after 1 trade |
| L3 Journeyman | 1 mushroom soup → 1 wooden bowl | 1/10 XP per trade; needs 10 trades to reach Expert |
| L4 Expert | 1 mushroom soup → brown glazed terracotta (rune) | Once only |
| L5 Master | 1 wooden bowl → 1 mushroom soup | Farmer becomes a renewable food source |

The player places the rune block somewhere meaningful (altar, home, etc.) as a physical token of virtue earned.

The player places the rune block somewhere meaningful (altar, home, etc.) as a physical token of virtue earned.

## Puzzles

- **The Hungry Villager**: a villager stands near an empty farm. Planting and harvesting for them scores Compassion. Taking from their farm scores Callousness. Breaking the hay bale nearby to get seeds scores Callousness too — it's stealing.
