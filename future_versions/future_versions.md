# Future Versions

Ideas deferred from the current implementation. Pick these up in a later iteration.

---

## Compassion — Village Thief anti-virtue

| Advancement | Trigger | Tier | Punishment |
|-------------|---------|------|------------|
| `thief` — Village Thief | Pick up a hay bale | Blocking | Nausea II + Poison II (15s each) |

Additional triggers to refine:
- Break a hay bale **in a village** (`inventory_changed` hay_block near village — currently fires anywhere)
- Open a chest in a village (`minecraft.custom:minecraft.open_chest` near village) → score penalty

Note: village proximity detection is needed before these can be scoped correctly. Abandoned for now.

---

## Vegan tab — Chest theft detection

Taking from another player's named chest should trigger insta-death + a Spirituality anti-advancement. Detection mechanism not yet designed — needs chest ownership tag system (similar to circle marker ownership) so the game knows whose chest it is. Three open questions:
1. Does chest detection use proximity to a player's marker, or an explicit named/tagged chest?
2. Does L6 Enlightened Vegan require both tracks independently completed?
3. Should generosity track items need to be crafted by the giver (not just picked up and deposited)?

---

## Vegan tab — L5 Suspicious Stew

The intended L5 Vegan item is suspicious stew crafted with an oxeye daisy (grants Regeneration), given to another player's chest. Deferred because L5 is placeholder beetroot soup for now.

Suspicious stew effects by flower:

| Flower | Effect | Duration |
|--------|--------|----------|
| Poppy | Night Vision | 5s |
| Dandelion / Blue Orchid | Saturation | 0.35s |
| Allium | Fire Resistance | 4s |
| Azure Bluet | Blindness | 8s |
| Red/White/Pink Tulip | Weakness | 9s |
| Oxeye Daisy | Regeneration | 8s |
| Cornflower | Jump Boost | 6s |
| Lily of the Valley | Poison | 12s |
| Wither Rose | Wither | 8s |
| Torchflower | Night Vision | 5s |
| Closed/Open Eyeblossom | Blindness / Nausea | 6–7s |

Oxeye Daisy (Regeneration) chosen for L5 — the most intentionally caring gift. Knowing which flower heals is itself a form of wisdom.

---

## Runes

### Randomize terracotta colors per world

Currently the 8 virtue rune colors are fixed:

| Virtue | Color |
|--------|-------|
| Humility | White |
| Insight | Yellow |
| Valor | Orange |
| Sacrifice | Red |
| Compassion | Brown |
| Guidance | Blue |
| Fortitude | Cyan |
| Spirituality | Green |

In a future version, assign colors randomly at world init so no two worlds share the same rune-to-virtue mapping. This makes the discovery of which color belongs to which virtue part of the gameplay — players must deduce or be told by the world.

---

## Nitwits

Something with nitwits — TBD. A nitwit serves no survival purpose, can't be employed, and can breed to produce more nitwits. There's a virtue angle in there somewhere (Sacrifice? Compassion? Pure optimistic generosity with negative return). Mechanic unclear — player can't directly hand-feed villagers, so detection is fiddly. Revisit when the right idea surfaces.

---

## Patience

Patience as a possible virtue or Humility sub-advancement. Distinct from Humility in direction:
- **Humility**: what you don't claim
- **Patience**: what you don't rush

Uncle Wandering Matt (see `spoilers/villagers/antos_family.md`) embodies this mechanic — his appearance can't be forced or planned around. May manifest as a standalone Patience virtue or a Humility advancement earned by being present when Matt appears without having actively searched for him.

---

## Biome-Village Virtue Alignment

Different biome village types reflect the virtue-oriented towns from *Ultima IV*. Each village type (plains, savanna, desert, taiga, snowy, jungle, etc.) is aligned to a specific virtue — architecture, NPC trades, and ambient details all themed accordingly. Librarians and other key NPCs in those villages are guaranteed to carry that village's aligned virtue identity rather than random assignment.

Connects physical world geography to the virtue map: finding a village biome becomes meaningful — you know what kind of town it is, what it values, and what it can offer you on your virtue path.
