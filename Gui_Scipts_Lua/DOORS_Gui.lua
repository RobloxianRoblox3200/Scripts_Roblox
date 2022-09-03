-- Gui to Lua
-- Version: 3.2

-- Instances:

local Gui_Doors_Gui = Instance.new("ScreenGui")
local Global_Doors_Frame = Instance.new("Frame")
local Arsenal_Frame_1 = Instance.new("Frame")
local UICorner_Arsenal_Frame_1 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local TextButton_Start_1 = Instance.new("TextButton")
local UICorner_TextButton_Start_1 = Instance.new("UICorner")
local TextButton_Start_2 = Instance.new("TextButton")
local UICorner_TextButton_Start_2 = Instance.new("UICorner")
local ImageLabel_1 = Instance.new("ImageLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local TextButton_1 = Instance.new("TextButton")
local UICorner_TextButton_1 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local UICorner_TextButton_2 = Instance.new("UICorner")
local TextButton_3 = Instance.new("TextButton")
local UICorner_TextButton_3 = Instance.new("UICorner")
local ImageLabel_3 = Instance.new("ImageLabel")
local TextButton_Start_3 = Instance.new("TextButton")
local UICorner_TextButton_Start_3 = Instance.new("UICorner")
local UICorner_Global_Arsenal_Frame = Instance.new("UICorner")
local TextButton_exit = Instance.new("TextButton")
local UICorner_TextButton_exit = Instance.new("UICorner")

--Properties:

Gui_Doors_Gui.Name = "Gui_Doors_Gui"
Gui_Doors_Gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Gui_Doors_Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Global_Doors_Frame.Name = "Global_Doors_Frame"
Global_Doors_Frame.Parent = Gui_Doors_Gui
Global_Doors_Frame.BackgroundColor3 = Color3.fromRGB(32, 34, 37)
Global_Doors_Frame.BorderColor3 = Color3.fromRGB(32, 34, 37)
Global_Doors_Frame.Position = UDim2.new(0.310587317, 0, 0.341493249, 0)
Global_Doors_Frame.Size = UDim2.new(0, 455, 0, 259)

Arsenal_Frame_1.Name = "Arsenal_Frame_1"
Arsenal_Frame_1.Parent = Global_Doors_Frame
Arsenal_Frame_1.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
Arsenal_Frame_1.BorderColor3 = Color3.fromRGB(47, 49, 54)
Arsenal_Frame_1.Position = UDim2.new(0.21542941, 0, 0.0644067973, 0)
Arsenal_Frame_1.Size = UDim2.new(0.784570575, 0, 0.935593307, 0)

UICorner_Arsenal_Frame_1.CornerRadius = UDim.new(0, 5)
UICorner_Arsenal_Frame_1.Name = "UICorner_Arsenal_Frame_1"
UICorner_Arsenal_Frame_1.Parent = Arsenal_Frame_1

Frame.Parent = Arsenal_Frame_1
Frame.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
Frame.BorderColor3 = Color3.fromRGB(47, 49, 54)
Frame.Position = UDim2.new(0, 340, 0, 1)
Frame.Size = UDim2.new(0.0457933396, 0, 0.0532680079, 0)

TextButton_Start_1.Name = "TextButton_Start_1"
TextButton_Start_1.Parent = Arsenal_Frame_1
TextButton_Start_1.BackgroundColor3 = Color3.fromRGB(50, 53, 59)
TextButton_Start_1.BorderColor3 = Color3.fromRGB(50, 53, 59)
TextButton_Start_1.Position = UDim2.new(0.253008753, 0, 0.779643297, 0)
TextButton_Start_1.Size = UDim2.new(0.487365693, 0, 0.170513645, 0)
TextButton_Start_1.Font = Enum.Font.SourceSans
TextButton_Start_1.Text = "Start"
TextButton_Start_1.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_Start_1.TextScaled = true
TextButton_Start_1.TextSize = 14.000
TextButton_Start_1.TextWrapped = true

UICorner_TextButton_Start_1.Name = "UICorner_TextButton_Start_1"
UICorner_TextButton_Start_1.Parent = TextButton_Start_1

TextButton_Start_2.Name = "TextButton_Start_2"
TextButton_Start_2.Parent = Arsenal_Frame_1
TextButton_Start_2.BackgroundColor3 = Color3.fromRGB(50, 53, 59)
TextButton_Start_2.BorderColor3 = Color3.fromRGB(50, 53, 59)
TextButton_Start_2.Position = UDim2.new(0.253008753, 0, 0.779643297, 0)
TextButton_Start_2.Size = UDim2.new(0.487365693, 0, 0.170513645, 0)
TextButton_Start_2.Font = Enum.Font.SourceSans
TextButton_Start_2.Text = "Start"
TextButton_Start_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_Start_2.TextScaled = true
TextButton_Start_2.TextSize = 14.000
TextButton_Start_2.TextWrapped = true

UICorner_TextButton_Start_2.Name = "UICorner_TextButton_Start_2"
UICorner_TextButton_Start_2.Parent = TextButton_Start_2

ImageLabel_1.Name = "ImageLabel_1"
ImageLabel_1.Parent = Arsenal_Frame_1
ImageLabel_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_1.Position = UDim2.new(0.140000001, 0, 0.0320000015, 0)
ImageLabel_1.Size = UDim2.new(0.717999995, 0, 0.693000019, 0)
ImageLabel_1.Image = "rbxassetid://10811381465"

ImageLabel_2.Name = "ImageLabel_2"
ImageLabel_2.Parent = Arsenal_Frame_1
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.Position = UDim2.new(0.140000001, 0, 0.0320000015, 0)
ImageLabel_2.Size = UDim2.new(0.717999995, 0, 0.693000019, 0)
ImageLabel_2.Image = "rbxassetid://10811385167"

TextButton_1.Name = "TextButton_1"
TextButton_1.Parent = Arsenal_Frame_1
TextButton_1.BackgroundColor3 = Color3.fromRGB(50, 53, 59)
TextButton_1.BorderColor3 = Color3.fromRGB(50, 53, 59)
TextButton_1.Position = UDim2.new(0, -95, 0, 0)
TextButton_1.Size = UDim2.new(0.257999986, 0, 0.181999996, 0)
TextButton_1.Font = Enum.Font.SourceSans
TextButton_1.Text = "DOORS v1"
TextButton_1.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_1.TextScaled = true
TextButton_1.TextSize = 14.000
TextButton_1.TextWrapped = true

UICorner_TextButton_1.CornerRadius = UDim.new(0, 3)
UICorner_TextButton_1.Name = "UICorner_TextButton_1"
UICorner_TextButton_1.Parent = TextButton_1

TextButton_2.Name = "TextButton_2"
TextButton_2.Parent = Arsenal_Frame_1
TextButton_2.BackgroundColor3 = Color3.fromRGB(50, 53, 59)
TextButton_2.BorderColor3 = Color3.fromRGB(50, 53, 59)
TextButton_2.Position = UDim2.new(0, -95, 0, 47)
TextButton_2.Size = UDim2.new(0.257999986, 0, 0.181999996, 0)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "DOORS v2"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

UICorner_TextButton_2.CornerRadius = UDim.new(0, 3)
UICorner_TextButton_2.Name = "UICorner_TextButton_2"
UICorner_TextButton_2.Parent = TextButton_2

TextButton_3.Name = "TextButton_3"
TextButton_3.Parent = Arsenal_Frame_1
TextButton_3.BackgroundColor3 = Color3.fromRGB(50, 53, 59)
TextButton_3.BorderColor3 = Color3.fromRGB(50, 53, 59)
TextButton_3.Position = UDim2.new(0, -95, 0, 94)
TextButton_3.Size = UDim2.new(0.257999986, 0, 0.181999996, 0)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "DOORS v3"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

UICorner_TextButton_3.CornerRadius = UDim.new(0, 3)
UICorner_TextButton_3.Name = "UICorner_TextButton_3"
UICorner_TextButton_3.Parent = TextButton_3

ImageLabel_3.Name = "ImageLabel_3"
ImageLabel_3.Parent = Arsenal_Frame_1
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.Position = UDim2.new(0.140139505, 0, 0.0323043279, 0)
ImageLabel_3.Size = UDim2.new(0.717641056, 0, 0.693000019, 0)
ImageLabel_3.Image = "rbxassetid://10811388143"

TextButton_Start_3.Name = "TextButton_Start_3"
TextButton_Start_3.Parent = Arsenal_Frame_1
TextButton_Start_3.BackgroundColor3 = Color3.fromRGB(50, 53, 59)
TextButton_Start_3.BorderColor3 = Color3.fromRGB(50, 53, 59)
TextButton_Start_3.Position = UDim2.new(0.253008753, 0, 0.779643297, 0)
TextButton_Start_3.Size = UDim2.new(0.487365693, 0, 0.170513645, 0)
TextButton_Start_3.Font = Enum.Font.SourceSans
TextButton_Start_3.Text = "Start"
TextButton_Start_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_Start_3.TextScaled = true
TextButton_Start_3.TextSize = 14.000
TextButton_Start_3.TextWrapped = true

UICorner_TextButton_Start_3.Name = "UICorner_TextButton_Start_3"
UICorner_TextButton_Start_3.Parent = TextButton_Start_3

UICorner_Global_Arsenal_Frame.CornerRadius = UDim.new(0, 5)
UICorner_Global_Arsenal_Frame.Name = "UICorner_Global_Arsenal_Frame"
UICorner_Global_Arsenal_Frame.Parent = Global_Doors_Frame

TextButton_exit.Name = "TextButton_exit"
TextButton_exit.Parent = Global_Doors_Frame
TextButton_exit.BackgroundColor3 = Color3.fromRGB(32, 34, 37)
TextButton_exit.BorderColor3 = Color3.fromRGB(32, 34, 37)
TextButton_exit.Position = UDim2.new(0.963780284, 0, 0, 0)
TextButton_exit.Size = UDim2.new(0, 16, 0, 15)
TextButton_exit.Font = Enum.Font.SourceSans
TextButton_exit.Text = "X"
TextButton_exit.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_exit.TextScaled = true
TextButton_exit.TextSize = 14.000
TextButton_exit.TextWrapped = true

UICorner_TextButton_exit.CornerRadius = UDim.new(0, 6)
UICorner_TextButton_exit.Name = "UICorner_TextButton_exit"
UICorner_TextButton_exit.Parent = TextButton_exit

-- Scripts:

local function DWKUMDO_fake_script() -- TextButton_Start_1.Script_TextButton_Start_1 
	local script = Instance.new('Script', TextButton_Start_1)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxianRoblox3200/Scripts_Roblox/main/DOORS_v1.lua"))()
	end)
end
coroutine.wrap(DWKUMDO_fake_script)()
local function PUQWXK_fake_script() -- TextButton_Start_2.Script_TextButton_Start_1 
	local script = Instance.new('Script', TextButton_Start_2)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxianRoblox3200/Scripts_Roblox/main/DOORS_v2.lua"))()
	end)
end
coroutine.wrap(PUQWXK_fake_script)()
local function OHWZXCJ_fake_script() -- TextButton_1.Script_TextButton_1 
	local script = Instance.new('Script', TextButton_1)

	script.Parent.MouseButton1Click:Connect(function()
		TextButton_Start_1.Visible = true
		ImageLabel_1.Visible = true
		TextButton_Start_2.Visible = false
		ImageLabel_2.Visible = false
		TextButton_Start_3.Visible = false
		ImageLabel_3.Visible = false
	end)
end
coroutine.wrap(OHWZXCJ_fake_script)()
local function QLIXHQ_fake_script() -- TextButton_2.Script_TextButton_2 
	local script = Instance.new('Script', TextButton_2)

	script.Parent.MouseButton1Click:Connect(function()
		TextButton_Start_1.Visible = false
		ImageLabel_1.Visible = false
		TextButton_Start_2.Visible = true
		ImageLabel_2.Visible = true
		TextButton_Start_3.Visible = false
		ImageLabel_3.Visible = false
	end)
end
coroutine.wrap(QLIXHQ_fake_script)()
local function FJYBK_fake_script() -- TextButton_3.Script_TextButton_3 
	local script = Instance.new('Script', TextButton_3)

	script.Parent.MouseButton1Click:Connect(function()
		TextButton_Start_3.Visible = true
		ImageLabel_3.Visible = true
		TextButton_Start_2.Visible = false
		ImageLabel_2.Visible = false
		TextButton_Start_1.Visible = false
		ImageLabel_1.Visible = false
	end)
end
coroutine.wrap(FJYBK_fake_script)()
local function JUOP_fake_script() -- TextButton_Start_3.Script_TextButton_Start_3 
	local script = Instance.new('Script', TextButton_Start_3)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxianRoblox3200/Scripts_Roblox/main/DOORS_v3.lua"))()
	end)
end
coroutine.wrap(JUOP_fake_script)()
local function GASXJ_fake_script() -- TextButton_exit.Script_TextButton_exit 
	local script = Instance.new('Script', TextButton_exit)

	script.Parent.MouseButton1Click:Connect(function()
		Gui_Doors_Gui:Destroy()
	end)
end
coroutine.wrap(GASXJ_fake_script)()
local function GCXT_fake_script() -- Global_Doors_Frame.Script 
	local script = Instance.new('Script', Global_Doors_Frame)

	Global_Doors_Frame.Active = true
	Global_Doors_Frame.Draggable = true
	
	TextButton_Start_1.Visible = true
	ImageLabel_1.Visible = true
	TextButton_Start_2.Visible = false
	ImageLabel_2.Visible = false
	TextButton_Start_3.Visible = false
	ImageLabel_3.Visible = false
end
coroutine.wrap(GCXT_fake_script)()
