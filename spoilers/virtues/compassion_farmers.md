# Compassion Farmers — Trade Tables

> **Status:** Design document only. Per-trade dialogue (tellraw lines) is not yet implemented. Once the full farmer system is working correctly, this file will replace `compassion.md`.
>

## Overview
Three farmers per village, each holding one piece of the Compassion thread.
Player must visit all three to obtain rune, item frame, and book.
All three give the same L1 greeting, naming themselves and hinting at the
composter mechanic.

**Rune:** Brown glazed terracotta
**Mantra:** MOO (hidden in Freddie Mac Moo's name)
**Pillar adornment:** Mycelium on top block
**Pillar direction:** SW (indicated by item frame arrow)

---

## Mushy Chef Mini-Advancement
Fires quietly whenever any player trades 1 mushroom soup for 1 empty bowl
with any farmer at any level, if not already earned. Toast is "Mushy Chef". 

---

## Fannie Mae

| Level | Trade | Villager XP | Tellraw | Notes |
|-------|-------|-------------|---------|-------|
| L1 | 2 brown mushroom → 1 red mushroom | Instant level up | *"I am Fannie Mae. We are the farmers three. A composter each, you'll see."* | |
| L2 | 1 wheat → 1 bread | Negligible | *"A fine deal, don't you think?"* | Honesty bait — unfair, anti-advancement |
| L2 | 3 wheat → 1 bread | Instant level up | *"Freddie changed his name recently."* | Honesty bait — fair, gates L3 |
| L3 | 1 mushroom soup → item frame + arrow | Instant level up | *"Freddie changed his name because he takes his role as Keeper of the Rune very seriously."* | Gift — once only, gates L4 |
| L4 | 1 mushroom soup → 1 empty bowl | Negligible | TBD | Triggers Mushy Chef mini-advancement if not already earned |

---

## Freddie Mac Moo

*Keeper of the Rune. Changed his name to include the mantra.*

| Level | Trade | Villager XP | Tellraw | Notes |
|-------|-------|-------------|---------|-------|
| L1 | 2 dirt → 1 mycelium | Instant level up | *"I am Freddie Mac Moo. We are the farmers three. A composter each, you'll see."* | Mycelium needed for pillar AND mushroom growing |
| L2 | 1 brown mushroom → 2 brown mushrooms | Negligible | *"A gift from the earth."* | Honesty bait — unfair, anti-advancement |
| L2 | 1 mushroom soup → 1 mushroom soup | Instant level up | *"I love Fannie's framed picture. It reminds me of the pillar of compassion."* | Honesty bait — fair, gates L3 |
| L3 | 1 mushroom soup → 1 empty bowl | Grind | *"The rune is not given lightly."* | Grind gate — 5 trades to reach L4 |
| L4 | 1 mushroom soup → brown glazed terracotta | Instant level up | *"Keep it well."* | Rune — once only, gates L5 |
| L5 | 1 wooden bowl → 1 mushroom soup | Negligible | *"Come back when you're hungry."* | Renewable soup source |

---

## Ginnie Mae

*Holds the book explaining the enlightenment mechanic.*

| Level | Trade | Villager XP | Tellraw | Notes |
|-------|-------|-------------|---------|-------|
| L1 | 1 composter → 1 bone meal | Instant level up | *"I am Ginnie Mae. We are the farmers three. A composter each, you'll see."* | Composter naturally produces bone meal — fair exchange |
| L2 | 1 pumpkin seed → 1 pumpkin pie | Negligible | *"Geez. Do you know how long it took to make a pie from a seed?"* | Honesty bait — unfair, anti-advancement |
| L2 | 1 pumpkin seed → 1 melon seed | Instant level up | *"The mantra is now in one of our names."* | Honesty bait — fair, gates L3 |
| L3 | 1 mushroom soup → book and quill | Instant level up | *"Read it carefully."* | Book — once only, gates L4 |
| L4 | 1 mushroom soup → 1 empty bowl | Negligible | *"I'll share this with the others."* | Renewable soup source |
| L5 | 1 mushroom soup → 1 empty bowl | Negligible | TBD | |
| L5 | 1 empty bowl → 1 mushroom soup | Negligible | TBD | Renewable soup source |

---

## Ginnie Mae's Book

> "Day unknown. Found the circle. Eight pillars. The weathervane of
> Compassion always points to the SW. I replaced the top stone with
> mycelium, crouched at dawn, and held firm the rune, while I was at
> peace in compassion."

---

## Enlightenment Mechanic — Compassion

1. Obtain mycelium from Freddie Mac Moo (L1). Grow big brown and red mushrooms, make lots of mushroom soup.  Trade it to farmers. 
2. Obtain item frame + arrow from Fannie Mae (L3) — points SW to pillar
3. Obtain brown glazed terracotta rune from Freddie Mac Moo (L4)
4. Find the stone circle
5. Study arrow in item frame and notice it pointing SW. Compassion pillar is in Southwest.
6. Replace top block of pillar with mycelium
7. Clear all anti-Compassion advancements.  Say mantra to become at peace, in compassion. Say MOO using tellraw @s)
8. Hold brown glazed terracotta rune
9. Crouch at dawn on the pillar
10. Enlightenment advancement will be awarded with Toast.

→ *"at peace in compassion"* mini-advancement fires silently with a private tellraw of "At peace, in compassion."

**State lost** when any anti-Compassion advancement fires.
**Restored** by clearing antis and repeating steps 8-10.

---

## Notes
- Missing farmers: if fewer than 3 have spawned, player needs to set up more composters and potentially also have to breed villagers.
- Honesty bait anti-advancement fires on taking unfair trade.  Doesnt affect compassion.
- Mushy Chef fires on first soup-for-bowl trade: any farmer, any level.  Permanent, mini-advancement.  
