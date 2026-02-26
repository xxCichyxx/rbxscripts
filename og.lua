local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- --- POCZEKAJ NA GRACZA (Fix błędu nil 'Name') ---
local Players = game:GetService("Players")
repeat task.wait() until Players.LocalPlayer
local LocalPlayer = Players.LocalPlayer

-- --- SERWISY I ZMIENNE ---
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

if workspace:FindFirstChild("SafetyNet_AntiVoid") then
    workspace.SafetyNet_AntiVoid:Destroy()
end
local plotName = "Plot_" .. LocalPlayer.Name
local realSpeed = 16

-- Zmienne Globalne
_G.GodMode = false
_G.Noclip = false
_G.SpeedEnabled = false
_G.FlyEnabled = false
_G.SpeedValue = 16
_G.FlySpeed = 50
_G.AutoSell = false
_G.SellDelay = 5000
_G.AntiVoidPart = false
_G.AutoRebirth = false
_G.AutoSpeedBuy = false
_G.AutoClaimGifts = false
_G.VIPUnlocker = false

-- --- KONFIGURACJA OKNA ---
local Window = Rayfield:CreateWindow({
   Name = " [🌊] Escape Tsunami For Pets",
   LoadingTitle = "BlockBypass System",
   LoadingSubtitle = "by Gemini",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "EasyCheat",
      FileName = "DefaultConfig"
   },
   KeySystem = false
})

-- --- ZAKŁADKI ---
local TabPlayer = Window:CreateTab("Player", 4483362458)
local TabMovement = Window:CreateTab("Movement", 4483362458)
local TabAuto = Window:CreateTab("Automatic", 4483362458)
local TabAutoFarm = Window:CreateTab("AutoFarm", 4483362458)
local TabGamepass = Window:CreateTab("Gamepass", 4483362458)

-- --- FUNKCJE SYSTEMOWE ---

local function CreateEffectBox(pos)
    local box = Instance.new("Part")
    box.Name = "AntiVoidEffect"
    box.Size = Vector3.new(10, 10, 10)
    box.CFrame = CFrame.new(pos)
    box.Anchored = true
    box.CanCollide = false
    box.Material = Enum.Material.Neon
    box.Color = Color3.fromRGB(0, 255, 255)
    box.Transparency = 0.3
    box.Parent = workspace
    
    local selection = Instance.new("SelectionBox")
    selection.Adornee = box
    selection.Color3 = Color3.fromRGB(255, 255, 255)
    selection.LineThickness = 0.1
    selection.Parent = box

    task.spawn(function()
        local info = TweenInfo.new(2, Enum.EasingStyle.Linear)
        local tween = TweenService:Create(box, info, {Transparency = 1, Size = Vector3.new(20, 20, 20)})
        tween:Play()
        task.wait(2)
        box:Destroy()
    end)
end

local function CreateSafetyNet()
    local part = Instance.new("Part")
    part.Name = "SafetyNet_AntiVoid"
    part.Size = Vector3.new(75000, 2, 75000)
    part.Position = Vector3.new(0, -85, 0)
    part.Anchored = true
    part.CanCollide = false
    part.Transparency = 1
    part.Parent = workspace

    part.Touched:Connect(function(hit)
        if _G.AntiVoidPart and hit.Parent == LocalPlayer.Character then
            local hrp = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            local targetPlot = workspace:FindFirstChild(plotName)
            
            if hrp and targetPlot then
                CreateEffectBox(hrp.Position)
                hrp.CFrame = targetPlot:GetPivot() * CFrame.new(0, 5, 0)
                hrp.Velocity = Vector3.new(0, 0, 0)
                
                Rayfield:Notify({
                    Title = "Anti-Void",
                    Content = "Uratowano i teleportowano na Pivot bazy, Panie!",
                    Duration = 2
                })
            end
        end
    end)
end

if not workspace:FindFirstChild("SafetyNet_AntiVoid") then
    CreateSafetyNet()
end

local function cleanVIPPart(part)
    if part:IsA("BasePart") then
        if part.Name == "VIPPart" or (part.Parent and part.Parent.Name == "VIP") or (part.Parent and part.Parent.Parent and part.Parent.Parent.Name == "VIP") then
            part.CanCollide = false
            part.CanTouch = false
            part.Transparency = 0.5
            
            for _, child in pairs(part:GetChildren()) do
                if child:IsA("TouchInterest") or child:IsA("TouchTransmitter") or child.Name:find("Gui") then
                    pcall(function()
                        child:Destroy()
                    end)
                end
            end
        end
    end
end

local function restoreVIPParts()
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("BasePart") then
            if obj.Name == "VIPPart" or (obj.Parent and obj.Parent.Name == "VIP") then
                obj.CanCollide = true
                obj.CanTouch = true
                obj.Transparency = 0
            end
        end
    end
end

-- --- FLY LOGIC ---
local flyBV, flyBG

local function StartFly()
    local char = LocalPlayer.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    flyBV = Instance.new("BodyVelocity")
    flyBV.MaxForce = Vector3.new(1e8, 1e8, 1e8)
    flyBV.Velocity = Vector3.new(0, 0, 0)
    flyBV.Parent = hrp

    flyBG = Instance.new("BodyGyro")
    flyBG.MaxTorque = Vector3.new(1e8, 1e8, 1e8)
    flyBG.P = 10000
    flyBG.D = 500
    flyBG.CFrame = hrp.CFrame
    flyBG.Parent = hrp

    LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
end

local function StopFly()
    if flyBV then flyBV:Destroy() end
    if flyBG then flyBG:Destroy() end
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
        LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
    end
end
local antiAfkConnection
local VirtualUser = game:GetService("VirtualUser")
-- --- PLAYER TAB UI ---
TabPlayer:CreateToggle({
   Name = "Anti-AFK",
   CurrentValue = false,
   Flag = "AntiAfkToggle",
   Callback = function(Value)
      if Value then
         -- Włączanie Anti-AFK
         if antiAfkConnection then antiAfkConnection:Disconnect() end
         antiAfkConnection = LocalPlayer.Idled:Connect(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new(), workspace.CurrentCamera.CFrame)
         end)
         Rayfield:Notify({Title = "Player Settings", Content = "Anti-AFK został aktywowany!", Duration = 3})
      else
         -- Wyłączanie Anti-AFK
         if antiAfkConnection then
            antiAfkConnection:Disconnect()
            antiAfkConnection = nil
         end
         Rayfield:Notify({Title = "Player Settings", Content = "Anti-AFK został wyłączony.", Duration = 3})
      end
   end,
})
TabPlayer:CreateToggle({
   Name = "Godmode",
   CurrentValue = false,
   Flag = "Flag_GodMode",
   Callback = function(Value) _G.GodMode = Value end,
})

TabPlayer:CreateToggle({
   Name = "Noclip",
   CurrentValue = false,
   Flag = "Flag_Noclip",
   Callback = function(Value) 
      _G.Noclip = Value 
      -- Reset kolizji przy wyłączeniu
      if not Value and LocalPlayer.Character then
          for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
              if v:IsA("BasePart") then v.CanCollide = true end
          end
      end
   end
})

TabPlayer:CreateToggle({
   Name = "Anti-Void",
   CurrentValue = false,
   Flag = "Flag_AntiVoid",
   Callback = function(Value) _G.AntiVoidPart = Value end,
})

TabPlayer:CreateButton({
   Name = "Trash (Drop Item)",
   Callback = function()
      ReplicatedStorage:WaitForChild("Events"):WaitForChild("RequestDropItem"):FireServer()
   end,
})

-- --- KONFIGURACJA ANTI-PUSH ---
_G.AntiPush = false
_G.AntiRagdoll = false

TabPlayer:CreateSection("Defense Systems")

TabPlayer:CreateToggle({
   Name = "Anti-Push (Anchor Velocity)",
   CurrentValue = false,
   Callback = function(Value)
      _G.AntiPush = Value
   end,
})

TabPlayer:CreateToggle({
   Name = "Anti-Ragdoll (State Bypass)",
   CurrentValue = false,
   Callback = function(Value)
      _G.AntiRagdoll = Value
   end,
})

-- --- MOVEMENT TAB UI ---
TabMovement:CreateToggle({
   Name = "Speed",
   CurrentValue = false,
   Flag = "Flag_SpeedEnabled",
   Callback = function(Value)
      _G.SpeedEnabled = Value
      if Value then
         pcall(function() realSpeed = LocalPlayer.leaderstats.Speed.Value end)
      else
         pcall(function() LocalPlayer.leaderstats.Speed.Value = realSpeed end)
      end
   end,
})

TabMovement:CreateSlider({
   Name = "Wartość Speed",
   Range = {0, 1000},
   Increment = 1,
   Suffix = "S",
   CurrentValue = 16,
   Flag = "Flag_SpeedValue",
   Callback = function(Value) _G.SpeedValue = Value end,
})

TabMovement:CreateToggle({
   Name = "Fly",
   CurrentValue = false,
   Flag = "Flag_FlyEnabled",
   Callback = function(Value)
      _G.FlyEnabled = Value
      if Value then StartFly() else StopFly() end
   end,
})

TabMovement:CreateSlider({
   Name = "Prędkość Fly",
   Range = {10, 500},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 50,
   Flag = "Flag_FlySpeed",
   Callback = function(Value) _G.FlySpeed = Value end,
})
-- --- ZMIENNE GLOBALNE DLA SPINBOTA ---
_G.SpinBot = false
_G.SpinSpeed = 20

-- --- UI W ZAKŁADCE MOVEMENT ---
TabMovement:CreateSection("Spin Mechanism")

TabMovement:CreateToggle({
   Name = "Enable SpinBot",
   CurrentValue = false,
   Flag = "Flag_SpinBot",
   Callback = function(Value)
      _G.SpinBot = Value
      if Value then
          task.spawn(function()
              while _G.SpinBot do
                  local char = LocalPlayer.Character
                  local hrp = char and char:FindFirstChild("HumanoidRootPart")
                  if hrp then
                      -- Obracamy HRP o zadaną prędkość
                      hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.rad(_G.SpinSpeed), 0)
                  end
                  task.wait() -- Synchronizacja z klatkami gry
              end
          end)
      end
   end,
})

TabMovement:CreateSlider({
   Name = "Spin Speed",
   Range = {0, 100},
   Increment = 1,
   Suffix = "°",
   CurrentValue = 20,
   Flag = "Flag_SpinSpeed",
   Callback = function(Value)
      _G.SpinSpeed = Value
   end,
})
-- --- AUTOMATIC TAB UI ---
TabAuto:CreateToggle({
   Name = "Auto Rebirth",
   CurrentValue = false,
   Flag = "Flag_AutoRebirth",
   Callback = function(Value) _G.AutoRebirth = Value end,
})

TabAuto:CreateToggle({
   Name = "Auto Sell Inventory",
   CurrentValue = false,
   Flag = "Flag_AutoSell",
   Callback = function(Value)
      _G.AutoSell = Value
      if Value then
          task.spawn(function()
              while _G.AutoSell do
                  local args = {"Inventory"}
                  ReplicatedStorage:WaitForChild("Events"):WaitForChild("RequestSell"):FireServer(unpack(args))
                  task.wait(_G.SellDelay / 1000)
              end
          end)
      end
   end,
})

TabAuto:CreateSlider({
   Name = "Auto Sell Delay",
   Range = {100, 10000},
   Increment = 100,
   Suffix = "ms",
   CurrentValue = 5000,
   Callback = function(Value) _G.SellDelay = Value end,
})

TabAuto:CreateToggle({
   Name = "Auto Speed Buy",
   CurrentValue = false,
   Callback = function(Value)
      _G.AutoSpeedBuy = Value
      if Value then
          task.spawn(function()
              while _G.AutoSpeedBuy do
                  local args = {10}
                  ReplicatedStorage:WaitForChild("Events"):WaitForChild("PurchaseSpeed"):FireServer(unpack(args))
                  task.wait(1)
              end
          end)
      end
   end,
})

TabAuto:CreateToggle({
    Name = "Auto Claim Gifts",
    CurrentValue = false,
	Flag = "Flag_AutoClaimGifts",
    Callback = function(Value)
        _G.AutoClaimGifts = Value
        if Value then
            task.spawn(function()
                while _G.AutoClaimGifts do
                    pcall(function()
                        local giftsFolder = LocalPlayer.PlayerGui.GUI.Frames.Gifts.Giftsrewards
                        
                        for i = 1, 6 do
                            local gift = giftsFolder:FindFirstChild("GiftsReward" .. i)
                            if gift then
                                local counter = gift:FindFirstChild("Counter")
                                -- Pana precyzyjna ścieżka: Claim -> Text (TextLabel)
                                local claimLabel = gift:FindFirstChild("Claim") and gift.Claim:FindFirstChild("Text")
                                
                                if counter and claimLabel then
                                    -- Jeśli gotowe do odebrania
                                    if counter.Text == "00:00" and claimLabel.Text == "Claim" then
                                        -- WYSYŁAMY I NIE CZEKAMY NA ODPOWIEDŹ (Brak blokady pętli)
                                        task.spawn(function()
                                            local args = {i}
                                            ReplicatedStorage.Events.Gifts_Claim:InvokeServer(unpack(args))
                                        end)
                                        -- Mała przerwa tylko po to, by nie wysłać 100 razy tego samego w jednej sekundzie
                                        task.wait(0.1)
                                    end
                                end
                            end
                        end
                    end)
                    task.wait(1) -- Częstsze sprawdzanie dla Pana, Panie
                end
            end)
        end
    end,
})
-- Zmienne globalne dla nowych funkcji
_G.AutoMassCollect = false
_G.CollectDelay = 500 -- Domyślnie 500ms

-- Sekcja w zakładce Automatic
TabAuto:CreateToggle({
    Name = "Auto Mass Collect (All Floors)",
    CurrentValue = false,
    Callback = function(Value)
        _G.AutoMassCollect = Value
        if Value then
            task.spawn(function()
                while _G.AutoMassCollect do
                    pcall(function()
                        local plot = workspace:FindFirstChild("Plot_GoogleVelocity")
                        local rootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        
                        if plot and rootPart then
                            local floors = {"Floor1", "Floor2", "Floor3"}
                            
                            for _, floorName in ipairs(floors) do
                                local floor = plot:FindFirstChild(floorName)
                                if floor then
                                    local slotsFolder = floor:FindFirstChild("Slots")
                                    if slotsFolder then
                                        for _, slot in pairs(slotsFolder:GetChildren()) do
                                            local collectTouch = slot:FindFirstChild("CollectTouch")
                                            if collectTouch then
                                                -- Natychmiastowa symulacja dotyku
                                                task.spawn(function()
                                                    firetouchinterest(rootPart, collectTouch, 0)
                                                    task.wait()
                                                    firetouchinterest(rootPart, collectTouch, 1)
                                                end)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end)
                    -- Czekaj tyle milisekund, ile ustawiono na suwaku
                    task.wait(_G.CollectDelay / 1000)
                end
            end)
        end
    end,
})

TabAuto:CreateSlider({
   Name = "Collect Speed (ms)",
   Range = {100, 5000},
   Increment = 100,
   Suffix = "ms",
   CurrentValue = 500,
   Callback = function(Value)
      _G.CollectDelay = Value
   end,
})

-- --- ZMIENNE GLOBALNE DLA UPGRADES ---
_G.AutoUpgrades = false
_G.UpgradeDelay = 500 -- Domyślnie 500ms

-- --- UI W ZAKŁADCE AUTOMATIC ---
TabAuto:CreateSection("Auto Slot Upgrades")

TabAuto:CreateToggle({
    Name = "Auto Upgrade All Slots",
    CurrentValue = false,
	Flag = "Flag_AutoUpgrades",
    Callback = function(Value)
        _G.AutoUpgrades = Value
        if Value then
            task.spawn(function()
                while _G.AutoUpgrades do
                    -- Przechodzimy przez piętra 1, 2, 3
                    for f = 1, 3 do
                        if not _G.AutoUpgrades then break end
                        local floorName = "Floor" .. f
                        
                        -- Przechodzimy przez sloty 1 do 10
                        for s = 1, 10 do
                            if not _G.AutoUpgrades then break end
                            local slotName = "Slot" .. s
                            
                            pcall(function()
                                local args = {floorName, slotName}
                                ReplicatedStorage:WaitForChild("Events"):WaitForChild("RequestSlotUpgrade"):FireServer(unpack(args))
                            end)
                            
                            -- Krótka przerwa między pojedynczymi slotami, by nie zlagować gry
                            task.wait(_G.UpgradeDelay / 1000)
                        end
                    end
                    -- Mała pauza po przejściu wszystkich pięter przed kolejną rundą
                    task.wait(1) 
                end
            end)
        end
    end,
})

TabAuto:CreateSlider({
   Name = "Upgrade Speed (ms)",
   Range = {100, 5000},
   Increment = 100,
   Suffix = "ms",
   CurrentValue = 500,
   Flag = "Flag_UpgradeDelay",
   Callback = function(Value)
      _G.UpgradeDelay = Value
   end,
})

-- Zmienna globalna
_G.SoundsOff = false

TabPlayer:CreateToggle({
   Name = "Sounds Off",
   CurrentValue = false,
   Flag = "Flag_SoundsOff",
   Callback = function(Value)
      _G.SoundsOff = Value
      
      if Value then
          pcall(function()
              -- Wyciszenie obecnych dźwięków
              local soundsFolder = workspace:FindFirstChild("Sounds")
              if soundsFolder then
                  for _, sound in pairs(soundsFolder:GetDescendants()) do
                      if sound:IsA("Sound") then
                          sound.Volume = 0
                          sound:Stop()
                      end
                  end
              end
          end)
          Rayfield:Notify({Title = "Audio System", Content = "Wyciszono wszystkie dźwięki, Panie.", Duration = 3})
      else
          pcall(function()
              -- Przywrócenie dźwięków (opcjonalnie, ustawia na 0.5)
              local soundsFolder = workspace:FindFirstChild("Sounds")
              if soundsFolder then
                  for _, sound in pairs(soundsFolder:GetDescendants()) do
                      if sound:IsA("Sound") then
                          sound.Volume = 0.5
                      end
                  end
              end
          end)
          Rayfield:Notify({Title = "Audio System", Content = "Dźwięki przywrócone.", Duration = 3})
      end
   end,
})

-- Automatyczne wyciszanie nowych dźwięków
workspace.DescendantAdded:Connect(function(descendant)
    if _G.SoundsOff and descendant:IsA("Sound") then
        if descendant:IsDescendantOf(workspace:FindFirstChild("Sounds")) then
            descendant.Volume = 0
            task.wait()
            descendant:Stop()
        end
    end
end)

-- --- GAMEPASS TAB UI ---
TabGamepass:CreateToggle({
   Name = "VIP Unlocker",
   CurrentValue = false,
   Flag = "Flag_VIPUnlocker",
   Callback = function(Value)
      _G.VIPUnlocker = Value
      if Value then
          Rayfield:Notify({Title = "VIP System", Content = "Aktywowano Panie.", Duration = 3})
      else
          restoreVIPParts()
          Rayfield:Notify({Title = "VIP System", Content = "Przywrócono kolizje VIP.", Duration = 3})
      end
   end,
})

-- --- GŁÓWNE PĘTLE ---
local function ApplyGodMode(character)
    if not _G.GodMode then return end
    
    local hum = character:WaitForChild("Humanoid", 5)
    if hum then
        -- Blokujemy stan śmierci
        hum:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
        -- Stałe leczenie (na wszelki wypadek)
        task.spawn(function()
            while _G.GodMode and character.Parent do
                hum.Health = hum.MaxHealth
                task.wait()
            end
        end)
    end
end

-- Obsługa Tsunami (Usuwanie zagrożenia u źródła)
local function CleanTsunami(obj)
    if not _G.GodMode then return end
    if obj:IsA("TouchInterest") or obj:IsA("TouchTransmitter") then
        pcall(function() obj:Destroy() end)
    elseif obj:IsA("BasePart") then
        obj.CanTouch = false
    end
end

-- Reakcja na postać
LocalPlayer.CharacterAdded:Connect(ApplyGodMode)

-- Monitorowanie nowych Tsunami w czasie rzeczywistym
workspace.DescendantAdded:Connect(function(descendant)
    if _G.GodMode then
        if descendant:IsDescendantOf(workspace:FindFirstChild("Tsunamis")) then
            CleanTsunami(descendant)
        end
    end
end)
RunService.RenderStepped:Connect(function()
    local char = LocalPlayer.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    local cam = workspace.CurrentCamera

    if _G.FlyEnabled and hrp and flyBV and flyBG then
        local moveDir = Vector3.new(0, 0, 0)
        if UserInputService:IsKeyDown(Enum.KeyCode.W) then moveDir = moveDir + cam.CFrame.LookVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) then moveDir = moveDir - cam.CFrame.LookVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.A) then moveDir = moveDir - cam.CFrame.RightVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) then moveDir = moveDir + cam.CFrame.RightVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.Space) then moveDir = moveDir + Vector3.new(0, 1, 0) end
        if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then moveDir = moveDir - Vector3.new(0, 1, 0) end

        flyBV.Velocity = moveDir * _G.FlySpeed
        flyBG.CFrame = cam.CFrame
    end

    if _G.Noclip and LocalPlayer.Character then
        for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then v.CanCollide = false end
        end
    end

    if _G.GodMode and char then
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum then 
            hum.Health = hum.MaxHealth 
            if hum:GetStateEnabled(Enum.HumanoidStateType.Dead) then
                hum:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
            end
        end
        
        -- Masowe czyszczenie istniejących tsunami (Bypass natychmiastowy)
        local tsunamis = workspace:FindFirstChild("Tsunamis")
        if tsunamis then
            for _, v in pairs(tsunamis:GetDescendants()) do
                if v:IsA("TouchInterest") then pcall(function() v:Destroy() end) end
                if v:IsA("BasePart") then v.CanTouch = false end
            end
        end
    end
	if _G.AntiVoidPart and hrp then
        if hrp.Position.Y < -85 then 
            local targetPlot = workspace:FindFirstChild(plotName)
            
            -- Efekt wizualny w miejscu spadku
            CreateEffectBox(hrp.Position)
            
            if targetPlot then
                -- Teleportacja na działkę
                hrp.CFrame = targetPlot:GetPivot() * CFrame.new(0, 5, 0)
            else
                -- Teleportacja ratunkowa na środek mapy, jeśli nie ma działki
                hrp.CFrame = CFrame.new(0, 50, 0) 
            end
            
            hrp.Velocity = Vector3.new(0, 0, 0) -- Zatrzymanie pędu spadania
            
            Rayfield:Notify({
                Title = "Anti-Void System",
                Content = "Wykryto upadek poza mapę. Uratowano Pana!",
                Duration = 2
            })
        end
    end
end)

task.spawn(function()
    while true do
        if _G.AutoRebirth then
            pcall(function() ReplicatedStorage.Events.RequestRebirth:FireServer() end)
        end
        if _G.SpeedEnabled then
            pcall(function() LocalPlayer.leaderstats.Speed.Value = _G.SpeedValue end)
        end
        if _G.VIPUnlocker then
            pcall(function()
                for _, obj in pairs(workspace:GetDescendants()) do
                    if obj.Name == "VIPPart" or (obj.Parent and obj.Parent.Name == "VIP") then
                        cleanVIPPart(obj)
                    end
                end
            end)
        end
        task.wait(0.5)
    end
end)

workspace.DescendantAdded:Connect(function(descendant)
    if _G.VIPUnlocker then
        task.wait(0.2)
        cleanVIPPart(descendant)
    end
end)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local HttpService = game:GetService("HttpService")

-- --- KONFIGURACJA GLOBALNA ---
_G.AutoFarmEnabled = false
_G.ServerHopEnabled = false -- Nowa flaga dla Pana
_G.MinRarity = "Any"
_G.MinMutation = "Any"
_G.MinEarnings = "Any"
_G.CustomCarryLimit = 1

-- Punkt startowy Pana
local StartLocation = CFrame.new(-10.137309074401855, 3.8573758602142334, 3101.41357421875)
local plotName = "Plot_" .. LocalPlayer.Name

-- Tabele wag
local RarityList = {"Any", "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Blessed", "Exclusive", "GroupExclusive"}
local MutationList = {"Any", "Normal", "Neon", "Ruby", "Diamond", "Golden"}
local EarningsList = {"Any", "8M+", "20M+", "50M+", "70M+", "90M+"}
local RarityWeights = {["Any"] = 0, ["Common"] = 1, ["Uncommon"] = 2, ["Rare"] = 3, ["Epic"] = 4, ["Legendary"] = 5, ["Mythical"] = 6, ["Blessed"] = 7, ["Exclusive"] = 8, ["GroupExclusive"] = 9}
local UnitWeights = {[""] = 0, ["K"] = 1, ["M"] = 2, ["B"] = 3, ["T"] = 4}

-- --- FUNKCJA SERVER HOP ---
-- 1. Funkcja kolejkująca (musi być zdefiniowana najpierw)
local function QueueScript()
    local qot = syn and syn.queue_on_teleport or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
    if qot then
        qot([[
            repeat task.wait() until game:IsLoaded()
            -- Panie, upewnij się, że ten link poniżej to DOKŁADNIE ten skrypt, który teraz edytujemy:
            loadstring(game:HttpGet("https://raw.githubusercontent.com/xxCichyxx/rbxscripts/refs/heads/main/og.lua"))()
        ]])
    end
end

-- 2. Poprawiona funkcja ServerHop
local function ServerHop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local HttpService = game:GetService("HttpService")
    
    -- 1. Próba odczytu bazy odwiedzonych serwerów
    local success, fileContent = pcall(function() return readfile("NotSameServers.json") end)
    if success then
        pcall(function() AllIDs = HttpService:JSONDecode(fileContent) end)
    end

    -- 2. Główna pętla ponawiania (Retrying)
    local rawData = nil
    local attempt = 0
    
    while not rawData do
        attempt = attempt + 1
        
        pcall(function()
            rawData = game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Desc&limit=100')
        end)

        if not rawData then
            -- Powiadomienie dla Pana, że trwa walka o listę
            Rayfield:Notify({
                Title = "Błąd API (Rate Limit)",
                Content = "Próba " .. attempt .. ": Roblox blokuje listę. Czekam 15s...",
                Duration = 5
            })
            warn("Próba " .. attempt .. " nieudana. Czekam na odblokowanie limitu...")
            task.wait(15) -- Dłuższy czas oczekiwania pozwala szybciej zdjąć blokadę
        end
        
        -- Zabezpieczenie: jeśli po 10 próbach nadal nic, spróbujmy zmienić metodę sortowania
        if attempt > 10 then
            pcall(function()
                rawData = game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100')
            end)
        end
    end

    -- 3. Przetwarzanie danych po udanym pobraniu
    local decodeSuccess, Site = pcall(function() return HttpService:JSONDecode(rawData) end)
    if not decodeSuccess or not Site.data then 
        warn("Dane serwerów są uszkodzone, restartuję funkcję...")
        return ServerHop() 
    end
    
    local possibleServers = {}
    for _, v in pairs(Site.data) do
        if v.id ~= game.JobId and tonumber(v.maxPlayers) > tonumber(v.playing) then
            local isNew = true
            for _, existing in pairs(AllIDs) do
                if tostring(v.id) == tostring(existing) then isNew = false break end
            end
            if isNew then table.insert(possibleServers, v.id) end
        end
    end

    -- 4. Finalny skok
    if #possibleServers > 0 then
        local randomID = possibleServers[math.random(1, #possibleServers)]
        
        -- Zapisujemy ID, by nie wracać
        table.insert(AllIDs, tostring(randomID))
        if #AllIDs > 150 then table.remove(AllIDs, 1) end
        writefile("NotSameServers.json", HttpService:JSONEncode(AllIDs))

        Rayfield:Notify({Title = "Sukces!", Content = "Znaleziono serwer. Teleportacja...", Duration = 3})
        
        -- Kolejkujemy skrypt i skaczemy
        _G.AutoFarmEnabled = true 
        QueueScript()
        
        task.wait(1)
        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, randomID, game.Players.LocalPlayer)
    else
        -- Jeśli wszystkie serwery z listy 100 były już odwiedzone, czyścimy bazę i próbujemy od nowa
        warn("Wszystkie serwery na tej liście już Pan odwiedził. Resetuję pamięć...")
        writefile("NotSameServers.json", HttpService:JSONEncode({}))
        return ServerHop()
    end
end

-- --- FUNKCJE POMOCNICZE ---

local function GetCarryStatus()
    local char = LocalPlayer.Character
    local head = char and char:FindFirstChild("Head")
    local carryLimitLabel = head and head:FindFirstChild("CarryLimit", true)
    if carryLimitLabel and carryLimitLabel:IsA("TextLabel") then
        local current, _ = carryLimitLabel.Text:match("(%d+)/(%d+)")
        if current then return tonumber(current), _G.CustomCarryLimit end
    end
    return 0, _G.CustomCarryLimit
end

local function GetMoneyData(item)
    local gui = item:FindFirstChild("InfoGUI", true)
    local label = gui and gui:FindFirstChild("Earnings", true)
    if label then
        local rawText = label.Text:upper()
        local numPart = tonumber(rawText:match("[%d%.]+")) or 0
        local unitPart = rawText:match("[KMBT]") or ""
        return numPart, unitPart
    end
    return 0, ""
end

local function IsValid(item)
    local rawRarity = item:GetAttribute("Rarity") or "Common"
    local cleanRarity = rawRarity:gsub("%d+", "")
    if _G.MinRarity ~= "Any" and (RarityWeights[cleanRarity] or 0) < (RarityWeights[_G.MinRarity] or 0) then return false end
    local mutation = item:GetAttribute("Mutation") or "Normal"
    if _G.MinMutation ~= "Any" and mutation ~= _G.MinMutation then return false end
    if _G.MinEarnings ~= "Any" then
        local itemNum, itemUnit = GetMoneyData(item)
        local minNum = tonumber(_G.MinEarnings:match("[%d%.]+")) or 0
        local minUnit = _G.MinEarnings:match("[KMBT]") or ""
        if UnitWeights[itemUnit] < UnitWeights[minUnit] then return false end
        if itemUnit == minUnit and itemNum < minNum then return false end
    end
    return true
end

TabAutoFarm:CreateSection("Filters")
TabAutoFarm:CreateSlider({
   Name = "Carry Limit (Save Pet)",
   Flag = "Flag_CarryLimit",
   Range = {1, 6}, Increment = 1, Suffix = " Pets", CurrentValue = 1,
   Callback = function(Value) _G.CustomCarryLimit = Value end,
})

TabAutoFarm:CreateDropdown({Name = "Min Rarity", Options = RarityList, CurrentOption = "Any", Flag = "Flag_MinRarity", Callback = function(v) _G.MinRarity = type(v) == "table" and v[1] or v end})
TabAutoFarm:CreateDropdown({Name = "Min Mutation", Options = MutationList, CurrentOption = "Any", Flag = "Flag_MinMutation", Callback = function(v) _G.MinMutation = type(v) == "table" and v[1] or v end})
TabAutoFarm:CreateDropdown({Name = "Min Earnings", Options = EarningsList, CurrentOption = "Any", Flag = "Flag_MinEarnings", Callback = function(v) _G.MinEarnings = type(v) == "table" and v[1] or v end})

TabAutoFarm:CreateSection("Automation")
TabAutoFarm:CreateToggle({
    Name = "SERVER HOP (If no items found)",
    CurrentValue = false,
	Flag = "Flag_ServerHop",
    Callback = function(Value) _G.ServerHopEnabled = Value end
})

TabAutoFarm:CreateToggle({
    Name = "START DYNAMIC FARM",
    CurrentValue = false,
	Flag = "Flag_AutoFarmEnabled",
    Callback = function(Value)
        _G.AutoFarmEnabled = Value
        if Value then
            task.spawn(function()
                local hrp = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if hrp then
                    hrp.CFrame = StartLocation
                    task.wait(2)
                end

                while _G.AutoFarmEnabled do
                    local spawner = workspace:FindFirstChild("ItemSpawners")
                    local itemsFoundInCycle = 0

                    if hrp and spawner then
                        local current, max = GetCarryStatus()
                        if current >= max then
                            hrp.CFrame = hrp.CFrame * CFrame.new(0, 55, 0)
                            repeat task.wait(1) current, max = GetCarryStatus() until current == 0 or not _G.AutoFarmEnabled
                            if _G.AutoFarmEnabled then hrp.CFrame = StartLocation task.wait(0.5) end
                        end

                        for _, obj in ipairs(spawner:GetDescendants()) do
                            if not _G.AutoFarmEnabled then break end
                            local c, m = GetCarryStatus()
                            if c >= m then break end

                            if obj.Name == "SpawnedItem" and IsValid(obj) then
                                itemsFoundInCycle = itemsFoundInCycle + 1
                                local prompt = obj:FindFirstChildOfClass("ProximityPrompt") or obj:FindFirstChild("ProximityPrompt", true)
                                local targetPart = obj:FindFirstChild("RootPart") or obj:FindFirstChildOfClass("BasePart")
                                if prompt and targetPart then
                                    hrp.CFrame = targetPart.CFrame * CFrame.new(0, 3, 0)
                                    task.wait(0.1)
                                    fireproximityprompt(prompt)
                                    task.wait(0.2)
                                end
                            end
                        end
                    end
                    
                    -- Jeśli flaga serverhop jest ON i nie znaleźliśmy nic ciekawego w tym cyklu
                    if _G.ServerHopEnabled and itemsFoundInCycle == 0 and _G.AutoFarmEnabled then
                        Rayfield:Notify({Title = "Server Hop", Content = "Brak przedmiotów. Szukanie nowego serwera...", Duration = 3})
                        task.wait(1)
                        ServerHop()
                        break
                    end
                    
                    task.wait(1)
                end
            end)
        end
    end
})

Rayfield:LoadConfiguration()
Rayfield:Notify({
   Title = "BlockBypass System",
   Content = "Witaj ponownie, Panie. Wszystkie Moduły Zostały Poprawnie Załadowane",
   Duration = 5,
   Image = 4483362458,

})

