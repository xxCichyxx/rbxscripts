local Config = {
    Keybind = Enum.KeyCode.P,
    BaseUrl = "https://raw.githubusercontent.com/xxCichyxx/rbxscripts/refs/heads/main/utils/",
    Colors = {
        Background = Color3.fromRGB(20, 20, 25),
        DarkContrast = Color3.fromRGB(15, 15, 20),
        Accent = Color3.fromRGB(170, 85, 255), -- Purple
        AccentHover = Color3.fromRGB(190, 105, 255),
        Text = Color3.fromRGB(240, 240, 240),
        TextDim = Color3.fromRGB(150, 150, 150)
    }
}

local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

-- 1. Singleton Pattern
local guiName = "ScriptHub_PurpleTheme"
local existing = CoreGui:FindFirstChild(guiName) or (gethui and gethui():FindFirstChild(guiName))
if existing then existing:Destroy() end

-- 2. Create GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = guiName
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

if syn and syn.protect_gui then
    syn.protect_gui(ScreenGui)
    ScreenGui.Parent = CoreGui
elseif gethui then
    ScreenGui.Parent = gethui()
else
    ScreenGui.Parent = CoreGui
end

-- 3. Main Frame Construction
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 320, 0, 450)
MainFrame.Position = UDim2.new(0.5, -160, 0.5, -225)
MainFrame.BackgroundColor3 = Config.Colors.Background
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = false
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Config.Colors.Accent
UIStroke.Thickness = 1.5
UIStroke.Transparency = 0.5
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Parent = MainFrame

local Glow = Instance.new("ImageLabel")
Glow.Name = "Glow"
Glow.BackgroundTransparency = 1
Glow.Position = UDim2.new(0, -15, 0, -15)
Glow.Size = UDim2.new(1, 30, 1, 30)
Glow.ZIndex = 0
Glow.Image = "rbxassetid://5028857084"
Glow.ImageColor3 = Config.Colors.Accent
Glow.ImageTransparency = 0.8
Glow.ScaleType = Enum.ScaleType.Slice
Glow.SliceCenter = Rect.new(24, 24, 276, 276)
Glow.Parent = MainFrame

-- Title Bar
local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Size = UDim2.new(1, 0, 0, 40)
TitleBar.BackgroundTransparency = 1
TitleBar.Parent = MainFrame

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Name = "Title"
TitleLabel.Size = UDim2.new(1, -20, 1, 0)
TitleLabel.Position = UDim2.new(0, 20, 0, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "Script Hub <font color=\"rgb(170,85,255)\">v2</font>"
TitleLabel.TextColor3 = Config.Colors.Text
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextSize = 18
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.RichText = true
TitleLabel.Parent = TitleBar

local Separator = Instance.new("Frame")
Separator.Name = "Separator"
Separator.Size = UDim2.new(1, 0, 0, 1)
Separator.Position = UDim2.new(0, 0, 0, 40)
Separator.BackgroundColor3 = Config.Colors.Accent
Separator.BackgroundTransparency = 0.8
Separator.BorderSizePixel = 0
Separator.Parent = MainFrame

-- Scroll Container
local ScrollContainer = Instance.new("ScrollingFrame")
ScrollContainer.Name = "ScrollContainer"
ScrollContainer.Size = UDim2.new(1, -20, 1, -55)
ScrollContainer.Position = UDim2.new(0, 10, 0, 50)
ScrollContainer.BackgroundTransparency = 1
ScrollContainer.BorderSizePixel = 0
ScrollContainer.ScrollBarThickness = 4
ScrollContainer.ScrollBarImageColor3 = Config.Colors.Accent
ScrollContainer.Parent = MainFrame

-- FIX: Bezpieczne przypisanie właściwości bez użycia Enum, jeśli go brakuje
pcall(function()
    ScrollContainer["AutomaticCanvasSize"] = 2 -- 2 to wartość dla osi Y
end)

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = ScrollContainer
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 8)

-- Fallback dla rozmiaru Canvas
UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    ScrollContainer.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 10)
end)

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingTop = UDim.new(0, 5)
UIPadding.PaddingBottom = UDim.new(0, 5)
UIPadding.PaddingLeft = UDim.new(0, 2)
UIPadding.PaddingRight = UDim.new(0, 2)
UIPadding.Parent = ScrollContainer

-- 4. Draggable System (Smooth)
local dragging, dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    local targetPos = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    TweenService:Create(MainFrame, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = targetPos}):Play()
end

TitleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then dragging = false end
        end)
    end
end)

TitleBar.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then update(input) end
end)

-- 5. Logic & Functions
local function executeScript(scriptName)
    local url = Config.BaseUrl .. scriptName
    print("Fetching: " .. url)
    local success, result = pcall(function() return game:HttpGet(url) end)

    if success then
        local func, err = loadstring(result)
        if func then
            task.spawn(func)
        else
            warn("Syntax Error in " .. scriptName .. ": " .. tostring(err))
        end
    else
        warn("Failed to fetch " .. scriptName .. ": " .. tostring(result))
        if scriptName == "sunc.lua" then
             getgenv().sUNCDebug = {["printcheckpoints"] = false, ["delaybetweentests"] = 0, ["printtesttimetaken"] = false}
             loadstring(game:HttpGet("https://script.sunc.su/"))()
        end
    end
end

local function createButton(name, callback)
    local Button = Instance.new("TextButton")
    Button.Name = name
    Button.Size = UDim2.new(1, 0, 0, 38)
    Button.BackgroundColor3 = Config.Colors.DarkContrast
    Button.BorderSizePixel = 0
    Button.Text = ""
    Button.AutoButtonColor = false
    Button.Parent = ScrollContainer

    local BtnCorner = Instance.new("UICorner")
    BtnCorner.CornerRadius = UDim.new(0, 8)
    BtnCorner.Parent = Button

    local BtnStroke = Instance.new("UIStroke")
    BtnStroke.Color = Config.Colors.Accent
    BtnStroke.Thickness = 1
    BtnStroke.Transparency = 0.8
    BtnStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    BtnStroke.Parent = Button

    local BtnText = Instance.new("TextLabel")
    BtnText.Name = "Label"
    BtnText.Size = UDim2.new(1, -20, 1, 0)
    BtnText.Position = UDim2.new(0, 15, 0, 0)
    BtnText.BackgroundTransparency = 1
    BtnText.Text = name
    BtnText.TextColor3 = Config.Colors.Text
    BtnText.Font = Enum.Font.GothamSemibold
    BtnText.TextSize = 14
    BtnText.TextXAlignment = Enum.TextXAlignment.Left
    BtnText.Parent = Button

    local Icon = Instance.new("ImageLabel")
    Icon.Name = "Icon"
    Icon.Size = UDim2.new(0, 16, 0, 16)
    Icon.Position = UDim2.new(1, -30, 0.5, -8)
    Icon.BackgroundTransparency = 1
    Icon.Image = "rbxassetid://6031091004"
    Icon.ImageColor3 = Config.Colors.TextDim
    Icon.Parent = Button

    -- Animations
    Button.MouseEnter:Connect(function()
        TweenService:Create(Button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(25, 25, 30)}):Play()
        TweenService:Create(BtnStroke, TweenInfo.new(0.2), {Transparency = 0.2}):Play()
        TweenService:Create(Icon, TweenInfo.new(0.2), {ImageColor3 = Config.Colors.Accent}):Play()
        TweenService:Create(BtnText, TweenInfo.new(0.2), {Position = UDim2.new(0, 20, 0, 0)}):Play()
    end)

    Button.MouseLeave:Connect(function()
        TweenService:Create(Button, TweenInfo.new(0.2), {BackgroundColor3 = Config.Colors.DarkContrast}):Play()
        TweenService:Create(BtnStroke, TweenInfo.new(0.2), {Transparency = 0.8}):Play()
        TweenService:Create(Icon, TweenInfo.new(0.2), {ImageColor3 = Config.Colors.TextDim}):Play()
        TweenService:Create(BtnText, TweenInfo.new(0.2), {Position = UDim2.new(0, 15, 0, 0)}):Play()
    end)

    Button.MouseButton1Click:Connect(function()
        local clickTween = TweenService:Create(Button, TweenInfo.new(0.05), {Size = UDim2.new(1, -4, 0, 36)})
        clickTween:Play()
        clickTween.Completed:Wait()
        TweenService:Create(Button, TweenInfo.new(0.1), {Size = UDim2.new(1, 0, 0, 38)}):Play()
        callback()
    end)
end

-- 6. Script List
local scripts = {
    "sunc.lua", "Test.lua", "sunc2.lua", "myriad.luau", "Indenity.lua",
    "unc-test.lua", "unc-test2.lua", "cherrytest.lua", "unc-procent.lua",
    "RequireChecker.lua", "executor_vuln_test.lua"
}

for _, scriptName in ipairs(scripts) do
    createButton(scriptName, function()
        if scriptName == "sunc.lua" or scriptName == "sunc2.lua" then
            if game.PlaceId == 90441122676618 then executeScript(scriptName)
            else TeleportService:Teleport(90441122676618, LocalPlayer) end
        elseif scriptName == "myriad.luau" then
            if game.PlaceId == 80776325854596 then executeScript(scriptName)
            else TeleportService:Teleport(80776325854596, LocalPlayer) end
        else executeScript(scriptName) end
    end)
end

-- 7. Toggle Visibility
local isVisible = true
local function toggleGui()
    isVisible = not isVisible
    if isVisible then
        MainFrame.Visible = true
        MainFrame.ClipsDescendants = true
        local t = TweenService:Create(MainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 320, 0, 450)})
        t:Play()
        t.Completed:Connect(function() if isVisible then MainFrame.ClipsDescendants = false end end)
    else
        MainFrame.ClipsDescendants = true
        local t = TweenService:Create(MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Size = UDim2.new(0, 320, 0, 0)})
        t:Play()
        t.Completed:Connect(function() if not isVisible then MainFrame.Visible = false end end)
    end
end

UserInputService.InputBegan:Connect(function(input, gpe)
    if not gpe and input.KeyCode == Config.Keybind then toggleGui() end
end)

-- Intro Animation
MainFrame.Size = UDim2.new(0, 320, 0, 0)
MainFrame.ClipsDescendants = true
MainFrame.Visible = true
TweenService:Create(MainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 320, 0, 450)}):Play()
task.delay(0.5, function() if isVisible then MainFrame.ClipsDescendants = false end end)