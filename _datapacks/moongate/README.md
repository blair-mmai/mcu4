# Moongate Datapack

Rune-based teleportation between a spawn stone circle and 8 remote moongate locations.

---

## Status

The archway itself has been tested and is at least partially working: it has
a decorative particle glow (no real portal block, so standing in it does
nothing on its own), and standing in the opening for 2.5s teleports the
player home to their own starting chest. The original rune-trigger system
(holding a colored glazed terracotta and right-clicking mossy cobblestone,
staggered daytime gate windows) is currently dormant - several of its
functions have pre-existing load errors (e.g. `moongate:tick`'s
`time query daytime` call doesn't parse on this version) and its call from
the tick tag has been temporarily removed in favor of just the archway glow
and dwell detection. For now, moongates serve as fixed teleport-potion
destinations rather than active rune gates.

---

## Setup: Fill in Coordinates

Every coordinate placeholder appears in the gate and rune function files.
Do a find-and-replace across the entire `data/` folder:

| Placeholder       | Replace with                                      |
|-------------------|---------------------------------------------------|
| SPAWN_X SPAWN_Y SPAWN_Z         | Center of your spawn stone circle     |
| HONESTY_X HONESTY_Y HONESTY_Z   | Honesty remote gate center            |
| COMPASSION_X COMPASSION_Y COMPASSION_Z | Compassion remote gate center    |
| VALOR_X VALOR_Y VALOR_Z         | Valor remote gate center              |
| JUSTICE_X JUSTICE_Y JUSTICE_Z   | Justice remote gate center            |
| SACRIFICE_X SACRIFICE_Y SACRIFICE_Z | Sacrifice remote gate center      |
| HONOR_X HONOR_Y HONOR_Z         | Honor remote gate center              |
| SPIRITUALITY_X SPIRITUALITY_Y SPIRITUALITY_Z | Spirituality remote gate  |
| HUMILITY_X HUMILITY_Y HUMILITY_Z | Humility remote gate center          |

Tip: land players slightly outside the exact gate center to avoid instant re-trigger.
For the spawn circle return, SPAWN coords should be just outside the circle center.

---

## pack_format

The pack.mcmeta uses format 107 (MC 26.2). If you are on a different release,
update the pack_format number to match your version.

---

## Giving Runes to Players

Each rune is a colored glazed terracotta. Detection is by item ID, not display name,
so the custom name is cosmetic only. Give commands:

```
/give @p minecraft:white_glazed_terracotta[minecraft:custom_name='{"text":"Rune of Honesty","italic":false}']
/give @p minecraft:orange_glazed_terracotta[minecraft:custom_name='{"text":"Rune of Compassion","italic":false}']
/give @p minecraft:yellow_glazed_terracotta[minecraft:custom_name='{"text":"Rune of Valor","italic":false}']
/give @p minecraft:lime_glazed_terracotta[minecraft:custom_name='{"text":"Rune of Justice","italic":false}']
/give @p minecraft:light_blue_glazed_terracotta[minecraft:custom_name='{"text":"Rune of Sacrifice","italic":false}']
/give @p minecraft:purple_glazed_terracotta[minecraft:custom_name='{"text":"Rune of Honor","italic":false}']
/give @p minecraft:cyan_glazed_terracotta[minecraft:custom_name='{"text":"Rune of Spirituality","italic":false}']
/give @p minecraft:pink_glazed_terracotta[minecraft:custom_name='{"text":"Rune of Humility","italic":false}']
```

---

## How to Use a Rune

Hold the rune item and right-click any mossy cobblestone block.
You will be teleported to that rune's remote moongate with portal particles and sound.

---

## Remote Gate Active Windows

Gates activate on a staggered schedule based on in-game daytime (0–23999 ticks).
Each gate is active for 6000 ticks (~5 minutes real time at normal speed).

| Gate          | Active ticks    | Approx. time of day |
|---------------|-----------------|----------------------|
| Honesty       | 0 – 5999        | Dawn                 |
| Compassion    | 2000 – 7999     | Early morning        |
| Valor         | 4000 – 9999     | Morning              |
| Justice       | 6000 – 11999    | Late morning         |
| Sacrifice     | 8000 – 13999    | Midday               |
| Honor         | 10000 – 15999   | Afternoon            |
| Spirituality  | 12000 – 17999   | Late afternoon       |
| Humility      | 14000 – 19999   | Evening              |

To adjust a gate's window, edit the `matches` range in
`data/moongate/function/gate/check_<virtue>.mcfunction`.

While active, portal + end_rod particles appear at the gate center every tick.
Walking within 2 blocks of the center teleports you back to the spawn stone circle
with a 40-tick (2 second) cooldown to prevent ping-ponging.

---

## Teleport Cooldown

The cooldown is 40 ticks by default. To change it, edit the last line of
`data/moongate/function/gate/return_to_spawn.mcfunction`:

```
scoreboard players set @s moongate.cooldown 40
```
