# NBT Creator Tools

Authoring-only datapack. Used exclusively in the standalone NBT_Creator world while building town structures (Britain, and future towns) — never enabled in a real gameplay world, and never junction-linked into `saves/<any-real-save>/datapacks/`.

## Why this exists as its own pack

By the time a named villager is placed via `/place template towns:<name>`, its trades/name/tags are already frozen into the structure's binary NBT data. There's nothing for a "curated identity" function to do at runtime in the real game — this tooling is purely a build-time convenience so you don't have to hand-type full `/data merge entity` commands while constructing each town's roster.

Contrast with `data/virtues/function/villager_trades/` in `ultima_virtues` (the curated-vanilla trade tables) — that one *is* live, runs every tick in the real game, and applies to any unprofessioned villager without an `nbt_placed` tag. This pack and that system are deliberately separate: one is a design workbench, the other is shipped game logic.

## Layout

```
data/nbt_tools/function/<profession>/template_<n>.mcfunction
```

Each `template_<n>` is a one-shot `/data merge entity @s {...}` stamping a single curated identity (name + trade set) onto a targeted villager — run while standing near/looking at a freshly spawned, unprofessioned villager in the builder world.

## Workflow

1. Spawn/breed villagers in NBT_Creator until you get the profession you want next to its job site.
2. Run the matching `nbt_tools:<profession>/template_<n>` function to stamp identity + trades.
3. Repeat for however many named NPCs a given town needs.
4. Save the town's bounding box as a structure block (`towns:<town>`), Include Entities ON.
5. Copy the resulting `.nbt` into `ultima_virtues/data/towns/structure/<town>.nbt`.

Template content (names, trade lists) not yet populated — see `spoilers/towns/` for the design record once towns are underway, and `spoilers/villagers/named_villagers.md` for the curated-vanilla system this is distinct from.
