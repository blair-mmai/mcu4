# Insight (Wisdom)

> To observe, learn, and figure things out.

**Anti-virtue: Ignorance**

## Virtue actions

| Action | MC Trigger | Conflicts With | Result |
|--------|-----------|----------------|--------|
| Craft a non-basic item (iron tools or above) | `minecraft.crafted:minecraft.iron_pickaxe` etc. | Humility (accumulating) | Score |
| Find a structure (dungeon, temple, village) | `advancement: adventure/adventuring_time` | — | Score |
| Read a written book | `minecraft.used:minecraft.written_book` | — | Score |
| Solve a puzzle | custom advancement | — | Score + toast |

## Anti-virtue actions

| Action | MC Trigger | Result |
|--------|-----------|--------|
| Never craft beyond wood tools (after day 5) | `minecraft.crafted:minecraft.wooden_*` threshold check | Slowness effect |
| Ignore a discovered structure entirely | TBD | Score penalty |

## Puzzles

- **The Locked Room**: a structure with a reward requiring non-obvious entry — no door, requires reading the environment (water flow, pressure plates, hidden levers). Brute-forcing the walls scores Ignorance.
