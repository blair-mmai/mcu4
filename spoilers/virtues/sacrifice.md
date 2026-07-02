# Sacrifice (Love + Courage)

> To put others' needs before your own.

**Anti-virtue: Selfishness**

## Virtue actions

| Action | MC Trigger | Conflicts With | Result |
|--------|-----------|----------------|--------|
| Put food in another player's named chest while hungry (hunger < 6) | chest ownership tag check + `execute if entity @s[nbt={FoodLevel:0..11}]` | Compassion (if not starving instead) | Score |
| Drop items for another player | `minecraft.dropped:*` near another player | — | Score |
| Spend last resource on another player | item count check + drop event | Fortitude (surviving with nothing) | Score |

## Anti-virtue actions

| Action | MC Trigger | Result |
|--------|-----------|--------|
| Hoard food beyond threshold (e.g. 64 bread in inventory) | `nbt` inventory count check | Score penalty |
| Never share items with another player (multiplayer threshold) | `minecraft.dropped:*` near others, checked periodically | Score penalty |

## Puzzles

- **The Starving Stranger**: an NPC starts with 0 food. You have bread. Giving it away while below half hunger scores Sacrifice. Waiting until you're full first scores nothing. Never giving scores Selfishness.
