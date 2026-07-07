# Valor (Courage)

> To face danger with a steady hand.

**Anti-virtue: Cowardice**

## Virtue actions

| Action | MC Trigger | Conflicts With | Result |
|--------|-----------|----------------|--------|
| Kill a hostile mob without armor | `minecraft.killed:minecraft.zombie` etc. + armor check | Humility (going unprotected is also humble) | Score |
| Enter the Nether | `advancement: nether/root` | — | Score |
| Survive at less than 2 hearts | health check via `execute if entity @s[nbt={Health:1f..4f}]` | — | Score |
| Face a mob with bare hands | `minecraft.killed:*` + empty mainhand check | Sacrifice (risking yourself for others) | Score |

## Anti-virtue actions

| Action | MC Trigger | Result |
|--------|-----------|--------|
| Die 3+ times without progressing | `minecraft.custom:minecraft.deaths` scoreboard threshold | Weakness effect |
| Flee from combat repeatedly | TBD | Score penalty |

## Valor Challenges

Spawn egg challenges of escalating difficulty. Each fight must be completed to progress toward Valiant. Eggs are likely obtained via trades or found in specific locations — TBD.

### Main Chain (→ Valiant)

| Tier | Mob | Drop (proof of kill) | Advancement |
|------|-----|----------------------|-------------|
| 1 | Creeper | Gunpowder | TBD |
| 2 | Wither Skeleton | Wither Skull | TBD |
| 3 | Ravager | Saddle | **Valiant** |

### Extra-Valiant Chain (→ Undaunted)

Beyond Valiant — optional, purely for those who want to prove something.

| Tier | Mob | Drop | Advancement |
|------|-----|------|-------------|
| 4 | Wither | Nether Star | **Undaunted** |

**Hidden sub-advancement**: **Braggadocious** — granted automatically alongside Undaunted. Triggers **Braggart** (Sin of Boasting) on the Humility tree. The player who goes beyond Valiant can't help themselves. The world notices.

*Mob selection for tiers 1–3 and extras is open for revision. Key design principle: each mob introduces a new kind of fear — poison, overwhelming force, and existential dread respectively.*

## Toolsmith Trade Path

Profession: **Toolsmith**. Virtue: **Valor**.

| Trade | Receive | Notes |
|-------|---------|-------|
| 1 bucket | 1 bucket of pufferfish | Advancement: "Eat the fish." → "Sashi-me!" |
| 1 totem of undying | 1 totem of undying | Gating — tellraw: *"Try using it!"* |
| 1 minecart | Book: *On Crafting a Better Pickaxe* | |
| — | Use totem (advancement) | |
| 1 trial chamber key | — | |
| 1 ghast tear | — | |
| 1 wither rose | — | |

## Anti-Virtue: Sin of Cowardice

Using a shield = **Sin of Cowardice** (anti-Valor).

## Puzzles

- **The Unarmed Challenge**: a room with a hostile mob and a reward. Entering with a weapon scores nothing. Entering unarmed and surviving scores Valor. Dying scores Cowardice.
