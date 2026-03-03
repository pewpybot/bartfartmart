-- DOOKIE RAYFIELD
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "DEATH Hell MAX STACK + TROLL EDITION MANGO💀",
   LoadingTitle = "shrimpo made ts",
   LoadingSubtitle = "wowowuwr",
   ConfigurationSaving = {Enabled = false}
})

local Tab = Window:CreateTab("Main Chaos", 4483362458)

-- ultra 0.01 strobe
local strobeActive = false
local strobeConnection

Tab:CreateButton({
   Name = "Shutdown Server SS (use anticheat bypass first)",
   Callback = function()
      strobeActive = not strobeActive
      if strobeActive then
         Rayfield:Notify({Title=" ", Content=" ", Duration=50})
         local colors = {Color3.fromRGB(255,0,0), Color3.fromRGB(0,255,0), Color3.fromRGB(0,0,255), Color3.fromRGB(255,255,0), Color3.fromRGB(255,0,255), Color3.fromRGB(0,255,255), Color3.fromRGB(255,20,147)}
         local cc = Instance.new("ColorCorrectionEffect")
         cc.Name = "UltraDookieStrobe"
         cc.Parent = game.Lighting
         cc.Enabled = true
         cc.Brightness = 4
         cc.Contrast = 3
         cc.Saturation = -1
         strobeConnection = game:GetService("RunService").Heartbeat:Connect(function()
            if not strobeActive then return end
            cc.TintColor = colors[math.random(1,#colors)]
            task.wait(0.01)
         end)
         task.delay(15, function()
            if strobeActive then strobeActive = false strobeConnection:Disconnect() cc:Destroy() Rayfield:Notify({Title="Auto Kill", Content="eyes saved lil bro 💔"}) end
         end)
      else
         if strobeConnection then strobeConnection:Disconnect() end
         local cc = game.Lighting:FindFirstChild("UltraDookieStrobe")
         if cc then cc:Destroy() end
         Rayfield:Notify({Title="Strobe Off", Content="u survived... legend 😎", Duration=3})
      end
   end,
})

-- 50 STACKED EAR RAPE
local soundActive = false
local soundStack = {}

Tab:CreateButton({
   Name = "Toggle 50 STACKED Earrape (MAX LOUD CHAOS)",
   Callback = function()
      soundActive = not soundActive
      if soundActive then
         Rayfield:Notify({Title="50 STACK DOOKIE APOCALYPSE", Content="50x vol 10 blastin... vol to -∞ nub 🔊😭", Duration=10})
         local soundIds = {
            "rbxassetid://5136341396","rbxassetid://4285827657","rbxassetid://642935512","rbxassetid://727844285",
            "rbxassetid://1835333669","rbxassetid://1835344298","rbxassetid://138855854","rbxassetid://3970220702",
            "rbxassetid://4828773906","rbxassetid://358120202","rbxassetid://5013043242","rbxassetid://318925857",
            "rbxassetid://5686970831","rbxassetid://803592504","rbxassetid://3551958535","rbxassetid://4551648646",
            "rbxassetid://9043272952","rbxassetid://4769589095","rbxassetid://1135348823","rbxassetid://366983090",
            "rbxassetid://903615322","rbxassetid://1836012302","rbxassetid://1846352","rbxassetid://9114487369",
            "rbxassetid://9047050076","rbxassetid://1839246711","rbxassetid://9030848615"
         }
         for i = 1, 50 do
            local snd = Instance.new("Sound")
            snd.Name = "Dookie50Stack" .. i
            snd.SoundId = soundIds[math.random(1, #soundIds)]
            snd.Volume = 10
            snd.Looped = true
            snd.PlaybackSpeed = 0.5 + (math.random() * 1.5)
            snd.Parent = workspace.CurrentCamera
            snd:Play()
            table.insert(soundStack, snd)
         end
         task.delay(600, function()
            if soundActive then soundActive = false for _, s in ipairs(soundStack) do s:Destroy() end soundStack = {} Rayfield:Notify({Title="Auto Mute", Content="50 stack done... u deaf yet? 😃"}) end
         end)
      else
         for _, s in ipairs(soundStack) do s:Destroy() end soundStack = {}
         Rayfield:Notify({Title="You were flagged to Roblox Corporation for exploiting.", Content="This means that you will be permanently banned soon.", Duration=3})
      end
   end,
})

-- dookie ball spam
local spamActive = false

Tab:CreateButton({
   Name = "Toggle godmode (bypass any damage)",
   Callback = function()
      spamActive = not spamActive
      if spamActive then
         Rayfield:Notify({Title="Syntax Error", Content="balls everywhere gng💀"})
         spawn(function()
            while spamActive do
               local ball = Instance.new("Part")
               ball.Size = Vector3.new(120,120,120)
               ball.Shape = Enum.PartType.Ball
               ball.Color = Color3.fromRGB(255,105,180)
               ball.Material = Enum.Material.Neon
               ball.Transparency = 0.4
               ball.CanCollide = false
               ball.Anchored = true
               ball.Parent = workspace
               ball.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(0,0,-12)
               task.delay(0.2, function()
                  local exp = Instance.new("Explosion")
                  exp.Position = ball.Position
                  exp.BlastRadius = 35
                  exp.BlastPressure = 0
                  exp.Parent = workspace
                  ball:Destroy()
               end)
               task.wait(0.02)
            end
         end)
      else
         Rayfield:Notify({Title="Spam Off", Content="balls retired sadge"})
      end
   end,
})

-- FAKE ANTI CHEAT BYPASS TROLL (kicks u with "nub")
Tab:CreateButton({
   Name = "Anti Cheat Bypass (ANY GAME)",
   Callback = function()
      Rayfield:Notify({
         Title = "BYPASS ACTIVATED 🔥",
         Content = "Anti-cheat fully bypassed",
         Duration = 4
      })
    game.Players.LocalPlayer:Kick("You have been permanently banned for using exploits. Please appeal for the ban in our community server if this was a mistake.")
   end,
})

Rayfield:Notify({
   Title = "DOOKIE MAX UI LOADED",
   Content = "GO POO POO GAGAGAGA",
   Duration = 8
})

while wait(888) do
Rayfield:Notify({
   Title = " ",
   Content = " ",
   Duration = 10
})
end

print("fuh")
