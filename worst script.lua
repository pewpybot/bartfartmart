-- FREE ROBUX
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer

local flying = false
local noclipping = false
local flySpeed = 50
local chaosLevel = 0
local bodyVel, bodyGyro = nil, nil
local mainPhonk = nil
local flyPhonk = nil
local flashConn = nil
local rainbowConn = nil
local dupePhonk = nil
local dupeFlashConn = nil
local deathLoopConn = nil
local dvdFuckConn = nil
local originalFOV = workspace.CurrentCamera.FieldOfView

-- AUTO 67 PHONK ON EXEC
mainPhonk = Instance.new("Sound")
mainPhonk.SoundId = "rbxassetid://125476440612900"
mainPhonk.Volume = 10
mainPhonk.Looped = true
mainPhonk.PlaybackSpeed = 1.5
mainPhonk.Parent = player.PlayerGui
mainPhonk:Play()
print("67 PHONK AUTO BLASTIN FOREVER 🔥")

-- GUI SCAM SETUP
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "FreeRobuxHappyMod2026"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 380, 0, 680)
Frame.Position = UDim2.new(0.5, -190, 0.5, -340)
Frame.BackgroundColor3 = Color3.fromRGB(10, 30, 10)
Frame.BorderSizePixel = 4
Frame.BorderColor3 = Color3.fromRGB(0, 255, 0)
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

local ScamBanner = Instance.new("TextLabel")
ScamBanner.Size = UDim2.new(1, 0, 0, 80)
ScamBanner.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
ScamBanner.Text = "FREE ROBUX GENERATOR 2026\nGET 999,999 ROBUX NOW! VERIFIED"
ScamBanner.TextColor3 = Color3.fromRGB(255, 0, 0)
ScamBanner.Font = Enum.Font.Cartoon
ScamBanner.TextSize = 32
ScamBanner.TextWrapped = true
ScamBanner.Parent = Frame

local HappyModFake = Instance.new("TextLabel")
HappyModFake.Size = UDim2.new(0.5, 0, 0, 40)
HappyModFake.Position = UDim2.new(0.25, 0, 0, 80)
HappyModFake.BackgroundTransparency = 1
HappyModFake.Text = "HappyMod™ Official"
HappyModFake.TextColor3 = Color3.fromRGB(0, 255, 0)
HappyModFake.Font = Enum.Font.Arcade
HappyModFake.TextSize = 28
HappyModFake.Parent = Frame

local ChaosLabel = Instance.new("TextLabel")
ChaosLabel.Size = UDim2.new(1, -40, 0, 80)
ChaosLabel.Position = UDim2.new(0, 20, 0, 130)
ChaosLabel.BackgroundTransparency = 1
ChaosLabel.Text = "CHAOS LEVEL: 0\nFLY: OFF | OVERLAY: OFF\n67 PHONK AUTO PLAYIN"
ChaosLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
ChaosLabel.Font = Enum.Font.Cartoon
ChaosLabel.TextSize = 24
ChaosLabel.TextWrapped = true
ChaosLabel.Parent = Frame

local function scamBtn(txt, y, func)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(0.9, 0, 0, 70)
    b.Position = UDim2.new(0.05, 0, 0, y)
    b.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
    b.BorderSizePixel = 3
    b.BorderColor3 = Color3.fromRGB(255, 255, 0)
    b.Text = txt .. "\nTAP TO GET FREE ROBUX!"
    b.TextColor3 = Color3.fromRGB(255, 0, 0)
    b.Font = Enum.Font.Cartoon
    b.TextSize = 28
    b.TextWrapped = true
    b.Parent = Frame
    b.MouseButton1Click:Connect(func)
    return b
end

-- FLY BUTTON (double phonk)
scamBtn("ACTIVATE FLY + DOUBLE 67 PHONK + FOV500", 220, function()
    flying = not flying
    local root = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    local cam = workspace.CurrentCamera
    if not root then return end
    
    if flying then
        if not flyPhonk then
            flyPhonk = Instance.new("Sound")
            flyPhonk.SoundId = "rbxassetid://125476440612900"
            flyPhonk.Volume = 10
            flyPhonk.Looped = true
            flyPhonk.PlaybackSpeed = 1.5
            flyPhonk.Parent = player.PlayerGui
            flyPhonk:Play()
        end
        
        bodyVel = Instance.new("BodyVelocity", root)
        bodyVel.MaxForce = Vector3.new(9e9,9e9,9e9)
        bodyVel.Velocity = Vector3.new()
        
        bodyGyro = Instance.new("BodyGyro", root)
        bodyGyro.MaxTorque = Vector3.new(9e9,9e9,9e9)
        bodyGyro.P = 9000
        bodyGyro.CFrame = root.CFrame
        
        cam.FieldOfView = 500
        cam.CFrame = cam.CFrame * CFrame.Angles(0, 0, math.rad(8))
        
        local bleed = Instance.new("Frame")
        bleed.Name = "RedBlueFlash"
        bleed.Size = UDim2.new(1.6,0,1.6,0)
        bleed.Position = UDim2.new(-0.3,0,-0.3,0)
        bleed.BackgroundTransparency = 0.5
        bleed.BackgroundColor3 = Color3.fromRGB(255,0,0)
        bleed.ZIndex = 9998
        bleed.Parent = ScreenGui
        
        flashConn = RunService.Heartbeat:Connect(function()
            if not flying then return end
            local t = tick() * 30
            bleed.BackgroundColor3 = (math.floor(t) % 2 == 0) and Color3.fromRGB(255,0,0) or Color3.fromRGB(0,0,255)
            bleed.BackgroundTransparency = 0.45 + math.sin(tick()*25)*0.1
        end)
    else
        if bodyVel then bodyVel:Destroy() end
        if bodyGyro then bodyGyro:Destroy() end
        if flyPhonk then flyPhonk:Destroy() flyPhonk = nil end
        if flashConn then flashConn:Disconnect() end
        cam.FieldOfView = originalFOV
        cam.CFrame = cam.CFrame * CFrame.Angles(0, 0, math.rad(-8))
        for _, f in pairs(ScreenGui:GetChildren()) do
            if f:IsA("Frame") and (f.Name == "RedBlueFlash" or f.Name == "RainbowOverlay") then f:Destroy() end
        end
    end
    
    ChaosLabel.Text = "CHAOS LEVEL: "..chaosLevel.."\nFLY: "..(flying and "DOUBLE PHONK ON" or "OFF").." | OVERLAY: "..(rainbowConn and "ON" or "OFF")
end)

-- RAINBOW OVERLAY
scamBtn("ACTIVATE RAINBOW SCREEN HACK", 300, function()
    if rainbowConn then
        rainbowConn:Disconnect()
        rainbowConn = nil
        for _, ov in pairs(ScreenGui:GetChildren()) do
            if ov.Name == "RainbowOverlay" then ov:Destroy() end
        end
    else
        local overlay = Instance.new("Frame")
        overlay.Name = "RainbowOverlay"
        overlay.Size = UDim2.new(1.4,0,1.4,0)
        overlay.Position = UDim2.new(-0.2,0,-0.2,0)
        overlay.BackgroundTransparency = 0.6
        overlay.ZIndex = 9997
        overlay.Parent = ScreenGui
        
        rainbowConn = RunService.Heartbeat:Connect(function()
            local t = tick() * 4
            local hue = t % 1
            overlay.BackgroundColor3 = Color3.fromHSV(hue, 1, 1)
            overlay.BackgroundTransparency = 0.55 + math.sin(t*10)*0.15
        end)
    end
    
    ChaosLabel.Text = "CHAOS LEVEL: "..chaosLevel.."\nFLY: "..(flying and "DOUBLE PHONK ON" or "OFF").." | OVERLAY: "..(rainbowConn and "ON" or "OFF")
end)

-- FIXED DVD FUCK BOUNCE
scamBtn("DVD FUCK BOUNCE", 380, function()
    if dvdFuckConn then
        dvdFuckConn:Disconnect()
        dvdFuckConn = nil
        for _, lbl in pairs(ScreenGui:GetChildren()) do
            if lbl.Name == "DvdFuckLabel" then lbl:Destroy() end
        end
        print("DVD F")
    else
        local fuckLabel = Instance.new("TextLabel")
        fuckLabel.Name = "DvdFuckLabel"
        fuckLabel.Size = UDim2.new(0, 300, 0, 150)
        fuckLabel.Position = UDim2.new(0.5, -150, 0.5, -75)
        fuckLabel.BackgroundTransparency = 1
        fuckLabel.Text = "FUCK FUCK FUCK FUCK FUCK FUCK FUCK FUCK"
        fuckLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        fuckLabel.Font = Enum.Font.Arcade
        fuckLabel.TextSize = 120
        fuckLabel.TextStrokeTransparency = 0
        fuckLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
        fuckLabel.ZIndex = 10001
        fuckLabel.Parent = ScreenGui
        
        local xSpeed = math.random(8,15)
        local ySpeed = math.random(8,15)
        local rotationSpeed = math.random(-3,3)
        local bangSoundId = "rbxassetid://9114487369"  -- loud bang
        
        dvdFuckConn = RunService.RenderStepped:Connect(function()
            local pos = fuckLabel.Position
            local size = fuckLabel.AbsoluteSize
            local screenSize = ScreenGui.AbsoluteSize
            
            local newX = pos.X.Offset + xSpeed
            local newY = pos.Y.Offset + ySpeed
            
            local hit = false
            if newX <= 0 or newX + size.X >= screenSize.X then
                xSpeed = -xSpeed
                hit = true
            end
            if newY <= 0 or newY + size.Y >= screenSize.Y then
                ySpeed = -ySpeed
                hit = true
            end
            
            if hit then
                fuckLabel.TextColor3 = Color3.fromHSV(tick() % 1, 1, 1)
                fuckLabel.Rotation = fuckLabel.Rotation + rotationSpeed * 10  -- spin boost on hit
                local bang = Instance.new("Sound")
                bang.SoundId = bangSoundId
                bang.Volume = 9
                bang.Parent = player.PlayerGui
                bang:Play()
                game.Debris:AddItem(bang, 2)
            end
            
            fuckLabel.Position = UDim2.new(0, newX, 0, newY)
            fuckLabel.Rotation = fuckLabel.Rotation + rotationSpeed
        end)
        print("DVD FUCK 💀")
    end
end)

-- DUPE ROBUX DEATH LOOP
scamBtn("DUPE ROBUX", 460, function()
    local dupePopup = Instance.new("Frame")
    dupePopup.Size = UDim2.new(0.8, 0, 0.6, 0)
    dupePopup.Position = UDim2.new(0.1, 0, 0.2, 0)
    dupePopup.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    dupePopup.BorderSizePixel = 5
    dupePopup.BorderColor3 = Color3.fromRGB(255, 215, 0)
    dupePopup.ZIndex = 10000
    dupePopup.Parent = ScreenGui
    
    local dupeText = Instance.new("TextLabel")
    dupeText.Size = UDim2.new(1, 0, 1, 0)
    dupeText.BackgroundTransparency = 0.9
    dupeText.Text = "ROBUX DUPED!\n+roblxuROBUX ADDED\nENJOY"
    dupeText.TextColor3 = Color3.fromRGB(0, 255, 0)
    dupeText.Font = Enum.Font.Cartoon
    dupeText.TextSize = 45
    dupeText.TextWrapped = true
    dupeText.Parent = dupePopup
    
    if not dupePhonk then
        dupePhonk = Instance.new("Sound")
        dupePhonk.SoundId = "rbxassetid://125476440612900"
        dupePhonk.Volume = 10
        dupePhonk.Looped = true
        dupePhonk.PlaybackSpeed = 1.5
        dupePhonk.Parent = player.PlayerGui
        dupePhonk:Play()
    end
    
    if deathLoopConn then deathLoopConn:Disconnect() end
    deathLoopConn = RunService.Heartbeat:Connect(function()
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.Health = 0
        end
    end)
    
    local dupeFlash = Instance.new("Frame")
    dupeFlash.Name = "DupeFlash"
    dupeFlash.Size = UDim2.new(1.6,0,1.6,0)
    dupeFlash.Position = UDim2.new(-0.3,0,-0.3,0)
    dupeFlash.BackgroundTransparency = 0.4
    dupeFlash.BackgroundColor3 = Color3.fromRGB(255,0,0)
    dupeFlash.ZIndex = 9999
    dupeFlash.Parent = ScreenGui
    
    if dupeFlashConn then dupeFlashConn:Disconnect() end
    dupeFlashConn = RunService.Heartbeat:Connect(function()
        local t = tick() * 60
        dupeFlash.BackgroundColor3 = (math.floor(t) % 2 == 0) and Color3.fromRGB(255,0,0) or Color3.fromRGB(0,0,255)
        dupeFlash.BackgroundTransparency = 0.3 + math.sin(tick()*40)*0.2
    end)
end)

local BottomScam = Instance.new("TextLabel")
BottomScam.Size = UDim2.new(1, 0, 0, 60)
BottomScam.Position = UDim2.new(0, 0, 1, -60)
BottomScam.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
BottomScam.Text = "100% SAFE • NO BAN • INSTALL NOW • HAPPYMOD APPROVED"
BottomScam.TextColor3 = Color3.fromRGB(255, 255, 0)
BottomScam.Font = Enum.Font.Cartoon
BottomScam.TextSize = 28
BottomScam.TextWrapped = true
BottomScam.Parent = Frame

-- chaos engine
task.spawn(function()
    while true do
        task.wait(math.random(0.7, 3))
        chaosLevel = chaosLevel + 1
        if flying and math.random(1,6)==1 then
            workspace.CurrentCamera.FieldOfView = math.random(450, 550)
        end
        ChaosLabel.Text = "CHAOS LEVEL: "..chaosLevel.."\nFLY: "..(flying and "DOUBLE PHONK ON" or "OFF").." | OVERLAY: "..(rainbowConn and "ON" or "OFF")
    end
end)

-- touch fly
local lt = nil
UserInputService.TouchStarted:Connect(function(t) if flying then lt = t.Position end end)
UserInputService.TouchMoved:Connect(function(t)
    if not flying or not lt or not bodyVel then return end
    local d = (t.Position - lt) / 55
    local cam = workspace.CurrentCamera
    local dir = (cam.CFrame.LookVector * -d.Y) + (cam.CFrame.RightVector * d.X)
    bodyVel.Velocity = dir * flySpeed * (math.random() > 0.3 and 1 or -1.7)
    lt = t.Position
end)
UserInputService.TouchEnded:Connect(function() if bodyVel then bodyVel.Velocity = Vector3.new() end lt = nil end)

-- noclip
RunService.Stepped:Connect(function()
    if noclipping and player.Character then
        for _, p in player.Character:GetDescendants() do
            if p:IsA("BasePart") then p.CanCollide = false end
        end
    end
end)
