local ScreenGui_Build_A_Boat = Instance.new("ScreenGui")
local Frame_Build_A_Boat = Instance.new("Frame")
local Frame = Instance.new("Frame")
local TextButton_v1 = Instance.new("TextButton")
local TextButton_v2 = Instance.new("TextButton")
local TextButton_v3 = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_Frame_v2 = Instance.new("UICorner")
local Start_v2 = Instance.new("TextButton")
local UICorner_Start_v2 = Instance.new("UICorner")
local Start_v3 = Instance.new("TextButton")
local UICorner_Start_v3 = Instance.new("UICorner")
local Start_v1 = Instance.new("TextButton")
local UICorner_Start_v1 = Instance.new("UICorner")
local UICorner_Frame_v1 = Instance.new("UICorner")
local TextButton_Exit = Instance.new("TextButton")
local UICorner_Exit = Instance.new("UICorner")

ScreenGui_Build_A_Boat.Name = "ScreenGui_Build_A_Boat"
ScreenGui_Build_A_Boat.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui_Build_A_Boat.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame_Build_A_Boat.Name = "Frame_Build_A_Boat"
Frame_Build_A_Boat.Parent = ScreenGui_Build_A_Boat
Frame_Build_A_Boat.BackgroundColor3 = Color3.fromRGB(32, 34, 37)
Frame_Build_A_Boat.BorderColor3 = Color3.fromRGB(32, 34, 37)
Frame_Build_A_Boat.Position = UDim2.new(0.324750841, 0, 0.308445543, 0)
Frame_Build_A_Boat.Size = UDim2.new(0, 422, 0, 312)

Frame.Parent = Frame_Build_A_Boat
Frame.BackgroundColor3 = Color3.fromRGB(45, 46, 51)
Frame.BorderColor3 = Color3.fromRGB(45, 46, 51)
Frame.Position = UDim2.new(0, 0, 0.0650887564, 0)
Frame.Size = UDim2.new(1, 0, 0.934911251, 0)

TextButton_v1.Name = "TextButton_v1"
TextButton_v1.Parent = Frame
TextButton_v1.BackgroundColor3 = Color3.fromRGB(50, 52, 56)
TextButton_v1.BorderColor3 = Color3.fromRGB(50, 52, 56)
TextButton_v1.Position = UDim2.new(0.0100000026, 0, 0.0100000268, 0)
TextButton_v1.Size = UDim2.new(0.298578203, 0, 0.116561174, 0)
TextButton_v1.Font = Enum.Font.SourceSans
TextButton_v1.Text = "Build A Boat v1"
TextButton_v1.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_v1.TextScaled = true
TextButton_v1.TextSize = 14.000
TextButton_v1.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton_v1.TextWrapped = true

TextButton_v2.Name = "TextButton_v2"
TextButton_v2.Parent = Frame
TextButton_v2.BackgroundColor3 = Color3.fromRGB(50, 52, 56)
TextButton_v2.BorderColor3 = Color3.fromRGB(50, 52, 56)
TextButton_v2.Position = UDim2.new(0.00999999978, 0, 0.143999994, 0)
TextButton_v2.Size = UDim2.new(0.298578203, 0, 0.116561174, 0)
TextButton_v2.Font = Enum.Font.SourceSans
TextButton_v2.Text = "Build A Boat v2"
TextButton_v2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_v2.TextScaled = true
TextButton_v2.TextSize = 14.000
TextButton_v2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton_v2.TextWrapped = true

TextButton_v3.Name = "TextButton_v3"
TextButton_v3.Parent = Frame
TextButton_v3.BackgroundColor3 = Color3.fromRGB(50, 52, 56)
TextButton_v3.BorderColor3 = Color3.fromRGB(50, 52, 56)
TextButton_v3.Position = UDim2.new(0.00999999978, 0, 0.27700001, 0)
TextButton_v3.Size = UDim2.new(0.298578203, 0, 0.116561174, 0)
TextButton_v3.Font = Enum.Font.SourceSans
TextButton_v3.Text = "Build A Boat v3"
TextButton_v3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_v3.TextScaled = true
TextButton_v3.TextSize = 14.000
TextButton_v3.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton_v3.TextWrapped = true

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(45, 46, 51)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(45, 46, 51)
ImageLabel.Position = UDim2.new(0.393999994, 0, 0.0170000009, 0)
ImageLabel.Size = UDim2.new(0.523175359, 0, 0.791240454, 0)
ImageLabel.Image = "rbxassetid://10888285485"

UICorner_Frame_v2.CornerRadius = UDim.new(0, 6)
UICorner_Frame_v2.Name = "UICorner_Frame_v2"
UICorner_Frame_v2.Parent = Frame

Start_v2.Name = "Start_v2"
Start_v2.Parent = Frame
Start_v2.BackgroundColor3 = Color3.fromRGB(50, 52, 56)
Start_v2.BorderColor3 = Color3.fromRGB(50, 52, 56)
Start_v2.Position = UDim2.new(0.505260646, 0, 0.84609282, 0)
Start_v2.Size = UDim2.new(0.298578203, 0, 0.116561174, 0)
Start_v2.Font = Enum.Font.SourceSans
Start_v2.Text = "Start Script"
Start_v2.TextColor3 = Color3.fromRGB(255, 255, 255)
Start_v2.TextScaled = true
Start_v2.TextSize = 14.000
Start_v2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Start_v2.TextWrapped = true

UICorner_Start_v2.CornerRadius = UDim.new(0, 5)
UICorner_Start_v2.Name = "UICorner_Start_v2"
UICorner_Start_v2.Parent = Start_v2

Start_v3.Name = "Start_v3"
Start_v3.Parent = Frame
Start_v3.BackgroundColor3 = Color3.fromRGB(50, 52, 56)
Start_v3.BorderColor3 = Color3.fromRGB(50, 52, 56)
Start_v3.Position = UDim2.new(0.505260646, 0, 0.84609282, 0)
Start_v3.Size = UDim2.new(0.298578203, 0, 0.116561174, 0)
Start_v3.Font = Enum.Font.SourceSans
Start_v3.Text = "Start Script"
Start_v3.TextColor3 = Color3.fromRGB(255, 255, 255)
Start_v3.TextScaled = true
Start_v3.TextSize = 14.000
Start_v3.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Start_v3.TextWrapped = true

UICorner_Start_v3.CornerRadius = UDim.new(0, 5)
UICorner_Start_v3.Name = "UICorner_Start_v3"
UICorner_Start_v3.Parent = Start_v3

Start_v1.Name = "Start_v1"
Start_v1.Parent = Frame
Start_v1.BackgroundColor3 = Color3.fromRGB(50, 52, 56)
Start_v1.BorderColor3 = Color3.fromRGB(50, 52, 56)
Start_v1.Position = UDim2.new(0.505260646, 0, 0.84609282, 0)
Start_v1.Size = UDim2.new(0.298578203, 0, 0.116561174, 0)
Start_v1.Font = Enum.Font.SourceSans
Start_v1.Text = "Start Script"
Start_v1.TextColor3 = Color3.fromRGB(255, 255, 255)
Start_v1.TextScaled = true
Start_v1.TextSize = 14.000
Start_v1.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Start_v1.TextWrapped = true

UICorner_Start_v1.CornerRadius = UDim.new(0, 5)
UICorner_Start_v1.Name = "UICorner_Start_v1"
UICorner_Start_v1.Parent = Start_v1

UICorner_Frame_v1.CornerRadius = UDim.new(0, 6)
UICorner_Frame_v1.Name = "UICorner_Frame_v1"
UICorner_Frame_v1.Parent = Frame_Build_A_Boat

TextButton_Exit.Name = "TextButton_Exit"
TextButton_Exit.Parent = Frame_Build_A_Boat
TextButton_Exit.BackgroundColor3 = Color3.fromRGB(32, 34, 37)
TextButton_Exit.BorderColor3 = Color3.fromRGB(32, 34, 37)
TextButton_Exit.Position = UDim2.new(0.954999983, 0, 0.00499999989, 0)
TextButton_Exit.Size = UDim2.new(0.040170677, 0, 0.054114379, 0)
TextButton_Exit.Font = Enum.Font.SourceSans
TextButton_Exit.Text = "X"
TextButton_Exit.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_Exit.TextSize = 19.000
TextButton_Exit.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton_Exit.TextWrapped = true

UICorner_Exit.CornerRadius = UDim.new(0, 6)
UICorner_Exit.Name = "UICorner_Exit"
UICorner_Exit.Parent = TextButton_Exit

local function IICLH_fake_script() 
	local script = Instance.new('Script', TextButton_v1)

	script.Parent.MouseButton1Click:Connect(function()
		ImageLabel.Image = "rbxassetid://10888285485"
		
		Start_v1.Visible = true
		Start_v2.Visible = false
		Start_v3.Visible = false
	end)
end
coroutine.wrap(IICLH_fake_script)()
local function DDJHRK_fake_script() -- TextButton_v2.Script_v2 
	local script = Instance.new('Script', TextButton_v2)

	script.Parent.MouseButton1Click:Connect(function()
		ImageLabel.Image = "rbxassetid://10888283402"
	
		Start_v1.Visible = false
		Start_v2.Visible = true
		Start_v3.Visible = false
	end)
end
coroutine.wrap(DDJHRK_fake_script)()
local function BQXBHF_fake_script() 
	local script = Instance.new('Script', TextButton_v3)

	script.Parent.MouseButton1Click:Connect(function()
		ImageLabel.Image = "rbxassetid://10888266763"
	
		Start_v1.Visible = false
		Start_v2.Visible = false
		Start_v3.Visible = true
	end)
end
coroutine.wrap(BQXBHF_fake_script)()
local function PHEGC_fake_script() 
	local script = Instance.new('Script', Start_v2)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxianRoblox3200/Scripts_Roblox/main/Build_A_Boat_v2.lua"))()
	end)
end
coroutine.wrap(PHEGC_fake_script)()
local function KKDUKE_fake_script()  
	local script = Instance.new('Script', Start_v3)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxianRoblox3200/Scripts_Roblox/main/Build_A_Boat_v3.lua"))()
	end)
end
coroutine.wrap(KKDUKE_fake_script)()
local function GHTISU_fake_script() 
	local script = Instance.new('Script', Start_v1)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxianRoblox3200/Scripts_Roblox/main/Build_A_Boat_v1.lua"))()
	end)
end
coroutine.wrap(GHTISU_fake_script)()
local function YSJD_fake_script() 
	local script = Instance.new('Script', TextButton_Exit)

	script.Parent.MouseButton1Click:Connect(function()
		ScreenGui_Build_A_Boat:Destroy()
	end)
end
coroutine.wrap(YSJD_fake_script)()
local function IFSWVI_fake_script() 
	local script = Instance.new('Script', Frame_Build_A_Boat)

	Frame_Build_A_Boat.Active = true
	Frame_Build_A_Boat.Draggable = true
end
coroutine.wrap(IFSWVI_fake_script)()
