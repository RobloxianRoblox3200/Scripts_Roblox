local Pressure_Wash_Simulator = Instance.new("ScreenGui")
local Frame1 = Instance.new("Frame")
local UICorner1 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextButton3 = Instance.new("TextButton")
local UICorner3 = Instance.new("UICorner")
local Frame2 = Instance.new("Frame")
local Frame3 = Instance.new("Frame")
local UICorner2 = Instance.new("UICorner")
local TextButton1 = Instance.new("TextButton")
local UICorner4 = Instance.new("UICorner")
local TextButton2 = Instance.new("TextButton")
local UICorner5 = Instance.new("UICorner")

Pressure_Wash_Simulator.Name = "Pressure_Wash_Simulator"
Pressure_Wash_Simulator.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame1.Name = "Frame1"
Frame1.Parent = Pressure_Wash_Simulator
Frame1.BackgroundColor3 = Color3.fromRGB(49, 49, 51)
Frame1.BorderColor3 = Color3.fromRGB(49, 49, 51)
Frame1.Position = UDim2.new(0.0860047117, 0, 0.120245397, 0)
Frame1.Size = UDim2.new(0, 161, 0, 104)

UICorner1.Name = "UICorner1"
UICorner1.Parent = Frame1

TextLabel.Parent = Frame1
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 135, 0, 29)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Pressure Wash Simulator"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton3.Name = "TextButton3"
TextButton3.Parent = Frame1
TextButton3.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
TextButton3.BorderColor3 = Color3.fromRGB(28, 28, 28)
TextButton3.Position = UDim2.new(0.819999993, 3, 0.0209999997, 1)
TextButton3.Size = UDim2.new(0, 22, 0, 22)
TextButton3.Font = Enum.Font.SourceSans
TextButton3.Text = "X"
TextButton3.TextColor3 = Color3.fromRGB(225, 225, 225)
TextButton3.TextScaled = true
TextButton3.TextSize = 19.000
TextButton3.TextWrapped = true

UICorner3.Name = "UICorner3"
UICorner3.Parent = TextButton3

Frame2.Name = "Frame2"
Frame2.Parent = Frame1
Frame2.BackgroundColor3 = Color3.fromRGB(36, 36, 38)
Frame2.BorderColor3 = Color3.fromRGB(36, 36, 38)
Frame2.Position = UDim2.new(0, 0, 0.272660464, 0)
Frame2.Size = UDim2.new(0, 161, 0, 75)

Frame3.Name = "Frame3"
Frame3.Parent = Frame2
Frame3.BackgroundColor3 = Color3.fromRGB(36, 36, 38)
Frame3.BorderColor3 = Color3.fromRGB(36, 36, 38)
Frame3.Position = UDim2.new(0.00400000019, 0, 0.00100000005, 0)
Frame3.Size = UDim2.new(0, 159, 0, 4)

UICorner2.Name = "UICorner2"
UICorner2.Parent = Frame2

TextButton1.Name = "TextButton1"
TextButton1.Parent = Frame2
TextButton1.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
TextButton1.BorderColor3 = Color3.fromRGB(28, 28, 28)
TextButton1.Position = UDim2.new(0.0232558157, 0, 0.0347330719, 0)
TextButton1.Size = UDim2.new(0, 153, 0, 30)
TextButton1.Font = Enum.Font.SourceSansSemibold
TextButton1.Text = "Inf Water"
TextButton1.TextColor3 = Color3.fromRGB(225, 225, 225)
TextButton1.TextScaled = true
TextButton1.TextSize = 14.000
TextButton1.TextWrapped = true

UICorner4.Name = "UICorner4"
UICorner4.Parent = TextButton1

TextButton2.Name = "TextButton2"
TextButton2.Parent = Frame2
TextButton2.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
TextButton2.BorderColor3 = Color3.fromRGB(28, 28, 28)
TextButton2.Position = UDim2.new(0.0232558157, 0, 0.518030584, 0)
TextButton2.Size = UDim2.new(0, 153, 0, 30)
TextButton2.Font = Enum.Font.SourceSansSemibold
TextButton2.Text = "Inf Money"
TextButton2.TextColor3 = Color3.fromRGB(225, 225, 225)
TextButton2.TextScaled = true
TextButton2.TextSize = 14.000
TextButton2.TextWrapped = true

UICorner5.Name = "UICorner5"
UICorner5.Parent = TextButton2

-- Scripts:

local function YTWHU_fake_script() -- TextButton3.LocalScript2 
    local script = Instance.new('LocalScript', TextButton3)

    script.Parent.MouseButton1Click:Connect(function()
        Pressure_Wash_Simulator:Destroy()
    end)
end
coroutine.wrap(YTWHU_fake_script)()
local function LKTCGK_fake_script() -- TextButton1.LocalScript3 
    local script = Instance.new('LocalScript', TextButton1)

    script.Parent.MouseButton1Click:Connect(function()
        game:GetService("ReplicatedStorage").Remotes.RefillRemote:FireServer(true)
    end)
end
coroutine.wrap(LKTCGK_fake_script)()
local function XRGZ_fake_script() -- TextButton2.LocalScript4 
    local script = Instance.new('LocalScript', TextButton2)

    script.Parent.MouseButton1Click:Connect(function()
        local args = { [1] = math.huge, [2] = math.huge } game:GetService("ReplicatedStorage").Remotes.SurfaceCompleted:FireServer(unpack(args))
    end)
end
coroutine.wrap(XRGZ_fake_script)()
local function BPRFPS_fake_script() -- Frame1.LocalScript 
    local script = Instance.new('LocalScript', Frame1)

    Frame1 = script.Parent
    
    Frame1.Active = true
    Frame1.Draggable = true
end
coroutine.wrap(BPRFPS_fake_script)()
