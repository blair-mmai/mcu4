# Ultima Structures

A separate, permanently-inert datapack holding every town/city `.nbt` structure for Ultima Virtues. No functions, no advancements, no `load`/`tick` hooks — nothing in it ever runs. Safe to link into any world (a fresh builder world for siting/placing towns, or a real gameplay world) without triggering any live game logic, including `ultima_virtues`'s one-time `first_join`/`world_init` sequence.

## Why this is its own pack, separate from `ultima_virtues`

The core problem this solves: placing a town's structure requires the `towns:<name>` namespace to resolve via a LOAD-mode structure block, which means *some* datapack containing it must be linked. But linking the full `ultima_virtues` pack fires its one-time `world_init`/`first_join` sequence (starting chest + pillars) unconditionally on the first `/reload` for whoever's standing there — disruptive during a lengthy town-siting/placement pass, and it burns the creator's own "first real playthrough" moment before the world is even built out.

Splitting the structures into their own inert pack sidesteps this entirely: link `ultima_structures` alone while scouting terrain and placing towns (nothing fires), then link `ultima_virtues` only once you're ready to actually play for real.

## Layout

```
data/towns/structure/<name>.nbt
```

Referenced in-game as `towns:<name>` (e.g. `towns:britain`).

## Entity tags travel with the structure

Villager `npc_<name>` tags, item-frame `ItemRotation`/tags (Jhelom's sword puzzle), marker-entity tags (door/plate/button switches — Skara Brae, Trinsic), and shulker box contents (Trinsic maze eggs) are all baked into each `.nbt` at save time, as long as **Include Entities** was ON when the structure block saved it. `ultima_virtues`'s puzzle/room/dialogue code selects entities by tag, type, and name — never by hardcoded coordinates — so placement works correctly regardless of where in the world a town ends up.

**Not covered by structure placement** (lives in `ultima_virtues`'s own scoreboard state, only initializes once that pack's `load.mcfunction` has run at least once):
- Room/puzzle state-machine flags (`$skara_room_rented`, `$skara_ghost_armed`, `virtues.egg_present`, etc.)
- Any hand-wired real vanilla redstone that extended past the structure's saved bounding box — double-check before saving a town that all its redstone sits fully inside the region.

## Status

- **Britain**: placed, live in `ult-jul19-test`.
- **Jhelom, Skara Brae, Moonglow, Trinsic, Minoc, Yew, Lycaeum, Magincia**: NPCs tagged and dialogue built against them, but their `.nbt` files still live only inside the NBT_Creator/NBT_world2 builder worlds' own save folders — not yet copied in here. That copy step is a prerequisite before any of them can be placed into a real world.

## Known repo debt (deferred, not urgent)

This pack, plus the existing `_datapacks/nbt_creator_tools` and the stale `_datapacks/moongate` snapshot, mean the repo now has three separate "supporting pack" locations with slightly inconsistent conventions. Blair's plan: leave as-is for now, address in a full repo reorganization into a second, cleaner repo — **after** more advanced independent playtesting (not Blair) has happened. See `future_versions/eventual_repo_cleanup.md` for the existing cleanup plan (junction-linking moongate properly, grouping datapacks under a shared parent folder, etc.) to fold this into when that day comes.
