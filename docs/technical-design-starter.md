# Technical Design Starter

## Purpose

This document translates the creative direction of `Who Sent This Honourable?` into a practical technical starting point.

It is not a final engineering spec. It is the first architecture guide for building the `Godot 4` project without over-engineering it too early.

## Current Technical Status

The repo currently has:

- a `Godot 4` bootstrap project in `game/`
- a placeholder main scene
- a typed `GDScript` starter script
- pre-production docs covering story, world, art, audio, gameplay, and roadmap

The project does not yet have:

- player controller architecture
- scene composition patterns beyond the bootstrap
- input map conventions
- reusable gameplay systems
- save or progression structure
- dialogue, radio, or restoration implementation

This document defines the first version of those decisions.

## Technical Goals

The architecture should support:

- fast iteration during prototype phase
- clear scene ownership
- typed `GDScript`
- strong 2D authoring workflow in `Godot`
- district-based content growth
- minimal rewrite pressure between prototype and vertical slice

The architecture should avoid:

- building a huge framework before gameplay exists
- overusing autoloads
- making every system data-driven before the game is understood
- generic abstractions that erase the specific needs of this project

## Engine and Language

### Engine

- `Godot 4`
- 2D-first project structure
- side-view camera and authored levels

### Language

- typed `GDScript`

### Why

This project benefits more from editor speed, scene authoring, animation flow, UI iteration, and level assembly than from low-level engine control.

## Technical Design Principles

### 1. Build for the First Playable First

Every technical choice should answer:

- does this help us prove movement
- does this help us prove restoration
- does this help us prove city feel

If not, it probably does not belong in the first pass.

### 2. Prefer Plain Scene Trees Over Clever Frameworks

Godot is strongest when scene ownership is readable.

Favor:

- clear parent-child composition
- local scripts with obvious responsibilities
- light reusable components where repetition is real

Avoid:

- giant base classes
- early ECS-style indirection
- deep signal webs with unclear ownership

### 3. Keep Global State Small

Autoloads should be rare and intentional.

Good candidates:

- game session state
- audio director
- scene transition coordinator

Bad candidates:

- every gameplay system
- every UI panel
- district-specific logic that belongs in the level

### 4. Prototype with Honest Placeholder Content

Placeholders are fine. Misleading placeholders are not.

For example:

- use simple shapes for actors if needed
- use clear labels for interactables
- use rough sound hooks before final audio
- use a simple dialogue panel before final portrait systems

But the placeholder should still test the real interaction.

### 5. Separate Content From Core Systems Gradually

In the prototype phase, some content can live near the systems that use it.

As soon as repetition appears, split that content out into:

- reusable scenes
- resource files
- configuration tables

Do not front-load this split before patterns exist.

## First Playable Technical Target

The first playable is a small `Moon Market` slice that proves:

- player movement feels good
- one simple combat encounter works
- one restoration interaction changes the scene state
- one radio beat can trigger
- one social interaction can slow the pace

This target should guide the technical scope.

## Proposed Game Folder Structure

The current scaffold is minimal. The next structure should grow toward:

```text
game/
  assets/
    audio/
    fonts/
    placeholder/
    sprites/
    ui/
  autoload/
  data/
    dialogue/
    districts/
    items/
  scenes/
    actors/
      player/
      enemies/
      npcs/
    gameplay/
      combat/
      interaction/
      restoration/
    levels/
      moon_market/
    ui/
  scripts/
    core/
    gameplay/
    ui/
```

This structure should remain flexible, but it gives the project somewhere sane to grow.

## Scene Architecture

## Core Scene Layers

The working model for a gameplay level should be:

```text
LevelRoot
  World
  Gameplay
  Actors
  Interactables
  FX
  Audio
  UIAnchor
```

This layout helps keep level logic readable.

### Ownership Guidance

- `World` owns tilemaps, collision, background dressing, parallax
- `Gameplay` owns restoration nodes, triggers, local mission flow
- `Actors` owns player, enemies, NPCs
- `Interactables` owns conversations, food stalls, switches, doors
- `FX` owns scene-local feedback visuals
- `Audio` owns area ambience and local audio emitters
- `UIAnchor` supports local screen-space or world-linked UI if needed

## Main Loop Scene Strategy

The current `main.tscn` can evolve into a lightweight root that loads playable content.

Recommended long-term job of `Main`:

- boot the project
- load global services
- route to menu or level scenes
- host transitions

It should not become the place where all gameplay logic lives.

## Player Architecture

The player should be built as a focused scene with a small number of clearly separated responsibilities.

## Recommended Player Scene

```text
Player
  CollisionShape2D
  Sprite or AnimatedSprite2D
  InteractionArea
  Hurtbox
  CameraAnchor
```

### Player Responsibilities

- movement and traversal
- action inputs
- facing direction
- interaction requests
- taking and dealing simple gameplay state

### Avoid Early Responsibilities

- full inventory management
- dialogue storage
- mission orchestration
- save system authority

The player should not become a god-object.

## Movement Model

The movement prototype should start with:

- run
- jump
- coyote time
- jump buffer
- wall or ledge interaction only if truly needed for the first playable
- one traversal tool hook if it materially improves prototype feel

The goal is expressive feel, not maximum move count.

## Combat Model

The first combat pass should stay intentionally small.

Recommended prototype scope:

- one basic attack chain or strike
- one knockback or stun response
- one enemy pressure type
- one damage state
- one recovery rule

Only add combo depth after the baseline feels fun in motion.

## Interaction Model

This game will rely heavily on social and world interaction.

The first interaction system should support:

- entering an interaction range
- showing a simple prompt
- firing an interaction event
- passing control to a local handler

This allows:

- food stall interactions
- switches
- coffee moments
- dialogue starts
- restoration terminals or boxes

## Restoration System Starter

Restoration is a signature mechanic, so it should have its own clear structure early.

## Prototype Restoration Requirements

- one object or station the player can activate
- one condition or mini-step before it succeeds
- one world-state change after success
- one audio/visual payoff

### Recommended Scene Shape

```text
RestorationNode
  Area2D
  CollisionShape2D
  VisualRoot
  AudioStreamPlayer2D
```

### Expected Responsibilities

- detect player interaction
- check whether prerequisites are met
- switch local powered state
- emit a signal upward to the level

The restoration node should not own the entire district state by itself.

## Level State Model

Each level should own its own local progression state.

For the first playable, local level state can track:

- has_intro_radio_played
- has_first_restoration_completed
- which local conversations are unlocked
- whether a combat gate is cleared

This state can live directly on the level script at first.

When the pattern stabilizes, it can move into a reusable structure.

## Dialogue Starter

Dialogue is important, but the first version should be simple.

Recommended first pass:

- one dialogue UI panel scene
- speaker name
- body text
- next/close input

Optional later additions:

- portraits
- typewriter timing
- branching
- radio styling variants
- choice menus

The first job of dialogue is to prove tone and pacing, not to become a narrative toolchain.

## Radio System Starter

Radio should feel global in tone but lightweight in implementation.

Recommended first pass:

- an `AudioDirector` or `RadioDirector` service
- ability to play one-off broadcasts
- subtitle or caption panel support
- simple trigger-based calls from levels

This is enough to prove:

- mission framing
- humor timing
- city continuity

## Audio Architecture Starter

The game will eventually need layered audio behavior, but the first version can stay small.

Recommended early split:

- music
- ambience
- sfx
- voice/radio
- UI

These should become named audio buses in Godot once the project begins real implementation.

## UI Architecture Starter

The UI should remain scene-based and composable.

Recommended initial UI scenes:

- `HudRoot`
- `InteractionPrompt`
- `DialoguePanel`
- `RadioCaptionPanel`
- `FadeTransition`

These can all begin as simple `Control` scenes.

## Autoload Recommendations

The project should start with as few autoloads as possible.

Reasonable early autoloads:

- `GameSession`
- `SceneRouter`
- `AudioDirector`

### `GameSession`

Can hold:

- current district identifier
- lightweight run/session flags
- eventually persistent progression hooks

### `SceneRouter`

Can handle:

- changing between menu and gameplay scenes
- fade transitions
- boot routing

### `AudioDirector`

Can handle:

- music state
- radio playback coordination
- bus-level transitions

If a system is only used in one scene, it should not become an autoload yet.

## Data Strategy

The project should stay mostly scene-driven early, with selective data extraction where it helps.

Good early data candidates:

- dialogue entries
- district metadata
- outfit config
- restoration config

Possible formats later:

- `Resource` files
- `JSON` for content-heavy text if needed

For the first playable, use whatever is fastest while keeping the code readable.

## Save Strategy

The project does not need a full save architecture yet.

Prototype goal:

- support restarting the playable slice easily
- optionally remember one or two simple flags

Later save requirements:

- district progress
- unlocked outfits
- side activity completion
- dialogue or trust state where needed

Until then, do not overbuild persistent save systems.

## Input Map Starter

The project should define explicit input actions instead of binding directly to keys in code.

Recommended initial actions:

- `move_left`
- `move_right`
- `jump`
- `attack`
- `interact`
- `dash` or `traverse` only if needed
- `pause`
- `advance_dialogue`

This will make controller support easier later.

## Naming Conventions

### Files

- scene files: lowercase snake case, for example `moon_market_intro.tscn`
- scripts: lowercase snake case, for example `player_controller.gd`
- resources: lowercase snake case

### Classes

- prefer explicit class names only when reuse becomes real
- avoid creating global class names for every script too early

### Nodes

- use descriptive names
- avoid vague names like `Node2D2` or `Thing`

## Coding Conventions

- use typed `GDScript`
- keep functions small and purpose-driven
- prefer signals for local scene communication
- prefer direct references over global lookups when ownership is obvious
- document non-obvious gameplay logic with short comments

## Signal Strategy

Signals should move upward cleanly.

Good use:

- restoration node tells level it was activated
- interaction area tells owner the player entered range
- dialogue panel tells caller it finished

Bad use:

- every object broadcasting globally
- using signals where a simple direct call would be clearer

## Technical Risks

### 1. Player Script Bloat

The player controller can easily become overloaded with combat, dialogue, mission, and interaction logic.

### 2. Too Many Global Managers

It is easy to hide messy architecture behind autoloads. That will make later debugging harder.

### 3. Level Scripts Becoming Dumping Grounds

If the level owns too much logic without any structure, scaling to multiple districts will get messy quickly.

### 4. Premature Tooling

A custom dialogue editor, mission graph, or content pipeline is not useful until the underlying gameplay loop is proven.

## Recommended Next Implementation Tasks

1. add input actions to `project.godot`
2. build a `Player` scene for basic run and jump
3. create a `Moon Market` prototype level scene
4. add one interactable `RestorationNode`
5. add one temporary `DialoguePanel`
6. add one temporary radio trigger
7. connect restoration completion to a visible world-state change

## Definition of a Good Technical Decision

A good technical decision for this phase:

- helps the first playable happen sooner
- keeps scene ownership clear
- makes iteration easier
- can grow into the vertical slice without embarrassment

## Success Test

This technical design starter is working if:

- a collaborator can tell where new gameplay code should live
- the first playable can be built without inventing a new architecture halfway through
- the game stays simple enough to move fast
- the structure supports tone, city feel, and restoration gameplay instead of fighting them
