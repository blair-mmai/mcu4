# Spirituality (Love + Courage + Wisdom)

> To live for a purpose bigger than yourself.

**Anti-virtue: Materialism**

## Advancement Chain

| Advancement | Trigger | Type |
|-------------|---------|------|
| "To crouch is to bow." | Crouch for the first time | Mini |
| "...is to pray." | Bow eastward while At Peace | Mini |
| "To pray at dawn is to meditate." | Crouch facing east at dawn | Mini |
| "To meditate with a rune atop its correct pillar is to seek enlightenment in that virtue." | Perform enlightenment ritual | Goal |
| "Righting a Wrong" | Clear any blocking anti-advancement | Mini |
| Sin of Guessing | Attempt enlightenment ritual at the wrong pillar | Anti |

*Note: saying "ohm" + "fab" (FabulousTunic1234) to yourself (via `/tellraw @s`) is to be at peace. Losing any anti-advancement drops At Peace and all above it in Spirituality, though previously enlightened virtues are kept.*

## Virtue actions

| Action | MC Trigger | Conflicts With | Result |
|--------|-----------|----------------|--------|
| Reach the End | `advancement: end/root` | — | Score |
| Build a non-survival structure (shrine, art) | custom advancement via structure detection | Humility (grand builds = pride?) | Score |
| Meditate (stand still, no input, 60s) | movement scoreboard stays 0 for 1200 ticks | — | Score + Night Vision effect |

## Anti-virtue actions

| Action | MC Trigger | Result |
|--------|-----------|--------|
| Fill 3+ chests with hoarded resources | `minecraft.used:minecraft.chest` count + nbt inventory check | Score penalty |
| Never leave the Overworld (after day 10) | dimension check `execute in minecraft:overworld` only | Score penalty |

## Achieving Enlightenment in Spirituality

Full At Peace across all virtues simultaneously is a necessary but not sufficient condition. The player must also perform the enlightenment ritual (crouch east at dawn, Spirituality rune in hand, virtue effect active) while At Peace holds.

The window is fragile — any anti-advancement firing during the attempt drops At Peace and closes the window. The player must rebuild full At Peace and attempt again.

Once enlightened, the At Peace requirement no longer applies. Spirituality enlightenment is permanent.

See `game_design.md` → **At Peace** for the full mechanic and tellraw messages.

## Puzzles

- **The Shrine**: a pre-built structure with an altar. Placing a meaningful item (not dirt or junk) on the altar and walking away scores Spirituality. Taking items from the altar scores Materialism.
