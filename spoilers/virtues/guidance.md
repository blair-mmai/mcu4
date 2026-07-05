# Guidance (Love + Wisdom)

> To help others grow.

**Anti-virtue: Corruption/Dis-honesty**

## Virtue actions

| Action | MC Trigger | Conflicts With | Result |
|--------|-----------|----------------|--------|
| Cure a zombie villager | `advancement: story/cure_zombie_villager` | Sacrifice (costs golden apple + potion) | Score |
| Level up a villager through fair trades | villager XP scoreboard via `minecraft.traded_with_villager` | — | Score |
| Give a written book to another player | `minecraft.dropped:minecraft.written_book` near another player | Sacrifice (costs your item) | Score |

## Anti-virtue actions

| Action | MC Trigger | Result |
|--------|-----------|--------|
| Take the exploitative villager trade (1 wheat → 1 bread) | custom tagged `hollow_bread` item enters inventory | Nausea effect + score penalty |
| Kill a villager | `minecraft.killed:minecraft.villager` | Score penalty + Blindness effect |

## Puzzles

- **The Two Trades**: a villager offers bread for 3 wheat (fair) or bread for 1 wheat (corrupt). The cheap bread looks identical in the trade UI but once in inventory shows lore: *"tastes hollow."* Eating it restores 0 hunger and triggers a Nausea effect.
