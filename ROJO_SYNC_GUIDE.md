# Hướng dẫn Rojo - Sync Overwrite vào Roblox Studio

## Cấu trúc project hiện tại

```
MyRobloxProject/
├── default.project.json
└── src/
    ├── StarterGui/
    │   └── Main.client.lua      ← Toàn bộ logic UI (menu + nút Play)
    ├── ReplicatedStorage/       (trống)
    ├── ServerScriptService/
    │   └── Main/
    │       └── init.server.lua
    └── StarterPlayerScripts/    (trống)
```

## Cách sync Overwrite (ghi đè hoàn toàn)

### Phương án 1: Build file .rbxl - Full control (khuyên dùng)

1. Chạy lệnh build:
   ```powershell
   cd c:\Users\ADMIN\OneDrive\BotTest\MyRobloxProject
   rojo build -o MyGame.rbxl
   ```

2. Mở file `MyGame.rbxl` trong Roblox Studio (double-click hoặc File → Open)

3. Place sẽ chứa **chính xác** những gì trong project - không có gì thừa từ place cũ.

4. Làm việc: sửa file → `rojo build -o MyGame.rbxl` → mở lại file (hoặc dùng `rojo serve` + Connect để live sync).

### Phương án 2: Place mới + Rojo Connect

1. Tạo place mới trong Studio: File → New hoặc Baseplate

2. Chạy Rojo:
   ```powershell
   rojo serve
   ```

3. Trong Studio: Plugins → Rojo → **Connect**

4. Project sẽ sync vào place trống → bạn có full control từ code.

### Phương án 3: Xóa content cũ rồi Connect (nếu place đã có sẵn)

1. Trong Explorer, xóa thủ công nội dung bên trong:
   - StarterGui (xóa hết child)
   - StarterPlayerScripts (xóa hết child)
   - ServerScriptService (xóa hết child)
   - ReplicatedStorage (xóa hết child)

2. Rojo → **Disconnect** (nếu đang connect)

3. Rojo → **Connect** lại

4. Rojo sẽ sync project vào.

## Lưu ý

- Rojo **merge** khi Connect, không tự xóa content ngoài project. Muốn sạch thì dùng Build (.rbxl) hoặc place mới.
- Mỗi lần sửa file, Rojo tự sync nếu đang Connect.
- Đảm bảo `rojo serve` chạy trước khi Connect.
