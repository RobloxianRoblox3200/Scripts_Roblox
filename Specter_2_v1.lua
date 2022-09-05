--loadstring(game.HttpGet(game, 'https://raw.githubusercontent.com/RobloxianRoblox3200/Scripts_Roblox/main/Specter_2_v1.lua', true))()

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/forumsLib/main/source.lua"))()
local Forums = Library.new('Linsher | Specter 2 GUI')
local Evidence,Visuals,Teleports,Changers,Misc

if not game.ReplicatedStorage:FindFirstChild('Characters') then 
    Evidence = Forums:NewSection('Evidence')
    Visuals = Forums:NewSection('Visuals')
    Teleports = Forums:NewSection('Teleports')
end 
if game.ReplicatedStorage:FindFirstChild('Characters') then 
    Changers = Forums:NewSection('Changers')
end 
if not game.ReplicatedStorage:FindFirstChild('Characters') then 
    Misc = Forums:NewSection('Misc')
end 
Credits = Forums:NewSection('Credits')

-- Evidences
if not game.ReplicatedStorage:FindFirstChild('Characters') then 
    local OrbObscured = false
    local OrbStatus = Evidence:NewButton('Ghost Orbs: Not found', function()
        --null
    end)
    
    local FingerprintsStatus = Evidence:NewButton('Fingerprints: Not Found', function()
        --null
    end)

    Evidence:NewButton('Check evidences', function()
        if #workspace.Fingerprints:GetChildren() > 0 then 
            FingerprintsStatus:Update('Fingerprints: Found')
        end 
        if #workspace.Orbs:GetChildren() > 0 then 
            OrbObscured = true
            OrbStatus:Update('Ghost Orbs: Found')
        end 
    end) 
    
    workspace.Orbs.ChildAdded:Connect(function()
        if not OrbObscured then 
            OrbObscured = true 
            OrbStatus:Update('Ghost Orbs: Found')
        end 
    end) 
end

-- Visuals
if not game.ReplicatedStorage:FindFirstChild('Characters') then 
    local Ghost = nil
    Visuals:NewToggle('Ghost ESP', function(t)
        if t then 
            if Ghost == nil then 
                for i,v in pairs(workspace:GetChildren()) do 
                    if tostring(v):lower():match('ghost') and not tostring(v):lower():match('scare') then 
                        Ghost = v 
                        break
                    end 
                end 
            end 
            if not Ghost:FindFirstChild('ESP') then 
                Ghost.Base.Transparency = 0
                local ESP = Instance.new('Highlight')
                ESP.Name = 'ESP'
                ESP.Enabled = true 
                ESP.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                ESP.FillColor = Color3.fromRGB(255,0,0)
                ESP.FillTransparency = 0
                ESP.OutlineTransparency = 1 
                ESP.Parent = Ghost 
                ESP.Adornee = Ghost
            end
        else 
            if Ghost ~= nil then 
                if Ghost:FindFirstChild('ESP') then 
                    Ghost.ESP.Adornee = nil
                    Ghost.ESP:Destroy()
                end 
            end 
        end 
    end)
    
    Visuals:Seperator()
    
    Visuals:NewToggle('Fingerprints ESP', function(t)
        if t then 
            if #workspace.Fingerprints:GetChildren() > 0 then 
                for i,v in pairs(workspace.Fingerprints:GetChildren()) do 
                    if not v:FindFirstChild('ESP') then 
                        v.Transparency = 0
                        local ESP = Instance.new('Highlight')
                        ESP.Name = 'ESP'
                        ESP.Enabled = true 
                        ESP.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        ESP.FillColor = Color3.fromRGB(139,0,139)
                        ESP.FillTransparency = 0 
                        ESP.OutlineTransparency = 1 
                        ESP.Parent = v 
                        ESP.Adornee = v 
                    end 
                end 
            end 
        else 
            if #workspace.Fingerprints:GetChildren() > 0 then 
                for i,v in pairs(workspace.Fingerprints:GetChildren()) do 
                    if v:FindFirstChild('ESP') then 
                        v.ESP.Adornee = nil 
                        v.ESP:Destroy()
                    end 
                end 
            end 
        end 
    end) 
    
    local OrbESP = false 
    Visuals:NewToggle('Orb ESP', function(t)
        OrbESP = t
        if not OrbESP then 
            if #workspace.Orbs:GetChildren() > 0 then 
                for i,v in pairs(workspace.Orbs:GetChildren()) do 
                    if v:FindFirstChild('ESP') then 
                        v.ESP.Adornee = nil 
                        v.ESP:Destroy()
                    end 
                end 
            end 
        end 
    end)
    
    workspace.Orbs.ChildAdded:Connect(function(Orb)
        if OrbESP then 
            if not Orb:FindFirstChild('ESP') then 
                Orb.Transparency = 0
                local ESP = Instance.new('Highlight')
                ESP.Name = 'ESP'
                ESP.Enabled = true 
                ESP.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop 
                ESP.FillColor = Color3.fromRGB(0,255,0)
                ESP.FillTransparency = 0 
                ESP.OutlineTransparency = 1 
                ESP.Parent = Orb 
                ESP.Adornee = Orb
            end 
        end 
    end) 
    
    Visuals:Seperator()
    
    Visuals:NewToggle('Full Brightness', function(t)
        if t then 
            game.Lighting.ExposureCompensation = 3
        else 
            game.Lighting.ExposureCompensation = -1
        end 
    end) 
end

-- Teleports 
if not game.ReplicatedStorage:FindFirstChild('Characters') then 
    local Rooms = {} 
    for i,v in pairs(workspace.Map.Rooms:GetChildren()) do 
        table.insert(Rooms, tostring(v))
    end
    local Location = nil
    Teleports:NewDropdown('Location', Rooms, function(t)
        Location = t
    end) 
    
    Teleports:NewButton('Teleport', function()
        if Location ~= nil then 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Rooms[Location].Hitbox.CFrame
        end 
    end) 
    
    Teleports:Seperator()
    
    local FoundObjects = {}
    for i,v in pairs(workspace.Map.PossessionSpawns:GetChildren()) do 
        if workspace.Map:FindFirstChild(tostring(v)) then 
            table.insert(FoundObjects, tostring(v))
        end  
    end 
    
    if #FoundObjects == 0 then 
        FoundObjects[1] = 'None'
    end 
    
    local Object = nil 
    Teleports:NewDropdown('Cursed Possession', FoundObjects, function(t)
        if FoundObjects[1] ~= 'None' then
            Object = t
        end 
    end)

    Teleports:NewButton('Teleport', function()
        if Object ~= nil then 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map:FindFirstChild(Object):FindFirstChildWhichIsA('BasePart').CFrame
        end 
    end) 
    
    Teleports:Seperator()
    
    local Bones = {}
    for i,v in pairs(workspace:GetChildren()) do 
        if tostring(v) == 'Bone' then 
            table.insert(Bones, v)
        end 
    end 
    
    local Bone = nil
    Teleports:NewDropdown('Bone', Bones, function(t)
        Bone = t
    end)
    
    Teleports:NewButton('Teleport', function()
        if Bone ~= nil then 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[Bone].CFrame
        end 
    end)  
end 

-- Changers
if game.ReplicatedStorage:FindFirstChild('Characters') then 
    local Characters = {}
    for i,v in pairs(game.ReplicatedStorage.Characters:GetChildren()) do 
        table.insert(Characters, tostring(v))
    end 
    
    local Character = nil
    Changers:NewDropdown('Character', Characters, function(t)
        Character = t
    end)
    
    Changers:NewButton('Change Character', function()
        if Character ~= nil then 
            game.Players.LocalPlayer:SetAttribute('Character', Character)
        end 
    end) 
    
    Changers:Seperator()
    
    local Vans = {} 
    for i,v in pairs(game.ReplicatedStorage.Vans:GetChildren()) do 
        for _,van in pairs(v:GetChildren()) do 
            table.insert(Vans, tostring(v) .. ' | ' .. tostring(van))
        end 
    end 
    local Van = nil
    local VanType = nil
    
    Changers:NewDropdown('Van', Vans, function(t)
        VanType = t:split(' | ')[1]
        Van = t:split(' | ')[2]
    end) 
    
    Changers:NewButton('Change Van', function()
        if Van ~= nil and VanType ~= nil then 
            game.Players.LocalPlayer:SetAttribute('VanType', VanType)
            game.Players.LocalPlayer:SetAttribute('VanSkin', Van)
        end 
    end) 
    
    syn.queue_on_teleport(function()
        game.Players.LocalPlayer:SetAttribute('Character', Character)
        game.Players.LocalPlayer:SetAttribute('VanType', VanType)
        game.Players.LocalPlayer:SetAttribute('VanSkin', Van)
    end) 
end

-- Misc
if not game.ReplicatedStorage:FindFirstChild('Characters') then 
    local InfiniteStamina = false
    Misc:NewToggle('Infinite Stamina', function(t)
        InfiniteStamina = t
    end)
    
    game.Players.LocalPlayer:GetAttributeChangedSignal('Stamina'):Connect(function()
        if InfiniteStamina then
            game.Players.LocalPlayer:SetAttribute('Stamina', 100)
        end
    end) 
    
    game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal('WalkSpeed'):Connect(function()
        if InfiniteStamina and game.Players.LocalPlayer.Character.Humanoid.WalkSpeed < 14 and game.UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then 
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 14
        end 
    end) 
    
    game.UserInputService.InputEnded:Connect(function(Input)
        if InfiniteStamina and Input.KeyCode == Enum.KeyCode.LeftShift then 
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 6
        end 
    end) 
    
    local InfiniteSanity = false 
    Misc:NewToggle('Infinite Sanity', function(t)
        InfiniteSanity = t
    end) 
    
    game.Players.LocalPlayer:GetAttributeChangedSignal('Sanity'):Connect(function()
        if InfiniteSanity then 
            game.Players.LocalPlayer:SetAttribute('Sanity', 100)
        end 
    end) 
end 

Credits:NewButton('Script created by neexiu#6249', function()
    -- null 
end)
