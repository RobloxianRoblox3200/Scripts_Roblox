--loadstring(game:HttpGet("https://github.com/TheXploiterYT/scripts/raw/main/keystrokes",true))()
-- ryp#5687

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local wkey = Instance.new("TextLabel")
local skey = Instance.new("TextLabel")
local akey = Instance.new("TextLabel")
local dkey = Instance.new("TextLabel")
local lmb = Instance.new("TextLabel")
local cps2 = Instance.new("TextLabel")
local space = Instance.new("TextLabel")
local cps1 = Instance.new("TextLabel")
local rmb = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.122247517, 0, 0.716934502, 0)
Frame.Size = UDim2.new(0, 253, 0, 321)

wkey.Name = "wkey"
wkey.Parent = Frame
wkey.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
wkey.BackgroundTransparency = 0.500
wkey.BorderSizePixel = 0
wkey.Position = UDim2.new(0.403162062, 0, 0.100795649, 0)
wkey.Size = UDim2.new(0, 50, 0, 50)
wkey.Font = Enum.Font.Gotham
wkey.Text = "W"
wkey.TextColor3 = Color3.fromRGB(255, 255, 255)
wkey.TextSize = 30.000

skey.Name = "skey"
skey.Parent = Frame
skey.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
skey.BackgroundTransparency = 0.500
skey.BorderSizePixel = 0
skey.Position = UDim2.new(0.403162062, 0, 0.278333187, 0)
skey.Size = UDim2.new(0, 50, 0, 50)
skey.Font = Enum.Font.Gotham
skey.Text = "S"
skey.TextColor3 = Color3.fromRGB(255, 255, 255)
skey.TextSize = 30.000

akey.Name = "akey"
akey.Parent = Frame
akey.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
akey.BackgroundTransparency = 0.500
akey.BorderSizePixel = 0
akey.Position = UDim2.new(0.169960469, 0, 0.278333187, 0)
akey.Size = UDim2.new(0, 50, 0, 50)
akey.Font = Enum.Font.Gotham
akey.Text = "A"
akey.TextColor3 = Color3.fromRGB(255, 255, 255)
akey.TextSize = 30.000

dkey.Name = "dkey"
dkey.Parent = Frame
dkey.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
dkey.BackgroundTransparency = 0.500
dkey.BorderSizePixel = 0
dkey.Position = UDim2.new(0.632411063, 0, 0.278333187, 0)
dkey.Size = UDim2.new(0, 50, 0, 50)
dkey.Font = Enum.Font.Gotham
dkey.Text = "D"
dkey.TextColor3 = Color3.fromRGB(255, 255, 255)
dkey.TextSize = 30.000

lmb.Name = "lmb"
lmb.Parent = Frame
lmb.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
lmb.BackgroundTransparency = 0.500
lmb.BorderSizePixel = 0
lmb.Position = UDim2.new(0.169960469, 0, 0.455132574, 0)
lmb.Size = UDim2.new(0, 80, 0, 50)
lmb.Font = Enum.Font.Gotham
lmb.Text = "LMB"
lmb.TextColor3 = Color3.fromRGB(255, 255, 255)
lmb.TextSize = 30.000

cps2.Name = "cps2"
cps2.Parent = Frame
cps2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
cps2.BackgroundTransparency = 0.500
cps2.BorderSizePixel = 0
cps2.Position = UDim2.new(0.513834, 0, 0.635416269, 0)
cps2.Size = UDim2.new(0, 80, 0, 32)
cps2.Font = Enum.Font.Gotham
cps2.Text = "RMB"
cps2.TextColor3 = Color3.fromRGB(255, 255, 255)
cps2.TextSize = 20.000

space.Name = "space"
space.Parent = Frame
space.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
space.BackgroundTransparency = 0.500
space.BorderSizePixel = 0
space.Position = UDim2.new(0.169960469, 0, 0.755771995, 0)
space.Size = UDim2.new(0, 167, 0, 50)
space.Font = Enum.Font.Gotham
space.Text = "_________________"
space.TextColor3 = Color3.fromRGB(255, 255, 255)
space.TextSize = 14.000

cps1.Name = "cps1"
cps1.Parent = Frame
cps1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
cps1.BackgroundTransparency = 0.500
cps1.BorderSizePixel = 0
cps1.Position = UDim2.new(0.169960469, 0, 0.635416269, 0)
cps1.Size = UDim2.new(0, 80, 0, 32)
cps1.Font = Enum.Font.Gotham
cps1.Text = "LMB"
cps1.TextColor3 = Color3.fromRGB(255, 255, 255)
cps1.TextSize = 20.000

rmb.Name = "rmb"
rmb.Parent = Frame
rmb.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
rmb.BackgroundTransparency = 0.500
rmb.BorderSizePixel = 0
rmb.Position = UDim2.new(0.513834, 0, 0.455132574, 0)
rmb.Size = UDim2.new(0, 80, 0, 50)
rmb.Font = Enum.Font.Gotham
rmb.Text = "RMB"
rmb.TextColor3 = Color3.fromRGB(255, 255, 255)
rmb.TextSize = 30.000

-- Scripts:

local function TGSPU_fake_script() -- cps2.LocalScript 
	local script = Instance.new('LocalScript', cps2)

	local cps = 0
	spawn(function()
	while wait(1) do
		cps = 0
		
		end
		end)
	game:GetService("RunService").Heartbeat:Connect(function()
	
		script.Parent.Text = "CPS: "..cps
	end)
	
	game.Players.LocalPlayer:GetMouse().Button2Down:Connect(function()
		cps += 1
	
	end)
end
coroutine.wrap(TGSPU_fake_script)()
local function KSXSK_fake_script() -- Frame.Drag Gui 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(KSXSK_fake_script)()
local function IFYPVGH_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local wkey = script.Parent.wkey
	local akey = script.Parent.akey
	local skey = script.Parent.skey
	local dkey = script.Parent.dkey
	local lmb = script.Parent.lmb
	local rmb = script.Parent.rmb
	local space = script.Parent.space
	while wait() do
		if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) then
			wkey.BackgroundColor3 = Color3.fromRGB(200,200,200)
		else
			wkey.BackgroundColor3 = Color3.fromRGB(40,40,40)
		end
		if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) then
			akey.BackgroundColor3 = Color3.fromRGB(200,200,200)
		else
			akey.BackgroundColor3 = Color3.fromRGB(40,40,40)
		end
		if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) then
			skey.BackgroundColor3 = Color3.fromRGB(200,200,200)
		else
			skey.BackgroundColor3 = Color3.fromRGB(40,40,40)
		end
		if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D) then
			dkey.BackgroundColor3 = Color3.fromRGB(200,200,200)
		else
			dkey.BackgroundColor3 = Color3.fromRGB(40,40,40)
		end
		if game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
			lmb.BackgroundColor3 = Color3.fromRGB(200,200,200)
		else
			lmb.BackgroundColor3 = Color3.fromRGB(40,40,40)
		end
		if game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
			rmb.BackgroundColor3 = Color3.fromRGB(200,200,200)
		else
			rmb.BackgroundColor3 = Color3.fromRGB(40,40,40)
		end
		if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) then
			space.BackgroundColor3 = Color3.fromRGB(200,200,200)
		else
			space.BackgroundColor3 = Color3.fromRGB(40,40,40)
		end
	end
end
coroutine.wrap(IFYPVGH_fake_script)()
local function TUPGA_fake_script() -- cps1.LocalScript 
	local script = Instance.new('LocalScript', cps1)

	local cps = 0
	spawn(function()
	while wait(1) do
		cps = 0
		
		end
		end)
	game:GetService("RunService").Heartbeat:Connect(function()
	
		script.Parent.Text = "CPS: "..cps
	end)
	
	game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
		cps += 1
	
	end)
end
coroutine.wrap(TUPGA_fake_script)()
