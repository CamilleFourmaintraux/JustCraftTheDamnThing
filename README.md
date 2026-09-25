# Just Craft The Damn Thing (Build 42)

Adds a small collection of logical, believable crafting recipes that are missing
from vanilla Project Zomboid.

> If your survivor has the materials and the knowledge to figure out something
> obvious, why shouldn't they be able to **just craft the damn thing?**

The mod focuses on practical recipes without making vanilla progression obsolete.
Where a vanilla recipe already exists behind a magazine, this mod may offer a
slightly more expensive alternative that doesn't require knowing the recipe.

## Recipes

| Recipe | Inputs | Output | Notes |
|---|---|---|---|
| Sew Sheet from Rags | 10 Rags + Thread + Needle | 1 Sheet | Needle kept (may degrade). Requires Tailoring 1, small Tailoring XP. |
| Tear Book into Paper | 1 book-type item | 10 Paper | Accepts books, paperbacks, magazines, newspapers, notebooks, journals, comics, etc. |
| Rip Underwear | 1 cloth sock, underwear or bra | 1 Rag | Cloth only. Must not be worn. |
| Open Canned Food with Screwdriver | Canned food + Screwdriver | Opened can | Needs light + surface. Uses the vanilla open-can logic (may damage the tool or cut you). |
| Open Canned Food with Scissors | Canned food + Scissors | Opened can | Needs light + surface. Uses the vanilla open-can logic (may damage the tool or cut you). |
| Grind Improvised Whetstone | 3 Stones | 1 Crude Whetstone | Requires Maintenance 1 + surface. ~2x the vanilla time; alternative to the magazine recipe. |
| Break Rabbit Skull into Bone | 1 Rabbit Skull | 1 Small Animal Bone | Requires Strength 1. |
| Carve Long Sticks from Plank | 1 Plank + Knife | 3 Long Sticks | Any knife (kept). Requires Carving 1 + surface + light, small Carving XP. |
| Weld Improvised Metal Pipe | 1 Metal Sheet + Hammer + Blowtorch + Welding Mask | 1 Metal Pipe | Any hammer. Requires MetalWelding 4 + surface + light. |
| Weld Improvised Sledgehammer | 1 Metal Bar + 4 Metal Sheets + Hammer + Blowtorch + Welding Mask | 1 Improvised Sledgehammer | Any hammer. Requires MetalWelding 5 + surface + light. |

Most recipes are known by default (no magazine needed).

## New item: Improvised Sledgehammer

A weaker, easier-to-craft alternative to the vanilla Sledgehammer. Same sprite and
in-hand model, but slightly less damage, slightly heavier, slightly slower, and only
a quarter of the durability. It keeps the `base:sledgehammer` tag, so it works for
all sledgehammer mechanics (breaking walls, floors, etc.). This gives players
simpler access to sledgehammer mechanics while keeping the harder forge recipe
worthwhile for a sturdier tool.

## Languages

English, French, German, Spanish, Portuguese and Italian.

## Install (local testing)

Copy the `JustCraftTheDamnThing` folder into:

- **Windows:** `%USERPROFILE%\Zomboid\mods\`
- **Linux / Steam Deck:** `~/Zomboid/mods/`

so you end up with `~/Zomboid/mods/JustCraftTheDamnThing/mod.info`. Then enable it
in the in-game Mods menu.

## Optional: per-recipe sandbox toggles

A companion mod, **JustCraftTheDamnThing - Sandbox Settings**, lets you enable or disable each recipe individually from the sandbox options. It requires
dane's Library (Workshop ID 3715021740). See that mod's README for details.

## Optional: Vanilla Foods Expanded compatibility

This project ships a companion mod, **JCTDT_VFXCompat**, that makes the screwdriver/scissors can-opening recipes also accept the extra canned foods from the Vanilla Foods Expanded mod. It requires both mods and does nothing on its own, so the base mod never depends on it and never crashes when the food mod is absent.
See that submod's own README for details.

## Known limitations

- Crafting a sledgehammer or a metal pipe shows a baseball bat during the crafting animation (the crafted prop is hardcoded by the game in the default hammering animation). I would need to do my own animation, which isn't planned for now.
- With the Sandbox Settings companion, disabling a recipe hides it from the crafting menu, but a few recipes (rabbit skull, tearing novels) can still be reached from the right-click context menu. So the recipes aren't really "disabled", they are more "hidden". I could check in the sandbox settings if the recipe was disabled and make sure the action in the contextual menu don't show up but it seems complicated for not much so I don't feel like doing it for now.

**Just craft the damn thing.**
