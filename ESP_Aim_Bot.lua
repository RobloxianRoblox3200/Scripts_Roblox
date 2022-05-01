--// Exploit Fix \--
if not pcall(function() return syn.protect_gui end) then
    syn = {}
    syn.protect_gui = function(A_1)
        A_1.Parent = game:GetService("CoreGui")
    end
end
local Library = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()
local ESP = loadstring(game:HttpGetAsync("https://pastebin.com/raw/SnMPYbAW"))()
local Parts = {"Head","Torso"}
local UIS = game:GetService("UserInputService")
local camera = game.Workspace.CurrentCamera
local UIS = game:GetService("UserInputService")
local camera = game.Workspace.CurrentCamera
--> getting the closest player
function getClosestNoTeam()
    local target = nil
    local dist = math.huge
	local mouse = game.Players.LocalPlayer:GetMouse()
	local camera = game.Workspace.CurrentCamera	
for i,v in pairs(game.Players:GetChildren()) do
    if v.Name ~= game.Players.LocalPlayer.Name then
        if v.Character and v.Character:FindFirstChild("Humanoid") and v.TeamColor ~= game.Players.LocalPlayer.TeamColor  and v.Character:FindFirstChild("HumanoidRootPart") then
            local screenpoint = camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
			local check = (Vector2.new(mouse.X,mouse.Y)-Vector2.new(screenpoint.X,screenpoint.Y)).magnitude

            if check < dist  then
            
print("Got Target")
                target  = v
                dist = check
            end
        end
    end
end
	return target
end

function getClosest()
    local target = nil
    local dist = math.huge
	local mouse = game.Players.LocalPlayer:GetMouse()
	local camera = game.Workspace.CurrentCamera	
for i,v in pairs(game.Players:GetChildren()) do
print("Got Player")
    if v.Name ~= game.Players.LocalPlayer.Name then
print("Player is not localplayer")
        if v.Character and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") then
print("Player got all parts")
            local screenpoint = camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
		    local check = (Vector2.new(mouse.X,mouse.Y)-Vector2.new(screenpoint.X,screenpoint.Y)).magnitude
      
            if check < dist  then
            
print("Got Target")
                target  = v
                dist = check
            end
        end
    end
end
	return target
end
local partchoosed = "Head"

local aim = false

local aims = false

local teamcheckaim = false


ESP.Players = false
ESP.Boxes = false
ESP.Names = false

ESP.TeamColor = false

ESP.Tracers = false
ESP:Toggle(true)

local AimbotSection = Library:CreateTab("Aimbot Section", "This is where you turn on aimbot.", true)

local PlayerTab = Library:CreateTab("Player ESP", "This is where you modify the Player ESP.", true)

PlayerTab:CreateToggle("Enable ESP", function(arg)
   if arg then
       ESP.Players = true
   else
       ESP.Players = false
   end
end)
PlayerTab:CreateToggle("Boxes", function(arg)
   if arg then
       ESP.Boxes = true
   else
       ESP.Boxes = false
   end
end)

PlayerTab:CreateToggle("Tracers", function(arg)
   if arg then
       ESP.Tracers = true
   else
       ESP.Tracers= false
   end
end)
PlayerTab:CreateToggle("Names", function(arg)
   if arg then
       ESP.Names = true
   else
       ESP.Names = false
   end
end)
PlayerTab:CreateToggle("Distance", function(arg)
   if arg then
       ESP.Distance = true
   else
       ESP.Distance = false
   end
end)
PlayerTab:CreateToggle("Teamcheck", function(arg)
   if arg then
       ESP.TeamMates = false
   else
       ESP.TeamMates= true
   end
end)

PlayerTab:CreateToggle("Team Color", function(arg)
   if arg then
       ESP.TeamColor = true
   else
       ESP.TeamColor= false
   end
end)

AimbotSection:CreateDropDown("Aim Part", Parts,function(t)
partchoosed = t
end)

AimbotSection:CreateToggle("Teamcheck",function(t)
teamcheckaim = t
end)

AimbotSection:CreateToggle("Aimbot",function(t)
aim = t

--> starting the aimbot
UIS.InputBegan:Connect(function(inp)
    if inp.UserInputType == Enum.UserInputType.MouseButton2 and aim then	
aims = true
    while wait() do
    if not aim or not aims then return end
		if teamcheckaim then
                if partchoosed == "Torso" and not getClosestNoTeam().Character:FindFirstChild(partchoosed) then
	        camera.CFrame = CFrame.new(camera.CFrame.Position,getClosestNoTeam().Character.UpperTorso.Position)
                else
                camera.CFrame = CFrame.new(camera.CFrame.Position,getClosestNoTeam().Character[partchoosed].Position)
                end
		else
             if partchoosed == "Torso" and not getClosest().Character:FindFirstChild(partchoosed) then
	        camera.CFrame = CFrame.new(camera.CFrame.Position,getClosest().Character.UpperTorso.Position)
                else
                camera.CFrame = CFrame.new(camera.CFrame.Position,getClosest().Character[partchoosed].Position)
                end
		end
    end
    end
end)

UIS.InputEnded:Connect(function(inp)
    if inp.UserInputType == Enum.UserInputType.MouseButton2 and aim then
       aims = false
    end
end)
end)
