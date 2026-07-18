# mcu4: An Hommage to Ultima IV

### A virtue progression system inside Minecraft

This is a Minecraft datapack mod built around the virtue system from the [1985 RPG *Ultima IV*](https://wiki.ultimacodex.com/wiki/Ultima_IV:_Quest_of_the_Avatar) — the first major RPG where the goal wasn't to defeat a boss, but to become a better person.

There's no explicit tutorial.  No boss.  Advancements and toasts will help guide you: the world itself will teach you how to be in it.

You blink your eyes and all of a sudden you're a stranger in a field that you've never seen...and here lies a chest within a mysterious stone circle and somehow it all knows your name...

[You approach a mysterious stone circle (mp4 video)](mysterious-stone-circle-approached.mp4)

---

Built with Minecraft 26.x datapacks (mcfunction, loot tables, advancements, scoreboards).  
See [spoilers/](spoilers/) if you want to know how to win before playing.

---

## Installing

### Step 1 — Download the files

On this GitHub page, click the green **Code** button → **Download ZIP**. Unzip it. Inside you'll find two folders:

- `ultima_virtues` — the datapack
- `virtues_resourcepack` — the resource pack (custom music)

### Step 2 — Install the resource pack

Copy the `virtues_resourcepack` folder into your Minecraft resource packs folder:

- **Windows (vanilla)**: `%appdata%\.minecraft\resourcepacks\`
- **Windows (PrismLauncher)**: `%appdata%\PrismLauncher\instances\<instance>\minecraft\resourcepacks\`
- **Mac**: `~/Library/Application Support/minecraft/resourcepacks/`

### Step 3 — Create a new world with the datapack

1. Open Minecraft and click **Singleplayer → Create New World**
2. Set the world name and game mode as desired
3. Turn on **Allow Cheats** — some early game guidance uses commands
4. Click **More** → **Data Packs**
5. Click **Open Pack Folder** — this opens the datapacks folder for your new world
6. Copy the `ultima_virtues` folder into that folder
7. Back in Minecraft, click the datapack to move it from **Available** to **Selected**
8. Click **Create New World**

### Step 4 — Enable the resource pack

1. From the title screen or in-game, go to **Options → Resource Packs**
2. Verify `virtues_resourcepack` appears under **Selected** — if not, move it there
3. If you had to move it, click **Done** and re-enter the world

### Step 5 — What to expect on first entry

Once the world loads, do nothing — an intro sequence will begin. After roughly 16 seconds a stone circle with a chest will appear around you. That chest is your starting point.

---

*Requires Minecraft Java Edition 26.x*

---

## For contributors

If you're working on the datapack and want to use a symlink from your local repo into the Minecraft datapacks folder (so changes are live without copying), Minecraft will prompt a symlink warning on launch.

To allow it, create a file called `allowed_symlinks.txt` in your Minecraft game directory:

- **Vanilla**: `%appdata%\.minecraft\allowed_symlinks.txt`
- **PrismLauncher**: `%appdata%\PrismLauncher\instances\<instance>\minecraft\allowed_symlinks.txt`

Add one line with the path to your local repo:

```
C:\path\to\your\mcu4
```

Minecraft will then follow the symlink without prompting.
