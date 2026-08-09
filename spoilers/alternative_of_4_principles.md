# Alternative: 4 Principles (Square Formation)

## Status

Exploratory alternative to the 3-principle / 8-virtue model already documented in `game_design.md`. This is a v1.0 scoping idea, not a decision yet. **No virtue implementation files have been changed based on this doc.**

## The Belaatrix vision mechanic

- Four "visions," each delivered by drinking a distinct custom potion. The Compassion one is already built and working: drink → nausea (10s) → title + subtitle reveal a clue → enderman-teleport sound → teleport to a fixed location. See `data/virtues/recipe/potion_of_compassion.json` and `data/virtues/function/player/reveal_compassion_clue.mcfunction` for the working prototype.
- Each vision reveals one syllable: **BEL**, **LA**, **AAT**, **TRIX**.
- The player must piece together that BEL + LA + AAT + TRIX = **BELAATRIX** — this is Bellatrix's true name, already established in `end_game.md` as required lore to tame/summon her (unscrambles to "RELAX A BIT").
- A lore book in the starting chest maps each syllable to the potion ingredients needed to brew it — without spelling out the syllable-to-word connection directly, matching the existing "never listed or explained" mantra philosophy from `game_design.md`.
- This effectively answers the vague "From lore: to calm Bellatrix, you must first unscramble her true name" bullet in `end_game.md` / `game-design/end-game.md` with a concrete discovery mechanic.

## The 4-principles idea

- Instead of U4's 3 principles (Love, Truth, Courage) combined circularly into 8 virtues (the current model in `game_design.md`), this alternative proposes **4 principles arranged in a square** rather than a 3-circle Venn diagram.
- Each principle yields 3 virtues: 1 "pure" virtue unique to that principle, plus 2 "blended" virtues shared with its two *adjacent* principles in the square. Diagonal (opposite-corner) principles do not blend with each other.
- That's 4 pure virtues + 4 edge-blended virtues = 8 virtues total — same count as the current model, different derivation shape.
- This mirrors an earlier rough sketch in `spoilers/principles/the_cardinal_principles.md` (cardinal points W/L/C/X with corner-blends 1/2/3/4, plus a note about a scrambled end-game code) — that file was already circling this same idea before today's conversation.

## Open questions (not yet decided)

- Do the 4 visions map one-to-one onto the 4 principles, or onto 4 specific virtues independent of the principle structure?
- Which potion produces which syllable — is today's Compassion potion BEL, or does the mapping land differently once the 4 principles are named?
- Names for the 4 principles themselves, and which existing virtues (Compassion, Insight, Valor, etc.) fall under which principle.
- How this reconciles with the 8-virtue advancement trees already built (Compassion is complete under the old 3-principle model).

## Explicitly out of scope for now

Per Blair: this is exploratory only, meant to converge toward an achievable v1.0 scope. Do not modify any files under `data/virtues/` based on this document until the structure is confirmed.
