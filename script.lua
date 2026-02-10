local Config = {
    Keybind = Enum.KeyCode.P,
    BaseUrl = "https://raw.githubusercontent.com/xxCichyxx/rbxscripts/refs/heads/main/utils/"
}

local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")

local LocalPlayer = Players.LocalPlayer

-- UI Creation
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScriptHub"
-- Attempt to protect GUI
if syn and syn.protect_gui then
    syn.protect_gui(ScreenGui)
    ScreenGui.Parent = CoreGui
elseif gethui then
    ScreenGui.Parent = gethui()
else
    ScreenGui.Parent = CoreGui
end

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 250, 0, 400)
MainFrame.Position = UDim2.new(0.5, -125, 0.5, -200)
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Title.BorderSizePixel = 0
Title.Text = "Script Hub"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18
Title.Parent = MainFrame

local ScrollContainer = Instance.new("ScrollingFrame")
ScrollContainer.Name = "ScrollContainer"
ScrollContainer.Size = UDim2.new(1, -10, 1, -40)
ScrollContainer.Position = UDim2.new(0, 5, 0, 35)
ScrollContainer.BackgroundTransparency = 1
ScrollContainer.BorderSizePixel = 0
ScrollContainer.ScrollBarThickness = 4
ScrollContainer.Parent = MainFrame

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = ScrollContainer
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

ScrollContainer.AutomaticCanvasSize = Enum.AutomaticCanvasSize.Y

-- Function to create buttons
local function createButton(name, callback)
    local Button = Instance.new("TextButton")
    Button.Name = name
    Button.Size = UDim2.new(1, 0, 0, 30)
    Button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    Button.BorderSizePixel = 0
    Button.Text = name
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.Font = Enum.Font.Gotham
    Button.TextSize = 14
    Button.Parent = ScrollContainer
    
    Button.MouseButton1Click:Connect(callback)
end

-- Function to execute script from GitHub
local function executeScript(scriptName)
    local url = Config.BaseUrl .. scriptName
    local success, content = pcall(function()
        return game:HttpGet(url)
    end)

    if success then
        local func, err = loadstring(content)
        if func then
            task.spawn(func)
        else
            warn("Error loading " .. scriptName .. ": " .. tostring(err))
        end
    else
        warn("Could not fetch script from GitHub: " .. scriptName .. " (" .. url .. ")")
        -- Fallback for sunc.lua if file is missing
        if scriptName == "sunc.lua" then
             getgenv().sUNCDebug = {
                ["printcheckpoints"] = false,
                ["delaybetweentests"] = 0,
                ["printtesttimetaken"] = false,
            }
            loadstring(game:HttpGet("https://script.sunc.su/"))()
        end
    end
end

-- List of scripts
local scripts = {
    "sunc.lua",
    "Test.lua",
    "sunc2.lua",
    "myriad.luau",
    "Indenity.lua",
    "unc-test.lua",
    "unc-test2.lua",
    "cherrytest.lua",
    "unc-procent.lua",
    "RequireChecker.lua",
    "executor_vuln_test.lua"
}

-- Create buttons for each script
for _, scriptName in ipairs(scripts) do
    createButton(scriptName, function()
        if scriptName == "sunc.lua" or scriptName == "sunc2.lua" then
            if game.PlaceId == 90441122676618 then
                executeScript(scriptName)
            else
                TeleportService:Teleport(90441122676618, LocalPlayer)
            end
        elseif scriptName == "myriad.luau" then
            if game.PlaceId == 80776325854596 then
                executeScript(scriptName)
            else
                TeleportService:Teleport(80776325854596, LocalPlayer)
            end
        else
            executeScript(scriptName)
        end
    end)
end

-- Keybind to toggle visibility
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Config.Keybind then
        MainFrame.Visible = not MainFrame.Visible
    end
end)
