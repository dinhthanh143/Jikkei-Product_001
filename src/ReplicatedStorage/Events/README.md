# Events

All `RemoteEvent` and `RemoteFunction` instances for this game are created at runtime by the server bootstrap.

This folder does not contain pre-authored Remotes. The server `init` (or a dedicated Network bootstrap) creates them under `ReplicatedStorage.Events` when the game starts.

Client and server scripts reference these Remotes by path (e.g. `ReplicatedStorage.Events.SomeEvent`) after bootstrap has run.
