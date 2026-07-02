# Game Design — mcu4

## The concept

*Ultima IV* (1985) was the first RPG where you didn't win by killing a final boss. You won by embodying eight virtues: Honesty, Compassion, Valor, Justice, Sacrifice, Honor, Spirituality, Humility. The game tracked your behavior and judged you on it.

This mod attempts to port that idea into Minecraft — a world that looks vanilla but is quietly watching how you play.

## The core design problem

The player starts in a world that looks completely normal. There is no obvious indication that a different value system is in place. The design challenge is: how does the world communicate its rules?

Some approaches being explored:
- Environmental storytelling (a starting chest with a single brown mushroom — what does that mean?)
- NPC dialogue and trades that reward virtuous behavior
- Advancements that fire on morally-loaded actions (punching an animal, planting food)
- No punishment for "wrong" behavior — only rewards for right behavior

## The virtues (Ultima IV originals)

| Virtue | Principle | Expression in MC |
|--------|-----------|-----------------|
| Compassion | Love | Feeding/healing others, not harming animals unnecessarily |
| Honesty | Truth | TBD |
| Valor | Courage | TBD |
| Justice | Love + Truth | TBD |
| Sacrifice | Love + Courage | TBD |
| Honor | Truth + Courage | TBD |
| Spirituality | All three | TBD |
| Humility | None (it can't be derived) | TBD |

## Current implementation

- **Starting chest**: spawns when player punches their first tree, contains a brown mushroom (a quiet nudge toward cultivation/compassion)
- **Scoreboard tracking**: per-player virtue scores tracked via dummy objectives
- **First join sequence**: title sequence establishes the tone ("You are a stranger here.")
- **Advancements**: fire on compassion-related actions

## The unsolved problem

How do you teach a player the rules without telling them the rules? This is the active design question.
