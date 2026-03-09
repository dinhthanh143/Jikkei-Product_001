# Architecture

## Hierarchy (Rojo)

`default.project.json` is the source of truth. Do not rely on manually created Studio instances.

| Service | Source Path | Purpose |
|---------|-------------|---------|
| ReplicatedStorage | `src/ReplicatedStorage` | Shared modules, Config, Types, Janitor, Events |
| ServerScriptService | `src/ServerScriptService` | Server bootstrap, systems |
| StarterPlayerScripts | `src/StarterPlayerScripts` | Client systems |
| StarterGui | `src/StarterGui` | UI scripts and components |

## Data Flow

- **Server** → authoritative for currency, stats, inventory, round state
- **Client** → visual renderer; sends requests via RemoteEvents; never trusts its own state for critical data
- **Shared** → Config, Types, Janitor live in `ReplicatedStorage.Shared`; safe for both environments

## Module Layout

- `Shared/Config.lua` — constants (round time, min players, currency name)
- `Shared/Types.lua` — type aliases (PlayerData, GameState, etc.)
- `Shared/Janitor.lua` — cleanup for connections and instances
- `Events/` — RemoteEvents/RemoteFunctions created at runtime by server bootstrap

## Systems Placement

- **Server systems** → `ServerScriptService/Systems/` (DataManager, RoundManager, etc.)
- **Client systems** → `StarterPlayerScripts/Systems/`
- **UI components** → `StarterGui/Components/`

## Security

- Validate all RemoteEvent/RemoteFunction args (type, range, semantics)
- Rate-limit per player
- Never trust client-sent values for currency, inventory, or progression
