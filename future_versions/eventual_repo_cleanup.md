# Eventual Repo Cleanup

Reorganization ideas for the repo's top-level layout, deferred until there's a natural pause point. None of this is urgent — current structure works fine, this is about clarity for future collaborators if the project grows beyond a solo effort past v1.0. Likely done as a fresh, cleaned-up repo reorganized from `mcu4` rather than reshuffled in place.

---

## Group datapacks under `datapacks/`

Move all datapacks (including the main one) under a single parent folder:

```
datapacks/
  ultima_virtues/
  nbt_creator_tools/   (if not already living under _datapacks/ by then)
```

Currently `ultima_virtues` sits at repo root on its own (fine for a single obvious main pack, but inconsistent once there's more than one live pack around). Requires recreating every junction pointing at the old paths — junctions don't follow moves, they'd need to be deleted and recreated at the new nested path, in both PrismLauncher instances (`26.2` and `26.2(1)`), at the same time as the folder move, or the live worlds silently lose the datapack.

## Group resource packs under `resourcepacks/`

```
resourcepacks/
  virtues_resourcepack/
```

`virtues_resourcepack` keeps its current name — not renaming to anything music-specific. The "resourcepack" suffix in its name already serves as a bookkeeping reminder that it's not a datapack, which is worth keeping regardless of folder nesting.

## Migrate moongate to a real junction (matching `ultima_virtues`/`BlairsUltima`)

Right now moongate exists as **two disconnected copies**: the real live one at `saves\ult-jul19-test\datapacks\moongate` (a plain folder, not a junction), and a one-time manual snapshot at `_datapacks/moongate` in git that silently goes stale. `ultima_virtues` doesn't have this problem because the git copy *is* the live copy via junction.

Steps to fix, once ready:

1. Copy the **current** live `saves\ult-jul19-test\datapacks\moongate` content into `_datapacks/moongate` in the repo, overwriting the stale snapshot with what's actually running now.
2. Delete the live `moongate` folder — it's a real folder right now, not a junction, so it has to go before a junction can take its place. (Brief window here where moongate doesn't exist in the live datapacks folder — do steps 2–3 back to back, don't leave it mid-migration.)
3. Create a new junction from `saves\ult-jul19-test\datapacks\moongate` pointing at `_datapacks/moongate` in the repo.
4. `/reload` in-game and confirm moongate still behaves identically before considering it done.

## After any of the above

Update memory (`project_design.md`'s "Key file locations" section references current paths like `ultima_virtues/data/virtues/function/`) and this repo's own docs to match new paths — stale path references are worse than the current slightly-inconsistent-but-accurate layout.
