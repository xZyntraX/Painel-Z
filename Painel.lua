local player = game:GetService('Players').LocalPlayer
local ScPlayer = player.PlayerGui

local User1 = 'ZyntraX'
local Pass1 = '0000'
local LoginOn = false

local ScreenGui = Instance.new('ScreenGui')
ScreenGui.Parent = ScPlayer
ScreenGui.Name = 'Painel Login'
ScreenGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
local SoundServiceNegado = Instance.new('Sound')
SoundServiceNegado.SoundId = 'rbxassetid://89732586057985'
SoundServiceNegado.Volume = 0.5
SoundServiceNegado.Parent = ScreenGui
local SoundServiceConexPerdida = Instance.new('Sound')
SoundServiceConexPerdida.SoundId = 'rbxassetid://72215227505632'
SoundServiceConexPerdida.Volume = 0.5
SoundServiceConexPerdida.Parent = ScreenGui
local SoundAutoRequire = Instance.new('Sound')
SoundAutoRequire.SoundId = 'rbxassetid://137991366433100'
SoundAutoRequire.Volume = 0.5
SoundAutoRequire.Parent = ScreenGui
local SoundReject = Instance.new('Sound')
SoundReject.SoundId = 'rbxassetid://121445890268956'
SoundReject.Volume = 0.5
SoundReject.Parent = ScreenGui
local SoundAcept = Instance.new('Sound')
SoundAcept.SoundId = 'rbxassetid://137995606275627'
SoundAcept.Volume = 0.5
SoundAcept.Parent = ScreenGui
local SoundInvalidPass = Instance.new('Sound')
SoundInvalidPass.SoundId = 'rbxassetid://89732586057985'
SoundInvalidPass.Volume = 0.5
SoundInvalidPass.Parent = ScreenGui



local ColorPadron = Color3.new(0.333333, 0, 1)

local FrameGUI = Instance.new('Frame')
local UIC = Instance.new('UICorner')
local STFG = Instance.new('UIStroke')
local FGRatioCons = Instance.new('UIAspectRatioConstraint')
FGRatioCons.AspectRatio = 1
FGRatioCons.Parent = FrameGUI
STFG.Parent = FrameGUI
STFG.Color = ColorPadron
STFG.Thickness = 2
UIC.Parent = FrameGUI
FrameGUI.Parent = ScreenGui
FrameGUI.Position = UDim2.new(0.327, 0,0.154, 0)
FrameGUI.Size = UDim2.new(0.348, 0,0.693, 0)
FrameGUI.BackgroundColor3 = Color3.new(0, 0, 0)
FrameGUI.BackgroundTransparency = 0.1
FrameGUI.Visible = true
FrameGUI.Name = 'LoginFrame'

local TextZ = Instance.new('TextLabel')
TextZ.Parent = FrameGUI
TextZ.Text = 'Zyntra'
TextZ.TextScaled = true
TextZ.TextColor3 = Color3.new(1, 1, 1)
TextZ.BackgroundTransparency = 1
TextZ.Position = UDim2.new(0, 0,0, 0)
TextZ.Size = UDim2.new(1, 0,0.169, 0)
TextZ.TextStrokeTransparency = 0
TextZ.TextStrokeColor3 = ColorPadron

local ButtonPN1 = Instance.new('TextButton')
local PN1Border = Instance.new('UIStroke')
local PN1Corner = Instance.new('UICorner')
ButtonPN1.Parent = FrameGUI
PN1Border.Parent = ButtonPN1
PN1Border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
PN1Corner.Parent = ButtonPN1
PN1Border.Color = ColorPadron
ButtonPN1.Position = UDim2.new(0.202, 0,0.747, 0)
ButtonPN1.Size = UDim2.new(0.593, 0,0.14, 0)
ButtonPN1.TextColor3 = Color3.new(1, 1, 1)
ButtonPN1.TextScaled = true
ButtonPN1.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonPN1.Font = Enum.Font.BuilderSansBold
ButtonPN1.Text = 'Login'


local ButtonPN2 = Instance.new('TextButton')
ButtonPN2.Parent = FrameGUI
ButtonPN2.Position = UDim2.new(0.888, 0,-0.002, 0)
ButtonPN2.Size = UDim2.new(0.112, 0,0.098, 0)
ButtonPN2.TextColor3 = Color3.new(1, 1, 1)
ButtonPN2.TextScaled = true
ButtonPN2.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonPN2.Font = Enum.Font.BuilderSansBold
ButtonPN2.Text = 'X'
ButtonPN2.BackgroundTransparency = 1
ButtonPN2.TextStrokeTransparency = 0
ButtonPN2.TextStrokeColor3 = ColorPadron

local function CreateTextBox(TB, PositionXY, Text)
	local Stroke = Instance.new('UIStroke')
	local Corner = Instance.new('UICorner')
	Stroke.Parent = TB
	Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	Stroke.Thickness = 2
	Stroke.Color = ColorPadron
	Corner.Parent = TB
	TB.Parent = FrameGUI
	TB.Size = UDim2.new(0.758, 0,0.14, 0)
	TB.Position = PositionXY
	TB.Text = Text
	TB.TextScaled = true
	TB.TextColor3 = Color3.new(1, 1, 1)
	TB.BackgroundTransparency = 1
end

local TextBox1 = Instance.new('TextBox')
CreateTextBox(TextBox1, UDim2.new(0.121, 0,0.264, 0), 'User')

local TextBox2 = Instance.new('TextBox')
CreateTextBox(TextBox2, UDim2.new(0.121, 0,0.514, 0), 'Pass')

ButtonPN2.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)


ButtonPN1.MouseButton1Click:Connect(function()
	local StarterGui = game:GetService("StarterGui")
	if TextBox1.Text == User1 and TextBox2.Text == Pass1  then
		print('Success')
		SoundAcept:Play()
		StarterGui:SetCore("SendNotification", {
			Title = "Warning!",
			Text = "Thank you for using Zyntra :)",
			Duration = 5
		})
		LoginOn = true
	elseif TextBox1.Text == '' or TextBox2.Text == '' or TextBox1.Text == 'User' or TextBox2.Text == 'Pass'  then
		SoundReject:Play()
		StarterGui:SetCore("SendNotification", {
			Title = "Warning!",
			Text = "It looks like one of the fields is empty!",
			Duration = 5
		})
	elseif (TextBox1.Text == User1 and TextBox1.Text ~= Pass1) or TextBox1.Text == '' or TextBox1.Text == 'Pass'  then
		SoundInvalidPass:Play()
		StarterGui:SetCore("SendNotification", {
			Title = "Warning!",
			Text = "Incorrect Password!",
			Duration = 5
		})
	else
		SoundServiceConexPerdida:Play()
		StarterGui:SetCore("SendNotification", {
			Title = "Warning!",
			Text = "Incorrect username or password!",
			Duration = 5
		})
	end
end)

local function makeDraggable(frame)
	local dragToggle = nil
	local dragInput = nil
	local dragStart = nil
	local startPos = nil

	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)

	game:GetService("RunService").RenderStepped:Connect(function()
		if dragToggle and dragInput then
			local delta = dragInput.Position - dragStart
			frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end)
end

makeDraggable(FrameGUI)


while LoginOn==false do
	wait(1)
end

wait(0.5)
ScreenGui:Destroy()
