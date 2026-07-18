# Vegan

> To live without taking from others — plant, nurture, harvest, repeat.

**Classification:** Independent virtue — not derived from the three cardinal principles (Love, Courage, Truth). Sits alongside Humility as a lifestyle virtue. Vegan status is a prerequisite for Humility enlightenment.

**Advancement tab:** Separate tab, own root. Background: mycelium or farmland texture.

---

## Progression — The Five Tiers

| Level | Advancement | Trigger | Notes |
|-------|-------------|---------|-------|
| L1 | **Sapling Tender** | Plant any sapling | `minecraft.custom:minecraft.pot_flower` or item use on grass |
| L1 | **Spore Starter** | Plant a mushroom | item use (brown or red mushroom on dirt/mycelium) |
| L2 | **Giant Among Fungi** | Grow a giant mushroom | Use bone meal on a mushroom until it pops to giant |
| L3 | **From Seed** | Harvest a crop you planted | Score delta on wheat/carrot/potato/beetroot mined stats vs. baseline |
| L4 | **Home Cooking** | Craft mushroom stew yourself | `minecraft:recipe_crafted` trigger for mushroom_stew |
| L5 | **Level 5 Vegan** | All prior tiers + clean animal record | Requires L1–L4 granted AND `virtues:compassion/xc1` never granted |

*Level 5 Vegan is a Simpsons reference ("I don't eat anything that casts a shadow").*

---

## Anti-virtue: Tree Puncher

Punching a tree is a minor, reversible anti-advancement.

| Advancement | Trigger | Punishment | Reversal |
|-------------|---------|------------|---------|
| `tree_puncher` | Punch any log | 0.5 heart damage (already implemented) | Plant a sapling → clears `tree_puncher` |

`tree_puncher` does not block Vegan progression or Humility enlightenment — it's a slap on the wrist, not a blocking sin. It simply cannot coexist with L5 Vegan (clean record required).

---

## Relationship to Humility

Humility enlightenment requires **Vegan L3 or higher** ("From Seed"). The reasoning: true humility includes not dominating nature for sport or convenience. A player who farms their own food has demonstrated enough restraint.

---

## Notes

- L1 has two parallel entry points (sapling OR mushroom) — either unlocks the branch.
- L3 crop harvest needs scoreboard delta tracking (same pattern as log delta for tree damage).
- L5 checking `xc1` not granted means a player who ever punched an animal must clear their record via soup redemption before achieving Level 5 Vegan.
- Tab icon suggestion: brown mushroom or wheat.
