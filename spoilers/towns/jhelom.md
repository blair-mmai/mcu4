# Jhelom

Ultima IV canon: town of **Valor** (Courage), Fighter class, red, sword symbol, mantra "Ra", Shrine of Valor. Dungeon: Destard.

## City concept

A **physical puzzle city**, walled, with a **hollow wall** running the full circumference that houses all the town's secrets — hidden passages, one-way doors, redstone contraptions. Many doors can only be opened from the other side.

## Sword-orientation puzzle (Armorer store)

Four swords in item frames, tagged `jhelom_sword_1` through `_4`. Correct orientation of all four simultaneously flips a hidden physical lever (under floor tiles, invisible to the player) via a marker-entity-driven script, which triggers a sticky piston opening a secret passageway. See `ultima_virtues/data/virtues/function/puzzles/jhelom_sword_check.mcfunction`.

Solution code has changed a few times during testing — current code is **S-W-E-N** ("SWEN," matching a planned NPC name), using the confirmed rotation mapping: `0=NE, 1=E, 2=SE, 3=S, 4=SW, 5=W, 6=NW, 7=N`.

## Helmet-orientation puzzle

A helmet in an item frame, tagged `jhelom_helmet_1`, wired to a hidden wall-mounted lever (visual only) and an iron door — solved when the helmet is upside down. Real vanilla redstone from lever to door proved unreliable, so the door's open/closed state and its open/close sound are driven directly by the script instead. A pale oak button (tagged via marker `jhelom_button_1`) sits a full block away from the door as a safety-exit override, letting a player out if someone else spins the helmet mid-puzzle — kept physically separated from the door so its own button-press doesn't trigger a stray neighbor-update that snaps the door shut. See `ultima_virtues/data/virtues/function/puzzles/jhelom_helmet_check.mcfunction`.

## NPCs

**Swen** — a Nitwit villager posted near the puzzles, with an 11-line weighted proximity-statement roll table (riddles, jokes, and acronym banter — SWEN standing for NEWS). Triggers within 2 blocks. See `ultima_virtues/data/virtues/function/npc/swen_greet.mcfunction`.

## Symbol motif

The **double cross** (‡) appears throughout Jhelom's architecture, most notably in sunroof designs (used 4 times so far) — an ankh-like emblem standing in for Valor.

## Trial Key chest

A **weathered, waxed copper chest**, located in the hidden passageway that circles the city (inside the hollow wall). Always contains a Trial Key (tradeable item) in its first slot — auto-refills within a tick if a player removes it, works correctly in multiplayer since it's not gated on any one player's interaction. See `ultima_virtues/data/virtues/function/fixtures/trial_key_chest_check.mcfunction`.
