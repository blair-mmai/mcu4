# Game Testing — mcu4

Add new tests as mechanics are implemented.

## Beginning of game

| ID | Setup | Action | Expected |
|----|-------|--------|----------|
| G_01 | Fresh world, datapack enabled, cheats on | Enter world for first time | Subtitles sequence: *"You open your eyes."* → *"You find yourself in a field."* → *"You are a stranger here."* → silence → *"...you feel an urge to punch a tree."* |
| G_02 | Complete G_01. Find a tree | Break a log | Chest appears 2 blocks to right, named after your username, containing 1 brown mushroom |
| G_03 | Complete G_02 | Open chest, read name | Chest shows your Minecraft username (not raw JSON) |
| G_04 | Complete G_02 | Open chest | Contains exactly 1 brown mushroom, nothing else |
| G_05 | Complete G_02 | Break another log | No second chest spawns |

## Compassion

| ID | Setup | Action | Expected |
|----|-------|--------|----------|
| V_CMP_01 | Find a passive animal | Hit it with bare hand (don't kill) | Nausea effect applied |
| V_CMP_02 | Brown mushroom in inventory, valid surface nearby | Plant the mushroom | Advancement fires, `virtues.compassion` increments |
| V_CMP_03 | Find a village with a hay bale | Break the hay bale | Score penalty, possible negative effect |

## Humility

| ID | Setup | Action | Expected |
|----|-------|--------|----------|
| V_HUM_01 | Fresh join, starting chest received | Place a sword in hotbar before any tool or food | Mining Fatigue effect applied |

## Guidance

| ID | Setup | Action | Expected |
|----|-------|--------|----------|
| V_GUI_01 | Find the custom two-trade villager | Take the 1-wheat → 1-bread trade | *"tastes hollow"* bread in inventory; eating it restores 0 hunger and applies Nausea |
| V_GUI_02 | Find the custom two-trade villager | Take the 3-wheat → 1-bread trade | Normal bread; `virtues.guidance` increments |

## Insight

| ID | Setup | Action | Expected |
|----|-------|--------|----------|
| V_INS_01 | Have iron ingots and sticks | Craft an iron pickaxe | `virtues.insight` increments |

---

## Reset commands

| What to reset | Command |
|---------------|---------|
| First join sequence | `/scoreboard players set @s virtues.firstjoin 0` |
| Starting chest | `/scoreboard players set @s virtues.tree_chest_given 0` |
| All virtue scores | `/scoreboard players reset @s` then `/reload` |
| Specific score | `/scoreboard players set @s virtues.<name> 0` |
| Remove all effects | `/effect clear @s` |
