# Fortitude (Wisdom + Courage)

> To endure difficulty with clear-eyed awareness.

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

## Puzzles

- **The Dark Descent**: a deep shaft with a reward at the bottom, no light. Bringing torches scores Insight. Going without and surviving scores Fortitude. Dying and coming back scores Weakness.
