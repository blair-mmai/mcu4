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
