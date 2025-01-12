local player = game:GetService('Players').LocalPlayer
local ScPlayer = player.PlayerGui
local TweenService = game:GetService("TweenService")
local camera = game.Workspace.CurrentCamera
local ScreenGui = Instance.new('ScreenGui')
ScreenGui.Parent = ScPlayer
ScreenGui.Name = 'Intro'
ScreenGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
local SoundServiceIntro = Instance.new('Sound')
SoundServiceIntro.SoundId = 'rbxassetid://1842057457'
SoundServiceIntro.Volume = 1
SoundServiceIntro.Parent = ScreenGui
local LabelText = Instance.new('Frame')
LabelText.Size = UDim2.new(1, 0,1, 0)
LabelText.Position = UDim2.new(0.5, 0,0.5, 0)
LabelText.BackgroundTransparency = 1
local introText = Instance.new("TextLabel")
introText.Parent = ScreenGui
introText.Text = "Zyntra"
introText.Size = UDim2.new(0.677, 0,0.354, 0)
introText.Position = UDim2.new(0.161, 0,0.323, 0) 
introText.TextColor3 = Color3.new(0, 0, 0)
introText.TextStrokeColor3 = Color3.new(0.333333, 0, 1)
introText.TextScaled = true
introText.BackgroundTransparency = 1
introText.TextStrokeTransparency = 1
introText.Font = Enum.Font.SourceSansBold

local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
	Title = "Zyntra",
	Text = "Script Executed!",
	Duration = 5
})

local blurEffect = Instance.new("BlurEffect")
blurEffect.Parent = camera
blurEffect.Size = 0  

local tweenInfo = TweenInfo.new(
	2, 
	Enum.EasingStyle.Quad,
	Enum.EasingDirection.Out, 
	0,
	false,
	0
)
local tweenInfo2 = TweenInfo.new(
	0.3, 
	Enum.EasingStyle.Quad,
	Enum.EasingDirection.Out, 
	0,
	false,
	0
)

local textTweenIncrease = TweenService:Create(introText, tweenInfo, {TextStrokeTransparency = 0, TextTransparency = 0})
local blurTweenIncrease = TweenService:Create(blurEffect, tweenInfo, {Size = 24 })


local textTweenDecrease = TweenService:Create(introText, tweenInfo2, {	TextStrokeTransparency = 1, TextTransparency = 1})
local blurTweenDecrease = TweenService:Create(blurEffect, tweenInfo2, {Size = 0})

textTweenIncrease:Play()
blurTweenIncrease:Play()
SoundServiceIntro:Play()
wait(2.5)
textTweenDecrease:Play()
blurTweenDecrease:Play()
wait(0.5)
LabelText:Destroy()
blurEffect:Destroy()
