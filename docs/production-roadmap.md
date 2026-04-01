# Production Roadmap

## Purpose

This document turns the current pre-production work for `Who Sent This Honourable?` into a practical build roadmap.

The goal is not to predict every future task perfectly. The goal is to define the next major phases, the proof points for each phase, and the order that gives this project the best chance of becoming a strong playable game without losing its identity.

## Current Position

The project currently has:

- core premise and tone
- story bible
- character roster
- world and city guide
- art direction
- gameplay pillars
- audio direction

That means the project has a strong identity foundation.

What it does not have yet:

- engine setup
- playable prototype
- technical architecture
- production asset pipeline
- mission implementation
- final cast scripts
- playable combat and traversal feel

This roadmap is about moving from `clear vision` to `playable proof`.

## Roadmap Philosophy

This project should be built in the following order:

1. prove the game is fun to move through
2. prove the city can feel alive in-engine
3. prove power restoration is satisfying
4. prove tone can survive implementation
5. then scale content carefully

The biggest risk is not lack of ideas. The biggest risk is building too wide before the core feel works.

## Production Principles

- Protect tone as fiercely as mechanics.
- Build one strong district before pretending six are ready.
- Prototype systems before producing lots of art.
- Keep the first playable narrow and honest.
- Prefer reusable systems over one-off cleverness.
- Let each milestone answer one important question.

## Phase 0: Foundation Lock

**Status:** In progress / nearly complete

### Goal

Finish the documents and core decisions needed before technical production starts.

### Deliverables

- finalized pre-production docs
- working protagonist and key cast canon
- working city and district map
- gameplay scope guardrails
- visual and audio direction guardrails
- production branch strategy

### Exit Criteria

- the team can explain the game in one paragraph
- the team can explain the core loop in one paragraph
- the first playable target is clear
- the project knows what it is not making

### Immediate Remaining Work

- production roadmap
- technical design starter
- first playable definition
- dev environment setup

## Phase 1: Development Environment Setup

### Goal

Create a clean, stable development base for a `Godot 4` 2D project.

### Deliverables

- initial `game/` Godot project
- repo structure for code, scenes, art, audio, and docs
- `.gitignore` and editor conventions
- basic README updates for setup and running
- placeholder scene structure
- agreed naming conventions

### Questions This Phase Answers

- Can the repo cleanly support Godot development?
- Can the project open and run without confusion?
- Do we have a sane folder layout before assets start multiplying?

### Exit Criteria

- a new collaborator can clone the repo and open the project
- the game boots into a placeholder scene successfully
- folder structure supports growth without immediate rework

## Phase 2: First Playable Prototype

### Goal

Prove the core game feel with the smallest honest slice possible.

### Scope

One compact prototype district, most likely a simplified `Moon Market`.

### Must-Prove Systems

- player movement
- basic traversal interaction
- one light combat loop
- one restoration objective
- one visible power-return state change
- one dialogue interaction flow
- one radio broadcast moment
- one food or coffee interaction

### Deliverables

- placeholder player controller
- placeholder enemy or pressure source
- prototype environment blockout
- restoration checkpoint logic
- temporary UI
- temporary sound and music hooks

### Exit Criteria

- moving feels good enough to build around
- restoring power feels emotionally and mechanically satisfying
- the district feels alive even with placeholder assets
- the game tone survives contact with implementation

### Red Flags

- movement only feels acceptable in empty test rooms
- combat slows the game down too much
- restoration feels like pulling a switch with no payoff
- dialogue and radio feel disconnected from play

## Phase 3: Vertical Slice

### Goal

Build one polished chunk of the real game that proves the full identity works together.

### Recommended Slice

A refined `Moon Market` sequence with:

- opening normal-life setup
- blackout event
- local traversal
- first meaningful conflict
- a restoration objective
- an Auntie Sewa interaction
- a Mama Moon radio beat
- district recovery payoff

### Deliverables

- final-quality or near-final-quality visual target for one district
- polished movement and combat baseline
- stronger UI direction
- district audio identity
- early cinematic or dialogue presentation style
- first real save/checkpoint flow

### Exit Criteria

- a player can understand the fantasy of the full game from this slice
- the team can estimate real content cost more accurately
- the project has a visual, audio, and gameplay benchmark for future work

## Phase 4: Full Pre-Production to Production Handoff

### Goal

Take what was learned in the vertical slice and convert it into a practical production plan.

### Deliverables

- revised asset budgets
- district production order
- enemy and boss list
- quest and mission templates
- UI/UX requirements
- technical backlog
- pipeline check for art, animation, audio, and dialogue

### Exit Criteria

- the team knows how expensive each content type is
- the team knows what can be cut safely
- the project has a real production backlog instead of creative hopes

## Phase 5: Core Production

### Goal

Build the actual game district by district using the vertical slice standards.

### Production Order Recommendation

1. Moon Market
2. Generator Row
3. Choir Mile
4. Tideglass
5. Civic Crown
6. Monument Square

This order follows both story logic and production logic.

### Ongoing Deliverables

- district blockouts
- enemy encounters
- side quest implementation
- outfit progression
- radio content
- food and social interactions
- restoration set pieces
- boss encounter development

## Phase 6: Content Integration and Polish

### Goal

Make the full game feel consistent, intentional, and emotionally shaped.

### Focus Areas

- pacing
- difficulty curve
- narrative continuity
- mix and audio transitions
- visual cohesion
- bug fixing
- optimization
- onboarding and accessibility

### Exit Criteria

- district-to-district progression feels intentional
- the story and mechanics reinforce each other consistently
- the player fantasy remains strong across the full runtime

## Suggested Near-Term Backlog

These are the strongest next deliverables after the roadmap:

1. dev environment setup
2. technical design starter
3. first playable definition
4. repo structure and Godot bootstrap
5. player controller prototype
6. Moon Market prototype blockout

## First Playable Definition

The first playable should be intentionally small.

### It should include

- one neighborhood slice
- one player character with placeholder visuals
- one traversal path with verticality
- one simple encounter
- one restoration interaction
- one radio beat
- one social interaction that proves tone

### It should not include

- full inventory systems
- large quest trees
- multiple districts
- final art
- lots of enemy types
- deep upgrade trees

If the first playable tries to prove everything, it will prove nothing.

## Team Roles by Function

Even if one person handles multiple roles, production should think in terms of functions:

- creative direction
- design
- Godot engineering
- 2D art and character design
- animation
- writing and dialogue
- audio and music
- production planning

This helps keep the workload visible instead of emotionally invisible.

## Major Risks

### 1. Tone Dilution

The project could become mechanically functional but lose the specific humor, social rhythm, and cultural soul that make it exciting.

### 2. Overscoping

Too many districts, too many systems, or too many content branches too early will slow the whole project down.

### 3. Art Pipeline Weight

A fashion-heavy, silhouette-heavy, personality-heavy game can become expensive fast if the pipeline is not disciplined.

### 4. Weak Core Feel

If movement, traversal, and restoration do not feel good early, the rest of the game will struggle no matter how strong the writing is.

### 5. Content Without Systems Support

Writing a lot of story before dialogue presentation, mission flow, and radio systems are proven can create rework later.

## Risk Response

- keep first playable tiny
- build placeholder-heavy early
- define district templates before mass content production
- prototype audio and dialogue presence early
- test movement and restoration repeatedly
- cut elegantly rather than accumulate weak systems

## Success Metrics by Stage

### Foundation

- the game's identity is easy to communicate
- the team agrees on scope guardrails

### First Playable

- testers say movement feels good
- testers understand the premise without long explanation
- the city already feels alive in small ways

### Vertical Slice

- the slice feels like a real game, not a document prototype
- visual, audio, and narrative identity reinforce each other
- the team can forecast production more realistically

### Production

- new content reuses proven systems cleanly
- the game's soul stays intact while scope grows

## Definition of Good Progress

Good progress on this project is:

- fewer systems, better executed
- more specificity, less generic content
- stronger core feel, not bigger content lists
- visible proof inside the engine

## Success Test

The roadmap is working if every next task can answer:

- what phase is this for
- what question does this task prove
- what does this unlock next
- what are we deliberately not doing yet
