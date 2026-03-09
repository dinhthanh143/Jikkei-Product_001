## Project Feature Log

### 1. Basic Rojo Structure
- **Performance Impact**: Low  
- **Security Verified**: N/A  
- **Status**: ✅ Done  
- **Notes**: `default.project.json` mapped for `StarterGui`, `ServerScriptService`, `ReplicatedStorage`, `StarterPlayer`.

### 2. Core PMA Rules (.cursorrules)
- **Performance Impact**: Low  
- **Security Verified**: N/A  
- **Status**: ✅ Done  
- **Notes**: Global project rules for strict Luau, performance, memory, and security created.

### 3. Welcome/Loading Scene (UI)
- **Performance Impact**: Medium (UI Memory / Tweens)  
- **Security Verified**: N/A  
- **Status**: 🟡 In Progress  
- **Notes**: `Main.client.lua` creates basic main menu UI; cần pass tối ưu + strict typing theo `.cursorrules`.

### 4. Server Boot Strap (Main)
- **Performance Impact**: Low  
- **Security Verified**: N/A  
- **Status**: 🟡 In Progress  
- **Notes**: `init.server.lua` mới log startup; chưa gắn hệ thống game/server logic thực tế.

### 5. Map Design
- **Performance Impact**: High (RAM / DrawCalls)  
- **Security Verified**: N/A  
- **Status**: ⏳ Pending  
- **Notes**: Chưa có world/level assets hoặc chiến lược StreamingEnabled/LOD.

### 6. NPC Design
- **Performance Impact**: Medium (CPU / Physics)  
- **Security Verified**: N/A  
- **Status**: ⏳ Pending  
- **Notes**: Chưa có NPC logic, AI, hoặc pathfinding systems.

### 7. Shared Module Scaffold
- **Performance Impact**: Low  
- **Security Verified**: N/A  
- **Status**: ✅ Done  
- **Notes**: Created Config.lua, Types.lua, Janitor.lua under ReplicatedStorage/Shared. Events folder scaffolded.  
- **Date**: 2025-03-08

### 8. Folder Structure Scaffold
- **Performance Impact**: Low  
- **Security Verified**: N/A  
- **Status**: ✅ Done  
- **Notes**: Created Systems/ folders for server and client. Created Components/ folder for StarterGui.  
- **Date**: 2025-03-08

### 9. CLAUDE.md AI Context File
- **Performance Impact**: Low  
- **Security Verified**: N/A  
- **Status**: ✅ Done  
- **Notes**: CLAUDE.md created at root so Claude.ai has full project context without re-explaining every session.  
- **Date**: 2025-03-08

### 10. Professional Structure Audit
- **Performance Impact**: Low  
- **Security Verified**: N/A  
- **Status**: ✅ Done  
- **Notes**: Added .gitignore, README.md, .editorconfig, .luarc.json. Created docs/ARCHITECTURE.md. Fixed .cursorrules (StarterPlayerScripts path, context files). Updated CLAUDE.md with folder structure.  
- **Date**: 2025-03-08

---

Format cho entry mới (giữ style này):
- **Feature**: Tên tính năng
- **Performance Impact**: Low / Medium / High (có thể ghi thêm chi tiết)
- **Security Verified**: Y / N / N/A
- **Status**: ✅ Done / 🟡 In Progress / ⏳ Pending
- **Notes**: Ghi ngắn gọn về tiến độ, rủi ro performance, hạng mục cần làm tiếp.
