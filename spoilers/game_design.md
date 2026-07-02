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
 - Courage  (staying cool when facing danger and death)
 - Wisdom   (showing knowledge of the world and learning)

| Virtue | Principle | Expression in MC |
|--------|-----------|-----------------|
| Compassion | Love | Help a village grow. |
| Insight | Wisdom | Figuring things out.  Crafting more difficult things.  Puzzle solving. |
| Valor | Courage | Staying cool despite danger or death. |
| Guidance | Love + Wisdom | Ability to teach and to grow others. Leveling-up villagers. |
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
| Guidance | Corruption | Trade with villagers purely to exploit them. |
| Sacrifice | Selfishness | Hoard food while others starve. |
| Fortitude | Weakness | Die repeatedly without learning from it. |
| Spirituality | Materialism | Accumulate wealth and resources beyond any need. |
| Humility | Pride | Equip weapons and armor before tools and food. |


## In-game mechanics

- **Triggers**: implemented by datapack and mcfunction within Minecraft framework.
- **Custom trades**: custom trades with villagers and traders specific to this non-vanilla version of minecraft.
- **Starting chest**: spawns when player punches their first tree or digs dirt. The chest is named and tagged to the receiving player (e.g. *"Blair's Pack"*). The chest contains:
    - a brown mushroom (an ambiguous hint.)
    - a lore book with clues (TBD)
    - a bucket of pufferfish, a bucket of water, a bucket of milk, and a bucket of lava ("You'll only need 3.")
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
- **talk** and **talkraw**: Ability to talk out loud and to be spoken to privately by the game.



