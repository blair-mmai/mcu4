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

## Puzzles

- **The Unarmed Challenge**: a room with a hostile mob and a reward. Entering with a weapon scores nothing. Entering unarmed and surviving scores Valor. Dying scores Cowardice.
