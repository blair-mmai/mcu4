# Spirituality (Love + Courage + Wisdom)

> To live for a purpose bigger than yourself.

**Anti-virtue: Materialism**

## Virtue actions

| Action | MC Trigger | Conflicts With | Result |
|--------|-----------|----------------|--------|
| Reach the End | `advancement: end/root` | — | Score |
| Build a non-survival structure (shrine, art) | custom advancement via structure detection | Humility (grand builds = pride?) | Score |
| Meditate (stand still, no input, 60s) | movement scoreboard stays 0 for 1200 ticks | — | Score + Night Vision effect |

## Anti-virtue actions

| Action | MC Trigger | Result |
|--------|-----------|--------|
| Fill 3+ chests with hoarded resources | `minecraft.used:minecraft.chest` count + nbt inventory check | Score penalty |
| Never leave the Overworld (after day 10) | dimension check `execute in minecraft:overworld` only | Score penalty |

## Puzzles

- **The Shrine**: a pre-built structure with an altar. Placing a meaningful item (not dirt or junk) on the altar and walking away scores Spirituality. Taking items from the altar scores Materialism.
