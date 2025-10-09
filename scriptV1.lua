-- NUGA HUB V1
-- Version: 1.2

-- Instances:

local AppleHubGUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local GodToggle = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local name = Instance.new("TextLabel")
local FlyToggle = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local HideButton = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local ESPToggle = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")

--Properties:

AppleHubGUI.Name = "AppleHubGUI"
AppleHubGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
AppleHubGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = AppleHubGUI
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.170310944, 0, 0.0986760557, 0)
Frame.Size = UDim2.new(0, 413, 0, 318)

UICorner.CornerRadius = UDim.new(0, 50)
UICorner.Parent = Frame

GodToggle.Name = "GodToggle"
GodToggle.Parent = Frame
GodToggle.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
GodToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
GodToggle.BorderSizePixel = 0
GodToggle.Position = UDim2.new(0.824803174, 0, 0.422604412, 0)
GodToggle.Size = UDim2.new(0, 55, 0, 50)
GodToggle.Font = Enum.Font.Arcade
GodToggle.Text = "Use"
GodToggle.TextColor3 = Color3.fromRGB(229, 229, 229)
GodToggle.TextScaled = true
GodToggle.TextSize = 14.000
GodToggle.TextWrapped = true

UICorner_2.Parent = GodToggle

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(7.38924442e-08, 0, -0.00245700101, 0)
Frame_2.Size = UDim2.new(0, 413, 0, 50)

UICorner_3.Parent = Frame_2

TextLabel.Name = "เครดิต"
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(255, 255, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0696889237, 0, 0.92270577, 0)
TextLabel.Size = UDim2.new(0, 354, 0, 15)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "Made by NUGA"
TextLabel.TextColor3 = Color3.fromRGB(85, 170, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(85, 170, 255)
TextLabel.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 50)
UICorner_4.Parent = TextLabel

name.Name = "name"
name.Parent = Frame
name.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
name.BorderColor3 = Color3.fromRGB(0, 0, 0)
name.BorderSizePixel = 0
name.Position = UDim2.new(0.256691933, 0, 0.00982800405, 0)
name.Size = UDim2.new(0, 200, 0, 41)
name.Font = Enum.Font.FredokaOne
name.Text = "NUGA HUB"
name.TextColor3 = Color3.fromRGB(85, 170, 255)
name.TextScaled = true
name.TextSize = 14.000
name.TextWrapped = true

FlyToggle.Name = "FlyToggle"
FlyToggle.Parent = Frame
FlyToggle.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
FlyToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlyToggle.BorderSizePixel = 0
FlyToggle.Position = UDim2.new(0.824803174, 0, 0.24570024, 0)
FlyToggle.Size = UDim2.new(0, 55, 0, 50)
FlyToggle.Font = Enum.Font.Arcade
FlyToggle.Text = "Use"
FlyToggle.TextColor3 = Color3.fromRGB(229, 229, 229)
FlyToggle.TextScaled = true
FlyToggle.TextSize = 14.000
FlyToggle.TextWrapped = true

UICorner_5.Parent = FlyToggle

HideButton.Name = "HideButton"
HideButton.Parent = Frame
HideButton.BackgroundColor3 = Color3.fromRGB(255, 128, 128)
HideButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HideButton.BorderSizePixel = 0
HideButton.Position = UDim2.new(0.888754666, 0, 0.0183420014, 0)
HideButton.Size = UDim2.new(0, 35, 0, 34)
HideButton.Font = Enum.Font.FredokaOne
HideButton.Text = "X"
HideButton.TextColor3 = Color3.fromRGB(255, 85, 0)
HideButton.TextScaled = true
HideButton.TextSize = 14.000
HideButton.TextWrapped = true

UICorner_6.Parent = HideButton

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(114, 116, 255)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0704563707, 0, 0.24570024, 0)
TextLabel_2.Size = UDim2.new(0, 296, 0, 50)
TextLabel_2.Font = Enum.Font.Arcade
TextLabel_2.Text = "Fly (BETA)"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(114, 116, 255)
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.0704563707, 0, 0.422604412, 0)
TextLabel_3.Size = UDim2.new(0, 296, 0, 50)
TextLabel_3.Font = Enum.Font.Arcade
TextLabel_3.Text = "GOD mode"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

TextLabel_4.Parent = Frame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(114, 116, 255)
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.0704563707, 0, 0.599508584, 0)
TextLabel_4.Size = UDim2.new(0, 296, 0, 50)
TextLabel_4.Font = Enum.Font.Arcade
TextLabel_4.Text = "EPS see"
TextLabel_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true

ESPToggle.Name = "ESPToggle"
ESPToggle.Parent = Frame
ESPToggle.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
ESPToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPToggle.BorderSizePixel = 0
ESPToggle.Position = UDim2.new(0.824803174, 0, 0.599508584, 0)
ESPToggle.Size = UDim2.new(0, 55, 0, 50)
ESPToggle.Font = Enum.Font.Arcade
ESPToggle.Text = "Use"
ESPToggle.TextColor3 = Color3.fromRGB(234, 234, 234)
ESPToggle.TextScaled = true
ESPToggle.TextSize = 14.000
ESPToggle.TextWrapped = true

UICorner_7.Parent = ESPToggle

-- Scripts:

local function EROUELD_fake_script() -- AppleHubGUI.LocalScript 
	local script = Instance.new('LocalScript', AppleHubGUI)

	local player = game.Players.LocalPlayer
	local char = player.Character or player.CharacterAdded:Wait()
	local humanoid = char:WaitForChild("Humanoid")
	local gui = script.Parent
	local panel = gui:WaitForChild("Frame")
	local hideBtn = panel:WaitForChild("HideButton")
	local godBtn = panel:WaitForChild("GodToggle")
	local flyBtn = panel:WaitForChild("FlyToggle")
	local espBtn = panel:WaitForChild("ESPToggle")
	
	-- ปุ่ม qq (ซ่อนเริ่มต้น)
	local qqBtn = Instance.new("TextButton")
	qqBtn.Size = UDim2.new(0, 100, 0, 50)
	qqBtn.Position = UDim2.new(0, 20, 0, 20)
	qqBtn.Text = "qq"
	qqBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
	qqBtn.TextColor3 = Color3.fromRGB(255,255,255)
	qqBtn.Visible = false
	qqBtn.Parent = gui
	
	-- เสียงแต่ละปุ่ม
	local sounds = {
		God = Instance.new("Sound"),
		Fly = Instance.new("Sound"),
		ESP = Instance.new("Sound"),
		Hide = Instance.new("Sound"),
		QQ = Instance.new("Sound")
	}
	
	sounds.God.SoundId = "rbxassetid://17570651967" -- เสียงพระเจ้า
	ounds.Fly.SoundId = "rbxassetid://114037851906101" -- เสียงบิน
	sounds.ESP.SoundId = "rbxassetid://7173976933" -- เสียง ESP
	sounds.Hide.SoundId = "rbxassetid://8981398719" -- คลิก Hide
	sounds.QQ.SoundId = "rbxassetid://157167203"
	
	for _, s in pairs(sounds) do
		s.Parent = gui
	end
	
	-- ฟังก์ชันสร้าง Toggle Button
	local function setupToggleButton(button, sound, callback)
		button.Text = "Use"
		local isUsed = false
		button.MouseButton1Click:Connect(function()
			isUsed = not isUsed
			button.Text = isUsed and "Nope" or "Use"
			sound:Play()
			if callback then callback(isUsed) end
		end)
	end
	
	-- God Mode
	setupToggleButton(godBtn, sounds.God, function(state)
		if state then
			humanoid.MaxHealth = math.huge
			humanoid.Health = math.huge
		else
			humanoid.MaxHealth = 100
			humanoid.Health = 100
		end
	end)
	
	-- Fly
	local flying = false
	local speed = 50
	local bodyVelocity
	setupToggleButton(flyBtn, sounds.Fly, function(state)
		flying = state
		if flying then
			bodyVelocity = Instance.new("BodyVelocity")
			bodyVelocity.MaxForce = Vector3.new(1e5,1e5,1e5)
			bodyVelocity.Velocity = Vector3.new(0,0,0)
			bodyVelocity.Parent = char.PrimaryPart
		else
			if bodyVelocity then
				bodyVelocity:Destroy()
				bodyVelocity = nil
			end
		end
	end)
	
	-- ESP (Client-side)
	local espEnabled = false
	setupToggleButton(espBtn, sounds.ESP, function(state)
		espEnabled = state
		for _, p in pairs(game.Players:GetPlayers()) do
			if p ~= player and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
				local part = p.Character:FindFirstChild("HumanoidRootPart")
				if state then
					if not part:FindFirstChild("ESP") then
						local box = Instance.new("BoxHandleAdornment")
						box.Adornee = part
						box.AlwaysOnTop = true
						box.Size = Vector3.new(2,5,1)
						box.Color3 = Color3.fromRGB(255,0,0)
						box.Transparency = 0.5
						box.Name = "ESP"
						box.Parent = part
					end
				else
					if part:FindFirstChild("ESP") then
						part:FindFirstChild("ESP"):Destroy()
					end
				end
			end
		end
	end)
	
	-- HideButton
	hideBtn.MouseButton1Click:Connect(function()
		panel.Visible = false
		qqBtn.Visible = true
		sounds.Hide:Play()
	end)
	
	-- qq ปุ่มคืน panel
	qqBtn.MouseButton1Click:Connect(function()
		panel.Visible = true
		qqBtn.Visible = false
		sounds.QQ:Play()
	end)
	
end
coroutine.wrap(EROUELD_fake_script)()
