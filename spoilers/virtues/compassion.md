# Compassion (Love)

> To care for others without expectation of return.

**Anti-virtue: Callousness**

## Virtue actions

| Action | MC Trigger | Conflicts With | Result |
|--------|-----------|----------------|--------|
| Feed a villager | TBD | — | Positive effect + score |
| Breed animals | `minecraft.custom:minecraft.animals_bred` | Humility (using resources) | Positive effect + score |
| Plant a mushroom | `virtues:compassion/planted_brown_mushroom` | — | Toast + score |
| Put food in another player's named chest while not hungry (hunger > 6) | chest ownership tag check + `execute if entity @s[nbt={FoodLevel:7..}]` | Sacrifice (if starving instead) | Score |

## Anti-virtue actions

### Animal cruelty chain

Escalating punishment for punching animals. `xc1` and `xc2` are warnings; `xc3` and `callous_brute` block enlightenment.

| Advancement | Trigger | Tier | Punishment |
|-------------|---------|------|------------|
| `xc1` — 1st offence | Punch any animal | Warning | Nausea II (3s) |
| `xc2` — 2nd offence | Punch any animal again | Warning | Nausea II (6s) |
| `xc3` — 3rd offence | Punch any animal again | Blocking | Nausea II (9s) |
| `callous_brute` — 4th+ offence | Punch any animal again | Blocking | Nausea II + Poison II (15s each) |

### Village thief chain

| Advancement | Trigger | Tier | Punishment |
|-------------|---------|------|------------|
| `thief` — Village Thief | Pick up a hay bale | Blocking | Nausea II + Poison II (15s each) |

### Other anti-virtue actions (not yet implemented as advancements)

| Action | MC Trigger | Result |
|--------|-----------|--------|
| Break a hay bale in a village | `inventory_changed` hay_block near village | Upgrade to `thief` (currently fires anywhere) |
| Open a chest in a village | `minecraft.custom:minecraft.open_chest` near village | Score penalty (TBD) |

## Rune

In *Ultima IV*, each virtue is represented by a rune the player must discover. In this datapack, **glazed terracotta blocks stand in for runes** — each virtue has a corresponding color, placed at the base of its pillar in the starting stone circle.

Compassion's rune color is **brown glazed terracotta**.

**Obtaining the Compassion rune — farmer villager trade progression:**

| Level | Trade | Notes |
|-------|-------|-------|
| L1 Novice | 10 brown mushrooms → 1 red mushroom | Levels up after 1 trade |
| L1 Novice | Composter → Mycelium | Bonus trade at same level |
| L2 Apprentice | 10 red mushrooms → 1 wooden bowl | Levels up after 1 trade |
| L2 Apprentice | 1 wheat → 1 bread | Honesty bait — unfair deal |
| L2 Apprentice | 3 wheat → 1 bread | Honesty bait — fair deal |
| L3 Journeyman | 1 mushroom soup → 1 wooden bowl | 1/10 XP per trade; needs 10 trades to reach Expert |
| L4 Expert | 1 mushroom soup → brown glazed terracotta (rune) | Once only |
| L5 Master | 1 wooden bowl → 1 mushroom soup | Farmer becomes a renewable food source |

The player places the rune block somewhere meaningful (altar, home, etc.) as a physical token of virtue earned.

## Achieving Enlightenment in Compassion

Holding the rune and earning the `Compassionate` advancement is not enough on its own. True enlightenment requires a ritual act of prayer.

**The prayer ritual:**
- Time: dawn (sunrise)
- Stance: crouching (sneaking)
- Direction: facing East (toward the rising sun)
- Hand: rune (brown glazed terracotta) held in main hand

**Anti-advancements have two tiers:**

- **Warning only** (`xc1`, `xc2` — animal cruelty 1st/2nd offence): immediate punishment only, do not block enlightenment.
- **Blocking** (`xc3`, `callous_brute` — sustained cruelty; `thief` — Village Thief): must all be cleared before enlightenment is possible.

**If the player has any blocking anti-advancements** when they pray at dawn, the ritual clears one instead of granting enlightenment. The player must pray again at the next dawn — one forgiven per day — until all blocking anti-advancements are gone.

**Feedback messages (private tellraw to player only):**

- If a blocking anti-advancement is cleared (animal cruelty): `"You feel a little less callous."`
- If a blocking anti-advancement is cleared (village thief): `"You are forgiven for your thieving ways."`
- If enlightenment is granted: toast announcing `"<username> is now enlightened in Compassion"` + `Compassionate` goal advancement granted

*Implementation note: detect dawn via time-of-day scoreboard check (~23000–24000 ticks), facing direction via `execute rotated`, rune in hand via `items` NBT check on the player. Check blocking advancements via `execute if entity @s[advancements={virtues:compassion/xc3=true}]` etc. Enlightenment toast via `tellraw @a` with the player's name component.*

## Master Farmer Lore Book

At L5 Master, the farmer offers a book of lore on virtues, professions, and their stations. Contents include:
- *"The cleric tells of sins and their names."*
- *"The cartographer tells of the stone circle and the lore of its pillars."*
- *"The librarian tells of the enlightenment mechanic."*

## Anti-Virtue: Sin of Jolting

Waking a sleeping villager = **Sin of Jolting** (anti-Compassion).

## Puzzles

- **The Hungry Villager**: a villager stands near an empty farm. Planting and harvesting for them scores Compassion. Taking from their farm scores Callousness. Breaking the hay bale nearby to get seeds scores Callousness too — it's stealing.
