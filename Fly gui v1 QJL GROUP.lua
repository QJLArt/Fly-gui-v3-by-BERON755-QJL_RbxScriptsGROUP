-- Fly gui v1 by BERON755 & QJL_RbxScriptsGROUP --

-- YouTube channel QJL RbxScriptsTV and telegram channel QJL RbxScripts|GROUP EXPLOITS --

local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local buttonUp = Instance.new("TextButton")
local buttonDown = Instance.new("TextButton")
local buttonToggle = Instance.new("TextButton")
local label = Instance.new("TextLabel")
local buttonPlus = Instance.new("TextButton")
local labelSpeed = Instance.new("TextLabel")
local buttonMinus = Instance.new("TextButton")
local buttonClose = Instance.new("TextButton")
local buttonMinimize = Instance.new("TextButton")
local buttonMinimize2 = Instance.new("TextButton")

gui.Name = "mainGui"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.ResetOnSpawn = false

frame.Parent = gui
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
frame.Position = UDim2.new(0.1, 0, 0.38, 0)
frame.Size = UDim2.new(0, 190, 0, 57)

buttonUp.Name = "buttonUp"
buttonUp.Parent = frame
buttonUp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
buttonUp.Size = UDim2.new(0, 44, 0, 28)
buttonUp.Font = Enum.Font.SourceSans
buttonUp.Text = "↑"
buttonUp.TextColor3 = Color3.fromRGB(0, 0, 0)
buttonUp.TextSize = 14

buttonDown.Name = "buttonDown"
buttonDown.Parent = frame
buttonDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
buttonDown.Position = UDim2.new(0, 0, 0.5, 0)
buttonDown.Size = UDim2.new(0, 44, 0, 28)
buttonDown.Font = Enum.Font.SourceSans
buttonDown.Text = "↓"
buttonDown.TextColor3 = Color3.fromRGB(0, 0, 0)
buttonDown.TextSize = 14

buttonToggle.Name = "buttonToggle"
buttonToggle.Parent = frame
buttonToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
buttonToggle.Position = UDim2.new(0.7, 0, 0.5, 0)
buttonToggle.Size = UDim2.new(0, 56, 0, 28)
buttonToggle.Font = Enum.Font.SourceSans
buttonToggle.Text = "FLY"
buttonToggle.TextColor3 = Color3.fromRGB(0, 0, 0)
buttonToggle.TextSize = 14

label.Parent = frame
label.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
label.Position = UDim2.new(0.47, 0, 0, 0)
label.Size = UDim2.new(0, 100, 0, 28)
label.Font = Enum.Font.SourceSans
label.Text = "By BERON755 & QJL_RbxScriptsGROUP"
label.TextColor3 = Color3.fromRGB(0, 0, 0)
label.TextScaled = true
label.TextSize = 14
label.TextWrapped = true

buttonPlus.Name = "buttonPlus"
buttonPlus.Parent = frame
buttonPlus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
buttonPlus.Position = UDim2.new(0.23, 0, 0, 0)
buttonPlus.Size = UDim2.new(0, 45, 0, 28)
buttonPlus.Font = Enum.Font.SourceSans
buttonPlus.Text = "+"
buttonPlus.TextColor3 = Color3.fromRGB(0, 0, 0)
buttonPlus.TextScaled = true
buttonPlus.TextSize = 14
buttonPlus.TextWrapped = true

labelSpeed.Name = "labelSpeed"
labelSpeed.Parent = frame
labelSpeed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
labelSpeed.Position = UDim2.new(0.47, 0, 0.5, 0)
labelSpeed.Size = UDim2.new(0, 44, 0, 28)
labelSpeed.Font = Enum.Font.SourceSans
labelSpeed.Text = "1"
labelSpeed.TextColor3 = Color3.fromRGB(0, 0, 0)
labelSpeed.TextScaled = true
labelSpeed.TextSize = 14
labelSpeed.TextWrapped = true

buttonMinus.Name = "buttonMinus"
buttonMinus.Parent = frame
buttonMinus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
buttonMinus.Position = UDim2.new(0.23, 0, 0.5, 0)
buttonMinus.Size = UDim2.new(0, 45, 0, 29)
buttonMinus.Font = Enum.Font.SourceSans
buttonMinus.Text = "-"
buttonMinus.TextColor3 = Color3.fromRGB(0, 0, 0)
buttonMinus.TextScaled = true
buttonMinus.TextSize = 14
buttonMinus.TextWrapped = true

buttonClose.Name = "buttonClose"
buttonClose.Parent = gui.Frame
buttonClose.BackgroundColor3 = Color3.fromRGB(255, 5, 5)
buttonClose.Font = "Michroma"
buttonClose.Size = UDim2.new(0, 45, 0, 28)
buttonClose.Text = "x"
buttonClose.TextSize = 30
buttonClose.Position = UDim2.new(0, 0, -1, 27)

buttonMinimize.Name = "buttonMinimize"
buttonMinimize.Parent = gui.Frame
buttonMinimize.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
buttonMinimize.Font = "Michroma"
buttonMinimize.Size = UDim2.new(0, 45, 0, 28)
buttonMinimize.Text = "-"
buttonMinimize.TextSize = 40
buttonMinimize.Position = UDim2.new(0, 44, -1, 27)

buttonMinimize2.Name = "buttonMinimize2"
buttonMinimize2.Parent = gui.Frame
buttonMinimize2.BackgroundColor3 = Color3.fromRGB(117, 117, 117)
buttonMinimize2.Font = "SourceSans"
buttonMinimize2.Size = UDim2.new(0, 45, 0, 28)
buttonMinimize2.Text = "+"
buttonMinimize2.TextSize = 40
buttonMinimize2.Position = UDim2.new(0, 44, -1, 57)
buttonMinimize2.Visible = false

local currentSpeed = 1
local player = game:GetService("Players").LocalPlayer
local character = player.Character
local humanoid = character and character:FindFirstChildWhichIsA("Humanoid")
local isFlying = false

game:GetService("StarterGui"):SetCore("SendNotification", { 
 Title = "FLY GUI V1 QJL GROUP";
 Text = "Fly gui v1 by BERON755 and QJL_RbxScriptsGROUP";
 Icon = "rbxthumb://type=Asset&id=18817136788&w=150&h=150"})
Duration = 5

frame.Active = true
frame.Draggable = true

buttonToggle.MouseButton1Down:connect(function()
 if isFlying then
  isFlying = false
  humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, true)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, true)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, true)
  humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
 else 
  isFlying = true
  for i = 1, currentSpeed do
   spawn(function()
    local hb = game:GetService("RunService").Heartbeat 
    local tpwalking = true
    local chr = player.Character
    local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
    while tpwalking and hb:Wait() and chr and hum and hum.Parent do
     if hum.MoveDirection.Magnitude > 0 then
      chr:TranslateBy(hum.MoveDirection)
     end
    end
   end)
  end
  character.Animate.Disabled = true
  local Char = character
  local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
  for i, v in next, Hum:GetPlayingAnimationTracks() do
   v:AdjustSpeed(0)
  end
  humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, false)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false)
  humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
  humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
 end

 if humanoid.RigType == Enum.HumanoidRigType.R6 then
  local plr = player
  local torso = plr.Character.Torso
  local flying = true
  local deb = true
  local ctrl = {f = 0, b = 0, l = 0, r = 0}
  local lastctrl = {f = 0, b = 0, l = 0, r = 0}
  local maxspeed = 50
  local speed = 0
  local bg = Instance.new("BodyGyro", torso)
  bg.P = 9e4
  bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
  bg.cframe = torso.CFrame
  local bv = Instance.new("BodyVelocity", torso)
  bv.velocity = Vector3.new(0, 0.1, 0)
  bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
  if isFlying then
   plr.Character.Humanoid.PlatformStand = true
  end
  while isFlying or player.Character.Humanoid.Health == 0 do
   game:GetService("RunService").RenderStepped:Wait()
   if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
    speed = speed + 0.5 + (speed / maxspeed)
    if speed > maxspeed then
     speed = maxspeed
    end
   elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
    speed = speed - 1
    if speed < 0 then
     speed = 0
    end
   end
   if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f + ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l + ctrl.r, (ctrl.f + ctrl.b) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * speed
    lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
   elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f + lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l + lastctrl.r, (lastctrl.f + lastctrl.b) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * speed
   else
    bv.velocity = Vector3.new(0, 0, 0)
   end
   bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f + ctrl.b) * 50 * speed / maxspeed), 0, 0)
  end
  ctrl = {f = 0, b = 0, l = 0, r = 0}
  lastctrl = {f = 0, b = 0, l = 0, r = 0}
  speed = 0
  bg:Destroy()
  bv:Destroy()
  plr.Character.Humanoid.PlatformStand = false
  player.Character.Animate.Disabled = false
  tpwalking = false
 else
  local plr = player
  local UpperTorso = plr.Character.UpperTorso
  local flying = true
  local deb = true
  local ctrl = {f = 0, b = 0, l = 0, r = 0}
  local lastctrl = {f = 0, b = 0, l = 0, r = 0}
  local maxspeed = 50
  local speed = 0
  local bg = Instance.new("BodyGyro", UpperTorso)
  bg.P = 9e4
  bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
  bg.cframe = UpperTorso.CFrame
  local bv = Instance.new("BodyVelocity", UpperTorso)
  bv.velocity = Vector3.new(0, 0.1, 0)
  bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
  if isFlying then
   plr.Character.Humanoid.PlatformStand = true
  end
  while isFlying or player.Character.Humanoid.Health == 0 do
   game:GetService("RunService").RenderStepped:Wait()
   if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
    speed = speed + 0.5 + (speed / maxspeed)
    if speed > maxspeed then
     speed = maxspeed
    end
   elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
    speed = speed - 1
    if speed < 0 then
     speed = 0
    end
   end
   if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f + ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l + ctrl.r, (ctrl.f + ctrl.b) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * speed
    lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
   elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f + lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l + lastctrl.r, (lastctrl.f + lastctrl.b) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * speed
   else
    bv.velocity = Vector3.new(0, 0, 0)
   end
   bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f + ctrl.b) * 50 * speed / maxspeed), 0, 0)
  end
  ctrl = {f = 0, b = 0, l = 0, r = 0}
  lastctrl = {f = 0, b = 0, l = 0, r = 0}
  speed = 0
  bg:Destroy()
  bv:Destroy()
  plr.Character.Humanoid.PlatformStand = false
  player.Character.Animate.Disabled = false
  tpwalking = false
 end
end)

local connection
buttonUp.MouseButton1Down:connect(function()
 connection = buttonUp.MouseEnter:connect(function()
  while connection do
   game:GetService("RunService").RenderStepped:Wait()
   player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 0)
  end
 end)
end)

buttonUp.MouseLeave:connect(function()
 if connection then
  connection:Disconnect()
  connection = nil
 end
end)

local downConnection
buttonDown.MouseButton1Down:connect(function()
 downConnection = buttonDown.MouseEnter:connect(function()
  while downConnection do
   game:GetService("RunService").RenderStepped:Wait()
   player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0, -1, 0)
  end
 end)
end)

buttonDown.MouseLeave:connect(function()
 if downConnection then
  downConnection:Disconnect()
  downConnection = nil
 end
end)

game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
 wait(0.7)
 player.Character.Humanoid.PlatformStand = false
 player.Character.Animate.Disabled = false
end)

buttonPlus.MouseButton1Down:connect(function()
 currentSpeed = currentSpeed + 1
 labelSpeed.Text = currentSpeed
 if isFlying then
  tpwalking = false
  for i = 1, currentSpeed do
   spawn(function()
    local hb = game:GetService("RunService").Heartbeat 
    tpwalking = true
    local chr = player.Character
    local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
    while tpwalking and hb:Wait() and chr and hum and hum.Parent do
     if hum.MoveDirection.Magnitude > 0 then
      chr:TranslateBy(hum.MoveDirection)
     end
    end
   end)
  end
 end
end)

buttonMinus.MouseButton1Down:connect(function()
 if currentSpeed == 1 then
  labelSpeed.Text = '-1 speed fly bruh'
  wait(1)
  labelSpeed.Text = currentSpeed
 else
  currentSpeed = currentSpeed - 1
  labelSpeed.Text = currentSpeed
  if isFlying then
   tpwalking = false
   for i = 1, currentSpeed do
    spawn(function()
     local hb = game:GetService("RunService").Heartbeat 
     tpwalking = true
     local chr = player.Character
     local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
     while tpwalking and hb:Wait() and chr and hum and hum.Parent do
      if hum.MoveDirection.Magnitude > 0 then
       chr:TranslateBy(hum.MoveDirection)
      end
     end
    end)
   end
  end
 end
end)

buttonClose.MouseButton1Click:Connect(function()
 gui:Destroy()
end)

buttonMinimize.MouseButton1Click:Connect(function()
 buttonUp.Visible = false
 buttonDown.Visible = false
 buttonToggle.Visible = false
 buttonPlus.Visible = false
 labelSpeed.Visible = false
 buttonMinus.Visible = false
 buttonMinimize.Visible = false
 buttonMinimize2.Visible = true
 gui.Frame.BackgroundTransparency = 1
 buttonClose.Position = UDim2.new(0, 0, -1, 57)
end)

buttonMinimize2.MouseButton1Click:Connect(function()
 buttonUp.Visible = true
 buttonDown.Visible = true
 buttonToggle.Visible = true
 buttonPlus.Visible = true
 labelSpeed.Visible = true
 buttonMinus.Visible = true
 buttonMinimize.Visible = true
 buttonMinimize2.Visible = false
 gui.Frame.BackgroundTransparency = 0 
 buttonClose.Position = UDim2.new(0, 0, -1, 27)
end)