-- Main UI script - toàn bộ logic menu, chạy khi player load
-- script.Parent = PlayerGui (sau khi clone từ StarterGui)
print("[MainMenu] Script started")

local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local playerGui = script.Parent

-- Đợi display sẵn sàng (Studio cần thời gian render)
RunService.RenderStepped:Wait()
task.wait(0.5)

-- Tạo ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MainMenu"
screenGui.ResetOnSpawn = false
screenGui.DisplayOrder = 9999
screenGui.IgnoreGuiInset = true
screenGui.Enabled = true

local overlay = Instance.new("Frame")
overlay.Name = "Overlay"
overlay.Size = UDim2.new(1, 0, 1, 0)
overlay.Position = UDim2.new(0, 0, 0, 0)
overlay.BackgroundColor3 = Color3.fromRGB(18, 18, 24)
overlay.BorderSizePixel = 0
overlay.Parent = screenGui

-- Parent ngay để hiển thị
screenGui.Parent = playerGui

local centerFrame = Instance.new("Frame")
centerFrame.Name = "CenterFrame"
centerFrame.Size = UDim2.new(0, 400, 0, 200)
centerFrame.Position = UDim2.new(0.5, -200, 0.5, -100)
centerFrame.BackgroundTransparency = 1
centerFrame.Parent = overlay

local title = Instance.new("TextLabel")
title.Name = "Title"
title.Size = UDim2.new(1, 0, 0, 50)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Welcome to the Game"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 32
title.Font = Enum.Font.GothamBold
title.Parent = centerFrame

local playButton = Instance.new("TextButton")
playButton.Name = "PlayButton"
playButton.Size = UDim2.new(0, 200, 0, 60)
playButton.Position = UDim2.new(0.5, -100, 0.5, -30)
playButton.BackgroundColor3 = Color3.fromRGB(0, 170, 127)
playButton.BorderSizePixel = 0
playButton.Text = "Play"
playButton.TextColor3 = Color3.fromRGB(255, 255, 255)
playButton.TextSize = 24
playButton.Font = Enum.Font.GothamBold
playButton.Parent = centerFrame

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = playButton

playButton.MouseEnter:Connect(function()
	TweenService:Create(playButton, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(0, 200, 150) }):Play()
end)
playButton.MouseLeave:Connect(function()
	TweenService:Create(playButton, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(0, 170, 127) }):Play()
end)

playButton.MouseButton1Click:Connect(function()
	playButton.Active = false
	screenGui.Enabled = false
	task.delay(0.5, function()
		screenGui:Destroy()
	end)
end)

print("[MainMenu] UI created successfully")
