local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local coinsFolder = workspace:WaitForChild("CoinsFolder")
local carsFolder = workspace:WaitForChild("Cars")

----------------------------------------------------------------------
-- SEKNCJA 1: BACKEND (LOGIKA)
----------------------------------------------------------------------

local function getMyUserId() return player.UserId end
local function getMyName() return player.Name end
local function getMyDisplayName() return player.DisplayName end

local function CountVehicleParts(vehicleModel)
	if not vehicleModel then return 0 end
	local partCount = 0
	for _, object in pairs(vehicleModel:GetDescendants()) do
		if object:IsA("BasePart") then
			partCount = partCount + 1
		end
	end
	return partCount
end

local function countCoins(name)
	local count = 0
	if not coinsFolder then return 0 end
	for _, item in pairs(coinsFolder:GetChildren()) do
		if item.Name == name and item:IsA("BasePart") then
			count = count + 1
		end
	end
	return count
end

-- Nowa funkcja sprawdzająca czy gracz siedzi w aucie (Occupant)
local function isPlayerInControl(vehicle)
	if not vehicle then return false end
	-- Szukamy ścieżki Chassis -> VehicleSeat
	local chassis = vehicle:FindFirstChild("Chassis")
	if chassis then
		local seat = chassis:FindFirstChild("VehicleSeat")
		if seat and seat:IsA("VehicleSeat") then
			-- Sprawdzamy czy Occupant (Humanoid) należy do naszej postaci
			if seat.Occupant and seat.Occupant.Parent == player.Character then
				return true
			end
		end
	end
	return false
end

local function isMoving()
    local character = player.Character
    local camera = workspace.CurrentCamera

    if not character or not character:FindFirstChild("HumanoidRootPart") then
        return false, Vector3.new()
    end

    local moveDirection = camera.CFrame.LookVector
    moveDirection = Vector3.new(moveDirection.X, 0, moveDirection.Z)
    if moveDirection.Magnitude > 0 then
        moveDirection = moveDirection.Unit
    end

    local movement = Vector3.new()

    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
        movement = movement + moveDirection
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
        movement = movement - moveDirection
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
        movement = movement + Vector3.new(-moveDirection.Z, 0, moveDirection.X)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
        movement = movement + Vector3.new(moveDirection.Z, 0, -moveDirection.X)
    end

    if movement.Magnitude > 0 then
        return true, movement.Unit
    else
        return false, Vector3.new()
    end
end

local function getVelocityDirection()
    local camera = workspace.CurrentCamera
    local lookVector = camera.CFrame.LookVector -- Pełny wektor patrzenia (góra/dół/boki)
    local rightVector = camera.CFrame.RightVector -- Wektor w prawo
    
    local moveDir = Vector3.new(0, 0, 0)

    -- Kierunek przód/tył (W/S) - używamy pełnego LookVector, aby lecieć góra/dół
    if UserInputService:IsKeyDown(Enum.KeyCode.W) then 
        moveDir = moveDir + lookVector 
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.S) then 
        moveDir = moveDir - lookVector 
    end

    -- Kierunek boczny (A/D) - RightVector zawsze jest poziomy relatywnie do kamery
    if UserInputService:IsKeyDown(Enum.KeyCode.D) then 
        moveDir = moveDir + rightVector 
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.A) then 
        moveDir = moveDir - rightVector 
    end

    if moveDir.Magnitude > 0 then
        return moveDir.Unit
    end
    return moveDir
end
local function SetNoCollide(model, state)
    if not model then return end
    for _, part in pairs(model:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = not state
        end
    end
end
----------------------------------------------------------------------
-- SEKNCJA 2: INTERFEJS RAYFIELD
----------------------------------------------------------------------

local Window = Rayfield:CreateWindow({
	Name = "Backrooms Drift",
	LoadingTitle = "Wczytywanie Systemu...",
	LoadingSubtitle = "Dobre Polatać Driftem",
	ConfigurationSaving = { Enabled = false }
})

-- ZAKŁADKA PLAYER
local PlayerTab = Window:CreateTab("Player", "user")
_G.SpeedMode = "Legit"
local PlayerSection = PlayerTab:CreateSection("Movement Settings")
PlayerTab:CreateToggle({
   Name = "Speed",
   CurrentValue = false,
   Flag = "SpeedToggle",
   Callback = function(Value)
      _G.SpeedEnabled = Value
      -- Reset WalkSpeed do normalnej wartości przy wyłączeniu
      if not Value then
          pcall(function() player.Character.Humanoid.WalkSpeed = 16 end)
      end
   end,
})

PlayerTab:CreateDropdown({
   Name = "Speed Mode",
   Options = {"Legit", "HVH", "Normal", "CFrame"},
   CurrentOption = {"Legit"},
   MultipleOptions = false,
   Flag = "SpeedMode",
   Callback = function(Options)
      _G.SpeedMode = Options[1]
   end,
})

PlayerTab:CreateSlider({
   Name = "Custom Speed",
   Range = {0, 300},
   Increment = 1,
   Suffix = " Studs",
   CurrentValue = 16,
   Flag = "SpeedValue",
   Callback = function(Value)
      _G.SpeedValue = Value
   end,
})

_G.FlyEnabled = false
_G.FlySpeed = 50

local BodyVelocity = nil
local BodyGyro = nil
local currentVehicle = nil

PlayerTab:CreateToggle({
    Name = "Fly Mode",
    CurrentValue = false,
    Flag = "FlyToggle",
    Callback = function(Value)
        _G.FlyEnabled = Value
        local character = player.Character
        local hrp = character and character:FindFirstChild("HumanoidRootPart")
        local humanoid = character and character:FindFirstChild("Humanoid")
        local animateScript = character and character:FindFirstChild("Animate")

        if Value then
            -- Tworzymy obiekty, ale na razie bez Parenta lub w HRP
            BodyVelocity = Instance.new("BodyVelocity")
            BodyVelocity.Name = "UniversalFlyVelocity"
            BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            BodyVelocity.Velocity = Vector3.new(0, 0, 0)
            
            BodyGyro = Instance.new("BodyGyro")
            BodyGyro.Name = "UniversalFlyGyro"
            BodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
            BodyGyro.P = 9e4
            
            -- Domyślnie startujemy w HRP
            BodyVelocity.Parent = hrp
            BodyGyro.Parent = hrp
        else
            -- Sprzątanie
            if BodyVelocity then BodyVelocity:Destroy() BodyVelocity = nil end
            if BodyGyro then BodyGyro:Destroy() BodyGyro = nil end
            
            if humanoid then
                humanoid.PlatformStand = false
                humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
            end
            if animateScript then animateScript.Enabled = true end
        end
    end,
})

PlayerTab:CreateSlider({
    Name = "Fly Speed",
    Range = {0, 500},
    Increment = 1,
    Suffix = " Units",
    CurrentValue = 50,
    Flag = "FlySpeedValue",
    Callback = function(Value)
        _G.FlySpeed = Value
    end,
})

-- ZAKŁADKA VEHICLE
local VehicleTab = Window:CreateTab("Vehicle", "car")
local Label_ModelName = VehicleTab:CreateLabel("Model: Brak pojazdu")
local Label_PartCount = VehicleTab:CreateLabel("Części: 0")
local Label_DrivingStatus = VehicleTab:CreateLabel("Status: Poza autem")

-- TWORZENIE SLIDERÓW (RAZ NA START)
local Slider_Brake = VehicleTab:CreateSlider({
	Name = "brakeStrength",
	Range = {0, 5000},
	Increment = 1,
	CurrentValue = 0,
	Flag = "Brake",
	Callback = function(Value)
		if currentVehicle then currentVehicle:SetAttribute("brakeStrength", Value) end
	end,
})

local Slider_MaxSpeed = VehicleTab:CreateSlider({
	Name = "MaxSpeed",
	Range = {0, 5000},
	Increment = 1,
	CurrentValue = 0,
	Flag = "MaxSpeed",
	Callback = function(Value)
		if currentVehicle then currentVehicle:SetAttribute("MaxSpeed", Value) end
	end,
})

local Slider_Throttle = VehicleTab:CreateSlider({
	Name = "throttlePower",
	Range = {0, 5000},
	Increment = 1,
	CurrentValue = 0,
	Flag = "Throttle",
	Callback = function(Value)
		if currentVehicle then currentVehicle:SetAttribute("throttlePower", Value) end
	end,
})

local Slider_LowSpeed = VehicleTab:CreateSlider({
	Name = "lowSpeedThreshold",
	Range = {0, 5000},
	Increment = 1,
	CurrentValue = 0,
	Flag = "LowSpeed",
	Callback = function(Value)
		if currentVehicle then currentVehicle:SetAttribute("lowSpeedThreshold", Value) end
	end,
})

VehicleTab:CreateToggle({
	Name = "Car AntiCrash",
	CurrentValue = false,
	Flag = "WallPhase",
	Callback = function(Value)
		_G.NoClipCar = Value
		
		if Value then
			-- Logika włączona
			task.spawn(function()
				while _G.NoClipCar do
					if currentVehicle and currentVehicle.Parent then
						for _, part in pairs(currentVehicle:GetDescendants()) do
							-- Sprawdzamy czy to BasePart ORAZ czy nie nazywa się CashCollector
							if part:IsA("BasePart") and part.Name ~= "CashCollector" then
								-- Dodatkowe sprawdzenie, czy część nie jest wewnątrz modelu CashCollector
								if not part:FindFirstAncestor("CashCollector") then
									part.CanTouch = false
								end
							end
						end
					end
					task.wait(0.3)
				end
			end)
		else
			-- Logika wyłączona (przywracanie)
			if currentVehicle and currentVehicle.Parent then
				for _, part in pairs(currentVehicle:GetDescendants()) do
					if part:IsA("BasePart") then
						part.CanTouch = true
					end
				end
			end
		end
	end,
})
VehicleTab:CreateButton({
    Name = "Flip Vehicle",
    Callback = function()
        if currentVehicle and currentVehicle.PrimaryPart then
            local root = currentVehicle.PrimaryPart
            local newCFrame = root.CFrame * CFrame.Angles(0, 0, math.rad(180))
            
            currentVehicle:SetPrimaryPartCFrame(newCFrame + Vector3.new(0, 2, 0))
        end
    end,
})
local SpinnerSection = VehicleTab:CreateSection("Spinner Mode")

local spinnerActive = false
local spinnerSpeed = 30
local spinnerForce = nil

-- Upewnij się, że używasz Tab (np. VehicleTab), a nie Section
local SpinnerSlider = VehicleTab:CreateSlider({
   Name = "Spinner Speed",
   Range = {0, 50},
   Increment = 1,
   Suffix = " RPM",
   CurrentValue = 30,
   Flag = "SpinnerSpeed1", 
   Callback = function(Value)
       spinnerSpeed = Value
       if spinnerForce then
           spinnerForce.AngularVelocity = Vector3.new(0, spinnerSpeed, 0)
       end
   end,
})

VehicleTab:CreateToggle({
   Name = "Car Spinner",
   CurrentValue = false,
   Flag = "SpinnerToggle1",
   Callback = function(Value)
       spinnerActive = Value
       
       if Value then
           task.spawn(function()
               while spinnerActive do
                   if currentVehicle and currentVehicle.PrimaryPart then
                       local root = currentVehicle.PrimaryPart
                       
                       if not spinnerForce or spinnerForce.Parent ~= root then
                           if spinnerForce then spinnerForce:Destroy() end
                           spinnerForce = Instance.new("BodyAngularVelocity")
                           spinnerForce.MaxTorque = Vector3.new(0, math.huge, 0)
                           spinnerForce.Parent = root
                       end
                       
                       spinnerForce.AngularVelocity = Vector3.new(0, spinnerSpeed, 0)
                   end
                   task.wait(0.1)
               end
           end)
       else
           if spinnerForce then
               spinnerForce:Destroy()
               spinnerForce = nil
           end
       end
   end,
})
local MapTab = Window:CreateTab("Map", "globe")
local mapDestroyActive = false
local mapConnection = nil

-- Funkcja procesująca zawartość mapy
local function processFolder(folder, active)
    if not folder then return end
    
    -- IGNOROWANIE: Jeśli folder to "Floors" lub "Road", kończymy funkcję dla tego folderu
    if folder.Name == "Floors" or folder.Name == "Road" then 
        return 
    end

    for _, obj in pairs(folder:GetDescendants()) do
        -- Sprawdzamy dodatkowo, czy obiekt nie jest wewnątrz czegoś, co nazywa się Floors/Road
        -- (Zabezpieczenie przed zagnieżdżonymi strukturami)
        if not obj:FindFirstAncestor("Floors") and not obj:FindFirstAncestor("Road") then
            if obj:IsA("BasePart") then
                obj.CanCollide = not active
                obj.Transparency = active and 1 or 0
            elseif obj:IsA("Decal") or obj:IsA("Texture") then
                obj.Transparency = active and 1 or 0
            end
        end
    end
end

-- Główny skaner mapy
local function updateMapState(active)
    local world = workspace:FindFirstChild("World")
    local maps = world and world:FindFirstChild("CurrentMaps")
    if not maps then return end

    for _, level in pairs(maps:GetChildren()) do
        -- Przeszukujemy foldery wewnątrz poziomów (Level0, Level1 itd.)
        for _, subFolder in pairs(level:GetChildren()) do
            processFolder(subFolder, active)
        end
    end
end

MapTab:CreateToggle({
    Name = "Map Destroy",
    CurrentValue = false,
    Flag = "MapDestroy",
    Callback = function(Value)
        mapDestroyActive = Value
        
        -- Natychmiastowa aktualizacja
        updateMapState(Value)

        if Value then
            local world = workspace:FindFirstChild("World")
            local maps = world and world:FindFirstChild("CurrentMaps")
            
            if maps and not mapConnection then
                -- Nasłuchiwanie na nowe obiekty (np. gdy serwer ładuje nową mapę)
                mapConnection = maps.ChildAdded:Connect(function(child)
                    if mapDestroyActive then
                        task.wait(1) -- Czekamy na załadowanie elementów
                        processFolder(child, true)
                    end
                end)
            end
        else
            -- Rozłączanie pętli zdarzeń
            if mapConnection then
                mapConnection:Disconnect()
                mapConnection = nil
            end
        end
    end,
})
-- ZAKŁADKA COINS
local CoinTab = Window:CreateTab("Coins", "coins")
local Label_Big = CoinTab:CreateLabel("BigCoins: 0")
local Label_Med = CoinTab:CreateLabel("MediumCoins: 0")
local Label_Small = CoinTab:CreateLabel("SmallCoins: 0")

CoinTab:CreateSection("Smooth Auto Farm Settings")
_G.FarmSpeed = 50 
_G.CoinFarmEnabled = false
-- Przełącznik Farm
CoinTab:CreateToggle({
    Name = "Auto Farm",
    CurrentValue = false,
    Flag = "CoinFarmEnabled", 
    Callback = function(Value)
        _G.CoinFarmEnabled = Value
    end,
})

-- Suwak Prędkości
CoinTab:CreateSlider({
    Name = "Farm Speed",
    Range = {10, 500},
    Increment = 1,
    Suffix = " Studs/s",
    CurrentValue = 50,
    Flag = "FarmSpeed",
    Callback = function(Value)
        _G.FarmSpeed = Value
    end,
})

local tuningConnection = nil
local activeSlider = nil

local GamepassTab = Window:CreateTab("Gamepass", 4483362458)

-- --- SEKBCJA FREE RADIO ---
GamepassTab:CreateToggle({
    Name = "Free Radio",
    CurrentValue = false,
    Flag = "FreeRadio",
    Callback = function(Value)
        if Value then
            -- Usuwanie starych wersji
            for _, gui in pairs(PlayerGui:GetChildren()) do
                if gui.Name == "CustomMusicGUI" or gui.Name == "CustomMusicFix" then gui:Destroy() end
            end

            local originalMusic = ReplicatedStorage:FindFirstChild("CustomMusicGUI", true)
            if not originalMusic then return end

            local myMusicGui = originalMusic:Clone()
            myMusicGui.Name = "CustomMusicFix"

            for _, s in pairs(myMusicGui:GetDescendants()) do
                if s:IsA("LocalScript") then s:Destroy() end
            end
            
            myMusicGui.Parent = PlayerGui

            local uiFrame = myMusicGui:FindFirstChild("UIFrame", true)
            local openBtn = myMusicGui:FindFirstChild("OpenAndCloseButton", true)
            
            if openBtn then
                local label = openBtn:FindFirstChild("Title") or openBtn:FindFirstChildOfClass("TextLabel")
                if label then 
                    label.Text = "Free Radio"
                    label.TextScaled = false
                    label.TextSize = 20
                end
                openBtn.Position = UDim2.new(openBtn.Position.X.Scale, 0, 0.22, 0)
                
                local musicOpen = false
                openBtn.MouseButton1Down:Connect(function()
                    musicOpen = not musicOpen
                    if uiFrame then
                        uiFrame:TweenPosition(musicOpen and UDim2.new(0.666, 0, 0.476, 0) or UDim2.new(0.734, 0, 2, 0), "Out", "Sine", 0.5, true)
                    end
                end)
            end

            -- Remoty i logika radia
            local cloneRemote = ReplicatedStorage.Network.Events.Music.CloneMusicCar
            local stateRemote = ReplicatedStorage.Network.Events.Music.ChangeStateMusic
            local textBox = uiFrame and uiFrame:FindFirstChild("TextBox", true)
            
            if textBox then
                textBox:GetPropertyChangedSignal("Text"):Connect(function()
                    if #textBox.Text > 5 then cloneRemote:FireServer(textBox.Text) end
                end)
            end
            
            local playBtn = uiFrame:FindFirstChild("PlayButton", true)
            local stopBtn = uiFrame:FindFirstChild("StopButton", true)
            if playBtn then playBtn.MouseButton1Down:Connect(function() stateRemote:FireServer(true) end) end
            if stopBtn then stopBtn.MouseButton1Down:Connect(function() stateRemote:FireServer(false) end) end
        else
            local existing = PlayerGui:FindFirstChild("CustomMusicFix")
            if existing then existing:Destroy() end
        end
    end,
})

-- --- SEKBCJA FREE TUNING ---
GamepassTab:CreateToggle({
    Name = "Free Tuning",
    CurrentValue = false,
    Flag = "FreeTuning",
    Callback = function(Value)
        if Value then
            -- 1. Przygotowanie GUI
            for _, gui in pairs(PlayerGui:GetChildren()) do
                if gui.Name == "TuningGUI" or gui.Name == "CustomTuningFix" then gui:Destroy() end
            end

            local originalTuning = ReplicatedStorage:FindFirstChild("TuningGUI", true)
            if not originalTuning then return end

            local myTuningGui = originalTuning:Clone()
            myTuningGui.Name = "CustomTuningFix"
            for _, s in pairs(myTuningGui:GetDescendants()) do
                if s:IsA("LocalScript") then s:Destroy() end
            end
            myTuningGui.Parent = PlayerGui

            local mainFrame = myTuningGui:FindFirstChild("MainFrame", true)
            local remote = ReplicatedStorage:FindFirstChild("ChangeSetting", true)
            local btn = myTuningGui:FindFirstChild("OpenAndCloseButton", true)

            if btn then
                local label = btn:FindFirstChild("Title") or btn:FindFirstChildOfClass("TextLabel")
                if label then label.Text = "Free Tuning" label.TextScaled = false label.TextSize = 16 end
                btn.Position = UDim2.new(btn.Position.X.Scale, 0, 0.1, 0)
                local open = false
                btn.MouseButton1Down:Connect(function()
                    open = not open
                    if mainFrame then
                        mainFrame:TweenPosition(open and UDim2.new(0.26, 0, 0.143, 0) or UDim2.new(0.26, 0, 2, 0), "Out", "Sine", 0.4, true)
                    end
                end)
            end

            -- 2. Funkcja pomocnicza do aktualizacji slidera
            local function updateSlider(frame)
                local bar = frame:FindFirstChild("SliderBar", true) or frame:FindFirstChild("Back", true)
                local knob = frame:FindFirstChild("SliderKnob", true)
                local amtLabel = frame:FindFirstChild("Amount", true)
                if not (bar and knob and amtLabel) then return end

                local mouseX = UserInputService:GetMouseLocation().X
                local relativeX = math.clamp((mouseX - bar.AbsolutePosition.X) / bar.AbsoluteSize.X, 0, 1)
                local newVal = math.round(relativeX * 20)

                knob.Position = UDim2.new(relativeX, 0, knob.Position.Y.Scale, 0)
                amtLabel.Text = tostring(newVal)
                
                if remote then 
                    remote:Fire(newVal, frame:GetAttribute("TuneName"), frame:GetAttribute("TuneMultiplier")) 
                end
            end

            -- 3. Centralna Pętla Nasłuchiwania (Manager)
            tuningConnection = RunService.RenderStepped:Connect(function()
                if not myTuningGui.Parent then 
                    if tuningConnection then tuningConnection:Disconnect() end 
                    return 
                end

                if UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
                    if not activeSlider then
                        -- Szukamy slidera pod myszką
                        for _, v in pairs(mainFrame:GetChildren()) do
                            if v:IsA("Frame") and v:GetAttribute("TuneName") then
                                local bar = v:FindFirstChild("SliderBar", true) or v:FindFirstChild("Back", true)
                                if bar then
                                    local m = UserInputService:GetMouseLocation()
                                    local pos = bar.AbsolutePosition
                                    local size = bar.AbsoluteSize
                                    -- Sprawdzanie kolizji myszki z paskiem (z marginesem klikalności)
                                    if m.X >= pos.X and m.X <= pos.X + size.X and m.Y >= pos.Y - 20 and m.Y <= pos.Y + size.Y + 20 then
                                        activeSlider = v
                                        break
                                    end
                                end
                            end
                        end
                    else
                        -- Przeciąganie aktywnego slidera
                        updateSlider(activeSlider)
                    end
                else
                    activeSlider = nil
                end
            end)

            -- 4. Obsługa przycisków +/- (dla precyzji)
            for _, v in pairs(mainFrame:GetChildren()) do
                if v:IsA("Frame") and v:GetAttribute("TuneName") then
                    local inc = v:FindFirstChild("TuneIncreaseButton", true)
                    local dec = v:FindFirstChild("TuneDecreaseButton", true)
                    local amt = v:FindFirstChild("Amount", true)
                    local knob = v:FindFirstChild("SliderKnob", true)
                    
                    if inc and dec and amt then
                        inc.MouseButton1Down:Connect(function()
                            local val = math.clamp((tonumber(amt.Text) or 0) + 1, 0, 20)
                            amt.Text = tostring(val)
                            if knob then knob.Position = UDim2.new(val/20, 0, knob.Position.Y.Scale, 0) end
                            if remote then remote:Fire(val, v:GetAttribute("TuneName"), v:GetAttribute("TuneMultiplier")) end
                        end)
                        dec.MouseButton1Down:Connect(function()
                            local val = math.clamp((tonumber(amt.Text) or 0) - 1, 0, 20)
                            amt.Text = tostring(val)
                            if knob then knob.Position = UDim2.new(val/20, 0, knob.Position.Y.Scale, 0) end
                            if remote then remote:Fire(val, v:GetAttribute("TuneName"), v:GetAttribute("TuneMultiplier")) end
                        end)
                    end
                end
            end
        else
            -- USUWANIE I ROZŁĄCZANIE
            if tuningConnection then
                tuningConnection:Disconnect()
                tuningConnection = nil
            end
            activeSlider = nil
            local existing = PlayerGui:FindFirstChild("CustomTuningFix")
            if existing then existing:Destroy() end
        end
    end,
})
----------------------------------------------------------------------
-- SEKNCJA 3: PĘTLA AKTUALIZACJI (NA ŻYWO)
----------------------------------------------------------------------

RunService.RenderStepped:Connect(function() 
    local character = player.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") or not character:FindFirstChild("Humanoid") then return end
    
    local hrp = character.HumanoidRootPart
    local humanoid = character.Humanoid
    local camera = workspace.CurrentCamera
    local animateScript = character:FindFirstChild("Animate")

    if _G.FlyEnabled and BodyVelocity and BodyGyro then
        -- SPRAWDZANIE GDZIE JESTEŚ (DYNAMICZNIE)
        local seat = humanoid.SeatPart
        local currentTarget = seat or hrp -- Jeśli jest siedzenie, celuj w auto, inaczej w HRP

        -- Przenoszenie sił jeśli zmieniłeś stan (wsiadłeś/wysiadłeś)
        if BodyVelocity.Parent ~= currentTarget then
            BodyVelocity.Parent = currentTarget
            BodyGyro.Parent = currentTarget
        end

        -- LOGIKA ZALEŻNA OD TEGO CZY SIEDZISZ
        if seat then
            -- JESTEŚ W AUCIE
            humanoid.PlatformStand = false -- Musi być false, żebyś nie wysiadł!
            if animateScript then animateScript.Enabled = true end -- Pozwala na animację siedzenia
        else
            -- LECOISZ SAM
            humanoid.PlatformStand = true 
            if animateScript then animateScript.Enabled = false end -- Sztywna poza w locie
            if humanoid:GetState() ~= Enum.HumanoidStateType.None then
                humanoid:ChangeState(Enum.HumanoidStateType.None)
            end
        end
        
        -- STEROWANIE
        BodyGyro.CFrame = camera.CFrame
        local direction = getVelocityDirection()
        BodyVelocity.Velocity = direction * _G.FlySpeed
        
        -- Zero pędu przy braku ruchu (zatrzymuje auto w miejscu w powietrzu)
        if direction.Magnitude == 0 then
            currentTarget.AssemblyLinearVelocity = Vector3.new(0,0,0)
            currentTarget.AssemblyAngularVelocity = Vector3.new(0,0,0)
        end

    -- LOGIKA SPEED HACK (Działa tylko gdy Fly wyłączony)
    elseif _G.SpeedEnabled then
        if humanoid:GetState() == Enum.HumanoidStateType.None then
            humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
        end
        humanoid.PlatformStand = false 
        
        local moving, direction = isMoving()
        local targetSpeed = _G.SpeedValue or 16

        if moving then
            if _G.SpeedMode == "Normal" then
                humanoid.WalkSpeed = targetSpeed
            elseif _G.SpeedMode == "CFrame" then
                hrp.CFrame = hrp.CFrame + (direction * (targetSpeed / 50))
            elseif _G.SpeedMode == "Legit" or _G.SpeedMode == "HVH" then
                if _G.SpeedMode == "HVH" and UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    humanoid.Jump = true
                end
                hrp.Velocity = Vector3.new(direction.X * targetSpeed, hrp.Velocity.Y, direction.Z * targetSpeed)
            end
        else
            if _G.SpeedMode == "Legit" or _G.SpeedMode == "HVH" then
                hrp.Velocity = Vector3.new(0, hrp.Velocity.Y, 0)
            end
        end
    else
        -- Przywrócenie normalnego stanu po wyłączeniu cheatów
        if humanoid.PlatformStand then
            humanoid.PlatformStand = false
            humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
        end
    end
end)
local tempIgnored = {} 
local isRunning = false 
local lastTargetFoundTime = tick()

task.spawn(function()
    local farmVelocity = nil
    local farmGyro = nil

    while true do
        task.wait(0.01)

        if _G.CoinFarmEnabled then
            isRunning = true 
            
            if currentVehicle and currentVehicle.PrimaryPart then
                local root = currentVehicle.PrimaryPart
                SetNoCollide(currentVehicle, true)

                -- 1. Inicjalizacja sił
                if not farmVelocity or farmVelocity.Parent ~= root then
                    if farmVelocity then farmVelocity:Destroy() end
                    farmVelocity = Instance.new("BodyVelocity")
                    farmVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge) 
                    farmVelocity.Parent = root
                end
                
                if not farmGyro or farmGyro.Parent ~= root then
                    if farmGyro then farmGyro:Destroy() end
                    farmGyro = Instance.new("BodyGyro")
                    farmGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge) 
                    farmGyro.D = 100 
                    farmGyro.P = 10000 
                    farmGyro.Parent = root
                end

                -- 2. Agresywne czyszczenie tabeli ignorowanych
                -- Jeśli moneta nie ma już rodzica (zniknęła z gry), usuwamy ją z listy blokad
                for item, _ in pairs(tempIgnored) do
                    if not item or not item.Parent or not item:IsDescendantOf(workspace) then
                        tempIgnored[item] = nil
                    end
                end

                -- 3. Szukanie celu
                local target = nil
                local shortestDistance = math.huge
                
                if coinsFolder then
                    local children = coinsFolder:GetChildren()
                    for i = 1, #children do
                        local item = children[i]
                        if item:IsA("BasePart") and not tempIgnored[item] then
                            local dist = (root.Position - item.Position).Magnitude
                            if dist < shortestDistance then
                                shortestDistance = dist
                                target = item
                            end
                        end
                    end
                end

                -- 4. Logika Ruchu i System "Anti-Stuck"
                if target then
                    lastTargetFoundTime = tick() -- Resetujemy licznik, bo znaleźliśmy cel
                    
                    local targetPos = target.Position
                    local myPos = root.Position
                    local speed = _G.FarmSpeed or 50
                    
                    if (targetPos - myPos).Magnitude < 12 then 
                        tempIgnored[target] = true -- Dodaj do ignorowanych po zebraniu
                    end

                    -- Ruch do celu
                    local direction = (targetPos - myPos).Unit
                    farmVelocity.Velocity = direction * speed
                    farmGyro.CFrame = CFrame.lookAt(myPos, Vector3.new(targetPos.X, myPos.Y, targetPos.Z))
                else
                    -- SYSTEM ANTI-STUCK: Jeśli przez 3 sekundy nic nie znaleziono, wyczyść wszystko
                    if tick() - lastTargetFoundTime > 3 then
                        tempIgnored = {} 
                        lastTargetFoundTime = tick()
                        print("Anti-Stuck: Resetowanie listy monet...")
                    end
                    
                    -- Powolny ruch szukający (krążenie)
                    farmVelocity.Velocity = root.CFrame.LookVector * 10
                    farmGyro.CFrame = farmGyro.CFrame * CFrame.Angles(0, math.rad(2), 0)
                end
            end
        else
            -- Sprzątanie po wyłączeniu
            if isRunning then
                if farmVelocity then farmVelocity:Destroy() farmVelocity = nil end
                if farmGyro then farmGyro:Destroy() farmGyro = nil end
                if currentVehicle and currentVehicle.PrimaryPart then
                    currentVehicle.PrimaryPart.AssemblyLinearVelocity = Vector3.new(0,0,0)
                    SetNoCollide(currentVehicle, false)
                end
                tempIgnored = {} 
                isRunning = false 
            end
        end
    end
end)
task.spawn(function()
	while true do
		task.wait(0.1)

		-- 1. Aktualizacja Monet
		Label_Big:Set("BigCoins: " .. countCoins("BigCoin"))
		Label_Med:Set("MediumCoins: " .. countCoins("MediumCoin"))
		Label_Small:Set("SmallCoins: " .. countCoins("SmallCoin"))

		-- 2. Zarządzanie Samochodem
		if not currentVehicle or not currentVehicle.Parent then
			currentVehicle = nil
			Label_ModelName:Set("Model: Nie wykryto Twojego auta")
			Label_PartCount:Set("Części: 0")
			Label_DrivingStatus:Set("Status: Brak auta")
			
			for _, child in pairs(carsFolder:GetChildren()) do
				if child:GetAttribute("PlayerId") == getMyUserId() then
					currentVehicle = child
					Label_ModelName:Set("Model: " .. child.Name)
					Label_PartCount:Set("Części: " .. CountVehicleParts(child))
					
					-- Synchronizacja suwaków
					Slider_Brake:Set(child:GetAttribute("brakeStrength") or 0)
					Slider_MaxSpeed:Set(child:GetAttribute("MaxSpeed") or 0)
					Slider_Throttle:Set(child:GetAttribute("throttlePower") or 0)
					Slider_LowSpeed:Set(child:GetAttribute("lowSpeedThreshold") or 0)
					break
				end
			end
		else
			-- Sprawdzenie czy siedzimy w aucie
			if isPlayerInControl(currentVehicle) then
				Label_DrivingStatus:Set("Status: ZA KIEROWNICĄ")
			else
				Label_DrivingStatus:Set("Status: Poza fotelem")
			end

			-- Synchronizacja atrybutów (nadpisywanie jeśli zmieniły się w grze)
			local b = currentVehicle:GetAttribute("brakeStrength") or 0
			if Slider_Brake.CurrentValue ~= b then Slider_Brake:Set(b) end
			
			local m = currentVehicle:GetAttribute("MaxSpeed") or 0
			if Slider_MaxSpeed.CurrentValue ~= m then Slider_MaxSpeed:Set(m) end
			
			local t = currentVehicle:GetAttribute("throttlePower") or 0
			if Slider_Throttle.CurrentValue ~= t then Slider_Throttle:Set(t) end
			
			local l = currentVehicle:GetAttribute("lowSpeedThreshold") or 0
			if Slider_LowSpeed.CurrentValue ~= l then Slider_LowSpeed:Set(l) end
		end
	end
end)