local GuiScreenGlobal = Instance.new("ScreenGui")
local Frame_Global = Instance.new("Frame")
local Frame = Instance.new("Frame")
local UICorner_v2 = Instance.new("UICorner")
local Frame_v2 = Instance.new("Frame")
local Scrin_1 = Instance.new("TextButton")
local UICorner_Scrin_1 = Instance.new("UICorner")
local Scrin_2 = Instance.new("TextButton")
local UICorner_Scrin_2 = Instance.new("UICorner")
local Scrin_3 = Instance.new("TextButton")
local UICorner_Scrin_3 = Instance.new("UICorner")
local ImageLabel_v1 = Instance.new("ImageLabel")
local ImageLabel_v2 = Instance.new("ImageLabel")
local ImageLabel_v3 = Instance.new("ImageLabel")
local Start_scripts_v1 = Instance.new("TextButton")
local UICorner_Start_Scrin_1 = Instance.new("UICorner")
local Start_scripts_v3 = Instance.new("TextButton")
local UICorner_Start_Scrin_3 = Instance.new("UICorner")
local Start_scripts_v2 = Instance.new("TextButton")
local UICorner_Start_Scrin_2 = Instance.new("UICorner")
local UICorner_v1 = Instance.new("UICorner")
local TextButton_Exit = Instance.new("TextButton")
local UICorner_TextButton_Exit = Instance.new("UICorner")

GuiScreenGlobal.Name = "GuiScreenGlobal"
GuiScreenGlobal.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
GuiScreenGlobal.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame_Global.Name = "Frame_Global"
Frame_Global.Parent = GuiScreenGlobal
Frame_Global.BackgroundColor3 = Color3.fromRGB(32, 34, 37)
Frame_Global.BorderColor3 = Color3.fromRGB(32, 34, 37)
Frame_Global.Position = UDim2.new(0.398548722, 0, 0.30599755, 0)
Frame_Global.Size = UDim2.new(0, 405, 0, 346)

Frame.Parent = Frame_Global
Frame.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
Frame.BorderColor3 = Color3.fromRGB(47, 49, 54)
Frame.Position = UDim2.new(0, 0, 0.0715409666, 0)
Frame.Size = UDim2.new(0.99999994, 0, 0.928459048, 0)

UICorner_v2.Name = "UICorner_v2"
UICorner_v2.Parent = Frame

Frame_v2.Name = "Frame_v2"
Frame_v2.Parent = Frame
Frame_v2.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
Frame_v2.BorderColor3 = Color3.fromRGB(47, 49, 54)
Frame_v2.Position = UDim2.new(0.00246928656, 0, 0, 0)
Frame_v2.Size = UDim2.new(0.995999992, 0, 0.00999999978, 0)

Scrin_1.Name = "Scrin_1"
Scrin_1.Parent = Frame
Scrin_1.BackgroundColor3 = Color3.fromRGB(55, 58, 62)
Scrin_1.BorderColor3 = Color3.fromRGB(55, 58, 62)
Scrin_1.Position = UDim2.new(0.00900004897, 0, 0.00900004338, 0)
Scrin_1.Size = UDim2.new(0.321992606, 0, 0.106999934, 0)
Scrin_1.Font = Enum.Font.SourceSans
Scrin_1.Text = "Rainbow Friends v1"
Scrin_1.TextColor3 = Color3.fromRGB(255, 255, 255)
Scrin_1.TextScaled = true
Scrin_1.TextSize = 24.000
Scrin_1.TextWrapped = true

UICorner_Scrin_1.CornerRadius = UDim.new(0, 5)
UICorner_Scrin_1.Name = "UICorner_Scrin_1"
UICorner_Scrin_1.Parent = Scrin_1

Scrin_2.Name = "Scrin_2"
Scrin_2.Parent = Frame
Scrin_2.BackgroundColor3 = Color3.fromRGB(55, 58, 62)
Scrin_2.BorderColor3 = Color3.fromRGB(55, 58, 62)
Scrin_2.Position = UDim2.new(0.340999991, 0, 0.00999999978, 0)
Scrin_2.Size = UDim2.new(0.321992606, 0, 0.105999999, 0)
Scrin_2.Font = Enum.Font.SourceSans
Scrin_2.Text = "Rainbow Friends v2"
Scrin_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Scrin_2.TextScaled = true
Scrin_2.TextSize = 24.000
Scrin_2.TextWrapped = true

UICorner_Scrin_2.CornerRadius = UDim.new(0, 5)
UICorner_Scrin_2.Name = "UICorner_Scrin_2"
UICorner_Scrin_2.Parent = Scrin_2

Scrin_3.Name = "Scrin_3"
Scrin_3.Parent = Frame
Scrin_3.BackgroundColor3 = Color3.fromRGB(55, 58, 62)
Scrin_3.BorderColor3 = Color3.fromRGB(55, 58, 62)
Scrin_3.Position = UDim2.new(0.672180176, 0, 0.00933859125, 0)
Scrin_3.Size = UDim2.new(0.321992606, 0, 0.105999999, 0)
Scrin_3.Font = Enum.Font.SourceSans
Scrin_3.Text = "Rainbow Friends v3"
Scrin_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Scrin_3.TextScaled = true
Scrin_3.TextSize = 24.000
Scrin_3.TextWrapped = true

UICorner_Scrin_3.CornerRadius = UDim.new(0, 5)
UICorner_Scrin_3.Name = "UICorner_Scrin_3"
UICorner_Scrin_3.Parent = Scrin_3

ImageLabel_v1.Name = "ImageLabel_v1"
ImageLabel_v1.Parent = Frame
ImageLabel_v1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_v1.Position = UDim2.new(0.0592592657, 0, 0.17120792, 0)
ImageLabel_v1.Size = UDim2.new(0.882539809, 0, 0.653702974, 0)
ImageLabel_v1.Image = "rbxassetid://10784050010"

ImageLabel_v2.Name = "ImageLabel_v2"
ImageLabel_v2.Parent = Frame
ImageLabel_v2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_v2.Position = UDim2.new(0.0592592657, 0, 0.17120792, 0)
ImageLabel_v2.Size = UDim2.new(0.882539809, 0, 0.653702974, 0)
ImageLabel_v2.Image = "rbxassetid://10784060628"

ImageLabel_v3.Name = "ImageLabel_v3"
ImageLabel_v3.Parent = Frame
ImageLabel_v3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_v3.Position = UDim2.new(0.0592592657, 0, 0.17120792, 0)
ImageLabel_v3.Size = UDim2.new(0.882539809, 0, 0.653702974, 0)
ImageLabel_v3.Image = "rbxassetid://10784066144"

Start_scripts_v1.Name = "Start_scripts_v1"
Start_scripts_v1.Parent = Frame
Start_scripts_v1.BackgroundColor3 = Color3.fromRGB(55, 58, 62)
Start_scripts_v1.BorderColor3 = Color3.fromRGB(55, 58, 62)
Start_scripts_v1.Position = UDim2.new(0, 141, 0, 271)
Start_scripts_v1.Size = UDim2.new(0.322251797, 0, 0.136966333, 0)
Start_scripts_v1.Font = Enum.Font.SourceSans
Start_scripts_v1.Text = "Start Script"
Start_scripts_v1.TextColor3 = Color3.fromRGB(255, 255, 255)
Start_scripts_v1.TextSize = 24.000
Start_scripts_v1.TextWrapped = true

UICorner_Start_Scrin_1.CornerRadius = UDim.new(0, 5)
UICorner_Start_Scrin_1.Name = "UICorner_Start_Scrin_1"
UICorner_Start_Scrin_1.Parent = Start_scripts_v1

Start_scripts_v3.Name = "Start_scripts_v3"
Start_scripts_v3.Parent = Frame
Start_scripts_v3.BackgroundColor3 = Color3.fromRGB(55, 58, 62)
Start_scripts_v3.BorderColor3 = Color3.fromRGB(55, 58, 62)
Start_scripts_v3.Position = UDim2.new(0, 141, 0, 271)
Start_scripts_v3.Size = UDim2.new(0.322251797, 0, 0.136966333, 0)
Start_scripts_v3.Font = Enum.Font.SourceSans
Start_scripts_v3.Text = "Start Script"
Start_scripts_v3.TextColor3 = Color3.fromRGB(255, 255, 255)
Start_scripts_v3.TextSize = 24.000
Start_scripts_v3.TextWrapped = true

UICorner_Start_Scrin_3.CornerRadius = UDim.new(0, 5)
UICorner_Start_Scrin_3.Name = "UICorner_Start_Scrin_3"
UICorner_Start_Scrin_3.Parent = Start_scripts_v3

Start_scripts_v2.Name = "Start_scripts_v2"
Start_scripts_v2.Parent = Frame
Start_scripts_v2.BackgroundColor3 = Color3.fromRGB(55, 58, 62)
Start_scripts_v2.BorderColor3 = Color3.fromRGB(55, 58, 62)
Start_scripts_v2.Position = UDim2.new(0, 141, 0, 271)
Start_scripts_v2.Size = UDim2.new(0.322251797, 0, 0.136966333, 0)
Start_scripts_v2.Font = Enum.Font.SourceSans
Start_scripts_v2.Text = "Start Script"
Start_scripts_v2.TextColor3 = Color3.fromRGB(255, 255, 255)
Start_scripts_v2.TextSize = 24.000
Start_scripts_v2.TextWrapped = true

UICorner_Start_Scrin_2.CornerRadius = UDim.new(0, 5)
UICorner_Start_Scrin_2.Name = "UICorner_Start_Scrin_2"
UICorner_Start_Scrin_2.Parent = Start_scripts_v2

UICorner_v1.Name = "UICorner_v1"
UICorner_v1.Parent = Frame_Global

TextButton_Exit.Name = "TextButton_Exit"
TextButton_Exit.Parent = Frame_Global
TextButton_Exit.BackgroundColor3 = Color3.fromRGB(32, 34, 37)
TextButton_Exit.BorderColor3 = Color3.fromRGB(32, 34, 37)
TextButton_Exit.Position = UDim2.new(0.941798985, 0, 0.00289017335, 0)
TextButton_Exit.Size = UDim2.new(0.0545925833, 0, 0.0659999996, 0)
TextButton_Exit.Font = Enum.Font.SourceSans
TextButton_Exit.Text = "X"
TextButton_Exit.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_Exit.TextSize = 21.000

UICorner_TextButton_Exit.Name = "UICorner_TextButton_Exit"
UICorner_TextButton_Exit.Parent = TextButton_Exit

-- Scripts:

local function PKQF_fake_script() 
	local script = Instance.new('Script', Scrin_1)

	script.Parent.MouseButton1Click:Connect(function()
		Start_scripts_v1.Visible = true
		ImageLabel_v1.Visible = true
	
		Start_scripts_v2.Visible = false
		ImageLabel_v2.Visible = false
		Start_scripts_v3.Visible = false
		ImageLabel_v3.Visible = false
	end)
end
coroutine.wrap(PKQF_fake_script)()
local function ZCANWVH_fake_script() 
	local script = Instance.new('Script', Scrin_2)

	script.Parent.MouseButton1Click:Connect(function()
		Start_scripts_v2.Visible = true
		ImageLabel_v2.Visible = true
	
		Start_scripts_v1.Visible = false
		ImageLabel_v1.Visible = false
		Start_scripts_v3.Visible = false
		ImageLabel_v3.Visible = false
	end)
end
coroutine.wrap(ZCANWVH_fake_script)()
local function RYHO_fake_script() 
	local script = Instance.new('Script', Scrin_3)

	script.Parent.MouseButton1Click:Connect(function()
		Start_scripts_v3.Visible = true
		ImageLabel_v3.Visible = true
	
		Start_scripts_v2.Visible = false
		ImageLabel_v2.Visible = false
		Start_scripts_v1.Visible = false
		ImageLabel_v1.Visible = false
	end)
end
coroutine.wrap(RYHO_fake_script)()
local function TIWT_fake_script() 
	local script = Instance.new('Script', Start_scripts_v1)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxianRoblox3200/Scripts_Roblox/main/Rainbow_Friends_v1.lua"))()
	end)
end
coroutine.wrap(TIWT_fake_script)()
local function DQSEU_fake_script() 
	local script = Instance.new('Script', Start_scripts_v3)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxianRoblox3200/Scripts_Roblox/main/Rainbow_Friends_v3.lua"))()
	end)
end
coroutine.wrap(DQSEU_fake_script)()
local function DSYIOBY_fake_script() 
	local script = Instance.new('Script', Start_scripts_v2)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxianRoblox3200/Scripts_Roblox/main/Rainbow_Friends_v2.lua"))()
	end)
end
coroutine.wrap(DSYIOBY_fake_script)()
local function EYLKKQA_fake_script() 
	local script = Instance.new('Script', TextButton_Exit)

	script.Parent.MouseButton1Click:Connect(function()
		GuiScreenGlobal:Destroy()
	end)
end
coroutine.wrap(EYLKKQA_fake_script)()
local function CQDYY_fake_script() 
	local script = Instance.new('Script', Frame_Global)

	Frame_Global.Active = true
	Frame_Global.Draggable = true
	
	Start_scripts_v1.Visible = true
	ImageLabel_v1.Visible = true
	
	Start_scripts_v2.Visible = false
	ImageLabel_v2.Visible = false
	Start_scripts_v3.Visible = false
	ImageLabel_v3.Visible = false
end
coroutine.wrap(CQDYY_fake_script)()
