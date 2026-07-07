# Fortitude (Wisdom + Courage)

> To endure difficulty with clear-eyed awareness.  To appreciate the line between life and death.

**Anti-virtue: Weakness**

## Virtue actions

| Action | MC Trigger | Conflicts With | Result |
|--------|-----------|----------------|--------|
| Survive a full night without entering a shelter | time check `minecraft.custom:minecraft.play_time` + no bed used | Insight (building shelter is wise) | Score |
| Continue playing after dying | `minecraft.custom:minecraft.deaths` increment + rejoin detection | — | Score |
| Mine below y=0 without torches and survive | y-level check + `minecraft.used:minecraft.torch` absence | Insight (torches are wise) | Score |

## Anti-virtue actions

| Action | MC Trigger | Result |
|--------|-----------|--------|
| Die 3+ times without changing approach | `minecraft.custom:minecraft.deaths` threshold | Weakness effect |
| Quit and rejoin within 30s of dying | session tracking via scoreboard timer | Score penalty |

## Fisherman Trade Path

Profession: **Fisherman**. Virtue: **Fortitude**. *"...to touch the face of god..."*

| Trade | Receive | Notes |
|-------|---------|-------|
| 1 bucket | 1 bucket of pufferfish | Advancement: "Eat the fish." → "Sashi-me!" |
| 1 totem of undying | 1 totem of undying | Gating — tellraw: *"Try using it!"* |


| Trigger | Advancement | Anti |
|---------|-------------|------|
| Nearly drown (survive at 0.5 hearts underwater) | ✓ | Die drowning |
| Nearly die in lava (survive at 0.5 hearts) | ✓ | Die in lava |
| Nearly die from fall damage (survive at 0.5 hearts) | ✓ | Die from falling |
| Use a totem of undying and get hit by lightning| ✓ | Die from lightning (anti) |
| Deflect a ghast fireball | ✓ | Kill a ghast (anti) |


## Puzzles

- **The Dark Descent**: a deep shaft with a reward at the bottom, no light. Bringing torches scores Insight. Going without and surviving scores Fortitude. Dying and coming back scores Weakness.
