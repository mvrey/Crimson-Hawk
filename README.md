# Crimson Hawk

Vertical shoot-'em-up built with ActionScript 3 and FlashDevelop. Pilot the Crimson Hawk through looping enemy waves, invest your points in ship upgrades, and push as far as you can before the alien fleets overwhelm you.

## Gameplay Video

- Watch a short gameplay capture on YouTube: [Crimson Hawk Gameplay](https://www.youtube.com/watch?v=O6bfS4L5Sco)

## Gameplay Loop

1. **Welcome screen:** click anywhere to start the run.
2. **Combat phase:** survive enemy waves, earn points, and protect your ship’s shields and hull.
3. **Shop phase:** spend the accumulated score on upgrades, unlock new ship frames, missiles, and lasers.
4. **Repeat:** each loop increases enemy counts and unlocks tougher bosses until you are defeated and returned to the title screen.

## Key Features

- **Four-stage campaign** defined in `Docs/lvl1.xml` – `Docs/lvl4.xml` with progressive waves and boss encounters.
- **Modular screen system** (`welcome`, `game`, `shop`, `gameover`) orchestrated by `Main` and `GameManager`.
- **Persistent upgrade path** covering ship frames, shields, recharge speed, missiles, lasers, lives, and raw firepower (`screens/shop.as`).
- **Enemy variety:** multiple saucer archetypes and four boss classes with unique stats (`vessels/enemies`).
- **Pooling system for shots/missiles/lasers** that minimizes runtime allocations (`GameManager.createShots`).
- **Dynamic soundtrack & SFX** handled by `SoundManager` with in-game mute toggle.
- **Parallax background** for depth (`Background.as`).

## Controls

- `Arrow Keys`: Move the Crimson Hawk.
- `Space`: Fire main cannons (limited simultaneous shots, expandable in shop).
- `Mouse`: Navigate menus, click anywhere to advance screens, interact with shop buttons, and toggle mute via the speaker icon.

## Requirements

- Adobe Flash Player 10.1+ (target platform of the compiled SWF).
- FlashDevelop, Apache Flex SDK, or Adobe AIR SDK for compiling the ActionScript project.
- Windows build path defaults to `bin/CrimsonHawk.swf` (see `Crimson Hawk.as3proj`).

## Build & Run

1. Install FlashDevelop (or ensure `mxmlc` from Flex/AIR SDK is in your PATH).
2. Open `Crimson Hawk.as3proj` in FlashDevelop.
3. Build the project (`Project > Build Project`), which outputs to `bin/CrimsonHawk.swf`.
4. Run the game via:
   - Double-clicking `bin/CrimsonHawk.swf`, or
   - Opening `bin/index.html` in a Flash-enabled browser (uses `swfobject.js` for embedding).

### Running Without FlashDevelop

```bash
mxmlc -load-config+=obj/CrimsonHawkConfig.xml src/Main.as -output bin/CrimsonHawk.swf
```

> Update paths as needed; the generated `obj/CrimsonHawkConfig.xml` captures compiler options referenced by FlashDevelop.

## Project Structure

- `src/`: Core ActionScript code (screens, managers, vessels, utilities).
- `Docs/`: Level definitions (XML wave timers and enemy compositions).
- `assets/`: SWC bundles with art, UI, and audio symbols (referenced in the project file).
- `bin/`: Compiled SWF, HTML bootstrapper, and `swfobject.js`.
- `lib/greensock.swc`: Tweening library used for background, UI, and FX.

## Customization Tips

- **Levels:** Edit the XML files in `Docs/` to tweak wave timings, enemy mixes, or boss spawns (`GameManager.parseLevel` loads them in sequence).
- **Upgrades:** Adjust costs, increments, and unlock thresholds inside `screens/shop.as`.
- **Player/Enemy stats:** Modify ship subclasses in `vessels/ships/` or enemy classes in `vessels/enemies/`.
- **Audio:** Replace or extend the `music_` and `sfx_` vectors in `SoundManager.as`.

## Credits

- **Programming & Design:** Marcos Vázquez.
- **Tweening:** [GreenSock Animation Platform](https://greensock.com/gsap/).
- **Music:** Extracted from the Sega Mega Drive game *Gynoug*.
- **Assets:** Packaged in project SWCs (`assets/`).

