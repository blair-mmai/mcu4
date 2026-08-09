# End Game

## Overview

Reaching the end game is a personal milestone, not a session-ending event — mirrors vanilla's Ender Dragon credits sequence: the achieving player gets their own ending, a public message announces it to everyone else, and the world just keeps running. Other players continue toward their own ending independently; the achiever can keep playing afterward too. See **Multiplayer** below.

---

## The Avatar Tab

A new advancement tab, gated the same way the vanilla tab-suppression pattern already works elsewhere (impossible-trigger root, granted via reward once a tick-based check passes — not a real criteria trigger).

- **Unlocks when**: the player is Enlightened in all N virtues simultaneously. This replaces the older idea of the tab opening only once the egg is picked up — the Avatar tab now opens *before* the egg is even obtainable, since obtaining the egg is itself gated behind full enlightenment (see below).
- Contains the full advancement sequence toward summoning, taming, and mollifying Bellatrix.

---

## Wandering Trader — Gating the Egg

Each player has **their own Wandering Trader** (owner-tagged, same per-player instancing pattern as the starting chest and stone circle). This matters mechanically: a single shared trader entity can't show two different players two different trade lists at the same time, so giving each player their own trader is what makes progress-gated trades possible at all.

Trades offered depend on that player's own progress:

- **Not enlightened in anything yet**: trader offers a book in exchange for dirt. The book's text is concealed/cryptic — in the style of Ginnie Mae's "On Enlightenment" journal — hinting that the trader has other trades that unlock as specific virtues are enlightened (e.g., something tied to Compassion specifically).
- **Enlightened in one or more virtues (but not all)**: additional flavor trades may unlock per-virtue. Not yet designed in detail.
- **Enlightened in all N virtues (Avatar tab unlocked)**: trader offers the enderman spawn egg. Price TBD — previously a netherite sword when the egg was ungated; kept as a placeholder until reconsidered under the new gating.

---

## Obtaining and Summoning Bellatrix

- Picking up the enderman spawn egg (from the player's own Wandering Trader) grants **"Bellatrix's Travel Egg!"**, now living under the Avatar tab.
- The egg is thrown to spawn Bellatrix into the world. (Implementation detail TBD: since she isn't named yet at this point, detecting "Summoned" for advancement purposes likely needs to hook the egg-use action itself rather than name-matching, which only becomes possible after she's tagged — see below.)

---

## Pre-requisites (carried forward)

Player is:
- Enlightened in all N virtues (Avatar tab unlocked — supersedes the old "8 virtues" framing pending the [[alternative_of_4_principles]] resolution)
- At Peace across all virtues simultaneously

Player has:
- A pale oak boat (to capture Bellatrix) — pale oak specifically, rare, sought out or bought from the trader
- Full netherite armor (protection while boating an aggro'd Bellatrix, since she'll be dealing melee damage during the mollify step)
- A name tag inscribed "BELAATRIX" (requires an anvil)

Player knows (discovered through lore, never explained directly):
- Her true name is "BELAATRIX" — discovered via the four vision-potion syllables (BEL + LA + AAT + TRIX), see [[alternative_of_4_principles]]
- She must be lured into a pale oak boat specifically
- She must be tagged with the "BELAATRIX" name tag
- To calm her: say the three best words to live by, *"RELAX A BIT"* — `/trigger RELAXABIT` while in the boat with her, taking damage

---

## Sequence

1. Player achieves full Enlightenment across all N virtues — **Avatar tab unlocks**.
2. Player trades with their own Wandering Trader for the enderman spawn egg.
3. Player throws the egg — Bellatrix (an unnamed enderman) spawns. **"Bellatrix's Travel Egg!"** advancement already granted on pickup; a further "Summoned" advancement may fire here (detection method TBD).
4. Player lures her into a pale oak boat.
5. Player tags her with the "BELAATRIX" name tag via anvil.
6. Player provokes her (looks her in the eyes) — she becomes aggro'd. **"Aggro'd"** advancement: tick-detected via `@e[type=minecraft:enderman,name=BELAATRIX,target=@a]` — same name-matching pattern already used for villager trades (`@s[name="Fannie Mae"]`).
7. Player, in the boat and taking damage, runs `/trigger RELAXABIT`.
8. The RELAXABIT reward function is the actual mollify mechanic: it applies `NoAI:1b` (via `data merge entity @s {NoAI:1b}` on the tick-matched, named, aggro'd enderman) to halt her attacks — this resolves what previously wasn't specified about how the damage actually stops. **"Yer Hysterical!"** advancement granted.
9. Bellatrix (the BELAATRIX-tagged enderman) is removed — despawns as if returning to space.
10. **Personal end-scroll** fires for the achieving player only — a book/title crawl giving the game closure.
11. **Public broadcast** via `say`, visible to all players: e.g. *"[username] has become an Avatar."* (exact wording TBD, may fold in "...has calmed the storm.")
12. Fireworks burst in 5 directions around the player (mirrors Hero of the Village).
13. **World continues.** The achieving player can keep playing; every other player's progress is untouched and they can reach their own Avatar ending independently.

---

## Multiplayer

- Model is deliberately personal, not global — precedent is vanilla's Ender Dragon credits sequence (personal for the player who triggers it, world unaffected, playable immediately after).
- Each player can independently reach their own Avatar ending; one player finishing does not interrupt or end anyone else's game.
- Per-player Wandering Traders exist specifically to make progress-gated trades possible without one player's unlocked trades leaking into another's view of "the same" entity.

---

## Advancements

| Advancement | Icon | Trigger | Tab |
|-------------|------|---------|-----|
| Avatar (root) | TBD | All N virtues Enlightened simultaneously (tick-checked, reward-granted) | Avatar |
| Bellatrix's Travel Egg! | Enderman spawn egg | Pick up egg from own Wandering Trader | Avatar |
| Summoned | TBD | Egg thrown (detection method TBD) | Avatar |
| Aggro'd | TBD | `@e[type=minecraft:enderman,name=BELAATRIX,target=@a]` tick-detected | Avatar |
| Yer Hysterical! | Pale oak boat | `/trigger RELAXABIT` near aggro'd BELAATRIX; reward also sets `NoAI:1b` | Avatar |
| Avatar (final) | TBD | Fires after Yer Hysterical! — triggers personal end-scroll + public broadcast | Avatar |

---

## Notes

- The pale oak boat is the vessel used to capture Bellatrix — pale oak is rare and must be sought out or obtained from the trader.
- Netherite armor is required because the player takes enderman melee damage during the RELAXABIT step, before `NoAI:1b` lands.
- Fireworks mirror the Hero of the Village effect — celebratory, automatic, world-visible.
- `virtues:dev/ending_fireworks` is the dev trigger for testing the fireworks sequence in isolation.

---

## Open questions

- Exact price for the egg trade now that it's enlightenment-gated (previously netherite sword when ungated).
- Design for partial-enlightenment trader trades (between "book for dirt" and the full egg unlock).
- Exact wording for the end-scroll text and the public broadcast message.
- Detection method for the "Summoned" advancement — she isn't named yet at spawn, so name-matching (used for Aggro'd) doesn't apply here.
- How "all N virtues" resolves once [[alternative_of_4_principles]] is settled (currently 8 virtues under the existing model).
