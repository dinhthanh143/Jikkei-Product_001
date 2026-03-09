# Project Context for Claude

## Game Overview

RPG PVE COOP dungeon-crawler (archetype, updating).

## Folder Structure

- `src/ReplicatedStorage/Shared/` — Config, Types, Janitor
- `src/ReplicatedStorage/Events/` — RemoteEvents (runtime-created)
- `src/ServerScriptService/Main/` — Bootstrap; `Systems/` — server systems
- `src/StarterPlayerScripts/Systems/` — Client systems
- `src/StarterGui/` — Main menu + `Components/` for reusable UI
- `docs/ARCHITECTURE.md` — Hierarchy, data flow, conventions

## Current Systems

- **Welcome/Loading UI** — In progress (`Main.client.lua`)
- **Server bootstrap** — In progress (`init.server.lua`)

## Pending Systems

- Map
- NPCs

## Naming Conventions

- **PascalCase** — modules
- **camelCase** — variables
- **SCREAMING_SNAKE** — constants

## Key Rules

- `--!strict` always
- Task library only (no `wait`, `spawn`, `delay`)
- Server is authority; client is visual renderer
- Janitor for cleanup (connections, instances)
- Validate all RemoteEvents/RemoteFunctions (type, range, semantics, rate limit)

## What NOT to Do

- No `wait()` — use `task.wait`
- No global state for player data without cleanup
- No client-side authority for currency, stats, inventory, progression
