local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local old = playerGui:FindFirstChild("arg executor")
if old then old:Destroy() end

local arg_executor = {
	arg_executor = Instance.new("ScreenGui"),
	Frame = Instance.new("Frame"),
	UIStroke = Instance.new("UIStroke"),
	TextLabel = Instance.new("TextLabel"),
	TextBox = Instance.new("TextBox"),
	UIStroke_2 = Instance.new("UIStroke"),
	TextLabel_2 = Instance.new("TextLabel"),
	TextButton = Instance.new("TextButton"),
	UIStroke_3 = Instance.new("UIStroke"),
	TextButton_2 = Instance.new("TextButton"),
	UIStroke_4 = Instance.new("UIStroke"),
	TextButton_3 = Instance.new("TextButton"),
	UIStroke_5 = Instance.new("UIStroke"),
}

arg_executor.arg_executor.Parent = playerGui
arg_executor.Frame.Parent = arg_executor.arg_executor
arg_executor.UIStroke.Parent = arg_executor.Frame
arg_executor.TextLabel.Parent = arg_executor.Frame
arg_executor.TextBox.Parent = arg_executor.Frame
arg_executor.UIStroke_2.Parent = arg_executor.TextBox
arg_executor.TextLabel_2.Parent = arg_executor.Frame
arg_executor.TextButton.Parent = arg_executor.Frame
arg_executor.UIStroke_3.Parent = arg_executor.TextButton
arg_executor.TextButton_2.Parent = arg_executor.Frame
arg_executor.UIStroke_4.Parent = arg_executor.TextButton_2
arg_executor.TextButton_3.Parent = arg_executor.Frame
arg_executor.UIStroke_5.Parent = arg_executor.TextButton_3

arg_executor.arg_executor.Name = "arg executor"
arg_executor.arg_executor.ResetOnSpawn = true
arg_executor.arg_executor.IgnoreGuiInset = false
arg_executor.arg_executor.DisplayOrder = 0

arg_executor.Frame.Name = "Frame"
arg_executor.Frame.ZIndex = 1
arg_executor.Frame.Position = UDim2.new(0.161365405, 0, 0.14731586, 0)
arg_executor.Frame.Size = UDim2.new(0, 305, 0, 354)
arg_executor.Frame.BackgroundColor3 = Color3.fromRGB(255,255,255)
arg_executor.Frame.BackgroundTransparency = 0
arg_executor.Frame.Visible = true
arg_executor.Frame.AnchorPoint = Vector2.new(0, 0)
arg_executor.Frame.ClipsDescendants = false
arg_executor.Frame.BorderSizePixel = 0
arg_executor.Frame.Active = true
arg_executor.Frame.Draggable = true

arg_executor.UIStroke.Name = "UIStroke"
arg_executor.UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
arg_executor.UIStroke.Color = Color3.fromRGB(0,0,0)
arg_executor.UIStroke.LineJoinMode = Enum.LineJoinMode.Bevel
arg_executor.UIStroke.Thickness = 4.699999809265137
arg_executor.UIStroke.Transparency = 0
arg_executor.UIStroke.Enabled = true

arg_executor.TextLabel.Name = "TextLabel"
arg_executor.TextLabel.ZIndex = 1
arg_executor.TextLabel.Position = UDim2.new(0.1704918, 0, 0, 0)
arg_executor.TextLabel.Size = UDim2.new(0, 200, 0, 26)
arg_executor.TextLabel.BackgroundColor3 = Color3.fromRGB(255,255,255)
arg_executor.TextLabel.BackgroundTransparency = 0
arg_executor.TextLabel.Text = "ARG EXECUTOR"
arg_executor.TextLabel.TextScaled = true
arg_executor.TextLabel.TextSize = 14
arg_executor.TextLabel.Font = Enum.Font.SourceSansBold
arg_executor.TextLabel.TextColor3 = Color3.fromRGB(0,0,0)
arg_executor.TextLabel.TextStrokeColor3 = Color3.fromRGB(0,0,0)
arg_executor.TextLabel.TextStrokeTransparency = 1
arg_executor.TextLabel.TextWrapped = true
arg_executor.TextLabel.TextXAlignment = Enum.TextXAlignment.Center
arg_executor.TextLabel.TextYAlignment = Enum.TextYAlignment.Center
arg_executor.TextLabel.TextTransparency = 0
arg_executor.TextLabel.Visible = true
arg_executor.TextLabel.AnchorPoint = Vector2.new(0, 0)
arg_executor.TextLabel.ClipsDescendants = false

arg_executor.TextBox.Name = "TextBox"
arg_executor.TextBox.ZIndex = 1
arg_executor.TextBox.Position = UDim2.new(0.0295081958, 0, 0.158192083, 0)
arg_executor.TextBox.Size = UDim2.new(0, 286, 0, 166)
arg_executor.TextBox.BackgroundColor3 = Color3.fromRGB(255,255,255)
arg_executor.TextBox.BackgroundTransparency = 0
arg_executor.TextBox.Text = ""
arg_executor.TextBox.PlaceholderText = 'require(125098056878216).load("nickname")'
arg_executor.TextBox.PlaceholderColor3 = Color3.fromRGB(120,120,120)
arg_executor.TextBox.TextScaled = false
arg_executor.TextBox.TextSize = 17
arg_executor.TextBox.Font = Enum.Font.SourceSansBold
arg_executor.TextBox.TextColor3 = Color3.fromRGB(0,0,0)
arg_executor.TextBox.TextStrokeColor3 = Color3.fromRGB(0,0,0)
arg_executor.TextBox.TextStrokeTransparency = 1
arg_executor.TextBox.TextWrapped = true
arg_executor.TextBox.TextXAlignment = Enum.TextXAlignment.Left
arg_executor.TextBox.TextYAlignment = Enum.TextYAlignment.Top
arg_executor.TextBox.TextTransparency = 0
arg_executor.TextBox.ClearTextOnFocus = false
arg_executor.TextBox.MultiLine = true
arg_executor.TextBox.Visible = true
arg_executor.TextBox.AnchorPoint = Vector2.new(0, 0)
arg_executor.TextBox.ClipsDescendants = false

arg_executor.UIStroke_2.Name = "UIStroke"
arg_executor.UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
arg_executor.UIStroke_2.Color = Color3.fromRGB(0,0,0)
arg_executor.UIStroke_2.LineJoinMode = Enum.LineJoinMode.Miter
arg_executor.UIStroke_2.Thickness = 2.9000000953674316
arg_executor.UIStroke_2.Transparency = 0
arg_executor.UIStroke_2.Enabled = true

arg_executor.TextLabel_2.Name = "TextLabel"
arg_executor.TextLabel_2.ZIndex = 1
arg_executor.TextLabel_2.Position = UDim2.new(0.1704918, 0, 0.073446326, 0)
arg_executor.TextLabel_2.Size = UDim2.new(0, 200, 0, 23)
arg_executor.TextLabel_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
arg_executor.TextLabel_2.BackgroundTransparency = 1
arg_executor.TextLabel_2.Text = "status: waiting for inject"
arg_executor.TextLabel_2.TextScaled = true
arg_executor.TextLabel_2.TextSize = 14
arg_executor.TextLabel_2.Font = Enum.Font.SourceSansBold
arg_executor.TextLabel_2.TextColor3 = Color3.fromRGB(0,0,0)
arg_executor.TextLabel_2.TextStrokeColor3 = Color3.fromRGB(0,0,0)
arg_executor.TextLabel_2.TextStrokeTransparency = 1
arg_executor.TextLabel_2.TextWrapped = true
arg_executor.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Center
arg_executor.TextLabel_2.TextYAlignment = Enum.TextYAlignment.Center
arg_executor.TextLabel_2.TextTransparency = 0.550000011920929
arg_executor.TextLabel_2.Visible = true
arg_executor.TextLabel_2.AnchorPoint = Vector2.new(0, 0)
arg_executor.TextLabel_2.ClipsDescendants = false

arg_executor.TextButton.Name = "TextButton"
arg_executor.TextButton.ZIndex = 1
arg_executor.TextButton.Position = UDim2.new(0.1704918, 0, 0.661016941, 0)
arg_executor.TextButton.Size = UDim2.new(0, 200, 0, 30)
arg_executor.TextButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
arg_executor.TextButton.BackgroundTransparency = 0
arg_executor.TextButton.Text = "Execute"
arg_executor.TextButton.TextScaled = true
arg_executor.TextButton.TextSize = 14
arg_executor.TextButton.Font = Enum.Font.SourceSansBold
arg_executor.TextButton.TextColor3 = Color3.fromRGB(0,0,0)
arg_executor.TextButton.TextStrokeColor3 = Color3.fromRGB(0,0,0)
arg_executor.TextButton.TextStrokeTransparency = 1
arg_executor.TextButton.TextWrapped = true
arg_executor.TextButton.TextXAlignment = Enum.TextXAlignment.Center
arg_executor.TextButton.TextYAlignment = Enum.TextYAlignment.Center
arg_executor.TextButton.TextTransparency = 0
arg_executor.TextButton.Visible = true
arg_executor.TextButton.AnchorPoint = Vector2.new(0, 0)
arg_executor.TextButton.ClipsDescendants = false

arg_executor.UIStroke_3.Name = "UIStroke"
arg_executor.UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
arg_executor.UIStroke_3.Color = Color3.fromRGB(0,0,0)
arg_executor.UIStroke_3.LineJoinMode = Enum.LineJoinMode.Miter
arg_executor.UIStroke_3.Thickness = 2.9000000953674316
arg_executor.UIStroke_3.Transparency = 0
arg_executor.UIStroke_3.Enabled = true

arg_executor.TextButton_2.Name = "TextButton"
arg_executor.TextButton_2.ZIndex = 1
arg_executor.TextButton_2.Position = UDim2.new(0.1704918, 0, 0.776836157, 0)
arg_executor.TextButton_2.Size = UDim2.new(0, 200, 0, 30)
arg_executor.TextButton_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
arg_executor.TextButton_2.BackgroundTransparency = 0
arg_executor.TextButton_2.Text = "Clear"
arg_executor.TextButton_2.TextScaled = true
arg_executor.TextButton_2.TextSize = 14
arg_executor.TextButton_2.Font = Enum.Font.SourceSansBold
arg_executor.TextButton_2.TextColor3 = Color3.fromRGB(0,0,0)
arg_executor.TextButton_2.TextStrokeColor3 = Color3.fromRGB(0,0,0)
arg_executor.TextButton_2.TextStrokeTransparency = 1
arg_executor.TextButton_2.TextWrapped = true
arg_executor.TextButton_2.TextXAlignment = Enum.TextXAlignment.Center
arg_executor.TextButton_2.TextYAlignment = Enum.TextYAlignment.Center
arg_executor.TextButton_2.TextTransparency = 0
arg_executor.TextButton_2.Visible = true
arg_executor.TextButton_2.AnchorPoint = Vector2.new(0, 0)
arg_executor.TextButton_2.ClipsDescendants = false

arg_executor.UIStroke_4.Name = "UIStroke"
arg_executor.UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
arg_executor.UIStroke_4.Color = Color3.fromRGB(0,0,0)
arg_executor.UIStroke_4.LineJoinMode = Enum.LineJoinMode.Miter
arg_executor.UIStroke_4.Thickness = 2.9000000953674316
arg_executor.UIStroke_4.Transparency = 0
arg_executor.UIStroke_4.Enabled = true

arg_executor.TextButton_3.Name = "TextButton"
arg_executor.TextButton_3.ZIndex = 1
arg_executor.TextButton_3.Position = UDim2.new(0.1704918, 0, 0.892655373, 0)
arg_executor.TextButton_3.Size = UDim2.new(0, 200, 0, 30)
arg_executor.TextButton_3.BackgroundColor3 = Color3.fromRGB(255,255,255)
arg_executor.TextButton_3.BackgroundTransparency = 0
arg_executor.TextButton_3.Text = "Inject"
arg_executor.TextButton_3.TextScaled = true
arg_executor.TextButton_3.TextSize = 14
arg_executor.TextButton_3.Font = Enum.Font.SourceSansBold
arg_executor.TextButton_3.TextColor3 = Color3.fromRGB(0,0,0)
arg_executor.TextButton_3.TextStrokeColor3 = Color3.fromRGB(0,0,0)
arg_executor.TextButton_3.TextStrokeTransparency = 1
arg_executor.TextButton_3.TextWrapped = true
arg_executor.TextButton_3.TextXAlignment = Enum.TextXAlignment.Center
arg_executor.TextButton_3.TextYAlignment = Enum.TextYAlignment.Center
arg_executor.TextButton_3.TextTransparency = 0
arg_executor.TextButton_3.Visible = true
arg_executor.TextButton_3.AnchorPoint = Vector2.new(0, 0)
arg_executor.TextButton_3.ClipsDescendants = false

arg_executor.UIStroke_5.Name = "UIStroke"
arg_executor.UIStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
arg_executor.UIStroke_5.Color = Color3.fromRGB(0,0,0)
arg_executor.UIStroke_5.LineJoinMode = Enum.LineJoinMode.Miter
arg_executor.UIStroke_5.Thickness = 2.9000000953674316
arg_executor.UIStroke_5.Transparency = 0
arg_executor.UIStroke_5.Enabled = true

local statusLabel = arg_executor.TextLabel_2
local codeBox = arg_executor.TextBox
local execBtn = arg_executor.TextButton
local clearBtn = arg_executor.TextButton_2
local injectBtn = arg_executor.TextButton_3

local connected = false
local remote = nil

local function setStatus(text, ok)
    statusLabel.Text = "status: " .. text
    statusLabel.TextColor3 = ok and Color3.fromRGB(0, 150, 0) or Color3.fromRGB(0, 0, 0)
    statusLabel.TextTransparency = ok and 0 or 0.55
end

injectBtn.MouseButton1Click:Connect(function()
    local r = ReplicatedStorage:FindFirstChild("SyncHandler")
    if not r or not r:IsA("RemoteFunction") then
        connected = false
        setStatus("remote not found", false)
        return
    end

    remote = r
    local ok, res = pcall(function()
        return remote:InvokeServer("ping")
    end)

    if ok and res == true then
        connected = true
        setStatus("connected", true)
    else
        connected = false
        setStatus("handshake failed", false)
    end
end)

execBtn.MouseButton1Click:Connect(function()
    if not connected or not remote then
        setStatus("not connected", false)
        return
    end
    local payload = codeBox.Text
    if payload == "" or payload:gsub("%s", "") == "" then
        setStatus("empty input", false)
        return
    end
    local ok, err = remote:InvokeServer("run", payload)
    if ok then
        setStatus("executed", true)
    else
        setStatus("exec error", false)
    end
end)

clearBtn.MouseButton1Click:Connect(function()
    codeBox.Text = ""
    setStatus(connected and "connected" or "waiting for inject", connected)
end)
