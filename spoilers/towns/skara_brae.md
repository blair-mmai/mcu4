# Skara Brae

Ultima IV canon: town of **Spirituality**, Bard class, mantra "OM", Shrine of Spirituality.

## Haunted room / room rental mechanic

An independent datapack module (`ultima_virtues/data/virtues/function/rooms/`), deliberately separate from NPC/conversation and puzzle logic — same isolation principle as Jhelom's `puzzles/`/`fixtures/` modules.

Tyrone (innkeeper) rents out a haunted room, **night only**. Accepting opens a real iron door (script-controlled, no redstone). Once the player walks in and steps on an interior pressure plate (hidden inside the room, not next to the door), the door slams shut and the ghost encounter arms.

Sleeping triggers **Isaac**, a disembodied ghost — the player is forced awake (not allowed to actually sleep through), hit with nausea and blindness, a vex sound loop plays for atmosphere, and Isaac's dialogue appears: *"I protect the rune. Dost thou seek it?"* Answering Y or N resolves the encounter. A magic birch button (also script-detected, not real redstone) then lets the player back out — it opens the door briefly and auto-closes, working only once the ghost encounter has actually played out (so the room can't just be walked out of early).

Tyrone declines to rent the room again while it's still occupied, and won't rent during the day at all.

See `spoilers/conversations.xlsx` / `spoilers/trades.xlsx` for Tyrone's and Sasha's full dialogue/trade tables.

## Sasha — early gold nugget source

Sasha (herbs proprietor) buys evil-mob drops for gold nuggets: spider eye, string, rotten flesh, and bone (for redstone) are all tradeable. Gold nuggets are the currency Tyrone's room rental trade requires, so killing hostile mobs early in the game doubles as how a player funds their first room rental.
