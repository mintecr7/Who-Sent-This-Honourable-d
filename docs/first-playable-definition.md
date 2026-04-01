# First Playable Definition

## Purpose

This document defines the smallest honest playable version of `Who Sent This Honourable?`

The goal is not to create a mini-version of the full game. The goal is to prove that the core feel, tone, and structure work in-engine before production scales up.

## One-Sentence Definition

The first playable is a compact `Moon Market` prototype where the player moves through a living neighborhood, deals with one small conflict, restores one piece of local power infrastructure, and experiences one social interaction that proves the game's tone.

## Why This Exists

The first playable must answer the most important project questions early:

- is moving through this world fun
- does the city feel alive in-engine
- does restoring power feel meaningful
- can humor and sincerity survive implementation
- does this feel like `Who Sent This Honourable?` and not just a generic 2D prototype

If the answer to those questions is unclear, the project should not scale yet.

## Prototype Philosophy

This playable should be:

- small
- honest
- fast to iterate
- rich in identity
- light on content count

It should not be:

- content-heavy
- visually final
- system-complete
- polished in every direction at once

The first playable exists to prove the spine of the game, not its full wardrobe.

## Target Slice

### District

- `Moon Market`

### Scope

- one short start-to-finish neighborhood route
- one restoration objective
- one social pause
- one small combat or pressure sequence
- one radio beat
- one before/after world-state change

### Estimated Feel

The slice should feel like:

- a strong first 5 to 10 minutes of the real game
- enough space to test movement rhythm
- enough city detail to feel specific
- enough narrative texture to prove the tone

## Player Fantasy to Prove

By the end of the first playable, the player should feel:

- "moving through this city feels good"
- "this neighborhood has its own life"
- "restoring power matters here"
- "these people are funny and real"
- "this game has a very specific voice"

## Narrative Frame

The slice should happen after the blackout begins but early enough that the player is still learning how the neighborhood is responding.

The player is not saving the entire city in this slice.
They are helping with one immediate local problem that represents the bigger crisis.

## Recommended Story Beat Order

1. arrive in a dimmed or disrupted `Moon Market` lane
2. hear local frustration, confusion, or fake-polite outrage
3. receive a direction or clue through dialogue or radio
4. move through a short traversal route
5. face one gameplay complication
6. interact with a restoration point
7. see the local area visibly recover
8. land in a short social beat that confirms tone and stakes

This order proves the identity loop clearly.

## Required Content

## 1. Playable Character

The first playable needs:

- one controllable player character
- placeholder visuals are acceptable
- responsive movement with clear feedback
- at least one action beyond walking and jumping

### Must Prove

- run and jump feel good
- traversal feels authored, not accidental
- character control supports confidence and rhythm

## 2. Prototype Level

The level should be a compact side-view `Moon Market` slice with:

- ground path
- one vertical route or shortcut
- readable landmarking
- one meaningful destination

### Must Prove

- urban side-view traversal can feel good
- the environment communicates place, not just collision
- the player understands where to go without heavy UI hand-holding

## 3. One Pressure Sequence

The slice needs one moment of gameplay resistance.

This can be:

- a simple enemy encounter
- a hazard and timing sequence
- a blocked route requiring quick action

### Rule

The pressure moment must support movement and pacing, not trap the game in a static test chamber.

### Must Prove

- the player can act under pressure
- conflict fits the tone of the game
- the game can transition between movement and danger smoothly

## 4. One Restoration Objective

This is the centerpiece of the first playable.

The player should:

- find the restoration point
- complete one clear interaction or mini-step
- trigger a visible and audible state change

### Restoration Payoff Should Affect

- local lighting
- ambient sound
- one nearby NPC or crowd response
- one simple piece of world function

### Must Prove

- restoration is satisfying
- the change feels social, not just mechanical
- the game can tie objective completion to atmosphere

## 5. One Social Interaction

The first playable needs one interaction that slows the pace and proves the game's soul.

Best candidates:

- Auntie Sewa stall interaction
- coffee corner interaction
- short neighborhood conversation after restoration

### Must Prove

- the game can be funny without breaking immersion
- dialogue pacing works
- local people feel like people, not quest terminals

## 6. One Radio Beat

The first playable should include one `Mama Moon` radio moment.

This can do one or more of the following:

- set up the objective
- comment on what just happened
- add humor
- remind the player the city is connected

### Must Prove

- radio can carry tone
- the city can speak to the player during play
- a lightweight audio narrative layer is viable

## 7. One Before/After State Change

The slice must clearly show the difference between:

- disrupted `Moon Market`
- partially restored `Moon Market`

This is how the player understands what the game is fundamentally about.

## Explicit In-Scope Features

The first playable should include only the systems needed to prove the loop.

### In Scope

- player movement
- basic input map
- one prototype level
- one small conflict
- one restoration interaction
- one dialogue interaction
- one radio call or broadcast
- one visible world-state change
- simple UI prompts
- placeholder sound and music hooks

## Explicit Out-of-Scope Features

These are intentionally not required yet:

- multiple districts
- full save system
- full combat combo tree
- outfit system depth
- inventory system
- branching quest structure
- advanced AI
- final art
- final animation
- final music
- complex menu flow
- full cutscene pipeline

If any of these become necessary to make the first playable work, the scope has drifted.

## Suggested Level Flow

### Beat 1: Market Disruption

The player begins in a section of `Moon Market` that already shows the blackout's impact.

Examples:

- dim stalls
- fans not running
- a sound system down
- vendor irritation
- spoiled storage worry

### Beat 2: Local Direction

The player gets a clear immediate objective through:

- a radio line
- an NPC line
- a visible environmental clue

### Beat 3: Traversal Route

The player moves through a short authored path featuring:

- a jump sequence
- one vertical step
- one route choice if possible

### Beat 4: Pressure

The player resolves one obstacle:

- minor hostile
- hazard
- blocked route

### Beat 5: Restoration

The player reaches and activates a restoration point.

This should be visually staged and easy to read.

### Beat 6: Recovery

Lights, sound, and local behavior react.

The change should feel rewarding immediately.

### Beat 7: Social Payoff

The player lands in a short conversation, radio follow-up, or coffee moment that gives:

- humor
- community texture
- a reason to care about what just changed

## Level Success Criteria

The level succeeds if a tester can answer:

- what their objective was
- why the objective mattered
- what changed after success
- who this neighborhood belongs to

If they can complete the slice but cannot answer those questions, the design is too thin.

## System Success Criteria

### Movement

Success means:

- testers like moving even when nothing is attacking them
- jumps feel reliable
- the route invites motion instead of fighting it

### Conflict

Success means:

- the obstacle adds pace without dominating the prototype
- the player understands what to do
- failure feels fair

### Restoration

Success means:

- players notice the payoff immediately
- the activation feels like reclaiming something
- the world visibly reacts

### Social Tone

Success means:

- players remember at least one line or social moment
- the writing feels specific
- the characters feel alive

## Temporary Asset Strategy

The first playable should use placeholders aggressively where needed.

Acceptable placeholders:

- blockout geometry
- flat-color characters
- temporary UI
- temporary sound cues
- text-only dialogue panel

Not acceptable:

- placeholders that hide whether the interaction works
- placeholder pacing that ignores the intended tone
- fake polish that avoids testing real systems

## Testing Questions

After someone plays the first playable, the most useful questions are:

1. Did movement feel good before anything else happened?
2. Did the neighborhood feel alive or just functional?
3. Did the restoration moment feel satisfying?
4. Did any dialogue, radio, or social moment stick with you?
5. Did this feel like a game with a specific personality?

## Prototype Fail States

The first playable should be considered unsuccessful if:

- movement is only tolerable, not exciting
- the environment feels like a platforming box with props
- restoration feels cosmetic or arbitrary
- dialogue feels bolted on
- the player leaves without sensing the city's personality

That does not mean the project failed. It means the prototype did its job by exposing what must improve.

## Build Order Recommendation

The most efficient implementation order is:

1. input actions
2. player controller
3. blockout level
4. interaction prompts
5. restoration node
6. one dialogue panel
7. one radio trigger
8. before/after world-state change
9. audio and visual polish pass on the slice

## Exit Criteria

The first playable is complete when:

- a player can start, move, interact, restore power, and finish the slice
- the slice communicates the game's tone without outside explanation
- the team has enough evidence to refine the vertical slice plan

## What This Unlocks Next

If the first playable succeeds, it unlocks:

- player controller refinement
- district blockout standards
- restoration system expansion
- dialogue and radio iteration
- stronger `Moon Market` vertical slice planning
- more confident art and audio prototyping

## Success Test

This document is working if it keeps the team from asking for a vague "prototype" and instead gives a very clear answer to:

- what we are building next
- what it must prove
- what it must not include
