local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Baddu Hub",
   LoadingTitle = "loading stuff",
   LoadingSubtitle = "bro js typing shit",
   ConfigurationSaving = { Enabled = false },
   KeySystem = false
})

-- MAIN TAB
local MainTab = Window:CreateTab("Main", 4483362458)

MainTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 300},
   Increment = 5,
   Suffix = "speed",
   CurrentValue = 16,
   Callback = function(Value)
      local char = game.Players.LocalPlayer.Character
      if char and char:FindFirstChild("Humanoid") then
         char.Humanoid.WalkSpeed = Value
      end
   end,
})

MainTab:CreateSlider({
   Name = "auto jump or sum shi",
   Range = {1, 67000000067},
   Increment = 10,
   Suffix = "jump",
   CurrentValue = 50,
   Callback = function(Value)
      local char = game.Players.LocalPlayer.Character
      if char and char:FindFirstChild("Humanoid") then
         char.Humanoid.JumpPower = Value
         char.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
      end
   end,
})

MainTab:CreateToggle({
   Name = "Godmode (inf hp)",
   CurrentValue = false,
   Callback = function(Value)
      if Value then
         spawn(function()
            while Value do
               pcall(function()
                  local char = game.Players.LocalPlayer.Character
                  if char and char:FindFirstChild("Humanoid") then
                     char.Humanoid.Health = 100
                     char.Humanoid.MaxHealth = math.huge
                  end
               end)
               task.wait(0.05)
            end
         end)
      end
   end,
})

-- STUPID TAB
local StupidTab = Window:CreateTab("Stupid", 4483362458)

StupidTab:CreateButton({
   Name = "Console Spam hahaha",
   Callback = function()
      for i = 1, 500 do
         print("hahahhahahahahahahhaahhaahaahhhahaahahahahahahahahhaa " .. i)
      end
   end,
})

StupidTab:CreateInput({
   Name = "custom kick reason",
   PlaceholderText = "type kick msg",
   Callback = function(Text)
      game.Players.LocalPlayer:Kick(Text)
   end,
})

-- IDK TAB
local IdkTab = Window:CreateTab("Idk", 4483362458)

IdkTab:CreateButton({
   Name = "fart time",
   Callback = function()
      local fart = Instance.new("Sound")
      fart.SoundId = "rbxassetid://9120386436"
      fart.Volume = 100
      fart.Parent = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
      fart:Play()
      game:GetService("Debris"):AddItem(fart, 5)
      Rayfield:Notify({
         Title = "never trust a fart",
         Content = "fard 💨😭",
         Duration = 2
      })
   end,
})

IdkTab:CreateButton({
   Name = "Free Robux 😍",
   Callback = function()
      Rayfield:Notify({
         Title = "FREE ROBUX?!",
         Content = "WOW!!",
         Duration = 3
      })
      
      spawn(function()
         local soundPart = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
         for i = 1, 240 do
            local rape = Instance.new("Sound")
            rape.SoundId = "rbxassetid://9120386436"
            rape.Volume = 100
            rape.Parent = soundPart
            rape:Play()
            wait(0.1)
            rape:Destroy()
         end
         Rayfield:Notify({
            Title = "ROBUX DENIED LOL",
            Content = "too bad",
            Duration = 5
         })
      end)
   end,
})

-- BYPASS ANTI CHEAT (red transparent + report text + 3s glitch + kick)
IdkTab:CreateButton({
   Name = "Bypass Anti Cheat",
   Callback = function()
      Rayfield:Notify({
         Title = "BYPASSING ANTI CHEAT...",
         Content = "detectin every anticheat thing dw",
         Duration = 2
      })
      
      spawn(function()
         local player = game.Players.LocalPlayer
         local cam = workspace.CurrentCamera
         local originalFOV = cam.FieldOfView
         local originalCFrame = cam.CFrame
         local char = player.Character or player.CharacterAdded:Wait()
         local root = char:WaitForChild("HumanoidRootPart")
         
         -- jumpscare sound
         local scary = Instance.new("Sound")
         scary.SoundId = "rbxassetid://1839246711"
         scary.Volume = 100
         scary.Parent = root
         scary:Play()
         
         -- semi-transparent red overlay
         local redScreen = Instance.new("ScreenGui")
         redScreen.Name = "AntiCheatScare"
         redScreen.IgnoreGuiInset = true
         redScreen.Parent = player:WaitForChild("PlayerGui")
         
         local redFrame = Instance.new("Frame")
         redFrame.Size = UDim2.new(1,0,1,0)
         redFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
         redFrame.BackgroundTransparency = 0.4  -- transparent for glitch visibility
         redFrame.BorderSizePixel = 0
         redFrame.Parent = redScreen
         
         local reportText = Instance.new("TextLabel")
         reportText.Size = UDim2.new(0.9,0,0.4,0)
         reportText.Position = UDim2.new(0.05,0,0.3,0)
         reportText.BackgroundTransparency = 1
         reportText.Text = "योर एंड इस नियर"
         reportText.TextColor3 = Color3.new(1,1,1)
         reportText.TextScaled = true
         reportText.Font = Enum.Font.GothamBlack
         reportText.TextStrokeTransparency = 0
         reportText.TextStrokeColor3 = Color3.new(0,0,0)
         reportText.Parent = redFrame
         
         -- glitch + flash for 3s (30 flashes @ 0.1s)
         for i = 1, 30 do
            redFrame.BackgroundTransparency = 0.4 + math.random(-0.15, 0.15)
            cam.FieldOfView = 70 + math.random(-40,40)
            cam.CFrame = originalCFrame * CFrame.Angles(
               math.rad(math.random(-30,30)),
               math.rad(math.random(-30,30)),
               math.rad(math.random(-30,30))
            )
            task.wait(0.05)
         end
         
         -- cleanup
         redScreen:Destroy()
         cam.FieldOfView = originalFOV
         cam.CFrame = originalCFrame
         scary:Destroy()
         
         -- kick after 3s cooldown
         task.wait(0.1)
         player:Kick("API Banned for exploiting.")
      end)
   end,
})

-- CREDITS TAB
local CreditsTab = Window:CreateTab("Credits", 4483362458)

CreditsTab:CreateLabel("yo shoutout to me fr")

for i = 1, 50 do
   CreditsTab:CreateLabel("hello bio & /:/ #" .. i)
end

CreditsTab:CreateLabel("hmm i farted")

Rayfield:Notify({
   Title = "Loaded",
   Content = "hub ready twin",
   Duration = 5,
})

Rayfield:Notify({
   Title = "W",
   Content = "w",
   Duration = 5,
})

Rayfield:Notify({
   Title = "O",
   Content = "o",
   Duration = 5,
})

Rayfield:Notify({
   Title = "W",
   Content = "w",
   Duration = 5,
})

print("rayfield loaded i guess")
