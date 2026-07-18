# Vegan

> To live without taking from others — plant, nurture, harvest, repeat.

**Classification:** Independent virtue — not derived from the three cardinal principles (Love, Courage, Truth). Sits alongside Humility as a lifestyle virtue. Vegan status is a prerequisite for Humility enlightenment.

**Advancement tab:** Separate tab, own root. Background: mycelium or farmland texture. Tab icon: brown mushroom or wheat.

---

## Progression — The Five Tiers

The arc: forage and craft increasingly difficult plant-based foods, then give them away. Every tier is an act of generosity, not personal consumption.

| Level | Advancement | Action | Item |
|-------|-------------|--------|------|
| L1 | **Breaking Bread** | Craft → put in another player's chest | Bread (wheat ×3) |
| L2 | **Beet It** | Craft → put in another player's chest | Beetroot soup (beetroot ×6 + bowl) |
| L3 | **Sweet Conviction** | Craft → put in another player's chest | Cookie (wheat + cocoa beans) |
| L4 | **Gilded Garden** | Craft → put in another player's chest | Golden carrot (carrot + gold nuggets ×8) |
| L5 | **Level 5 Vegan** | Craft → put in another player's chest | Beetroot soup (placeholder — see note) |

*Level 5 Vegan is a Simpsons reference ("I don't eat anything that casts a shadow").*

*Note: L5 uses beetroot soup as placeholder. Suspicious stew (oxeye daisy/regeneration) is the intended L5 item — deferred to future version. See [future_versions.md](../../future_versions/future_versions.md).*

---

## Anti-virtue: Tree Puncher

Punching a tree is a minor, reversible anti-advancement.

| Advancement | Trigger | Punishment | Reversal |
|-------------|---------|------------|---------|
| `tree_puncher` | Punch any log | 0.5 heart damage (already implemented) | Plant a sapling → clears `tree_puncher` |

`tree_puncher` does not block Vegan progression or Humility enlightenment — it's a slap on the wrist, not a blocking sin.

---

## Relationship to Humility

Humility enlightenment requires **Vegan L3** or higher. The reasoning: true humility includes not dominating nature for sport or convenience.

---

## Notes

- Chest detection uses the existing named-chest / `opened_private_chest` pattern.
- Tab icon suggestion: brown mushroom or wheat.
