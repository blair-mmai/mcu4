# Minoc

Ultima IV canon: town of **Sacrifice** (Love, Courage), Tinker class, orange, tear symbol, mantra "Cah", Shrine of Sacrifice, Word of Power "Avidus". Dungeon: Covetous.

Seeded as a forward hook via Britain's Winston A. (Armorer) — his "INTRO TO METALLURGY" book names Minoc as where the real metallurgy guild secrets live, since Britain's own smith only knows the crippled iron-block-for-one-ingot trade.

## Armorers (3 specialists)

Minoc will have three Armorer NPCs, each a specialist in one branch of metallurgy — iron, gold, and copper. Each presumably teaches/unlocks their own metal's "true ingot" knowledge, mirroring the mechanic already built in Britain:

- `virtues.iron_metallurgist`, `virtues.gold_metallurgist`, `virtues.copper_metallurgist` — three independent per-player flags (see `ultima_virtues/data/virtues/function/player/check_iron_ingots.mcfunction`, `check_gold_ingots.mcfunction`, `check_copper_ingots.mcfunction`).
- Until a flag is set, that metal's ingots are auto-downgraded every tick into blocks (groups of 9) and nuggets (remainder), so a non-metallurgist can never hold a real ingot of that metal.
- Winston A. in Britain only ever grants `iron_metallurgist`. Minoc's three specialists are the natural place to grant `gold_metallurgist` and `copper_metallurgist` (and presumably re-teach/deepen iron, if that fits the town's role).

**CONFIRMED (2026-08-16, Blair):** wiring up Gold/Copper Metallurgist is explicitly deferred until Minoc exists — there's no NPC anywhere yet to trigger either flag, and Blair can't test the mechanic (already built and working for iron in Britain, same pattern) until Minoc gives him someone to trade with. Don't build a temporary/placeholder trigger for these elsewhere; wait for Minoc.

Not yet designed: names, individual dialogue/trade chains, which specialist teaches which metal, and whether all three tie into a shared Sacrifice-virtue mechanic or operate independently.

## Status (2026-08-17)

**Minoc.NBT structure is built.** Still needed: villager personalities/conversations — same handoff workflow as Britain (Blair tags villagers in-game, hands off the roster, Claude wires up trades/dialogue).

**Rune of Sacrifice — two obtain paths:**
1. **Hidden path**: the rune sits under lava in "the forge," inside a hidden shulker box. Intended retrieval is scooping it out with water/buckets rather than swimming through the lava directly.
2. **Trade path (backup/alternate, not yet finalized — TBD)**: also sellable by an NPC in "the poor house," possibly the Librarian there, in exchange for a gold ingot.
