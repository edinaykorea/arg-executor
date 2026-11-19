local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local old = playerGui:FindFirstChild("ArgExecutor")
if old then old:Destroy() end

local C = {
    bg      = Color3.fromRGB(16, 16, 20),
    panel   = Color3.fromRGB(24, 24, 30),
    input   = Color3.fromRGB(11, 11, 15),
    accent  = Color3.fromRGB(0, 200, 255),
    green   = Color3.fromRGB(70, 200, 110),
    red     = Color3.fromRGB(210, 65, 65),
    text    = Color3.fromRGB(215, 215, 225),
    dim     = Color3.fromRGB(110, 110, 130),
    stroke  = Color3.fromRGB(45, 45, 60),
}

local gui = Instance.new("ScreenGui")
gui.Name = "ArgExecutor"
gui.ResetOnSpawn = false
gui.DisplayOrder = 999
gui.Parent = playerGui

local main = Instance.new("Frame")
main.Size = UDim2.new(0, 472, 0, 398)
main.Position = UDim2.new(0.5, -236, 0.5, -199)
main.BackgroundColor3 = C.bg
main.BorderSizePixel = 0
main.Active = true
main.Draggable = true
main.ClipsDescendants = true
main.Parent = gui

local mc = Instance.new("UICorner")
mc.CornerRadius = UDim.new(0, 6)
mc.Parent = main

local ms = Instance.new("UIStroke")
ms.Color = C.stroke
ms.Thickness = 1
ms.Parent = main

main.Size = UDim2.new(0, 0, 0, 0)
main.BackgroundTransparency = 1
TweenService:Create(main, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
    Size = UDim2.new(0, 472, 0, 398),
    BackgroundTransparency = 0,
}):Play()

local bar = Instance.new("Frame")
bar.Size = UDim2.new(1, 0, 0, 38)
bar.BackgroundColor3 = C.panel
bar.BorderSizePixel = 0
bar.Parent = main

local bc = Instance.new("UICorner")
bc.CornerRadius = UDim.new(0, 6)
bc.Parent = bar

local bfix = Instance.new("Frame")
bfix.Size = UDim2.new(1, 0, 0, 18)
bfix.Position = UDim2.new(0, 0, 1, -18)
bfix.BackgroundColor3 = C.panel
bfix.BorderSizePixel = 0
bfix.Parent = bar

local accent = Instance.new("Frame")
accent.Size = UDim2.new(0, 0, 0, 2)
accent.Position = UDim2.new(0, 0, 1, -1)
accent.BackgroundColor3 = C.accent
accent.BorderSizePixel = 0
accent.Parent = bar
TweenService:Create(accent, TweenInfo.new(0.6, Enum.EasingStyle.Quad), { Size = UDim2.new(1, 0, 0, 2) }):Play()

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -80, 1, 0)
title.Position = UDim2.new(0, 14, 0, 0)
title.BackgroundTransparency = 1
title.RichText = true
title.Text = '<font color="#00C8FF">arg</font> <font color="#8A8A9A">executor</font>'
title.Font = Enum.Font.GothamBold
title.TextSize = 15
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = bar

local close = Instance.new("TextButton")
close.Size = UDim2.new(0, 26, 0, 26)
close.Position = UDim2.new(1, -34, 0, 6)
close.BackgroundColor3 = C.red
close.Text = "×"
close.TextColor3 = C.text
close.Font = Enum.Font.GothamBold
close.TextSize = 16
close.BorderSizePixel = 0
close.AutoButtonColor = false
close.Parent = bar

local cc = Instance.new("UICorner")
cc.CornerRadius = UDim.new(0, 4)
cc.Parent = close

local dot = Instance.new("Frame")
dot.Size = UDim2.new(0, 7, 0, 7)
dot.Position = UDim2.new(0, 15, 0, 50)
dot.BackgroundColor3 = C.red
dot.BorderSizePixel = 0
dot.Parent = main

local dc = Instance.new("UICorner")
dc.CornerRadius = UDim.new(1, 0)
dc.Parent = dot

local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, -40, 0, 14)
status.Position = UDim2.new(0, 28, 0, 47)
status.BackgroundTransparency = 1
status.Text = "offline"
status.TextColor3 = C.dim
status.Font = Enum.Font.Gotham
status.TextSize = 11
status.TextXAlignment = Enum.TextXAlignment.Left
status.Parent = main

TweenService:Create(dot, TweenInfo.new(1.1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1), {
    BackgroundTransparency = 0.55,
}):Play()

local boxFrame = Instance.new("Frame")
boxFrame.Size = UDim2.new(1, -28, 0, 230)
boxFrame.Position = UDim2.new(0, 14, 0, 68)
boxFrame.BackgroundColor3 = C.input
boxFrame.BorderSizePixel = 0
boxFrame.Parent = main

local bfc = Instance.new("UICorner")
bfc.CornerRadius = UDim.new(0, 5)
bfc.Parent = boxFrame

local bfs = Instance.new("UIStroke")
bfs.Color = C.stroke
bfs.Thickness = 1
bfs.Parent = boxFrame

local code = Instance.new("TextBox")
code.Size = UDim2.new(1, -16, 1, -16)
code.Position = UDim2.new(0, 8, 0, 8)
code.BackgroundTransparency = 1
code.Text = ""
code.PlaceholderText = "-- code"
code.PlaceholderColor3 = C.dim
code.TextColor3 = Color3.fromRGB(170, 240, 170)
code.Font = Enum.Font.Code
code.TextSize = 12
code.TextXAlignment = Enum.TextXAlignment.Left
code.TextYAlignment = Enum.TextYAlignment.Top
code.ClearTextOnFocus = false
code.MultiLine = true
code.TextWrapped = true
code.Parent = boxFrame

local modeRow = Instance.new("Frame")
modeRow.Size = UDim2.new(1, -28, 0, 24)
modeRow.Position = UDim2.new(0, 14, 0, 306)
modeRow.BackgroundTransparency = 1
modeRow.Parent = main

local execMode = Instance.new("TextButton")
execMode.Size = UDim2.new(0, 74, 0, 22)
execMode.Position = UDim2.new(0, 0, 0, 0)
execMode.BackgroundColor3 = C.panel
execMode.Text = "loadstring"
execMode.TextColor3 = C.accent
execMode.Font = Enum.Font.Gotham
execMode.TextSize = 11
execMode.BorderSizePixel = 0
execMode.AutoButtonColor = false
execMode.Parent = modeRow

local emc = Instance.new("UICorner")
emc.CornerRadius = UDim.new(0, 4)
emc.Parent = execMode

local reqMode = Instance.new("TextButton")
reqMode.Size = UDim2.new(0, 74, 0, 22)
reqMode.Position = UDim2.new(0, 78, 0, 0)
reqMode.BackgroundColor3 = C.panel
reqMode.Text = "require"
reqMode.TextColor3 = C.dim
reqMode.Font = Enum.Font.Gotham
reqMode.TextSize = 11
reqMode.BorderSizePixel = 0
reqMode.AutoButtonColor = false
reqMode.Parent = modeRow

local rmc = Instance.new("UICorner")
rmc.CornerRadius = UDim.new(0, 4)
rmc.Parent = reqMode

local hint = Instance.new("TextLabel")
hint.Size = UDim2.new(0, 300, 0, 22)
hint.Position = UDim2.new(1, -300, 0, 0)
hint.BackgroundTransparency = 1
hint.Text = "mode: loadstring"
hint.TextColor3 = C.dim
hint.Font = Enum.Font.Code
hint.TextSize = 10
hint.TextXAlignment = Enum.TextXAlignment.Right
hint.Parent = modeRow

local currentMode = "exec"

local function setMode(m)
    currentMode = m
    if m == "exec" then
        execMode.TextColor3 = C.accent
        reqMode.TextColor3 = C.dim
        hint.Text = "mode: loadstring"
        code.PlaceholderText = "-- loadstring code"
    else
        execMode.TextColor3 = C.dim
        reqMode.TextColor3 = C.accent
        hint.Text = "mode: require(assetId)"
        code.PlaceholderText = "-- asset id"
    end
end

execMode.MouseButton1Click:Connect(function() setMode("exec") end)
reqMode.MouseButton1Click:Connect(function() setMode("require") end)

local function mkBtn(text, color, x, w)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(0, w, 0, 30)
    b.Position = UDim2.new(0, x, 0, 340)
    b.BackgroundColor3 = color
    b.Text = text
    b.TextColor3 = C.text
    b.Font = Enum.Font.GothamBold
    b.TextSize = 12
    b.BorderSizePixel = 0
    b.AutoButtonColor = false
    b.Parent = main
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 4)
    c.Parent = b
    b.MouseEnter:Connect(function()
        TweenService:Create(b, TweenInfo.new(0.12), {
            BackgroundColor3 = color:Lerp(Color3.new(1, 1, 1), 0.12),
        }):Play()
    end)
    b.MouseLeave:Connect(function()
        TweenService:Create(b, TweenInfo.new(0.12), { BackgroundColor3 = color }):Play()
    end)
    b.MouseButton1Down:Connect(function()
        TweenService:Create(b, TweenInfo.new(0.06), { Size = UDim2.new(0, w - 3, 0, 28) }):Play()
    end)
    b.MouseButton1Up:Connect(function()
        TweenService:Create(b, TweenInfo.new(0.1, Enum.EasingStyle.Back), { Size = UDim2.new(0, w, 0, 30) }):Play()
    end)
    return b
end

local execBtn  = mkBtn("execute", C.green,   14, 130)
local clearBtn = mkBtn("clear",   C.panel,   150, 90)
local loadBtn  = mkBtn("load",    C.panel,   246, 90)

clearBtn.TextColor3 = C.text
loadBtn.TextColor3 = C.accent

local connected = false
local remote = nil

local function setStatus(ok, text)
    status.Text = text
    status.TextColor3 = ok and C.green or C.dim
    TweenService:Create(dot, TweenInfo.new(0.15), {
        BackgroundColor3 = ok and C.green or C.red,
    }):Play()
end

loadBtn.MouseButton1Click:Connect(function()
    local r = ReplicatedStorage:FindFirstChild("SyncHandler")
    if not r or not r:IsA("RemoteFunction") then
        connected = false
        setStatus(false, "remote not found")
        return
    end

    remote = r
    local ok, res = pcall(function()
        return remote:InvokeServer("ping")
    end)

    if ok and res == true then
        connected = true
        setStatus(true, "connected // SyncHandler")
    else
        connected = false
        setStatus(false, "handshake failed")
    end
end)

execBtn.MouseButton1Click:Connect(function()
    if not connected or not remote then
        setStatus(false, "not connected")
        return
    end
    local payload = code.Text
    if payload == "" or payload:gsub("%s", "") == "" then
        setStatus(false, "empty input")
        return
    end
    if currentMode == "exec" then
        local ok, err = remote:InvokeServer("exec", payload)
        if ok then
            setStatus(true, "executed // server")
        else
            setStatus(false, "exec error")
        end
    else
        local id = tonumber(payload)
        if not id then
            setStatus(false, "invalid asset id")
            return
        end
        local ok, result = remote:InvokeServer("require", id)
        if ok then
            setStatus(true, "required // asset " .. id)
        else
            setStatus(false, "require error")
        end
    end
end)

clearBtn.MouseButton1Click:Connect(function()
    code.Text = ""
    setStatus(connected, connected and "connected // SyncHandler" or "offline")
end)

close.MouseButton1Click:Connect(function()
    TweenService:Create(main, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
        Size = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 1,
    }):Play()
    task.wait(0.24)
    gui:Destroy()
end)

close.MouseEnter:Connect(function()
    TweenService:Create(close, TweenInfo.new(0.12), {
        BackgroundColor3 = C.red:Lerp(Color3.new(1, 1, 1), 0.18),
    }):Play()
end)
close.MouseLeave:Connect(function()
    TweenService:Create(close, TweenInfo.new(0.12), { BackgroundColor3 = C.red }):Play()
end)

UserInputService.InputBegan:Connect(function(input, processed)
    if processed then return end
    if input.KeyCode == Enum.KeyCode.RightControl then
        main.Visible = not main.Visible
    end
end)
