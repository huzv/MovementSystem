# MovementSystem

A modular, camera-relative character movement system for Roblox built with [Rojo](https://github.com/rojo-rbx/rojo).

## Overview

This system replaces Roblox's default movement and animation handling with a fully custom, controller-based architecture. It supports two camera modes, directional movement animations, smooth crossfades, jump buffering, and camera collision — all driven by a clean separation of concerns across four controllers.

## Features

- **Camera-relative movement**: WASD input is transformed relative to the camera's yaw so the character always moves in the direction the player intends.
- **Two camera modes:**
  - **Default**: Third-person orbit camera; hold right-click to rotate. Character faces the direction of movement.
  - **Shift Lock**: Mouse-locked over-the-shoulder view with a crosshair. Character always faces the camera, enabling full strafing.
- **Directional movement states**: In Shift Lock mode, the system tracks the angle between the character's facing direction and their movement direction, producing 8 distinct movement states: `Walk`, `WalkBack`, `WalkLeft`, `WalkRight`, `Run`, `RunBack`, `RunLeft`, `RunRight`.
- **Jump buffering**: Jump inputs are buffered for ~0.2 s so inputs just before landing are never dropped.
- **Landing state**: A dedicated `Land` state is triggered on touchdown for a brief window, allowing a landing animation to play.
- **Smooth animation crossfades**: Transitions between animation states use configurable fade times. Direction-specific transition animations (e.g. `WalkEnd`, `RunToWalk`) are played automatically when defined.
- **Camera collision**: The camera raycasts behind the character and pulls in to avoid clipping through geometry.
- **Smooth zoom**: Scroll-wheel zoom interpolates smoothly to the target distance.
- **Config-driven**: Walk speed, run speed, jump power, camera sensitivity, zoom limits, turn speed, and all animation IDs are centralised in `ReplicatedStorage.Shared.Config`.

Each controller follows an OOP pattern (`Controller.new(...)` -> `:Init()` -> `:Update(dt)`) and communicates via direct method calls rather than events, keeping the data flow easy to trace.
