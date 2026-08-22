# Jhelom

Ultima IV canon: town of **Valor** (Courage), Fighter class, red, sword symbol, mantra "Ra", Shrine of Valor. Dungeon: Destard.

## City concept

A **physical puzzle city**, walled, with a **hollow wall** running the full circumference that houses all the town's secrets — hidden passages, one-way doors, redstone contraptions. Many doors can only be opened from the other side.

## Sword-orientation puzzle (Armorer store)

Four swords in item frames, tagged `jhelom_sword_1` through `_4`. Correct orientation of all four simultaneously flips a hidden physical lever (under floor tiles, invisible to the player) via a marker-entity-driven script, which triggers a sticky piston opening a secret passageway. See `ultima_virtues/data/virtues/function/puzzles/jhelom_sword_check.mcfunction`.

Solution code has changed a few times during testing — current code is **S-W-E-N** ("SWEN," matching a planned NPC name), using the confirmed rotation mapping: `0=NE, 1=E, 2=SE, 3=S, 4=SW, 5=W, 6=NW, 7=N`.

## Trial Key chest

A **weathered, waxed copper chest**, located in the hidden passageway that circles the city (inside the hollow wall). Always contains a Trial Key (tradeable item) in its first slot — auto-refills within a tick if a player removes it, works correctly in multiplayer since it's not gated on any one player's interaction. See `ultima_virtues/data/virtues/function/fixtures/trial_key_chest_check.mcfunction`.
