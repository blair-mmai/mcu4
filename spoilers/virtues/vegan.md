# Vegan

> To live without taking from others — plant, nurture, harvest, repeat.

**Classification:** Independent virtue — not derived from the three cardinal principles (Love, Courage, Truth). Sits alongside Humility as a lifestyle virtue. Vegan status is a prerequisite for Humility enlightenment.

**Advancement tab:** Separate tab, own root. Background: farmland texture. Tab icon: brown mushroom.

---

## Two Independent Tracks

### Plant Track — nurturing the land

| File | Advancement | Item | Trigger |
|------|-------------|------|---------|
| `s1_wheat_seeds` | **Sower** | Plant wheat seeds | `placed_block` wheat — LIVE |
| `s2_sapling` | **Forester** | Plant any sapling | `placed_block` saplings tag — LIVE |
| `s3_beetroot_seeds` | **Root Cause** | Plant beetroot seeds | `placed_block` beetroots — LIVE |
| `s4_pumpkin_seeds` | **Patch Work** | Plant pumpkin seeds | `placed_block` pumpkin_stem — LIVE |
| `s5_melon_seeds` | **Green Thumb** | Plant melon seeds | `placed_block` melon_stem — LIVE |

### Eat Track — personal lifestyle

| File | Advancement | Item | Trigger |
|------|-------------|------|---------|
| `p1_bread` | **Staff of Life** | Eat bread | `consume_item` — LIVE |
| `p2_baked_potato` | **Hot Potato** | Eat baked potato | `consume_item` — LIVE |
| `p3_beetroot` | **Beet It** | Eat beetroot soup | `consume_item` — LIVE |
| `p4_cookie` | **Sweet Conviction** | Craft cookie | `recipe_crafted` — LIVE |
| `p5_golden_carrot` | **Gilded Garden** | Eat golden carrot | `consume_item` — LIVE |

### Give Track — generosity to others' chests

| File | Advancement | Item | Trigger |
|------|-------------|------|---------|
| `g1_bread` | **Breaking Bread** | Bread | placeholder — chest detection TBD |
| `g2_baked_potato` | **Warm Hands** | Baked potato | placeholder — chest detection TBD |
| `g3_beetroot` | **From the Earth** | Beetroot soup | placeholder — chest detection TBD |
| `g4_cookie` | **Cookie Monster (Reformed)** | Cookie | placeholder — chest detection TBD |
| `g5_golden_carrot` | **Level 5 Vegan** | Golden carrot | placeholder — chest detection TBD |

### L6 — All Three Tracks Complete

| File | Advancement | Icon | Condition |
|------|-------------|------|-----------|
| `l6_enlightened` | **Enlightened Vegan** | Carrot | Hangs off `p5_golden_carrot`; granted by function when `s5` + `p5` + `g5` all granted |

"You live it. You give it."

---

## Anti-virtue: Tree Abuser

| File | Advancement | Trigger | Notes |
|------|-------------|---------|-------|
| `tree_abuser` | **Tree Abuser** | Punch any log | Granted alongside `valor:tree_bruiser` from `check_tree_damage` |

"That tree was minding its own business."

Does not block Vegan progression — minor, aesthetic anti-advancement for now.

---

## Anti-virtue: Chest Theft

Taking from another player's named chest:
- **Insta-death** (damage @s 19 or kill @s)
- **Anti-advancement** granted in Spirituality tab

Detection mechanism deferred — see [future_versions.md](../../future_versions/future_versions.md).

---

## Enlightenment / Rune Gating

No mantra or prayer ritual. Vegan status is observed by a villager — likely the **butcher**, who notices you never buy meat — and that villager gates a rune at some point. Specific rune and butcher dialogue TBD.

---

## Relationship to Humility

Humility enlightenment requires **Personal Track L2** ("Sweet Conviction") or higher completed.

---

## Notes

- Personal track triggers are live (`consume_item` works in 26.2).
- Generosity track triggers are all placeholder — require chest ownership detection system.
- L6 granted by function checking both `p3` and `g4` are granted.
- Chest theft detection and the spirituality anti-advancement are deferred to future version.
