# Named Villagers

## Core Concept

Virtue-aligned villagers are randomly assigned an identity the moment they claim a job site block. Name, virtue, and trade set are locked permanently at that point via an XP grant before any player interaction occurs.

Players who don't like their rolled villager can let them despawn or remove them and wait for a fresh villager to claim the job site for a re-roll. No guarantee of a different result — random pool means re-rolls can repeat the same virtue.

---

## Lock Sequence

Fires once per villager on job site claim. Never fires again due to the `virtues.assigned` tag check.

1. Detect villager claiming job site
2. Check `tag=!virtues.assigned` — skip entirely if already assigned
3. Randomly assign virtue identity from pool for that profession type
4. Set `CustomName` (e.g. "Farmer Fannie", "Farmer Frank")
5. Set virtue-specific trade pool for that villager
6. Grant XP via `data merge entity @s {Xp:10}` — locks profession permanently via vanilla's trade-lock mechanic before any player interaction occurs
7. Apply `virtues.assigned` tag — ensures this sequence never fires again for this villager regardless of job site destruction or other changes

### Why XP Grant

Vanilla Minecraft permanently locks a villager's profession once they have accumulated enough XP from completed trades. Granting XP directly via `data merge` replicates this lock without requiring any actual trade to complete. The profession, name, and trade set are frozen before the player ever opens the trade UI.

A phantom trade was considered but is unnecessary — the XP grant achieves the lock more cleanly and invisibly.

*Open question: exact XP value needed to trigger vanilla profession lock — 10 suggested, needs in-game confirmation.*

---

## Name Pools

Each virtue-aligned villager type draws from its own name pool on assignment. Names are randomly selected at the moment of profession claim.

### Farmer (Compassion)
- Farmer Fannie
- Farmer Frank
- Farmer Flo
- *(expand as needed)*

### Librarian (all 8 virtues)
See `librarian.md`. Names TBD per virtue.

### Other professions
Names TBD as profession→virtue alignment is built out.

---

## Re-Roll Mechanic

- Let the current villager despawn naturally, or remove them
- A new villager claiming the same job site gets a fresh random assignment
- In multiplayer, knowledge of named villager locations is social currency: *"Farmer Fannie has the Compassion trades, she's near the eastern forest"*

---

## Tellraw Integration

On first player interaction, a private tellraw fires introducing the villager by name:

- Farmer: *"Farmer Fannie seems pleased to see you."*
- Librarian: *"The librarian waits. Her trade will tell you something."*

Exact wording TBD per villager type. Tellraw is private — other players don't see the introduction.

---

## Player Tagging (Future)

Librarians and other key virtue villagers should be tagged with the first player UUID to interact with them in multiplayer — preventing other players from gaming gated trades. Enforcement requires tick-based monitoring of trade interactions. Flagged as future mechanic for v2.

See also: `librarian.md` → Player Tagging section.

---

## Open Questions

- Full name pools for all 8 librarian virtue types
- Name pools for other profession→virtue alignments
- Exact XP value to trigger vanilla profession lock
- Tellraw introduction wording per villager type
