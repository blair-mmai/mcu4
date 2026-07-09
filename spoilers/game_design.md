# Game Design — mcu4

## The concept

*Ultima IV* (1985) was the first RPG where you didn't win by killing a final boss. You won by embodying eight virtues: Honesty, Compassion, Valor, Justice, Sacrifice, Honor, Spirituality, Humility. The game tracked your behavior and judged you on it.

This mod attempts to port that idea into Minecraft — a world that looks vanilla but is quietly watching how you play.

## The core design problem

The player starts in a world that looks completely normal. There is no obvious indication that a different value system is in place. The design challenge is: how does the world communicate its rules?

Some approaches being explored:
- Environmental storytelling (a starting chest with a single brown mushroom — what does that mean?)
- NPC dialogue and trades that reward virtuous behavior
- Advancements and positive effects that fire on morally-loaded actions (planting food)
- Punishments exist for some "wrong" behaviors - akin to a poison effect or nausea effect (punching an animal).

## The 8 original virtues (Ultima IV originals)

The 8 virtues in U4 were the 2^3 combinations derived from 3 principles of love, truth, and courage.

| Virtue | Principle | Expression in MC |
|--------|-----------|-----------------|
| Compassion | Love | Help a village grow. |
| Honesty | Truth | TBD |
| Valor | Courage | Fighting a boss |
| Justice | Love + Truth | TBD |
| Sacrifice | Love + Courage | Putting other's needs before your own: giving food to someone while you starve. |
| Honor | Truth + Courage | TBD |
| Spirituality | All three | Being centered and holistically minded. |
| Humility | None (it can't be derived) | Reject symbols of pride and vanity. |

## The 8 amended virtues (Minecraft-orientation)

Rather than over-modifying Minecraft to align with the 8 original virtues, the
principles and virtues will pivot a bit to align with vanilla minecraft.  Truth and
honesty are hard to test in a world where lying isnt really a thing, for example.

So, the 3 virtues in mcu4 will be:
 - Love     (doing nice things for others)
 - Wisdom   (showing knowledge of the world and learning)
 - Courage  (staying cool when facing danger and death)

| Virtue | Principle | Expression in MC |
|--------|-----------|-----------------|
| Compassion | Love | Help a village grow. |
| Insight | Wisdom | Figuring things out.  Crafting more difficult things.  Puzzle solving. |
| Valor | Courage | Staying cool despite danger or death. |
| Guidance | Love + Wisdom | Ability to accept counsel and to grow others.  |
| Sacrifice | Love + Courage | To put other's needs above your own.  Feed others while you starve. |
| Fortitude | Wisdom + Courage | Endure difficulties with clear-eyed awareness.  |
| Spirituality | All three | To live for a purpose that's bigger than yourself.  |
| Humility | None (it can't be derived) | To meet a new day's dawn in the humblest way. |

## The 8 anti-virtues

| Virtue | Anti-Virtue | Expression in MC |
|--------|-----------|-----------------|
| Compassion | Callousness | Punch an animal. |
| Insight | Ignorance | Never craft anything beyond basic tools. |
| Valor | Cowardice | Flee from or avoid all combat. |
| Guidance | Hoarding or Withholding | Holding 2+ Smithing Tables (see guidance.md). |
| Sacrifice | Selfishness | Hoard food while others starve. |
| Fortitude | Weakness | Die repeatedly without learning from it. |
| Spirituality | Materialism | Accumulate wealth and resources beyond any need. |
| Humility | Pride | Equip weapons and armor before tools and food. |


## In-game mechanics

- **Triggers**: implemented by datapack and mcfunction within Minecraft framework.
- **Custom trades**: custom trades with villagers and traders specific to this non-vanilla version of minecraft.
- **Starting chest**: spawns when player punches their first tree or digs dirt. The chest is named and tagged to the receiving player (e.g. *"Blair's Pack"*). The chest contains:
    - a brown mushroom (and reveals a hint for early game.)
    - a soul lantern           (a mystery, at this point - used in middle game)
    - a tag with no name yet.  (a mystery, at this point - used in endgame)
    - a lore book with some early game clues (TBD)
- **Chest ownership (multiplayer)**: each starting chest belongs to the player it was spawned for. In multiplayer:
    - Adding items to *another player's* chest is **allowed** (a gift — scores Sacrifice or Compassion)
    - Removing items from *another player's* chest is **not allowed** — triggers a negative effect and score penalty, even if you put the item there yourself
    - Your own chest: no restrictions
- **Scoreboard tracking**: per-player virtue scores tracked via mcfunction code variables (e.g. virtues.compassion = 30)
- **First join sequence**: title sequence establishes the tone and a new narrative ("You are a stranger, here.")
- **Sub-titles**: appear early in game to direct the player onto the path of enlightement.
- **Advancements**: fire on  virtue-related actions.  A tree of advancements moves them towards higher enlightenment.
- **Toasts**: fire on certain triggers and most advancements (eg "Getting an Upgrade", "Mushy Chef").
- **Effects**: both positive and negative effects exist and help keep you on the path.
- **Offering Fire**: a soul campfire placed once at world init (~18 blocks from spawn). Items dropped on it are permanently destroyed. Used for Humility (burning gear), Spirituality (offerings), and Sacrifice (burning food while hungry). No interaction required — just drop items onto it.
- **Messages**: the game communicates with players in two ways:
    - **tellraw** (yellow): a private message visible only to you. Used for personal feedback — circle entry, virtue scores, hints. `tellraw @s`
    - **say** (white): a public broadcast visible to all players in the session. Used for world events or shared announcements. MC command: `say`

## Starting Conditions

- Player spawns with **3 hearts** and **3 food** (weak, hungry, fragile)
- Each virtue goal advancement grants **+1 max heart** and **+1 max food bar segment**
- Welcome book spawns in starting chest alongside the brown mushroom

### Welcome Book Contents

- **Food**: try veganism.
- **Hit bar**: you're weak now. But on the right path, you'll grow stronger.
- **Crafting**: you're bad at it now. But you can learn from the right teacher.
- **Mining**: at best you can only make nuggets or blocks. Only armorers know how to make fine ingots.
- **Villagers**: feed villagers lots of bread, add more beds to town, and add all the job station types so you can meet everyone for your quests.

## Tool System

All crafted tools start with **low durability**. Professions offer two forms of help:
- Books on crafting better versions of their associated tool
- Trade-in mechanic: swap a nearly broken tool for one at half durability

**Moving a tool in inventory cuts its durability by one third, each time it's moved.** This penalises hoarding and swapping.

### Profession → Tool Alignment and Special Mechanics

| Profession       | Tool        | Virtue        | Mantra     | Principles | Special In-Game Mechanic  | Special In-Game Symbol |
|------------------|-------------|---------------|------------|------------|---------------------------|------------------------|
| Farmer           | Hoe         | Compassion    | Ohm        |      L     | Rune path; named villgrs  | Mushroom               |
| Fisherman        | Shovel      | Fortitude     |            |    W + C   | Near-death triggers       | Totem, Lightning Rod   |
| Toolsmith        | Pickaxe     | Guidance      |            |    L + W   | The Family Antosh         | Soul Lantern -> Pillar |
| Wandering Trader | --          | Humility      |            |  0 + 0 + 0 | 2 diff tones breaks peace | Moss Block, Mat of Moss|
| Armorer          | Metallurgy* | Insight       | 2 equitones|      W     | Metalurgy unlocks ingots  | Bell                   |
| Butcher**        | Axe         | Sacrifice     | Paneer     |    L + C   | Spawn eggs of monsters    |                        |
| Weaponsmith      | Sword       | Valor         |            |      C     | Drops from spawn monsters | Captains Banner        |
| Librarian        | --          | Spirituality  | "O"        |  L + W + C |                           | Ladder up pillar       |
| Cartographer     | --          |               |            |     --     | Maps to get Quest Items   |                        |
| Fletcher         | Bows        | --            |            |     ---    | Explains about _____      |                        |
| Leatherworker    |             |               |            |            | Explains about ______     |                        |
| Mason            |             |               |            |            | Explains about runes      | Glazed Terracotta      |
| Shepherd         |             |               |            |            | Explains about ______     |                  |
| Cleric           |             |               |            |            | Explains mantras          |                        |


*Metallurgy note: novice players cannot hold individual ingots — ore smelts to nuggets or blocks only (9 ore → 1 block; ore → nuggets). Armorer trades unlock the ability to produce standard ingots.*

** Rogan Josh the Butcher says 'Simply mutter "paneer" as the mantra of Sacrifice...'


## Starting Circle

A crafting table spawns in the home circle at world init alongside the offering fire. Free crafting access from the start — but with the tool durability and metallurgy restrictions above, what you can make is still limited.

One pillar has a ladder going up it.


## Punch-Tree Drops

Punching a log (no tool) costs 1 hit point and randomly drops one of:
- Leaves
- Sapling (type matches tree)
- Stick
- Plank
- Apple (oak only)
- Occasionally: a wood block

## Mining and Smelting

- Mining ore is possible but crappy tools won't last long
- Novice metallurgists cannot produce individual ingots — only nuggets or blocks (9 ore → 1 block)
- Armorer trades unlock standard ingot production
- Various professions offer specialised books on better toolmaking

## Sin Naming

All anti-virtue advancements are named as **"Sin of [Name]"**. Current list:

| Sin | Anti-Virtue | Virtue |
|-----|-------------|--------|
| Sin of Haste | Running | Humility |
| Sin of Vanity | Wearing non-enchanted armor | Humility |
| Sin of Jolting | Waking a villager | Compassion |
| Sin of Thievery | Taking from a villager's chest | Sacrifice |
| Sin of Cowardice | Using a shield | Valor |
| Sin of Ignorance | Crafting wood tools | Insight |
| Sin of the Caveman | Crafting stone tools | Insight |
| Sin of Dishonesty | Taking the unfair villager trade | Guidance |
| Sin of Guessing | Seeking enlightenment at the wrong pillar | Spirituality |

## Villager Level-Up Clues

Each time a virtue-aligned villager levels up, they fire a **private tellraw** to the interacting player — a clue about the world, the pillars, or the enlightenment mechanic. Examples:
- Farmer (on level-up): *"The pillar of compassion always stands in the southwest of the stone circle."*
- Librarian (on level-up): *"Crouch at dawn with the rune in hand atop its correct pillar."*

Clue wording TBD per profession and level. Clues are private — other players don't see them.

## At Peace

A cross-cutting state tracking whether a player has any active anti-advancements.

### The Two States

**"at peace in [virtue]"** — lowercase, partial
No anti-advancements active in that specific virtue. Other virtues may still carry antis.

**"At Peace."** — capitalised, with full stop
No anti-advancements active across all virtues simultaneously. Complete state. Rare, fragile, significant.

### Tellraw messages (private, no toast)

- When an anti clears and no more antis remain in that virtue: *"You now feel at peace in [virtue]."*
- When all antis across all virtues are clear: *"You feel At Peace."*
- When any anti fires in any virtue: *"You no longer feel at peace in [virtue]."*

### At Peace advancement

- Lives on its own branch from the root of the Spirituality advancement tree
- Not granted at game start — the opening sequence says *"You feel At Peace."* as a baseline feeling, not an earned state
- Only granted on first recovery of full At Peace after having lost it
- One of the only advancements that can be lost — revoked whenever any anti-advancement fires
- Re-earned each time full At Peace is recovered after a fall
- No toast. No fireworks. Private tellraw only.

### Enlightenment conditions

**Any virtue except Spirituality:**
- At peace in that virtue (no antis active in that specific virtue)
- Plus the virtue's enlightenment mechanic (crouch east at dawn, rune in hand, virtue effect active)

**Spirituality specifically:**
- Full At Peace across ALL virtues simultaneously — necessary but not sufficient condition
- Plus the Spirituality enlightenment mechanic
- The window is fragile — any anti firing during the attempt drops At Peace and closes the window
- Must rebuild full At Peace and attempt again

### Post-enlightenment

Once enlightened in Spirituality, At Peace can be lost and regained freely without consequence to that enlightenment. The tellraw messages continue to fire as ambient world awareness — flavour, not gates.

### Opening sequence connection

The game opens with *"You feel At Peace."* — the player's baseline before anything is lost. The At Peace advancement only fires on recovery, after the fall and return. When the advancement fires silently, the player who sees *"You feel At Peace."* in their tellraw will recognise it. The circle completes.

## Mantras

Secret words discovered through play — never listed or explained. Sources: tellraw during villager trades, lore books, environmental clues.

Each virtue has a mantra that, when spoken, restores *at peace in [virtue]* (clears antis for that virtue only). The Spirituality mantra is the exception — it restores full At Peace across all virtues simultaneously.

The Spirituality mantra is *"O"* (the circle, the stone ring). Its clue: a journal entry describing standing inside a stone circle, the shape itself saying something.

The Butcher villager (virtue TBD) hints at his mantra via trade dialogue: *"Simply mutter 'paneer' as mantra of [virtue]..."* — Rogan Josh easter egg.



