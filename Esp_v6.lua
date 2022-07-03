--[[
Reminder: The original script is Project Bullshit made by Racist Dolphin
This script includes:
ESP [Players and Monsters]
Chams [Players and Monsters, Doors]
]]--
-- Services
local Plrs = game:GetService("Players")
local Run = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
-- Camera
function GetCamera() return workspace:FindFirstChildOfClass("Camera") end
local MyCam = GetCamera()
if MyCam == nil then error("What the fuck...") return end
-- Local Player
local MyPlr = Plrs.LocalPlayer
local MyChar = MyPlr.Character
-- Settings
local Settings = {
ESPEnabled = true,
ChamsEnabled = true,
ESPLength = 2048,
ChamsLength = 2048,
MobChams = true,
MobESP = true,
Doors = true,
CharAddedEvent = { },
Colors = {
Player = Color3.fromRGB(255, 255, 255),
NPC = Color3.fromRGB(255, 118, 117),
Door = Color3.fromRGB(236, 204, 104)
}
}
-- Folders
local ChamsFolder = Instance.new("Folder", CoreGui)
ChamsFolder.Name = "Chams"
local PlayerChams = Instance.new("Folder", ChamsFolder)
PlayerChams.Name = "PlayerChams"
local ItemChams = Instance.new("Folder", ChamsFolder)
ItemChams.Name = "ItemChams"
local ESPFolder = Instance.new("Folder", CoreGui)
ESPFolder.Name = "ESP Stuff"
local PlayerESP = Instance.new("Folder", ESPFolder)
PlayerESP.Name = "PlayerESP"
local ItemESP = Instance.new("Folder", ESPFolder)
ItemESP.Name = "ItemESP"
-- Functions
function GetTeamColor(Plr)
if Plr == nil then return nil end
if not Plr:IsA("Player") then
return nil
end
local PickedColor = Settings.Colors.Player
if Plr ~= nil then
PickedColor = Settings.Colors.Player
end
return PickedColor
end
function FindCham(Obj)
for i, v in next, ItemChams:GetChildren() do
if v.className == "ObjectValue" then
if v.Value == Obj then
return v.Parent
end
end
end
return nil
end
function FindESP(Obj)
for i, v in next, ItemESP:GetChildren() do
if v.className == "ObjectValue" then
if v.Value == Obj then
return v.Parent
end
end
end
return nil
end
function GetSizeOfObject(Obj)
if Obj:IsA("BasePart") then
return Obj.Size
elseif Obj:IsA("Model") then
return Obj:GetExtentsSize()
end
end
-- ESP
function UpdateESP(Plr)
if Plr ~= nil then
local Find = PlayerESP:FindFirstChild("ESP Crap_" .. Plr.Name)
if Find then
local PickColor = GetTeamColor(Plr)
Find.Frame.Names.TextColor3 = PickColor
Find.Frame.Dist.TextColor3 = PickColor
local GetChar = Plr.Character
if MyChar and GetChar then
local Find2 = MyChar:FindFirstChild("HumanoidRootPart")
local Find3 = GetChar:FindFirstChild("HumanoidRootPart")
if Find2 and Find3 then
local pos = Find3.Position
local Dist = (Find2.Position - pos).magnitude
if Dist > Settings.ESPLength then
Find.Frame.Names.Visible = false
Find.Frame.Dist.Visible = false
return
else
Find.Frame.Names.Visible = true
Find.Frame.Dist.Visible = true
end
Find.Frame.Dist.Text = "Distance: " .. string.format("%.0f", Dist)
end
end
end
end
end
function UpdateESPMonsters(Plr)
if Plr ~= nil then
local Find = ItemESP:FindFirstChild("ESP Crap_" .. Plr.Name)
if Find then
local PickColor = Settings.Colors.NPC
Find.Frame.Names.TextColor3 = PickColor
Find.Frame.Dist.TextColor3 = PickColor
local GetChar = Plr
local Find2 = MyChar:FindFirstChild("HumanoidRootPart")
local Find3 = GetChar:FindFirstChild("HumanoidRootPart")
if Find2 and Find3 then
local pos = Find3.Position
local Dist = (Find2.Position - pos).magnitude
if Dist > Settings.ESPLength then
Find.Frame.Names.Visible = false
Find.Frame.Dist.Visible = false
return
else
Find.Frame.Names.Visible = true
Find.Frame.Dist.Visible = true
end
Find.Frame.Dist.Text = "Distance: " .. string.format("%.0f", Dist)
end
end
end
end
function RemoveESP(Obj)
if Obj ~= nil then
local IsPlr = Obj:IsA("Player")
local UseFolder = ItemESP
if IsPlr then UseFolder = PlayerESP end
local FindESP = ((IsPlr) and UseFolder:FindFirstChild("ESP Crap_" .. Obj.Name)) or FindESP(Obj)
if FindESP then
FindESP:Destroy()
end
end
end
function CreateESP(Obj)
if Obj ~= nil then
local IsPlr = Obj:IsA("Player")
local UseFolder = ItemESP
local GetChar = ((IsPlr) and Obj.Character) or Obj
local Head = GetChar:FindFirstChild("Head")
local t = tick()
if IsPlr then UseFolder = PlayerESP end
if Head == nil then
repeat
Head = GetChar:FindFirstChild("Head")
wait()
until Head ~= nil or (tick() - t) >= 10
end
if Head == nil then return end
local bb = Instance.new("BillboardGui")
bb.Adornee = Head
bb.ExtentsOffset = Vector3.new(0, 1, 0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0, 5, 0, 5)
bb.StudsOffset = Vector3.new(0, 3, 0)
bb.Name = "ESP Crap_" .. Obj.Name
bb.Parent = UseFolder
local frame = Instance.new("Frame", bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 1
frame.Size = UDim2.new(1, 0, 1, 0)
local TxtName = Instance.new("TextLabel", frame)
TxtName.Name = "Names"
TxtName.ZIndex = 10
TxtName.Text = Obj.Name
TxtName.BackgroundTransparency = 1
TxtName.Position = UDim2.new(0, 0, 0, -45)
TxtName.Size = UDim2.new(1, 0, 10, 0)
TxtName.Font = "SourceSansBold"
TxtName.TextSize = 13
TxtName.TextStrokeTransparency = 0.5
local TxtDist = Instance.new("TextLabel", frame)
TxtDist.Name = "Dist"
TxtDist.ZIndex = 10
TxtDist.Text = ""
TxtDist.BackgroundTransparency = 1
TxtDist.Position = UDim2.new(0, 0, 0, -35)
TxtDist.Size = UDim2.new(1, 0, 10, 0)
TxtDist.Font = "SourceSansBold"
TxtDist.TextSize = 13
TxtDist.TextStrokeTransparency = 0.5
local PickColor = GetTeamColor(Obj) or Settings.Colors.NPC
TxtName.TextColor3 = PickColor
if IsPlr then
TxtDist.TextColor3 = PickColor
end
end
end
function LoadMonstersESP()
local mobspawn = { }
for i, v in next, workspace:GetDescendants() do
local hum = v:FindFirstChildOfClass("Humanoid")
if hum and not Plrs:GetPlayerFromCharacter(hum.Parent) and FindCham(v) == nil and FindESP(v) == nil then
mobspawn[tostring(v.Parent)] = v.Parent
if Settings.ESPEnabled then
CreateESP(v)
end
end
end
for i, v in next, mobspawn do
v.ChildAdded:connect(function(Obj)
local t = tick()
local GetHum = Obj:FindFirstChildOfClass("Humanoid")
if GetHum == nil then
repeat
GetHum = Obj:FindFirstChildOfClass("Humanoid")
wait()
until GetHum ~= nil or (tick() - t) >= 10
end
if GetHum == nil then return end
CreateESP(Obj)
end)
end
end
-- Chams
function UpdateChams(Obj)
if Obj == nil then return end
if Obj:IsA("Player") then
local Find = PlayerChams:FindFirstChild(Obj.Name)
local GetChar = Obj.Character
local Trans = 0
if GetChar and MyChar then
local GetHead = GetChar:FindFirstChild("Head")
local GetTor = GetChar:FindFirstChild("HumanoidRootPart")
local MyHead = MyChar:FindFirstChild("Head")
local MyTor = MyChar:FindFirstChild("HumanoidRootPart")
if GetHead and GetTor and MyHead and MyTor then
if (MyTor.Position - GetTor.Position).magnitude > Settings.ChamsLength then
Trans = 1
else
local Ray = Ray.new(MyCam.CFrame.p, (GetTor.Position - MyCam.CFrame.p).unit * 2048)
local part = workspace:FindPartOnRayWithIgnoreList(Ray, {MyChar})
if part ~= nil then
if part:IsDescendantOf(GetChar) then
Trans = 0.9
else
Trans = 0
end
end
end
end
end
if Find then
for i, v in next, Find:GetChildren() do
if v.className ~= "ObjectValue" then
v.Color3 = GetTeamColor(Obj) or Settings.Colors.NPC
v.Transparency = Trans
end
end
end
end
end
function RemoveChams(Obj)
if Obj ~= nil then
local IsPlr = Obj:IsA("Player")
local UseFolder = ItemChams
if IsPlr then UseFolder = PlayerChams end
local FindC = UseFolder:FindFirstChild(tostring(Obj)) or FindCham(Obj)
if FindC then
FindC:Destroy()
end
end
end
function CreateChams(Obj, ForDoors)
if Obj ~= nil and ForDoors == true then
local UseFolder = ItemChams
local Box = Instance.new("BoxHandleAdornment")
Box.Size = Obj.Size
Box.Name = "Doorso"
Box.Adornee = Obj
Box.AlwaysOnTop = true
Box.ZIndex = 5
Box.Transparency = 0
Box.Color3 = Settings.Colors.Door
Box.Parent = UseFolder
else if Obj ~= nil then
local IsPlr = Obj:IsA("Player")
local UseFolder = ItemChams
local Crap = nil
local GetTor = nil
local t = tick()
if IsPlr then
Obj = Obj.Character
UseFolder = PlayerChams
end
if Obj == nil then return end
GetTor = Obj:FindFirstChild("HumanoidRootPart") or Obj:WaitForChild("HumanoidRootPart")
if IsPlr then Crap = Obj:GetChildren() else Crap = Obj:GetDescendants() end
local FindC = ((IsPlr) and UseFolder:FindFirstChild(Obj.Name)) or FindCham(Obj)
if not FindC then
FindC = Instance.new("Folder", UseFolder)
FindC.Name = Obj.Name
local ObjVal = Instance.new("ObjectValue", FindC)
ObjVal.Value = Obj
end
for _, P in next, Crap do
if P:IsA("PVInstance") and P.Name ~= "HumanoidRootPart" then
local Box = Instance.new("BoxHandleAdornment")
Box.Size = GetSizeOfObject(P)
Box.Name = "Cham"
Box.Adornee = P
Box.AlwaysOnTop = true
Box.ZIndex = 5
Box.Transparency = 0
Box.Color3 = ((IsPlr) and GetTeamColor(Plrs:GetPlayerFromCharacter(Obj))) or Settings.Colors.NPC
Box.Parent = FindC
end
end
end
end
end
function LoadMonstersChams()
local mobspawn = { }
for i, v in next, workspace:GetDescendants() do
local hum = v:FindFirstChildOfClass("Humanoid")
if hum and not Plrs:GetPlayerFromCharacter(hum.Parent) and FindCham(v) == nil and FindESP(v) == nil then
mobspawn[tostring(v.Parent)] = v.Parent
if Settings.ChamsEnabled then
CreateChams(v)
end
end
end
for i, v in next, mobspawn do
v.ChildAdded:connect(function(Obj)
local t = tick()
local GetHum = Obj:FindFirstChildOfClass("Humanoid")
if GetHum == nil then
repeat
GetHum = Obj:FindFirstChildOfClass("Humanoid")
wait()
until GetHum ~= nil or (tick() - t) >= 10
end
if GetHum == nil then return end
CreateChams(Obj)
end)
end
end
function LoadDoorsChams()
for i, v in next, workspace:GetDescendants() do
if v.Name == "Door1" or v.Name == "Door2" and v:IsA("Part") then
if Settings.DoorsChams then
CreateChams(v, true)
end
end
end
end
-- UI
local Screen = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Bar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Glow = Instance.new("ImageLabel")
local Section = Instance.new("ImageLabel")
local Holder = Instance.new("ScrollingFrame")
local ESP = Instance.new("ImageButton")
local ESP_Title = Instance.new("TextLabel")
local ESP_Back = Instance.new("ImageLabel")
local ESP_Checkmark = Instance.new("ImageLabel")
local Chams = Instance.new("ImageButton")
local Chams_Title = Instance.new("TextLabel")
local Chams_Back = Instance.new("ImageLabel")
local Chams_Checkmark = Instance.new("ImageLabel")
Screen.Name = "Screen"
Screen.Parent = CoreGui
Screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Screen.ResetOnSpawn = false
Main.Name = "Main"
Main.Parent = Screen
Main.AnchorPoint = Vector2.new(1, 1)
Main.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.99000001, 0, 1.200000019, 0)
Main.Size = UDim2.new(0, 274, 0, 112)
Main.SizeConstraint = Enum.SizeConstraint.RelativeYY
Bar.Name = "Bar"
Bar.Parent = Main
Bar.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Bar.BorderSizePixel = 0
Bar.Size = UDim2.new(1, 0, -0.107142858, 80)
Bar.ZIndex = 2
Title.Name = "Title"
Title.Parent = Bar
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 10, 0, 12)
Title.Size = UDim2.new(1, -20, 0, 18)
Title.ZIndex = 2
Title.Font = Enum.Font.GothamBold
Title.Text = "Identity Fraud"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 16
Title.TextXAlignment = Enum.TextXAlignment.Left
Glow.Name = "Glow"
Glow.Parent = Main
Glow.BackgroundColor3 = Color3.new(1, 1, 1)
Glow.BackgroundTransparency = 1
Glow.BorderSizePixel = 0
Glow.Position = UDim2.new(0, -15, 0, -15)
Glow.Size = UDim2.new(1, 30, 1, 30)
Glow.ZIndex = 0
Glow.Image = "rbxassetid://4996891970"
Glow.ImageColor3 = Color3.fromRGB(70,70,70)
Glow.ImageTransparency = 0
Glow.ScaleType = Enum.ScaleType.Slice
Glow.SliceScale = 1
Glow.SliceCenter = Rect.new(20, 20, 280, 280)
local Glow2 = Glow:Clone()
Glow2.Parent = Main
Section.Name = "Section"
Section.Parent = Main
Section.BackgroundColor3 = Color3.new(0.937255, 0.937255, 0.937255)
Section.BackgroundTransparency = 1
Section.Position = UDim2.new(0, 10, 0, 40)
Section.Size = UDim2.new(1, -20, 1.05999994, -56)
Section.ZIndex = 3
Section.Image = "rbxassetid://4608020054"
Section.ImageColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Section.ScaleType = Enum.ScaleType.Slice
Section.SliceScale = 0.03
Section.SliceCenter = Rect.new(128, 128, 128, 128)
Holder.Name = "Holder"
Holder.Parent = Section
Holder.Active = true
Holder.BackgroundColor3 = Color3.new(1, 1, 1)
Holder.BackgroundTransparency = 1
Holder.BorderSizePixel = 0
Holder.Position = UDim2.new(0, 4, 0, 4)
Holder.Size = UDim2.new(1, -8, 1, -8)
Holder.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder.CanvasSize = UDim2.new(0, 0, 0, 344)
Holder.ScrollBarThickness = 0
Holder.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
ESP.Name = "ESP"
ESP.Parent = Holder
ESP.BackgroundColor3 = Color3.new(1, 1, 1)
ESP.BackgroundTransparency = 1
ESP.Size = UDim2.new(1, 0, 0, 24)
ESP.Selected = true
ESP.Image = "rbxassetid://4608020054"
ESP.ImageColor3 = Color3.new(0.137255, 0.137255, 0.137255)
ESP.ScaleType = Enum.ScaleType.Slice
ESP.SliceScale = 0.03
ESP.SliceCenter = Rect.new(128, 128, 128, 128)
ESP.MouseButton1Click:Connect(function() Toggle("ESP") end)
ESP_Title.Name = "Title"
ESP_Title.Parent = ESP
ESP_Title.BackgroundColor3 = Color3.new(1, 1, 1)
ESP_Title.BackgroundTransparency = 1
ESP_Title.Position = UDim2.new(0, 7, 0, 0)
ESP_Title.Size = UDim2.new(1, -14, 1, 0)
ESP_Title.Font = Enum.Font.GothamSemibold
ESP_Title.Text = "ESP"
ESP_Title.TextColor3 = Color3.new(1, 1, 1)
ESP_Title.TextSize = 11
ESP_Title.TextStrokeColor3 = Color3.new(1, 1, 1)
ESP_Title.TextXAlignment = Enum.TextXAlignment.Left
ESP_Back.Name = "Back"
ESP_Back.Parent = ESP
ESP_Back.AnchorPoint = Vector2.new(0, 0.5)
ESP_Back.BackgroundColor3 = Color3.new(1, 1, 1)
ESP_Back.BackgroundTransparency = 1
ESP_Back.Position = UDim2.new(1, -22, 0.5, 0)
ESP_Back.Size = UDim2.new(0, 16, 0, 16)
ESP_Back.Image = "rbxassetid://4608020054"
ESP_Back.ImageColor3 = Color3.new(0.105882, 0.105882, 0.105882)
ESP_Back.ScaleType = Enum.ScaleType.Slice
ESP_Back.SliceScale = 0.03
ESP_Back.SliceCenter = Rect.new(128, 128, 128, 128)
ESP_Checkmark.Name = "Checkmark"
ESP_Checkmark.Parent = ESP_Back
ESP_Checkmark.AnchorPoint = Vector2.new(0.5, 0.5)
ESP_Checkmark.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
ESP_Checkmark.BackgroundTransparency = 1
ESP_Checkmark.Position = UDim2.new(0.5, 0, 0.5, 0)
ESP_Checkmark.Size = UDim2.new(1, -2, 1, -2)
ESP_Checkmark.Image = "rbxassetid://5261741175"
ESP_Checkmark.ImageTransparency = 1
Chams.Name = "Chams"
Chams.Parent = Holder
Chams.BackgroundColor3 = Color3.new(1, 1, 1)
Chams.BackgroundTransparency = 1
Chams.Position = UDim2.new(0, 0, 0.0900000036, 0)
Chams.Size = UDim2.new(1, 0, 0, 24)
Chams.Selected = true
Chams.Image = "rbxassetid://4608020054"
Chams.ImageColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Chams.ScaleType = Enum.ScaleType.Slice
Chams.SliceScale = 0.03
Chams.SliceCenter = Rect.new(128, 128, 128, 128)
Chams.MouseButton1Click:Connect(function() Toggle("Chams") end)
Chams_Title.Name = "Title"
Chams_Title.Parent = Chams
Chams_Title.BackgroundColor3 = Color3.new(1, 1, 1)
Chams_Title.BackgroundTransparency = 1
Chams_Title.Position = UDim2.new(0, 7, 0, 0)
Chams_Title.Size = UDim2.new(1, -14, 1, 0)
Chams_Title.Font = Enum.Font.GothamSemibold
Chams_Title.Text = "Chams"
Chams_Title.TextColor3 = Color3.new(1, 1, 1)
Chams_Title.TextSize = 11
Chams_Title.TextStrokeColor3 = Color3.new(1, 1, 1)
Chams_Title.TextXAlignment = Enum.TextXAlignment.Left
Chams_Back.Name = "Back"
Chams_Back.Parent = Chams
Chams_Back.AnchorPoint = Vector2.new(0, 0.5)
Chams_Back.BackgroundColor3 = Color3.new(1, 1, 1)
Chams_Back.BackgroundTransparency = 1
Chams_Back.Position = UDim2.new(1, -22, 0.5, 0)
Chams_Back.Size = UDim2.new(0, 16, 0, 16)
Chams_Back.Image = "rbxassetid://4608020054"
Chams_Back.ImageColor3 = Color3.new(0.105882, 0.105882, 0.105882)
Chams_Back.ScaleType = Enum.ScaleType.Slice
Chams_Back.SliceScale = 0.03
Chams_Back.SliceCenter = Rect.new(128, 128, 128, 128)
Chams_Checkmark.Name = "Checkmark"
Chams_Checkmark.Parent = Chams_Back
Chams_Checkmark.AnchorPoint = Vector2.new(0.5, 0.5)
Chams_Checkmark.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Chams_Checkmark.BackgroundTransparency = 1
Chams_Checkmark.Position = UDim2.new(0.5, 0, 0.5, 0)
Chams_Checkmark.Size = UDim2.new(1, -2, 1, -2)
Chams_Checkmark.Image = "rbxassetid://5261741175"
Chams_Checkmark.ImageTransparency = 1
-- Players Join And Leave
Plrs.PlayerAdded:connect(function(Plr)
if Settings.CharAddedEvent[Plr.Name] == nil then
Settings.CharAddedEvent[Plr.Name] = Plr.CharacterAdded:connect(function(Char)
if Settings.ESPEnabled then
RemoveESP(Plr)
CreateESP(Plr)
end
if Settings.ChamsEnabled then
RemoveChams(Plr)
CreateChams(Plr)
end
repeat wait() until Char:FindFirstChild("HumanoidRootPart")
end)
end
end)
Plrs.PlayerRemoving:connect(function(Plr)
if Settings.CharAddedEvent[Plr.Name] ~= nil then
Settings.CharAddedEvent[Plr.Name]:Disconnect()
Settings.CharAddedEvent[Plr.Name] = nil
end
RemoveESP(Plr)
RemoveChams(Plr)
end)
-- Start Functions
TweenService:Create(Main, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
Position = UDim2.new(0.99000001, 0, 0.980000019, 0);
}):Play()
Toggle = function(Mode)
if Mode == "ESP" then
if not Settings.ESPEnabled then
Settings.ESPEnabled = true
for _, v in next, Plrs:GetPlayers() do
if v ~= MyPlr then
if Settings.CharAddedEvent[v.Name] == nil then
Settings.CharAddedEvent[v.Name] = v.CharacterAdded:connect(function(Char)
if Settings.ESPEnabled then
RemoveESP(v)
CreateESP(v)
end
if Settings.ChamsEnabled then
RemoveChams(v)
CreateChams(v)
end
repeat wait() until Char:FindFirstChild("HumanoidRootPart")
end)
end
RemoveESP(v)
CreateESP(v)
end
end
LoadMonstersESP()
TweenService:Create(ESP["Back"]["Checkmark"], TweenInfo.new(.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
ImageTransparency = 0;
}):Play()
else
Settings.ESPEnabled = false
PlayerESP:ClearAllChildren()
ItemESP:ClearAllChildren()
TweenService:Create(ESP["Back"]["Checkmark"], TweenInfo.new(.1, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
ImageTransparency = 1;
}):Play()
end
else if Mode == "Chams" then
if not Settings.ChamsEnabled then
Settings.ChamsEnabled = true
for _, v in next, Plrs:GetPlayers() do
if v ~= MyPlr then
if Settings.CharAddedEvent[v.Name] == nil then
Settings.CharAddedEvent[v.Name] = v.CharacterAdded:connect(function(Char)
if Settings.ESPEnabled then
RemoveESP(v)
CreateESP(v)
end
if Settings.ChamsEnabled then
RemoveChams(v)
CreateChams(v)
end
repeat wait() until Char:FindFirstChild("HumanoidRootPart")
end)
end
RemoveChams(v)
CreateChams(v)
end
end
LoadMonstersChams()
LoadDoorsChams()
TweenService:Create(Chams["Back"]["Checkmark"], TweenInfo.new(.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
ImageTransparency = 0;
}):Play()
else
Settings.ChamsEnabled = false
PlayerChams:ClearAllChildren()
ItemChams:ClearAllChildren()
TweenService:Create(Chams["Back"]["Checkmark"], TweenInfo.new(.1, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
ImageTransparency = 1;
}):Play()
end
end
end
end
-- Updates
Run:BindToRenderStep("UpdateESP", Enum.RenderPriority.Character.Value, function()
for _, v in next, Plrs:GetPlayers() do
if v ~= MyPlr then
UpdateESP(v)
end
end
end)
Run:BindToRenderStep("UpdateESPMonsters", Enum.RenderPriority.Character.Value, function()
for _, a in pairs(workspace.NPCs:GetChildren()) do
UpdateESPMonsters(a)
end
end)
coroutine.resume(coroutine.create(function()
while true do
for _, v in next, Plrs:GetPlayers() do
UpdateChams(v)
Run.RenderStepped:wait()
end
end
end))

