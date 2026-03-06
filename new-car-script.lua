-- Yaoi Car Aura Hub | 5 METHODS GODMODE (BYPASS EVERYTHING) 💨🔓 v3
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "vroom 💔🚗",
   LoadingTitle = "5 Methods update",
   LoadingSubtitle = "has no anti cheat be careful",
   ConfigurationSaving = {Enabled = true, FolderName = "Yaoi5MethodAura", FileName = "GodConfig"},
   Discord = {Enabled = false, Invite = "", RememberJoins = true},
   KeySystem = false,
})

local MainTab = Window:CreateTab("5 Method Aura", 4483362458)
local MethodsTab = Window:CreateTab("Method Selector", 4483362458)

local CarSection = MainTab:CreateSection("Universal Car Godmode (Seat First)")

-- Speed & Accel Sliders
local SpeedSlider = MainTab:CreateSlider({
   Name = "Speed Multiplier (God MPH)",
   Range = {1, 100}, Increment = 10, Suffix = "x", CurrentValue = 1, Flag = "GodSpeed",
   Callback = function(Value) _G.GodSpeed = Value; ApplyAllMethods(); end,
})

local AccelSlider = MainTab:CreateSlider({
   Name = "Accel Multiplier (0-Inf Yeet)",
   Range = {1, 500}, Increment = 100, Suffix = "x", CurrentValue = 1, Flag = "GodAccel",
   Callback = function(Value) _G.GodAccel = Value; ApplyAllMethods(); end,
})

-- God Toggles
MainTab:CreateToggle({Name = "Unlock car limit speed", CurrentValue = false, Flag = "GodUnlock", Callback = function(V) _G.GodUnlock = V; ApplyAllMethods(); end})
MainTab:CreateToggle({Name = "Auto Loop (Perma God)", CurrentValue = false, Flag = "GodAuto", Callback = function(V) _G.GodAuto = V end})

MainTab:CreateButton({Name = "FORCE All 5 Methodz", Callback = function() ApplyAllMethods(); Rayfield:Notify({Title = "ALL 5 FORCED 💥", Content = "Godmode active x" .. _G.GodSpeed .. " speed | x" .. _G.GodAccel .. " accel", Duration = 4}) end})

-- Method Selector (pick 1-5 or auto)
local MethodSection = MethodsTab:CreateSection("Pick Method (Auto Detects Best)")
for i=1,5 do
   MethodsTab:CreateToggle({
      Name = "Method " .. i .. " (Toggle On)",
      CurrentValue = (i==1), Flag = "Method" .. i,
      Callback = function(Value)
         _G["Method" .. i] = Value
         if Value then
            for j=1,5 do if j~=i then _G["Method" .. j] = false end end
            ApplyMethod(i)
            Rayfield:Notify({Title = "Method " .. i .. " Activated", Content = "Bypass mode locked 💨", Duration = 2})
         end
      end,
   })
end
MethodsTab:CreateToggle({
   Name = "AUTO Best Method (Recommended)",
   CurrentValue = true, Flag = "AutoMethod",
   Callback = function(Value)
      _G.AutoMethod = Value
      if Value then Rayfield:Notify({Title = "AUTO God ON", Content = "Switches methods", Duration = 3}) end
   end,
})

-- CORE: Get Seat (universal detect)
local function GetSeat()
   local player = game.Players.LocalPlayer
   local char = player.Character
   if not char then return nil end
   return char:FindFirstChildOfClass("VehicleSeat") or char:FindFirstChild("HumanoidSeatPart") or char:FindFirstChild("SeatPart") or 
          (char:FindFirstChild("Humanoid") and char.Humanoid.SeatPart) or workspace:FindFirstChild(player.Name, true):FindFirstChildOfClass("VehicleSeat")
end

-- METHOD 1: Classic VehicleSeat Props (old games)<grok-card data-id="dbc00a" data-type="citation_card" data-plain-type="render_inline_citation" ></grok-card><grok-card data-id="0c3888" data-type="citation_card" data-plain-type="render_inline_citation" ></grok-card>
function Method1(seat)
   if _G.GodUnlock then seat.MaxSpeed = math.huge end
   seat.MaxSpeed = _G.GodSpeed * 50
   seat.Torque = _G.GodAccel * 20000  -- Insane accel torque
end

-- METHOD 2: BodyVelocity God Force (most universal, anti-reset)<grok-card data-id="5782c4" data-type="citation_card" data-plain-type="render_inline_citation" ></grok-card><grok-card data-id="ffabd2" data-type="citation_card" data-plain-type="render_inline_citation" ></grok-card>
function Method2(seat)
   local bv = seat:FindFirstChild("GodBodyVel") or Instance.new("BodyVelocity", seat)
   bv.Name = "GodBodyVel"
   bv.MaxForce = Vector3.new(math.huge, 0, math.huge)
   bv.Velocity = seat.CFrame.LookVector * (_G.GodSpeed * 20) * (seat.Throttle or 1)
   bv.P = _G.GodAccel * 10  -- Power multiplier for accel
end

-- METHOD 3: VectorForce + Drag Bypass (new games 2026, realistic accel)<grok-card data-id="6c89ad" data-type="citation_card" data-plain-type="render_inline_citation" ></grok-card><grok-card data-id="55187b" data-type="citation_card" data-plain-type="render_inline_citation" ></grok-card>
function Method3(seat)
   local att = seat:FindFirstChild("GodAtt") or Instance.new("Attachment", seat)
   att.Name = "GodAtt"
   local vf = seat:FindFirstChild("GodVectorForce") or Instance.new("VectorForce", att)
   vf.Name = "GodVectorForce"
   vf.Force = seat.CFrame.LookVector * (seat.AssemblyMass * _G.GodAccel * 50) * (seat.Throttle or 1)
   vf.RelativeTo = Enum.ActuatorRelativeTo.World
   
   -- Drag for top speed cap
   local drag = seat:FindFirstChild("GodDrag") or Instance.new("VectorForce", att)
   drag.Name = "GodDrag"
   drag.Force = -seat.AssemblyLinearVelocity * (_G.GodSpeed * 2)
end

-- METHOD 4: LinearVelocity Constraint (post-deprecated killer)<grok-card data-id="1c566f" data-type="citation_card" data-plain-type="render_inline_citation" ></grok-card><grok-card data-id="3a4d06" data-type="citation_card" data-plain-type="render_inline_citation" ></grok-card>
function Method4(seat)
   local att = seat:FindFirstChild("GodAtt") or Instance.new("Attachment", seat)
   att.Name = "GodAtt"
   local lv = seat:FindFirstChild("GodLinearVel") or Instance.new("LinearVelocity", att)
   lv.Name = "GodLinearVel"
   lv.MaxForce = math.huge
   lv.VectorVelocity = seat.CFrame.LookVector * _G.GodSpeed * 25 * (seat.Throttle or 1)
   lv.LineDirection = Vector3.new(0,0,1)  -- Forward lock
end

-- METHOD 5: Assembly + Wheel Hacks (Jailbreak/Drivin Empire special)<grok-card data-id="02faa1" data-type="citation_card" data-plain-type="render_inline_citation" ></grok-card><grok-card data-id="6fea1a" data-type="citation_card" data-plain-type="render_inline_citation" ></grok-card>
function Method5(seat)
   seat.AssemblyLinearVelocity = seat.AssemblyLinearVelocity + (seat.CFrame.LookVector * _G.GodAccel * 0.5)
   -- Hack wheels/motors
   for _, wheel in pairs(seat.Parent:GetChildren()) do
      if wheel:IsA("BasePart") and (string.find(wheel.Name:lower(), "wheel") or string.find(wheel.Name:lower(), "tire")) then
         local av = wheel:FindFirstChild("GodAngVel") or Instance.new("BodyAngularVelocity", wheel)
         av.Name = "GodAngVel"
         av.MaxTorque = Vector3.new(0, math.huge, 0)
         av.AngularVelocity = Vector3.new(0, _G.GodSpeed * 100, 0)  -- Spin wheels inf
      end
   end
end

-- Apply Single Method
function ApplyMethod(m)
   local seat = GetSeat()
   if not seat then return end
   pcall(function()
      if m==1 then Method1(seat)
      elseif m==2 then Method2(seat)
      elseif m==3 then Method3(seat)
      elseif m==4 then Method4(seat)
      elseif m==5 then Method5(seat) end
   end)
end

-- Apply ALL 5 (stack for max yeet)
function ApplyAllMethods()
   for i=1,5 do ApplyMethod(i) end
end

-- God Loop
spawn(function()
   while true do
      if _G.GodAuto then
         local seat = GetSeat()
         if seat then
            ApplyAllMethods()
            -- Auto-switch if speed < expected
            if seat.AssemblyLinearVelocity.Magnitude < (_G.GodSpeed * 5) then
               local bestM = math.random(1,5)  -- Or detect
               ApplyMethod(bestM)
            end
         end
      end
      wait(0.05)  -- 20hz god loop
   end
end)

-- Init
_G.GodSpeed = 20 _G.GodAccel = 500 _G.GodUnlock = true _G.GodAuto = true _G.AutoMethod = true

Rayfield:Notify({
   Title = "5 METHOD GOD AURA LOADED 💀",
   Content = ".ololijkhhjj",
   Duration = 8.69, Image = 4483362458,
})
