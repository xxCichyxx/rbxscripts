

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")


local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ExploitCheckerV2"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling


if gethui then
    ScreenGui.Parent = gethui()
elseif syn and syn.protect_gui then
    syn.protect_gui(ScreenGui)
    ScreenGui.Parent = game.CoreGui
else
    ScreenGui.Parent = game.CoreGui
end

local Settings = {
    Mode = "Pro" -- Pro or Noob
}


local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 800, 0, 600)
MainFrame.Position = UDim2.new(0.5, -400, 0.5, -300)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 28)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 16)
MainCorner.Parent = MainFrame

-- Gradient background
local Gradient = Instance.new("UIGradient")
Gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 28)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 30, 42))
}
Gradient.Rotation = 45
Gradient.Parent = MainFrame

-- Title Bar
local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Size = UDim2.new(1, 0, 0, 50)
TitleBar.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
TitleBar.BorderSizePixel = 0
TitleBar.Parent = MainFrame

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 16)
TitleCorner.Parent = TitleBar

local TitleCover = Instance.new("Frame")
TitleCover.Size = UDim2.new(1, 0, 0, 25)
TitleCover.Position = UDim2.new(0, 0, 1, -25)
TitleCover.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
TitleCover.BorderSizePixel = 0
TitleCover.Parent = TitleBar

-- Title gradient
local TitleGradient = Instance.new("UIGradient")
TitleGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(88, 101, 242)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(142, 71, 234))
}
TitleGradient.Parent = TitleBar

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(0, 300, 1, 0)
Title.Position = UDim2.new(0, 20, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "Unc Test made by Alexchad"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = TitleBar

-- Mode Toggle Button
local ModeToggle = Instance.new("TextButton")
ModeToggle.Name = "ModeToggle"
ModeToggle.Size = UDim2.new(0, 100, 0, 30)
ModeToggle.Position = UDim2.new(1, -250, 0.5, -15)
ModeToggle.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
ModeToggle.Text = "Not Goober Mode"
ModeToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
ModeToggle.TextSize = 13
ModeToggle.Font = Enum.Font.GothamBold
ModeToggle.Parent = TitleBar

local ModeCorner = Instance.new("UICorner")
ModeCorner.CornerRadius = UDim.new(0, 8)
ModeCorner.Parent = ModeToggle

-- Export Button
local ExportButton = Instance.new("TextButton")
ExportButton.Name = "ExportButton"
ExportButton.Size = UDim2.new(0, 100, 0, 30)
ExportButton.Position = UDim2.new(1, -140, 0.5, -15)
ExportButton.BackgroundColor3 = Color3.fromRGB(67, 181, 129)
ExportButton.Text = "📋 Export"
ExportButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ExportButton.TextSize = 13
ExportButton.Font = Enum.Font.GothamBold
ExportButton.Parent = TitleBar

local ExportCorner = Instance.new("UICorner")
ExportCorner.CornerRadius = UDim.new(0, 8)
ExportCorner.Parent = ExportButton

-- Close Button
local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -40, 0.5, -15)
CloseButton.BackgroundColor3 = Color3.fromRGB(237, 66, 69)
CloseButton.Text = "×"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 20
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Parent = TitleBar

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 8)
CloseCorner.Parent = CloseButton

CloseButton.MouseButton1Click:Connect(function()
    TweenService:Create(MainFrame, TweenInfo.new(0.3), {Size = UDim2.new(0, 0, 0, 0)}):Play()
    wait(0.3)
    ScreenGui:Destroy()
end)

-- Search Bar
local SearchBar = Instance.new("TextBox")
SearchBar.Name = "SearchBar"
SearchBar.Size = UDim2.new(1, -40, 0, 40)
SearchBar.Position = UDim2.new(0, 20, 0, 65)
SearchBar.BackgroundColor3 = Color3.fromRGB(30, 30, 42)
SearchBar.BorderSizePixel = 0
SearchBar.PlaceholderText = "🔎 Search functions... (e.g., hook, file, debug)"
SearchBar.PlaceholderColor3 = Color3.fromRGB(120, 120, 140)
SearchBar.Text = ""
SearchBar.TextColor3 = Color3.fromRGB(255, 255, 255)
SearchBar.TextSize = 14
SearchBar.Font = Enum.Font.Gotham
SearchBar.ClearTextOnFocus = false
SearchBar.Parent = MainFrame

local SearchCorner = Instance.new("UICorner")
SearchCorner.CornerRadius = UDim.new(0, 10)
SearchCorner.Parent = SearchBar

local SearchPadding = Instance.new("UIPadding")
SearchPadding.PaddingLeft = UDim.new(0, 15)
SearchPadding.Parent = SearchBar

-- Stats Frame
local StatsFrame = Instance.new("Frame")
StatsFrame.Size = UDim2.new(1, -40, 0, 60)
StatsFrame.Position = UDim2.new(0, 20, 0, 115)
StatsFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 42)
StatsFrame.BorderSizePixel = 0
StatsFrame.Parent = MainFrame

local StatsCorner = Instance.new("UICorner")
StatsCorner.CornerRadius = UDim.new(0, 10)
StatsCorner.Parent = StatsFrame

-- Stats content
local StatsLabel = Instance.new("TextLabel")
StatsLabel.Size = UDim2.new(0.5, -10, 1, 0)
StatsLabel.Position = UDim2.new(0, 20, 0, 0)
StatsLabel.BackgroundTransparency = 1
StatsLabel.Text = "⏳ Scanning..."
StatsLabel.TextColor3 = Color3.fromRGB(200, 200, 220)
StatsLabel.TextSize = 16
StatsLabel.Font = Enum.Font.GothamBold
StatsLabel.TextXAlignment = Enum.TextXAlignment.Left
StatsLabel.Parent = StatsFrame

local ExecutorLabel = Instance.new("TextLabel")
ExecutorLabel.Size = UDim2.new(0.5, -10, 1, 0)
ExecutorLabel.Position = UDim2.new(0.5, 0, 0, 0)
ExecutorLabel.BackgroundTransparency = 1
ExecutorLabel.Text = "🔧 Executor: Detecting..."
ExecutorLabel.TextColor3 = Color3.fromRGB(200, 200, 220)
ExecutorLabel.TextSize = 14
ExecutorLabel.Font = Enum.Font.Gotham
ExecutorLabel.TextXAlignment = Enum.TextXAlignment.Right
ExecutorLabel.Parent = StatsFrame

-- Scrolling Frame
local ScrollFrame = Instance.new("ScrollingFrame")
ScrollFrame.Name = "ScrollFrame"
ScrollFrame.Size = UDim2.new(1, -40, 1, -195)
ScrollFrame.Position = UDim2.new(0, 20, 0, 185)
ScrollFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
ScrollFrame.BorderSizePixel = 0
ScrollFrame.ScrollBarThickness = 8
ScrollFrame.ScrollBarImageColor3 = Color3.fromRGB(88, 101, 242)
ScrollFrame.Parent = MainFrame

local ScrollCorner = Instance.new("UICorner")
ScrollCorner.CornerRadius = UDim.new(0, 10)
ScrollCorner.Parent = ScrollFrame

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 8)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = ScrollFrame

local ScrollPadding = Instance.new("UIPadding")
ScrollPadding.PaddingTop = UDim.new(0, 10)
ScrollPadding.PaddingBottom = UDim.new(0, 10)
ScrollPadding.PaddingLeft = UDim.new(0, 10)
ScrollPadding.PaddingRight = UDim.new(0, 10)
ScrollPadding.Parent = ScrollFrame

-- ====================================
-- ENHANCED EXPLOIT FUNCTIONS DATABASE
-- ====================================

local ExploitFunctions = {
    {
        category = "🔧 Environment & Globals",
        functions = {
            {
                name = "getgenv",
                description = "Returns the global exploit environment table that persists across scripts",
                proExplanation = "Provides a shared environment table accessible by all scripts executed in the same session. Useful for cross-script communication and storing persistent data.",
                example = "getgenv().MyConfig = {ESP = true}\n-- Access from another script:\nif getgenv().MyConfig then\n    print(getgenv().MyConfig.ESP)\nend",
                level = 1
            },
            {
                name = "getrenv",
                description = "Returns Roblox's metatable environment",
                proExplanation = "Access to Roblox's internal Lua environment. Contains core game functions and can be used to call internal methods without detection.",
                example = "local renv = getrenv()\n-- Access internal functions\nlocal print = renv.print\nlocal warn = renv.warn",
                level = 2
            },
            {
                name = "getsenv",
                description = "Gets the environment table of a specific LocalScript/ModuleScript",
                proExplanation = "Retrieves all local variables and functions from a script's environment. Powerful for reading/modifying game script behavior.",
                example = "local script = game.Players.LocalPlayer.PlayerScripts.Script\nlocal env = getsenv(script)\nprint(env.LocalVariable)",
                level = 3
            },
            {
                name = "getgc",
                description = "Returns all objects in Lua garbage collector",
                proExplanation = "Dumps all Lua objects currently in memory (tables, functions, userdata). Extremely powerful for finding hidden game objects and functions.",
                example = "for i,v in pairs(getgc(true)) do\n    if type(v) == 'table' and v.UpdateMoney then\n        print('Found money table!')\n    end\nend",
                level = 5
            },
            {
                name = "filtergc",
                description = "Filters garbage collector by type",
                proExplanation = "More efficient than getgc - filters by object type. Essential for finding specific tables/functions without iterating everything.",
                example = "-- Find all tables\nlocal tables = filtergc('table')\n-- Find all functions\nlocal functions = filtergc('function')",
                level = 5
            },
        }
    },
    {
        category = "🎣 Hooking & Interception",
        functions = {
            {
                name = "hookfunction",
                description = "Replaces a function with a custom one while preserving the original",
                proExplanation = "Core hooking method. Intercepts function calls, allowing you to modify arguments, return values, or block execution entirely.",
                example = "local old\nold = hookfunction(game.IsLoaded, function(...)\n    print('IsLoaded called!')\n    return old(...)\nend)",
                level = 6
            },
            {
                name = "hookmetamethod",
                description = "Hooks metamethods (__index, __namecall, __newindex, etc.)",
                proExplanation = "Intercepts metatable operations. Critical for bypassing anti-cheat that monitors remote calls or property access.",
                example = "local old\nold = hookmetamethod(game, '__namecall', function(self, ...)\n    local method = getnamecallmethod()\n    if method == 'FireServer' then\n        print('Blocked remote:', self.Name)\n        return\n    end\n    return old(self, ...)\nend)",
                level = 7
            },
            {
                name = "getnamecallmethod",
                description = "Returns the method name used in __namecall",
                proExplanation = "Essential companion to hookmetamethod. Identifies which method is being called (FireServer, InvokeServer, etc.)",
                example = "-- Use inside __namecall hook\nlocal method = getnamecallmethod()\nif method == 'Kick' then\n    return -- Block kicks\nend",
                level = 6
            },
            {
                name = "newcclosure",
                description = "Wraps Lua function as C closure to bypass detections",
                proExplanation = "Makes Lua functions appear as engine (C) functions. Bypasses iscclosure/islclosure detection used by anti-cheats.",
                example = "local function myFunc()\n    return true\nend\nlocal protected = newcclosure(myFunc)\nprint(iscclosure(protected)) -- true",
                level = 7
            },
            {
                name = "islclosure",
                description = "Checks if function is a Lua closure",
                proExplanation = "Determines if a function is written in Lua. Used to identify custom functions vs game engine functions.",
                example = "local func = function() end\nprint(islclosure(func)) -- true\nprint(islclosure(print)) -- false",
                level = 3
            },
            {
                name = "iscclosure",
                description = "Checks if function is a C closure (engine function)",
                proExplanation = "Opposite of islclosure. Identifies engine-level functions. Useful for validation and anti-detection.",
                example = "print(iscclosure(print)) -- true\nprint(iscclosure(function() end)) -- false",
                level = 3
            },
            {
                name = "clonefunction",
                description = "Creates a clean copy of a function",
                proExplanation = "Duplicates a function to preserve its original state before hooking. Prevents detection of function modifications.",
                example = "local originalFunc = clonefunction(targetFunc)\nhookfunction(targetFunc, function(...)\n    -- Custom behavior\n    return originalFunc(...)\nend)",
                level = 5
            },
        }
    },
    {
        category = "🔐 Metatable Manipulation",
        functions = {
            {
                name = "getrawmetatable",
                description = "Gets metatable even if protected with __metatable",
                proExplanation = "Bypasses metatable protection. Essential for accessing and modifying locked metatables like game's.",
                example = "local mt = getrawmetatable(game)\nprint(mt.__namecall)",
                level = 4
            },
            {
                name = "setrawmetatable",
                description = "Sets metatable even if readonly",
                proExplanation = "Forces metatable modification. Used in combination with setreadonly to modify protected objects.",
                example = "local mt = getrawmetatable(game)\nsetreadonly(mt, false)\nmt.__namecall = newFunc\nsetreadonly(mt, true)",
                level = 5
            },
            {
                name = "setreadonly",
                description = "Sets table readonly state",
                proExplanation = "Locks/unlocks tables. Required before modifying protected tables like metatables.",
                example = "local mt = getrawmetatable(game)\nsetreadonly(mt, false)\nmt.custom = 'value'\nsetreadonly(mt, true)",
                level = 4
            },
            {
                name = "isreadonly",
                description = "Checks if table is readonly",
                proExplanation = "Determines if a table is locked. Useful for validation before attempting modifications.",
                example = "local mt = getrawmetatable(game)\nif isreadonly(mt) then\n    print('Protected!')\nend",
                level = 2
            },
        }
    },
    {
        category = "📡 Remote & Script Analysis",
        functions = {
            {
                name = "getconnections",
                description = "Gets all connections to an event/signal",
                proExplanation = "Returns connection objects with methods to Enable/Disable/Fire. Powerful for disabling anti-cheat listeners.",
                example = "for _,connection in pairs(getconnections(game:GetService('LogService').MessageOut)) do\n    connection:Disable() -- Disable error logging\nend",
                level = 5
            },
            {
                name = "getcallingscript",
                description = "Returns the script that invoked the current function",
                proExplanation = "Identifies caller origin. Critical for logging remote calls and understanding game architecture.",
                example = "-- Inside hooked function:\nlocal caller = getcallingscript()\nprint('Called by:', caller:GetFullName())",
                level = 6
            },
            {
                name = "getscriptclosure",
                description = "Gets the main function/closure of a script",
                proExplanation = "Extracts executable code from scripts. Allows reading, analyzing, or modifying script behavior.",
                example = "local script = game.Players.LocalPlayer.PlayerScripts.ControlScript\nlocal func = getscriptclosure(script)\n-- Analyze with debug functions",
                level = 7
            },
            {
                name = "getscripthash",
                description = "Gets unique hash identifier of a script",
                proExplanation = "Generates consistent hash for scripts. Useful for tracking script changes or identifying duplicates.",
                example = "local hash = getscripthash(script)\nprint('Script hash:', hash)",
                level = 4
            },
            {
                name = "getscriptbytecode",
                description = "Returns compiled bytecode of a script",
                proExplanation = "Extracts raw Luau bytecode. Advanced use for decompilation or analysis.",
                example = "local bytecode = getscriptbytecode(script)\nwritefile('script.bin', bytecode)",
                level = 7
            },
        }
    },
    {
        category = "🎮 Game Interaction",
        functions = {
            {
                name = "firesignal",
                description = "Manually triggers any RBXScriptSignal event",
                proExplanation = "Simulates event firing without actual interaction. Bypasses client-sided checks on UI elements.",
                example = "local button = script.Parent.Button\nfiresignal(button.MouseButton1Click)",
                level = 4
            },
            {
                name = "fireproximityprompt",
                description = "Triggers ProximityPrompts from any distance",
                proExplanation = "Activates proximity prompts remotely. Useful for e-farming, quest completion, or bypassing distance checks.",
                example = "local prompt = workspace.Interactable.ProximityPrompt\nfireproximityprompt(prompt)",
                level = 3
            },
            {
                name = "fireclickdetector",
                description = "Triggers ClickDetectors without clicking",
                proExplanation = "Activates click detectors remotely with custom distance parameter.",
                example = "local detector = workspace.Button.ClickDetector\nfireclickdetector(detector, 5) -- distance param",
                level = 3
            },
            {
                name = "firetouchinterest",
                description = "Simulates part touch events",
                proExplanation = "Triggers Touch/TouchEnded without physical collision. Two calls needed: 0 (touch) and 1 (untouch).",
                example = "local part = game.Players.LocalPlayer.Character.HumanoidRootPart\nlocal target = workspace.Coin\nfiretouchinterest(part, target, 0)\nfiretouchinterest(part, target, 1)",
                level = 4
            },
        }
    },
    {
        category = "📂 Filesystem Operations",
        functions = {
            {
                name = "readfile",
                description = "Reads file content from workspace folder",
                proExplanation = "Loads file data. Workspace folder location varies by executor. Essential for config systems.",
                example = "if isfile('config.json') then\n    local data = readfile('config.json')\n    local config = game:GetService('HttpService'):JSONDecode(data)\nend",
                level = 2
            },
            {
                name = "writefile",
                description = "Creates/overwrites file with content",
                proExplanation = "Saves data persistently. Supports any text format (JSON, Lua, txt). Creates file if non-existent.",
                example = "local config = {ESP = true, Aimbot = false}\nlocal json = game:GetService('HttpService'):JSONEncode(config)\nwritefile('config.json', json)",
                level = 2
            },
            {
                name = "appendfile",
                description = "Adds content to end of existing file",
                proExplanation = "Appends without overwriting. Perfect for logging systems.",
                example = "appendfile('log.txt', os.date() .. ': User joined\\n')",
                level = 2
            },
            {
                name = "deletefile",
                description = "Removes a file",
                proExplanation = "Permanent deletion. Use isfile() first to avoid errors.",
                example = "if isfile('temp.txt') then\n    deletefile('temp.txt')\nend",
                level = 2
            },
            {
                name = "isfile",
                description = "Checks if file exists",
                proExplanation = "Validates file presence before read/write operations.",
                example = "if not isfile('config.json') then\n    writefile('config.json', '{}')\nend",
                level = 1
            },
            {
                name = "isfolder",
                description = "Checks if folder exists",
                proExplanation = "Validates folder existence. Use before listfiles() or nested file operations.",
                example = "if not isfolder('MyScript') then\n    makefolder('MyScript')\nend",
                level = 1
            },
            {
                name = "makefolder",
                description = "Creates a new directory",
                proExplanation = "Organizes files into folders. Doesn't error if folder exists.",
                example = "makefolder('MyScript')\nmakefolder('MyScript/Configs')",
                level = 1
            },
            {
                name = "listfiles",
                description = "Returns array of files in directory",
                proExplanation = "Enumerates directory contents. Returns full paths.",
                example = "for _,file in pairs(listfiles('MyScript')) do\n    print(file)\nend",
                level = 2
            },
        }
    },
    {
        category = "🌐 HTTP & Web Requests",
        functions = {
            {
                name = "request",
                description = "Makes HTTP requests (GET/POST/PUT/DELETE)",
                proExplanation = "Full HTTP client. Supports headers, cookies, body data. Essential for webhooks, APIs, external configs.",
                example = "local response = request({\n    Url = 'https://httpbin.org/get',\n    Method = 'GET',\n    Headers = {['Content-Type'] = 'application/json'}\n})\nprint(response.Body)",
                level = 3
            },
            {
                name = "http_request",
                description = "Alternative HTTP request function",
                proExplanation = "Synonym for request() in some executors. Same functionality.",
                example = "local response = http_request({\n    Url = 'https://api.example.com/data',\n    Method = 'POST',\n    Body = 'data'\n})",
                level = 3
            },
            {
                name = "syn.request",
                description = "Synapse X specific HTTP request",
                proExplanation = "Synapse variant with additional features like SSL bypassing.",
                example = "local response = syn.request({\n    Url = 'https://example.com',\n    Method = 'GET'\n})",
                level = 3
            },
            {
                name = "setclipboard",
                description = "Copies text to system clipboard",
                proExplanation = "Direct clipboard access. Useful for sharing data, configs, or script output.",
                example = "setclipboard('Hello World!')\n-- Text is now in clipboard",
                level = 1
            },
        }
    },
    {
        category = "🎨 Drawing & ESP",
        functions = {
            {
                name = "Drawing.new",
                description = "Creates 2D rendering objects (Line, Circle, Square, Text, etc.)",
                proExplanation = "Low-level 2D renderer. Renders above game UI. Essential for ESP, crosshairs, FOV circles.",
                example = "local circle = Drawing.new('Circle')\ncircle.Radius = 100\ncircle.Position = Vector2.new(500, 500)\ncircle.Color = Color3.fromRGB(255, 0, 0)\ncircle.Thickness = 2\ncircle.Visible = true",
                level = 4
            },
            {
                name = "isrenderobj",
                description = "Validates if object is a Drawing instance",
                proExplanation = "Type checking for Drawing objects. Prevents errors in cleanup functions.",
                example = "if isrenderobj(obj) then\n    obj:Remove()\nend",
                level = 3
            },
            {
                name = "getrenderproperty",
                description = "Gets Drawing object property value",
                proExplanation = "Alternative to direct property access. Some executors require this.",
                example = "local visible = getrenderproperty(circle, 'Visible')",
                level = 3
            },
            {
                name = "setrenderproperty",
                description = "Sets Drawing object property value",
                proExplanation = "Alternative to direct property assignment.",
                example = "setrenderproperty(circle, 'Color', Color3.new(1, 0, 0))",
                level = 3
            },
            {
                name = "cleardrawcache",
                description = "Removes all Drawing objects",
                proExplanation = "Bulk cleanup function. Useful when reinitializing ESP systems.",
                example = "cleardrawcache() -- All drawings removed",
                level = 3
            },
        }
    },
    {
        category = "🐛 Debug Library",
        functions = {
            {
                name = "debug.getupvalue",
                description = "Gets upvalue (closure variable) from function",
                proExplanation = "Reads local variables captured in function closures. Critical for analyzing obfuscated code.",
                example = "local upval = debug.getupvalue(func, 1) -- 1st upvalue",
                level = 5
            },
            {
                name = "debug.setupvalue",
                description = "Modifies upvalue in function",
                proExplanation = "Changes closure variables. Powerful for modifying game logic without hooking.",
                example = "debug.setupvalue(func, 1, newValue)",
                level = 6
            },
            {
                name = "debug.getupvalues",
                description = "Returns table of all upvalues",
                proExplanation = "Dumps all closure variables at once. More efficient than iterating getupvalue.",
                example = "local upvals = debug.getupvalues(func)\nfor i,v in pairs(upvals) do\n    print(i, v)\nend",
                level = 5
            },
            {
                name = "debug.getconstant",
                description = "Gets constant value from function bytecode",
                proExplanation = "Reads hardcoded values in functions. Useful for finding strings, numbers in obfuscated code.",
                example = "local const = debug.getconstant(func, 1)",
                level = 5
            },
            {
                name = "debug.setconstant",
                description = "Modifies constant in function bytecode",
                proExplanation = "Changes hardcoded values. Can modify strings, numbers directly in function code.",
                example = "debug.setconstant(func, 5, 'Modified String')",
                level = 6
            },
            {
                name = "debug.getconstants",
                description = "Returns all constants from function",
                proExplanation = "Dumps all hardcoded values. Extremely useful for reverse engineering.",
                example = "local constants = debug.getconstants(func)\nfor i,v in pairs(constants) do\n    print(i, typeof(v), v)\nend",
                level = 5
            },
            {
                name = "debug.getinfo",
                description = "Gets function metadata (name, source, line numbers)",
                proExplanation = "Retrieves debugging information. Shows function name, where it's defined, parameter count.",
                example = "local info = debug.getinfo(func)\nprint(info.name, info.source, info.numparams)",
                level = 3
            },
            {
                name = "debug.getproto",
                description = "Gets nested function prototype",
                proExplanation = "Extracts inner functions defined inside a function. Advanced code analysis.",
                example = "local innerFunc = debug.getproto(outerFunc, 1)",
                level = 7
            },
            {
                name = "debug.getprotos",
                description = "Returns all nested prototypes",
                proExplanation = "Dumps all inner functions. Complete function tree analysis.",
                example = "local protos = debug.getprotos(func)\nfor i,proto in pairs(protos) do\n    print('Inner function:', i)\nend",
                level = 7
            },
            {
                name = "debug.getstack",
                description = "Gets value from call stack",
                proExplanation = "Reads local variables from stack frames. Access caller's local variables.",
                example = "local value = debug.getstack(1, 1) -- 1 level up, 1st local",
                level = 6
            },
            {
                name = "debug.setstack",
                description = "Sets value in call stack",
                proExplanation = "Modifies caller's local variables. Dangerous but powerful.",
                example = "debug.setstack(1, 1, newValue)",
                level = 7
            },
        }
    },
    {
        category = "🎯 Instance Functions",
        functions = {
            {
                name = "gethiddenproperty",
                description = "Reads hidden/internal instance properties",
                proExplanation = "Access properties not shown in explorer. Some properties are hidden for security.",
                example = "local value = gethiddenproperty(workspace.Terrain, 'PhysicsGrid')",
                level = 4
            },
            {
                name = "sethiddenproperty",
                description = "Modifies hidden instance properties",
                proExplanation = "Sets internal properties. Can enable features or bypass restrictions.",
                example = "sethiddenproperty(part, 'PhysicalConfigData', value)",
                level = 5
            },
            {
                name = "gethiddenprop",
                description = "Short alias for gethiddenproperty",
                proExplanation = "Same as gethiddenproperty, shorter syntax.",
                example = "local prop = gethiddenprop(obj, 'Property')",
                level = 4
            },
            {
                name = "sethiddenprop",
                description = "Short alias for sethiddenproperty",
                proExplanation = "Same as sethiddenproperty, shorter syntax.",
                example = "sethiddenprop(obj, 'Property', value)",
                level = 5
            },
            {
                name = "saveinstance",
                description = "Saves game/instances to file",
                proExplanation = "Exports game as .rbxl or specific instances. Useful for asset ripping or analysis.",
                example = "saveinstance() -- Saves entire game",
                level = 3
            },
            {
                name = "getsimulationradius",
                description = "Gets network ownership simulation radius",
                proExplanation = "Returns how far player owns unanchored parts. Affects physics calculations.",
                example = "local radius = getsimulationradius()\nprint('Simulation radius:', radius)",
                level = 3
            },
            {
                name = "setsimulationradius",
                description = "Sets network ownership simulation radius",
                proExplanation = "Expands part ownership range. Allows manipulating distant parts clientside.",
                example = "setsimulationradius(1000, 1000)",
                level = 4
            },
        }
    },
    {
        category = "🔍 Game Analysis",
        functions = {
            {
                name = "getinstances",
                description = "Returns all instances in the game",
                proExplanation = "Complete instance dump. Warning: Can be slow, returns thousands of objects.",
                example = "for _,instance in pairs(getinstances()) do\n    if instance:IsA('RemoteEvent') then\n        print(instance:GetFullName())\n    end\nend",
                level = 3
            },
            {
                name = "getnilinstances",
                description = "Returns instances with nil parent",
                proExplanation = "Finds hidden instances removed from DataModel. Games sometimes hide anti-cheat here.",
                example = "for _,instance in pairs(getnilinstances()) do\n    print('Hidden:', instance.Name)\nend",
                level = 4
            },
            {
                name = "getscripts",
                description = "Returns all Script/LocalScript instances",
                proExplanation = "Lists all scripts in game. Faster than filtering getinstances().",
                example = "for _,script in pairs(getscripts()) do\n    print(script:GetFullName())\nend",
                level = 3
            },
            {
                name = "getloadedmodules",
                description = "Returns all loaded ModuleScripts",
                proExplanation = "Shows ModuleScripts that have been require()'d. Useful for finding game frameworks.",
                example = "for _,module in pairs(getloadedmodules()) do\n    print(module:GetFullName())\nend",
                level = 3
            },
            {
                name = "getrunningscripts",
                description = "Returns currently executing scripts",
                proExplanation = "Shows active scripts. Subset of getscripts() - only running ones.",
                example = "for _,script in pairs(getrunningscripts()) do\n    print('Running:', script.Name)\nend",
                level = 3
            },
            {
                name = "checkcaller",
                description = "Checks if current context is executor",
                proExplanation = "Returns true if called from exploit, false if from game script. Anti-detection bypass.",
                example = "if checkcaller() then\n    print('Called from executor')\nelse\n    print('Called from game')\nend",
                level = 4
            },
            {
                name = "cloneref",
                description = "Creates undetectable instance reference",
                proExplanation = "Clones reference to bypass object detection. Some anti-cheats check if you access game/services.",
                example = "local hiddenGame = cloneref(game)\nlocal players = hiddenGame:GetService('Players')",
                level = 5
            },
            {
                name = "compareinstances",
                description = "Compares if two references point to same instance",
                proExplanation = "Checks reference equality. Useful after using cloneref.",
                example = "local ref1 = cloneref(game)\nlocal ref2 = game\nprint(compareinstances(ref1, ref2)) -- true",
                level = 3
            },
        }
    },
    {
        category = "⚙️ Console",
        functions = {
            {
                name = "rconsoleprint",
                description = "Prints to executor's external console",
                proExplanation = "Outputs to executor console window. Supports color codes with @@ syntax.",
                example = "rconsoleprint('@@RED@@Error: @@WHITE@@Something happened\\n')",
                level = 2
            },
            {
                name = "rconsoleclear",
                description = "Clears executor console",
                proExplanation = "Wipes console output. Useful for cleaner logging.",
                example = "rconsoleclear()",
                level = 2
            },
            {
                name = "rconsolename",
                description = "Sets executor console window title",
                proExplanation = "Customizes console title bar text.",
                example = "rconsolename('My Script v1.0')",
                level = 2
            },
            {
                name = "rconsoleinput",
                description = "Gets user input from console",
                proExplanation = "Waits for user to type in console. Returns input string.",
                example = "rconsoleprint('Enter your name: ')\nlocal name = rconsoleinput()\nrconsoleprint('Hello ' .. name)",
                level = 2
            },
            {
                name = "rconsolewarn",
                description = "Prints warning message to console",
                proExplanation = "Yellow-colored warning output.",
                example = "rconsolewarn('Warning: Low performance detected')",
                level = 2
            },
            {
                name = "rconsoleerr",
                description = "Prints error message to console",
                proExplanation = "Red-colored error output.",
                example = "rconsoleerr('Error: Failed to load config')",
                level = 2
            },
            {
                name = "rconsoleinfo",
                description = "Prints info message to console",
                proExplanation = "Blue-colored info output.",
                example = "rconsoleinfo('Script loaded successfully')",
                level = 2
            },
        }
    },
    {
        category = "🔊 Input Simulation",
        functions = {
            {
                name = "keypress",
                description = "Simulates keyboard key press",
                proExplanation = "Sends virtual key down event. Game sees it as real input.",
                example = "keypress(Enum.KeyCode.W)\nwait(1)\nkeyrelease(Enum.KeyCode.W)",
                level = 2
            },
            {
                name = "keyrelease",
                description = "Simulates keyboard key release",
                proExplanation = "Sends virtual key up event. Must be called after keypress.",
                example = "keyrelease(Enum.KeyCode.Space)",
                level = 2
            },
            {
                name = "mouse1click",
                description = "Simulates full left mouse click (press + release)",
                proExplanation = "Complete click action. Equivalent to mouse1press + mouse1release.",
                example = "mouse1click() -- Single click",
                level = 1
            },
            {
                name = "mouse1press",
                description = "Simulates left mouse button press",
                proExplanation = "Mouse down event. Hold until mouse1release.",
                example = "mouse1press()\nwait(0.5)\nmouse1release()",
                level = 1
            },
            {
                name = "mouse1release",
                description = "Simulates left mouse button release",
                proExplanation = "Mouse up event. Ends mouse1press.",
                example = "mouse1release()",
                level = 1
            },
            {
                name = "mouse2click",
                description = "Simulates full right mouse click",
                proExplanation = "Right click action. Complete press + release.",
                example = "mouse2click()",
                level = 1
            },
            {
                name = "mouse2press",
                description = "Simulates right mouse button press",
                proExplanation = "Right mouse down event.",
                example = "mouse2press()",
                level = 1
            },
            {
                name = "mouse2release",
                description = "Simulates right mouse button release",
                proExplanation = "Right mouse up event.",
                example = "mouse2release()",
                level = 1
            },
        }
    },
    {
        category = "🎪 Miscellaneous",
        functions = {
            {
                name = "identifyexecutor",
                description = "Returns executor name and version",
                proExplanation = "Identifies which executor is running the script. Returns name like 'Synapse X'.",
                example = "local executor, version = identifyexecutor()\nprint('Running on:', executor, version)",
                level = 1
            },
            {
                name = "getexecutorname",
                description = "Alternative function to get executor name",
                proExplanation = "Same as identifyexecutor but different executors may implement one or the other.",
                example = "print('Executor:', getexecutorname())",
                level = 1
            },
            {
                name = "gethui",
                description = "Returns protected GUI container",
                proExplanation = "CoreGui-like container that's hidden from game scripts. Perfect for protecting GUIs.",
                example = "local container = gethui()\nScreenGui.Parent = container -- Protected from detection",
                level = 2
            },
            {
                name = "getthreadidentity",
                description = "Gets current thread security level (0-8)",
                proExplanation = "Returns script context level. 2=LocalScript, 6=Executor, 8=CoreScripts.",
                example = "print('Current identity:', getthreadidentity())",
                level = 3
            },
            {
                name = "setthreadidentity",
                description = "Sets thread security level",
                proExplanation = "Elevates script permissions. Level 8 allows calling internal functions.",
                example = "setthreadidentity(8) -- Maximum permissions",
                level = 6
            },
            {
                name = "getthreadcontext",
                description = "Alias for getthreadidentity",
                proExplanation = "Same function, different name depending on executor.",
                example = "print('Context:', getthreadcontext())",
                level = 3
            },
            {
                name = "setthreadcontext",
                description = "Alias for setthreadidentity",
                proExplanation = "Same function, different name depending on executor.",
                example = "setthreadcontext(7)",
                level = 6
            },
            {
                name = "queue_on_teleport",
                description = "Queues code to execute after teleport",
                proExplanation = "Preserves script across place teleports. Essential for multi-place game support.",
                example = "queue_on_teleport('loadstring(game:HttpGet(\"url\"))()')",
                level = 3
            },
            {
                name = "queueonteleport",
                description = "Alternative syntax for queue_on_teleport",
                proExplanation = "Same functionality, different naming convention.",
                example = "queueonteleport([[print('After teleport')]])",
                level = 3
            },
        }
    },
    {
        category = "🔒 Cache & References",
        functions = {
            {
                name = "cloneref",
                description = "Creates undetectable reference clone",
                proExplanation = "Bypasses reference checking anti-cheat. Cloned refs don't match original in comparison.",
                example = "local fakeGame = cloneref(game)\nprint(fakeGame == game) -- false\nprint(compareinstances(fakeGame, game)) -- true",
                level = 5
            },
            {
                name = "compareinstances",
                description = "Compares actual instance equality",
                proExplanation = "True equality check that works with cloned references.",
                example = "compareinstances(cloneref(game), game) -- true",
                level = 3
            },
            {
                name = "getcustomasset",
                description = "Creates rbxasset:// URL from file",
                proExplanation = "Converts local file to Roblox asset URL. Load custom images, audio, etc.",
                example = "local url = getcustomasset('image.png')\nImageLabel.Image = url",
                level = 4
            },
            {
                name = "getsynasset",
                description = "Synapse version of getcustomasset",
                proExplanation = "Same functionality, Synapse-specific naming.",
                example = "local url = getsynasset('audio.mp3')\nSound.SoundId = url",
                level = 4
            },
        }
    },
    {
        category = "⚡ Performance & Optimization",
        functions = {
            {
                name = "setfpscap",
                description = "Sets maximum FPS limit",
                proExplanation = "Caps frame rate. Lower values reduce CPU usage, higher values = smoother gameplay.",
                example = "setfpscap(60) -- Lock to 60 FPS\nsetfpscap(999) -- Unlock FPS",
                level = 2
            },
            {
                name = "getfpscap",
                description = "Gets current FPS limit",
                proExplanation = "Returns current frame rate cap.",
                example = "print('FPS Cap:', getfpscap())",
                level = 1
            },
        }
    },
}

-- ====================================
-- FUNCTION TESTING & UI GENERATION
-- ====================================

local totalFunctions = 0
local supportedFunctions = 0
local results = {}

local function testFunction(funcName)
    -- Direct check
    local success, func = pcall(function()
        return loadstring("return " .. funcName)()
    end)
    
    if success and func ~= nil then
        return true
    end
    
    -- Check variations
    if funcName == "request" or funcName == "http_request" then
        return (syn and syn.request) or http_request or request or http.request
    end
    
    -- Debug library check
    if funcName:find("^debug%.") then
        local debugFunc = funcName:gsub("debug%.", "")
        return debug and debug[debugFunc] ~= nil
    end
    
    -- Drawing check
    if funcName == "Drawing.new" then
        return Drawing ~= nil
    end
    
    return false
end

local function createFunctionCard(funcData, parent)
    totalFunctions = totalFunctions + 1
    
    local supported = testFunction(funcData.name)
    if supported then
        supportedFunctions = supportedFunctions + 1
    end
    
    table.insert(results, {
        name = funcData.name,
        supported = supported,
        category = parent.category,
        level = funcData.level
    })
    
    -- Main Card Container
    local Card = Instance.new("Frame")
    Card.Name = funcData.name
    Card.Size = UDim2.new(1, -10, 0, 70)
    Card.BackgroundColor3 = Color3.fromRGB(30, 30, 42)
    Card.BorderSizePixel = 0
    Card.ClipsDescendants = true
    Card.Parent = parent.frame
    
    local CardCorner = Instance.new("UICorner")
    CardCorner.CornerRadius = UDim.new(0, 10)
    CardCorner.Parent = Card
    
    -- Status Glow
    local StatusGlow = Instance.new("Frame")
    StatusGlow.Size = UDim2.new(0, 5, 1, 0)
    StatusGlow.BackgroundColor3 = supported and Color3.fromRGB(67, 181, 129) or Color3.fromRGB(237, 66, 69)
    StatusGlow.BorderSizePixel = 0
    StatusGlow.Parent = Card
    
    local GlowCorner = Instance.new("UICorner")
    GlowCorner.CornerRadius = UDim.new(0, 10)
    GlowCorner.Parent = StatusGlow
    
    -- Content Frame
    local Content = Instance.new("Frame")
    Content.Size = UDim2.new(1, -15, 1, 0)
    Content.Position = UDim2.new(0, 15, 0, 0)
    Content.BackgroundTransparency = 1
    Content.Parent = Card
    
    -- Function Name
    local FuncName = Instance.new("TextLabel")
    FuncName.Size = UDim2.new(0, 200, 0, 25)
    FuncName.Position = UDim2.new(0, 0, 0, 8)
    FuncName.BackgroundTransparency = 1
    FuncName.Text = funcData.name
    FuncName.TextColor3 = supported and Color3.fromRGB(67, 181, 129) or Color3.fromRGB(237, 66, 69)
    FuncName.TextSize = 15
    FuncName.Font = Enum.Font.GothamBold
    FuncName.TextXAlignment = Enum.TextXAlignment.Left
    FuncName.Parent = Content
    
    -- Level Badge
    local LevelBadge = Instance.new("Frame")
    LevelBadge.Size = UDim2.new(0, 70, 0, 22)
    LevelBadge.Position = UDim2.new(1, -150, 0, 10)
    LevelBadge.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
    LevelBadge.BorderSizePixel = 0
    LevelBadge.Parent = Content
    
    local BadgeCorner = Instance.new("UICorner")
    BadgeCorner.CornerRadius = UDim.new(0, 6)
    BadgeCorner.Parent = LevelBadge
    
    local LevelText = Instance.new("TextLabel")
    LevelText.Size = UDim2.new(1, 0, 1, 0)
    LevelText.BackgroundTransparency = 1
    LevelText.Text = "LVL " .. funcData.level
    LevelText.TextColor3 = Color3.fromRGB(255, 255, 255)
    LevelText.TextSize = 12
    LevelText.Font = Enum.Font.GothamBold
    LevelText.Parent = LevelBadge
    
    -- Status Badge
    local StatusBadge = Instance.new("Frame")
    StatusBadge.Size = UDim2.new(0, 70, 0, 22)
    StatusBadge.Position = UDim2.new(1, -75, 0, 10)
    StatusBadge.BackgroundColor3 = supported and Color3.fromRGB(67, 181, 129) or Color3.fromRGB(237, 66, 69)
    StatusBadge.BorderSizePixel = 0
    StatusBadge.Parent = Content
    
    local StatusCorner = Instance.new("UICorner")
    StatusCorner.CornerRadius = UDim.new(0, 6)
    StatusCorner.Parent = StatusBadge
    
    local StatusText = Instance.new("TextLabel")
    StatusText.Size = UDim2.new(1, 0, 1, 0)
    StatusText.BackgroundTransparency = 1
    StatusText.Text = supported and "✓ YES" or "✗ NO"
    StatusText.TextColor3 = Color3.fromRGB(255, 255, 255)
    StatusText.TextSize = 11
    StatusText.Font = Enum.Font.GothamBold
    StatusText.Parent = StatusBadge
    
    -- Description
    local Description = Instance.new("TextLabel")
    Description.Size = UDim2.new(1, -160, 0, 30)
    Description.Position = UDim2.new(0, 0, 0, 35)
    Description.BackgroundTransparency = 1
    Description.Text = funcData.description
    Description.TextColor3 = Color3.fromRGB(160, 160, 180)
    Description.TextSize = 12
    Description.Font = Enum.Font.Gotham
    Description.TextXAlignment = Enum.TextXAlignment.Left
    Description.TextWrapped = true
    Description.TextTruncate = Enum.TextTruncate.AtEnd
    Description.Parent = Content
    
    -- Expand Button
    local ExpandBtn = Instance.new("TextButton")
    ExpandBtn.Size = UDim2.new(0, 30, 0, 30)
    ExpandBtn.Position = UDim2.new(1, -35, 0, 35)
    ExpandBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
    ExpandBtn.Text = "▼"
    ExpandBtn.TextColor3 = Color3.fromRGB(200, 200, 220)
    ExpandBtn.TextSize = 14
    ExpandBtn.Font = Enum.Font.GothamBold
    ExpandBtn.Parent = Content
    
    local ExpandCorner = Instance.new("UICorner")
    ExpandCorner.CornerRadius = UDim.new(0, 8)
    ExpandCorner.Parent = ExpandBtn
    
    -- Expanded Content Frame
    local ExpandedFrame = Instance.new("Frame")
    ExpandedFrame.Name = "ExpandedContent"
    ExpandedFrame.Size = UDim2.new(1, 0, 0, 0)
    ExpandedFrame.Position = UDim2.new(0, 0, 0, 70)
    ExpandedFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
    ExpandedFrame.BorderSizePixel = 0
    ExpandedFrame.ClipsDescendants = true
    ExpandedFrame.Parent = Card
    
    -- Pro Explanation
    local ProLabel = Instance.new("TextLabel")
    ProLabel.Name = "ProLabel"
    ProLabel.Size = UDim2.new(1, -30, 0, 20)
    ProLabel.Position = UDim2.new(0, 15, 0, 10)
    ProLabel.BackgroundTransparency = 1
    ProLabel.Text = "📚 Technical Explanation:"
    ProLabel.TextColor3 = Color3.fromRGB(88, 101, 242)
    ProLabel.TextSize = 13
    ProLabel.Font = Enum.Font.GothamBold
    ProLabel.TextXAlignment = Enum.TextXAlignment.Left
    ProLabel.Parent = ExpandedFrame
    
    local ProText = Instance.new("TextLabel")
    ProText.Name = "ProText"
    ProText.Size = UDim2.new(1, -30, 0, 0)
    ProText.Position = UDim2.new(0, 15, 0, 35)
    ProText.BackgroundTransparency = 1
    ProText.Text = funcData.proExplanation
    ProText.TextColor3 = Color3.fromRGB(200, 200, 220)
    ProText.TextSize = 12
    ProText.Font = Enum.Font.Gotham
    ProText.TextXAlignment = Enum.TextXAlignment.Left
    ProText.TextYAlignment = Enum.TextYAlignment.Top
    ProText.TextWrapped = true
    ProText.AutomaticSize = Enum.AutomaticSize.Y
    ProText.Parent = ExpandedFrame
    
    -- Example Section
    local ExampleLabel = Instance.new("TextLabel")
    ExampleLabel.Name = "ExampleLabel"
    ExampleLabel.Size = UDim2.new(1, -30, 0, 20)
    ExampleLabel.BackgroundTransparency = 1
    ExampleLabel.Text = "💻 Code Example:"
    ExampleLabel.TextColor3 = Color3.fromRGB(67, 181, 129)
    ExampleLabel.TextSize = 13
    ExampleLabel.Font = Enum.Font.GothamBold
    ExampleLabel.TextXAlignment = Enum.TextXAlignment.Left
    ExampleLabel.Parent = ExpandedFrame
    
    local ExampleBox = Instance.new("Frame")
    ExampleBox.Name = "ExampleBox"
    ExampleBox.Size = UDim2.new(1, -30, 0, 0)
    ExampleBox.BackgroundColor3 = Color3.fromRGB(20, 20, 28)
    ExampleBox.BorderSizePixel = 0
    ExampleBox.AutomaticSize = Enum.AutomaticSize.Y
    ExampleBox.Parent = ExpandedFrame
    
    local ExampleCorner2 = Instance.new("UICorner")
    ExampleCorner2.CornerRadius = UDim.new(0, 8)
    ExampleCorner2.Parent = ExampleBox
    
    local ExampleCode = Instance.new("TextLabel")
    ExampleCode.Size = UDim2.new(1, -20, 0, 0)
    ExampleCode.Position = UDim2.new(0, 10, 0, 10)
    ExampleCode.BackgroundTransparency = 1
    ExampleCode.Text = funcData.example
    ExampleCode.TextColor3 = Color3.fromRGB(150, 220, 255)
    ExampleCode.TextSize = 11
    ExampleCode.Font = Enum.Font.Code
    ExampleCode.TextXAlignment = Enum.TextXAlignment.Left
    ExampleCode.TextYAlignment = Enum.TextYAlignment.Top
    ExampleCode.TextWrapped = true
    ExampleCode.AutomaticSize = Enum.AutomaticSize.Y
    ExampleCode.RichText = true
    ExampleCode.Parent = ExampleBox
    
    local ExamplePadding = Instance.new("UIPadding")
    ExamplePadding.PaddingBottom = UDim.new(0, 10)
    ExamplePadding.Parent = ExampleBox
    
    -- Copy Button
    local CopyBtn = Instance.new("TextButton")
    CopyBtn.Size = UDim2.new(0, 100, 0, 30)
    CopyBtn.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
    CopyBtn.Text = "📋 Copy Code"
    CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    CopyBtn.TextSize = 11
    CopyBtn.Font = Enum.Font.GothamBold
    CopyBtn.Parent = ExpandedFrame
    
    local CopyCorner = Instance.new("UICorner")
    CopyCorner.CornerRadius = UDim.new(0, 6)
    CopyCorner.Parent = CopyBtn
    
    -- Position elements dynamically
    local function updatePositions()
        local yOffset = 35
        ProText.Position = UDim2.new(0, 15, 0, yOffset)
        yOffset = yOffset + ProText.AbsoluteSize.Y + 15
        
        ExampleLabel.Position = UDim2.new(0, 15, 0, yOffset)
        yOffset = yOffset + 25
        
        ExampleBox.Position = UDim2.new(0, 15, 0, yOffset)
        yOffset = yOffset + ExampleBox.AbsoluteSize.Y + 10
        
        CopyBtn.Position = UDim2.new(0, 15, 0, yOffset)
        yOffset = yOffset + 40
        
        return yOffset
    end
    
    -- Expand/Collapse Animation
    local expanded = false
    ExpandBtn.MouseButton1Click:Connect(function()
        expanded = not expanded
        
        local targetSize
        if expanded then
            local contentHeight = updatePositions()
            targetSize = UDim2.new(1, -10, 0, 70 + contentHeight)
            ExpandBtn.Text = "▲"
            
            TweenService:Create(ExpandedFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Size = UDim2.new(1, 0, 0, contentHeight)
            }):Play()
        else
            targetSize = UDim2.new(1, -10, 0, 70)
            ExpandBtn.Text = "▼"
            
            TweenService:Create(ExpandedFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Size = UDim2.new(1, 0, 0, 0)
            }):Play()
        end
        
        TweenService:Create(Card, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Size = targetSize
        }):Play()
    end)
    
    -- Copy functionality
    CopyBtn.MouseButton1Click:Connect(function()
        if setclipboard then
            setclipboard(funcData.example)
            CopyBtn.Text = "✅ Copied!"
            CopyBtn.BackgroundColor3 = Color3.fromRGB(67, 181, 129)
            wait(2)
            CopyBtn.Text = "📋 Copy Code"
            CopyBtn.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
        end
    end)
    
    -- Hover effects
    ExpandBtn.MouseEnter:Connect(function()
        TweenService:Create(ExpandBtn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(88, 101, 242)}):Play()
    end)
    
    ExpandBtn.MouseLeave:Connect(function()
        TweenService:Create(ExpandBtn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(40, 40, 55)}):Play()
    end)
    
    -- Initialize positions
    task.defer(updatePositions)
    
    return Card
end

local function createCategorySection(categoryData)
    local CategoryFrame = Instance.new("Frame")
    CategoryFrame.Name = categoryData.category
    CategoryFrame.Size = UDim2.new(1, 0, 0, 0)
    CategoryFrame.BackgroundTransparency = 1
    CategoryFrame.AutomaticSize = Enum.AutomaticSize.Y
    CategoryFrame.Parent = ScrollFrame
    
    -- Category Header
    local CategoryHeader = Instance.new("Frame")
    CategoryHeader.Size = UDim2.new(1, 0, 0, 35)
    CategoryHeader.BackgroundColor3 = Color3.fromRGB(35, 35, 48)
    CategoryHeader.BorderSizePixel = 0
    CategoryHeader.Parent = CategoryFrame
    
    local HeaderCorner = Instance.new("UICorner")
    HeaderCorner.CornerRadius = UDim.new(0, 8)
    HeaderCorner.Parent = CategoryHeader
    
    local HeaderGradient = Instance.new("UIGradient")
    HeaderGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(88, 101, 242)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 35, 48))
    }
    HeaderGradient.Rotation = 90
    HeaderGradient.Parent = CategoryHeader
    
    local CategoryLabel = Instance.new("TextLabel")
    CategoryLabel.Size = UDim2.new(1, -20, 1, 0)
    CategoryLabel.Position = UDim2.new(0, 10, 0, 0)
    CategoryLabel.BackgroundTransparency = 1
    CategoryLabel.Text = categoryData.category
    CategoryLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    CategoryLabel.TextSize = 15
    CategoryLabel.Font = Enum.Font.GothamBold
    CategoryLabel.TextXAlignment = Enum.TextXAlignment.Left
    CategoryLabel.Parent = CategoryHeader
    
    -- Content container
    local ContentFrame = Instance.new("Frame")
    ContentFrame.Name = "Content"
    ContentFrame.Size = UDim2.new(1, 0, 0, 0)
    ContentFrame.Position = UDim2.new(0, 0, 0, 40)
    ContentFrame.BackgroundTransparency = 1
    ContentFrame.AutomaticSize = Enum.AutomaticSize.Y
    ContentFrame.Parent = CategoryFrame
    
    local ContentLayout = Instance.new("UIListLayout")
    ContentLayout.Padding = UDim.new(0, 6)
    ContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
    ContentLayout.Parent = ContentFrame
    
    return {
        frame = ContentFrame,
        category = categoryData.category,
        header = CategoryHeader
    }
end

-- Build UI
for _, category in ipairs(ExploitFunctions) do
    local section = createCategorySection(category)
    for _, func in ipairs(category.functions) do
        createFunctionCard(func, section)
    end
end

-- Update stats
local percentage = math.floor((supportedFunctions / totalFunctions) * 100)
StatsLabel.Text = string.format("✅ %d/%d Supported (%.1f%%)(WARNING: May not use your executor naming syntax)", supportedFunctions, totalFunctions, percentage)

if percentage >= 80 then
    StatsLabel.TextColor3 = Color3.fromRGB(67, 181, 129)
elseif percentage >= 50 then
    StatsLabel.TextColor3 = Color3.fromRGB(255, 184, 108)
else
    StatsLabel.TextColor3 = Color3.fromRGB(237, 66, 69)
end

-- Detect executor
task.spawn(function()
    local executor = "Unknown"
    
    if identifyexecutor then
        executor = identifyexecutor()
    elseif getexecutorname then
        executor = getexecutorname()
    elseif KRNL_LOADED then
        executor = "KRNL"
    elseif syn then
        executor = "Synapse X"
    elseif OXYGEN_LOADED then
        executor = "Oxygen U"
    elseif issentinelclosure then
        executor = "Sentinel"
    elseif TRIGON_LOADED then
        executor = "Trigon"
    elseif Fluxus then
        executor = "Fluxus"
    elseif getreg then
        executor = "Script-Ware"
    end
    
    ExecutorLabel.Text = "🔧 Executor: " .. executor
end)

-- Search functionality
SearchBar:GetPropertyChangedSignal("Text"):Connect(function()
    local searchText = SearchBar.Text:lower()
    
    for _, categoryFrame in ipairs(ScrollFrame:GetChildren()) do
        if categoryFrame:IsA("Frame") then
            local content = categoryFrame:FindFirstChild("Content")
            if content then
                local anyVisible = false
                
                for _, card in ipairs(content:GetChildren()) do
                    if card:IsA("Frame") then
                        local funcName = card.Name:lower()
                        local visible = funcName:find(searchText, 1, true) ~= nil or searchText == ""
                        card.Visible = visible
                        if visible then anyVisible = true end
                    end
                end
                
                categoryFrame.Visible = anyVisible
            end
        end
    end
end)

-- Export functionality
ExportButton.MouseButton1Click:Connect(function()
    local executor = ExecutorLabel.Text:gsub("🔧 Executor: ", "")
    local export = string.format([[
╔══════════════════════════════════════╗
   EXPLOIT FUNCTION ANALYSIS REPORT
╚══════════════════════════════════════╝

Executor: %s
Date: %s
Support Level: %d/%d (%.1f%%)

════════════════════════════════════════

]], executor, os.date("%Y-%m-%d %H:%M:%S"), supportedFunctions, totalFunctions, percentage)
    
    -- Sort by category
    local byCategory = {}
    for _, result in ipairs(results) do
        if not byCategory[result.category] then
            byCategory[result.category] = {}
        end
        table.insert(byCategory[result.category], result)
    end
    
    for category, funcs in pairs(byCategory) do
        export = export .. "\n" .. category .. "\n" .. string.rep("─", 40) .. "\n"
        for _, func in ipairs(funcs) do
            local status = func.supported and "✅" or "❌"
            export = export .. string.format("%s  %s (Level %d)\n", status, func.name, func.level)
        end
    end
    
    export = export .. "\n" .. string.rep("═", 40)
    export = export .. "\nGenerated by Exploit Function Checker V2"
    
    if setclipboard then
        setclipboard(export)
        ExportButton.Text = "✅ Copied!"
        ExportButton.BackgroundColor3 = Color3.fromRGB(67, 181, 129)
        wait(2)
        ExportButton.Text = "📋 Export"
        ExportButton.BackgroundColor3 = Color3.fromRGB(67, 181, 129)
    end
end)

-- Mode Toggle (prepared for noob mode)
ModeToggle.MouseButton1Click:Connect(function()
    if Settings.Mode == "Pro" then
        Settings.Mode = "Noob"
        ModeToggle.Text = "Goober Mode"
        ModeToggle.BackgroundColor3 = Color3.fromRGB(142, 71, 234)
        -- Noob mode implementation would go here
        print("Noob mode coming soon!")
    else
        Settings.Mode = "Pro"
        ModeToggle.Text = "Not Goober Mode"
        ModeToggle.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
    end
end)

-- Auto-resize canvas
task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 20)
        end)
    end
end)

-- Entrance animation
MainFrame.Size = UDim2.new(0, 0, 0, 0)
TweenService:Create(MainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Size = UDim2.new(0, 800, 0, 600)
}):Play()

print("╔══════════════════════════════════════╗")
print("   Exploit Function Checker V2 Loaded")
print("╚══════════════════════════════════════╝")
print(string.format("Supported: %d/%d (%.1f%%)", supportedFunctions, totalFunctions, percentage))
print("═══════════════════════════════════════════")