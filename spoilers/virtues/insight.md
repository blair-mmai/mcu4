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

## Cartographer Trade Path

Profession: **Cartographer**. Virtue: **Insight**.

| Give | Receive | Notes |
|------|---------|-------|
| 1 boat | 1 treasure map | Tellraw: *"Return with a heart of the sea."* |
| 1 heart of the sea | 1 heart of the sea | Gating mechanic |
| 1 heart of the sea | Book & Quill: *Lore of Pillars* | |
| Berries | 1 forest map | |
| 1 totem of undying | 1 totem of undying | Gating — tellraw: *"Ah, 'tis a very nice totem. Try using it!"* |
| TBD | 1 outpost map | Bring back crossbow |
| 1 crossbow | 1 magic crossbow | |
| 1 ocean map | 1 dry sponge | |
| 1 sticky piston or observer or soul torch | — | TBD |

## Anti-Virtue: Sin of Ignorance / Sin of the Caveman

- Crafting wood tools = **Sin of Ignorance** (anti-Insight)
- Crafting stone tools = **Sin of the Caveman** (anti-Insight)

## Puzzles

- **The Locked Room**: a structure with a reward requiring non-obvious entry — no door, requires reading the environment (water flow, pressure plates, hidden levers). Brute-forcing the walls scores Ignorance.
