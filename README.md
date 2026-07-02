# mcu4
### A virtue progression system inside Minecraft

This is a Minecraft datapack mod built around the virtue system from the 1985 RPG *Ultima IV* — the first major RPG where the goal wasn't to defeat a boss, but to become a better person.

The interesting design problem: how do you communicate to a player that the rules have changed, when the world looks exactly like vanilla Minecraft?

There's no tutorial.  No boss. Advancements and toasts will help guide you: the world itself will teach you how to be in it.

---

Built with Minecraft 26.x datapacks (mcfunction, loot tables, advancements, scoreboards).  
See [spoilers/](spoilers/) if you want to know how to win before playing.

---

## Installing the datapack

### Step 1 — Download the datapack

On this GitHub page, click the green **Code** button → **Download ZIP**. Unzip it. Inside you'll find a folder called `ultima_virtues` — that's the datapack.

### Step 2 — Find your Minecraft saves folder

**Java Edition (most common on PC/Mac):**

- **Windows**: Press `Win + R`, type `%appdata%\.minecraft\saves` and hit Enter
- **Mac**: Open Finder → Go → Go to Folder → type `~/Library/Application Support/minecraft/saves`
- **Linux**: `~/.minecraft/saves`

**Using PrismLauncher or MultiMC:**
Right-click your instance → **Folder** → open the `minecraft/saves` folder from there.

### Step 3 — Create a new world with the datapack

1. Open Minecraft and click **Singleplayer → Create New World**
2. Before hitting Create, click **More** → **Data Packs**
3. Click **Open Pack Folder** — this opens the datapacks folder for your new world
4. Copy the `ultima_virtues` folder into that folder
5. Back in Minecraft, click the datapack to move it from **Available** to **Selected**
6. Make sure to check **Bonus Chest** on the world creation screen
7. Click **Create New World**

### Step 4 — Enable cheats (recommended)

Some early game guidance uses commands. On the world creation screen, turn on **Allow Cheats** so you can run `/datapack list` and `/reload` if needed.

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
