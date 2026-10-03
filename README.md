# It Knows — 1.20.1 Forge Horror Mod

Something has been watching you since the moment you spawned.  
It learns. It adapts. **It knows.**

---

## How to Import into IntelliJ IDEA (Easiest Way)

1. Download and install **IntelliJ IDEA** (Community Edition is free):  
   https://www.jetbrains.com/idea/download/

2. Make sure you have **Java 17** installed (very important):  
   https://adoptium.net/temurin/releases/?version=17

3. Open IntelliJ → **File → Open** → select this entire folder (the one that contains this README.md).

4. Click **Trust Project** when it asks.

5. Wait for Gradle to finish importing (bottom right). First time can take 5–15 minutes.

6. After importing finishes:
   - Open the **Gradle** tab on the right side
   - Go to `Tasks` → `forgegradle runs`
   - Double-click **genIntellijRuns**

7. At the top right, choose **runClient** from the dropdown and press the green Play button.

The game will launch with the mod loaded.

---

## Building the .jar (for CurseForge or your mods folder)

Open the terminal in IntelliJ (or normal terminal in this folder) and run:

```bash
./gradlew build
```

The finished mod will appear here:

`build/libs/itknows-1.0.0.jar`

- Put that jar in your `.minecraft/mods` folder  
- Or upload it to CurseForge

---

## Easiest on Windows

Double-click `build.bat`. It builds the jar and also makes `ItKnows-Modpack.zip`, which you can import
in the CurseForge app (**Create Custom Profile → Import**) to play right away.

## Uploading to CurseForge

1. Build the jar (above) and grab `build/libs/itknows-1.0.0.jar` (not any `-sources` or `-slim` file).
2. On https://www.curseforge.com/minecraft/mc-mods click **Create a project** (Author Portal).
3. Fill in name, summary, description, and pick a license.
4. Under **Files → Upload File**, choose the jar and set:
   - Game version: **Minecraft 1.20.1**
   - Mod loader: **Forge**
   - Java version: **Java 17**
5. Submit. New projects go through CurseForge moderation before they go public.

## Playing it locally

Install Forge 1.20.1 (47.3.0 or newer), drop the jar in `.minecraft/mods`, launch the Forge profile.
Tip: set `daysBeforeStart` to 0 in `config/itknows-common.toml` to test right away, then use `/time set night`.

## Features

- **The Watcher** – Silent stalker that moves when you’re not looking at it
- Awareness system that grows the longer you survive
- Creepy whispers, fake footsteps, torches going out
- Fully configurable

---

Sleep well.
