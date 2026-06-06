Levels and Boards
=================

Each screen or room or stage is a "board" defined as a full set of tiles loaded and rendered at once. Each interconnected series of boards is a "level" which can be the "overworld" or an entire "dungeon" or a "town" or a "house".

Unloading and loading of boards is trigged by scene transitions consisting of at least two types.

1. Moving off the edge of the current board triggers a transition by leaving the playable area. Boards with no transitions planned for one or all directions should be blocked off to avoid undefined behavior. May define a default scene to transition to just in case, or reload current scene.
2. Moving onto a tile with a scene trigger object triggers the associated transition.

Board data is considered read-only, so any permanent changes should be achieved by checking for persistence flags in the current play session, or by subclassing a mutable object from the read-only data.

By default, a board should load all objects and non-player characters when entered the first time and every subsequent time.
