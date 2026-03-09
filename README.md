# MyRobloxProject

RPG PVE COOP dungeon-crawler (Rojo-based Luau game).

## Requirements

- [Rojo](https://rojo.space/) 7.x+
- Roblox Studio with [Rojo plugin](https://www.roblox.com/library/13916111004/Rojo-7)

## Setup

1. Clone the repo.
2. Install Rojo: `npm install -g rojo` (or via [official installer](https://github.com/rojo-rbx/rojo/releases)).
3. Sync: `rojo serve` (or `rojo build`).
4. In Roblox Studio, connect via the Rojo plugin.

## Project Structure

```
src/
├── ReplicatedStorage/     # Shared modules, events
│   ├── Shared/            # Config, Types, Janitor
│   └── Events/            # RemoteEvents (created at runtime)
├── ServerScriptService/   # Server-only logic
│   ├── Main/              # Bootstrap
│   └── Systems/           # DataManager, RoundManager, etc.
├── StarterPlayerScripts/  # Client scripts
│   └── Systems/           # Client systems
└── StarterGui/            # UI
    ├── Main.client.lua    # Main menu
    └── Components/        # Reusable UI components
```

See `docs/ARCHITECTURE.md` for data flow and conventions.

## Conventions

- `--!strict` on all Luau files
- Task library only (no `wait`, `spawn`, `delay`)
- Server authority; client is view-only
- Janitor for connection/instance cleanup
- Config/Types from `ReplicatedStorage.Shared`

## Key Files

| File | Purpose |
|------|---------|
| `default.project.json` | Rojo hierarchy (source of truth) |
| `.cursorrules` | Project rules for AI assistance |
| `CLAUDE.md` | Context for Claude.ai |
| `PROJECT_LOG.md` | Feature log and progress |
