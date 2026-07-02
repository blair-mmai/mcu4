# Humility (None — cannot be derived)

> To meet each day in the humblest way. It cannot be taught, only chosen.

**Anti-virtue: Pride**

## Virtue actions

| Action | MC Trigger | Conflicts With | Result |
|--------|-----------|----------------|--------|
| Use only basic tools when better are available | `minecraft.used:minecraft.wooden_pickaxe` etc. while iron exists in inventory | Insight (craft better tools) | Score |
| Wear no armor into a dangerous area (hostile mobs nearby) | armor slot nbt check + mob proximity | Valor (brave) / Fortitude (enduring) | Score |
| Give away enchanted gear | `minecraft.dropped:*` with enchantment nbt check | Sacrifice (costs you) | Score |

## Anti-virtue actions

| Action | MC Trigger | Result |
|--------|-----------|--------|
| Equip a weapon before any tool or food on first join | hotbar nbt check on `virtues.firstjoin=1` | Mining Fatigue effect |
| Wear a full set of gold armor | armor slot nbt check for all 4 gold pieces | Score penalty |
| Name an item after yourself | `minecraft.used:minecraft.anvil` + name tag nbt check | Score penalty |

## Puzzles

- **The Golden Armour**: a chest contains a full set of gold armor. Wearing it scores Pride immediately. Smelting it into ingots and giving them away scores Humility + Sacrifice. Leaving it untouched scores nothing — but that's okay too.
