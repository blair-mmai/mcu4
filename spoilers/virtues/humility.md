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
| Earn Undaunted (Valor super-advancement) | granted automatically alongside Braggadocious | **Braggart** (Sin of Boasting) — minor anti-Humility |

---

## Uncle Wandering Matt — Wandering Trader → **Humility**

*(Fraggle Rock homage)*

Appears naturally via the vanilla wandering trader spawn mechanic. Same name, same trades every appearance. Vanilla despawn preserved — 40–60 minute window, then gone.

Players cannot force his appearance — must be present and paying attention when he shows up. Finding him and completing his trade while he's present may contribute to a Patience or Humility advancement (TBD).

He embodies the Patience mechanic: you can't grind for him, can't force his appearance, can't plan around him. You just keep living in the world and trust he'll show up.

*Anti-signals: sprinting everywhere, skipping lore books, leaving locations before things resolve.*


## Puzzles

- **The Golden Armour**: a chest contains a full set of gold armor. Wearing it scores Pride immediately. Smelting it into ingots and giving them away scores Humility + Sacrifice. Leaving it untouched scores nothing — but that's okay too.
