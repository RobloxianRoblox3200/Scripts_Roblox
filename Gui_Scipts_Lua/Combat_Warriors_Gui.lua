local ScreenGuiCombatWarriors = Instance.new("ScreenGui")
local Frame_Combat_Warriors = Instance.new("Frame")
local Frame_v1 = Instance.new("Frame")
local TextButton_v1 = Instance.new("TextButton")
local UICorner_v2 = Instance.new("UICorner")
local TextButton_v2 = Instance.new("TextButton")
local UICorner_v3 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_v4 = Instance.new("UICorner")
local TextButton_Start_v1 = Instance.new("TextButton")
local UICorner_v6 = Instance.new("UICorner")
local TextButton_Start_v2 = Instance.new("TextButton")
local UICorner_v5 = Instance.new("UICorner")
local TextButton_Exits = Instance.new("TextButton")
local UICorner_v1 = Instance.new("UICorner")

ScreenGuiCombatWarriors.Name = "ScreenGuiCombatWarriors"
ScreenGuiCombatWarriors.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGuiCombatWarriors.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame_Combat_Warriors.Name = "Frame_Combat_Warriors"
Frame_Combat_Warriors.Parent = ScreenGuiCombatWarriors
Frame_Combat_Warriors.BackgroundColor3 = Color3.fromRGB(32, 34, 37)
Frame_Combat_Warriors.BorderColor3 = Color3.fromRGB(32, 34, 37)
Frame_Combat_Warriors.Position = UDim2.new(0.3704319, 0, 0.351285189, 0)
Frame_Combat_Warriors.Size = UDim2.new(0, 312, 0, 300)

Frame_v1.Name = "Frame_v1"
Frame_v1.Parent = Frame_Combat_Warriors
Frame_v1.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
Frame_v1.BorderColor3 = Color3.fromRGB(47, 49, 54)
Frame_v1.Position = UDim2.new(0, 0, 0.0842424557, 0)
Frame_v1.Size = UDim2.new(1, 0, 0.915757656, 0)

TextButton_v1.Name = "TextButton_v1"
TextButton_v1.Parent = Frame_v1
TextButton_v1.BackgroundColor3 = Color3.fromRGB(64, 67, 73)
TextButton_v1.BorderColor3 = Color3.fromRGB(64, 67, 73)
TextButton_v1.Position = UDim2.new(0.00899994653, 0, 0.0120000299, 0)
TextButton_v1.Size = UDim2.new(0.481999993, 0, 0.159799993, 0)
TextButton_v1.Font = Enum.Font.SourceSans
TextButton_v1.Text = "Combat Warriors v1"
TextButton_v1.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_v1.TextScaled = true
TextButton_v1.TextSize = 14.000
TextButton_v1.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton_v1.TextWrapped = true

UICorner_v2.CornerRadius = UDim.new(0, 3)
UICorner_v2.Name = "UICorner_v2"
UICorner_v2.Parent = TextButton_v1

TextButton_v2.Name = "TextButton_v2"
TextButton_v2.Parent = Frame_v1
TextButton_v2.BackgroundColor3 = Color3.fromRGB(64, 67, 73)
TextButton_v2.BorderColor3 = Color3.fromRGB(64, 67, 73)
TextButton_v2.Position = UDim2.new(0.507999897, 0, 0.0120000299, 0)
TextButton_v2.Size = UDim2.new(0.481999993, 0, 0.159799993, 0)
TextButton_v2.Font = Enum.Font.SourceSans
TextButton_v2.Text = "Combat Warriors v2"
TextButton_v2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_v2.TextScaled = true
TextButton_v2.TextSize = 14.000
TextButton_v2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton_v2.TextWrapped = true

UICorner_v3.CornerRadius = UDim.new(0, 3)
UICorner_v3.Name = "UICorner_v3"
UICorner_v3.Parent = TextButton_v2

ImageLabel.Parent = Frame_v1
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Position = UDim2.new(0.086538367, 0, 0.206598878, 0)
ImageLabel.Size = UDim2.new(0.826923251, 0, 0.579613328, 0)
ImageLabel.Image = "rbxassetid://10872557951"

UICorner_v4.CornerRadius = UDim.new(0, 3)
UICorner_v4.Name = "UICorner_v4"
UICorner_v4.Parent = ImageLabel

TextButton_Start_v1.Name = "TextButton_Start_v1"
TextButton_Start_v1.Parent = Frame_v1
TextButton_Start_v1.BackgroundColor3 = Color3.fromRGB(64, 67, 73)
TextButton_Start_v1.BorderColor3 = Color3.fromRGB(64, 67, 73)
TextButton_Start_v1.Position = UDim2.new(0.308999985, 0, 0.818000019, 0)
TextButton_Start_v1.Size = UDim2.new(0.379999995, 0, 0.159999996, 0)
TextButton_Start_v1.Font = Enum.Font.SourceSans
TextButton_Start_v1.Text = "Start Scripts"
TextButton_Start_v1.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_Start_v1.TextScaled = true
TextButton_Start_v1.TextSize = 14.000
TextButton_Start_v1.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton_Start_v1.TextWrapped = true

UICorner_v6.CornerRadius = UDim.new(0, 3)
UICorner_v6.Name = "UICorner_v6"
UICorner_v6.Parent = TextButton_Start_v1

TextButton_Start_v2.Name = "TextButton_Start_v2"
TextButton_Start_v2.Parent = Frame_v1
TextButton_Start_v2.BackgroundColor3 = Color3.fromRGB(64, 67, 73)
TextButton_Start_v2.BorderColor3 = Color3.fromRGB(64, 67, 73)
TextButton_Start_v2.Position = UDim2.new(0.308999985, 0, 0.818000019, 0)
TextButton_Start_v2.Size = UDim2.new(0.379999995, 0, 0.159999996, 0)
TextButton_Start_v2.Font = Enum.Font.SourceSans
TextButton_Start_v2.Text = "Start Scripts"
TextButton_Start_v2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_Start_v2.TextScaled = true
TextButton_Start_v2.TextSize = 14.000
TextButton_Start_v2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton_Start_v2.TextWrapped = true

UICorner_v5.CornerRadius = UDim.new(0, 3)
UICorner_v5.Name = "UICorner_v5"
UICorner_v5.Parent = TextButton_Start_v2

TextButton_Exits.Name = "TextButton_Exits"
TextButton_Exits.Parent = Frame_Combat_Warriors
TextButton_Exits.BackgroundColor3 = Color3.fromRGB(32, 34, 37)
TextButton_Exits.BorderColor3 = Color3.fromRGB(32, 34, 37)
TextButton_Exits.Position = UDim2.new(0.924000025, 0, 0, 0)
TextButton_Exits.Size = UDim2.new(0.0759999976, 0, 0.0780000016, 0)
TextButton_Exits.Font = Enum.Font.SourceSans
TextButton_Exits.Text = "X"
TextButton_Exits.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_Exits.TextScaled = true
TextButton_Exits.TextSize = 14.000
TextButton_Exits.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton_Exits.TextWrapped = true

UICorner_v1.CornerRadius = UDim.new(0, 3)
UICorner_v1.Name = "UICorner_v1"
UICorner_v1.Parent = TextButton_Exits

local function VXXVU_fake_script() 
	local script = Instance.new('Script', TextButton_v1)

	script.Parent.MouseButton1Click:Connect(function()
		ImageLabel.Image = "rbxassetid://10872557951"
		TextButton_Start_v1.Visible = true
		TextButton_Start_v2.Visible = false	
	end)
end
coroutine.wrap(VXXVU_fake_script)()
local function BYQLBGY_fake_script() 
	local script = Instance.new('Script', TextButton_v2)

	script.Parent.MouseButton1Click:Connect(function()
		ImageLabel.Image = "rbxassetid://10872607812"
		TextButton_Start_v2.Visible = true
		TextButton_Start_v1.Visible = false
	end)
end
coroutine.wrap(BYQLBGY_fake_script)()
local function ZVGI_fake_script() 
	local script = Instance.new('Script', TextButton_Start_v1)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxianRoblox3200/Scripts_Roblox/main/Combat_Warriors_v1.lua"))()
	end)
end
coroutine.wrap(ZVGI_fake_script)()
local function TCMVYP_fake_script() 
	local script = Instance.new('Script', TextButton_Start_v2)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxianRoblox3200/Scripts_Roblox/main/Lib_Combat_Warriors/Combat_Warriors_v2.lua"))()
	end)
end
coroutine.wrap(TCMVYP_fake_script)()
local function AYYIE_fake_script() 
	local script = Instance.new('Script', TextButton_Exits)

	script.Parent.MouseButton1Click:Connect(function()
		ScreenGuiCombatWarriors:Destroy()
	end)
end
coroutine.wrap(AYYIE_fake_script)()
local function OKAIDPS_fake_script()  
	local script = Instance.new('Script', Frame_Combat_Warriors)

	Frame_Combat_Warriors.Active = true
	Frame_Combat_Warriors.Draggable = true
	
	ImageLabel.Image = "rbxassetid://10872557951"
	TextButton_Start_v1.Visible = true
	TextButton_Start_v2.Visible = false
end
coroutine.wrap(OKAIDPS_fake_script)()
