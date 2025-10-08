-- Gui to Lua
-- Version: 3.2

-- Instances:

local SpeedGUI = Instance.new("ScreenGui")
local TextBox = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local ConfirmButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local ResetButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local HideButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")

--Properties:

SpeedGUI.Name = "SpeedGUI"
SpeedGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SpeedGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextBox.Parent = SpeedGUI
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.41366908, 0, 0.801208258, 0)
TextBox.Size = UDim2.new(0, 172, 0, 34)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 14.000

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = TextBox

ConfirmButton.Name = "ConfirmButton"
ConfirmButton.Parent = SpeedGUI
ConfirmButton.BackgroundColor3 = Color3.fromRGB(170, 255, 127)
ConfirmButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConfirmButton.BorderSizePixel = 0
ConfirmButton.Position = UDim2.new(0.538569152, 0, 0.887514353, 0)
ConfirmButton.Size = UDim2.new(0, 70, 0, 43)
ConfirmButton.Font = Enum.Font.SourceSansBold
ConfirmButton.Text = "ตกลง"
ConfirmButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ConfirmButton.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = ConfirmButton

ResetButton.Name = "ResetButton"
ResetButton.Parent = SpeedGUI
ResetButton.BackgroundColor3 = Color3.fromRGB(255, 130, 130)
ResetButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ResetButton.BorderSizePixel = 0
ResetButton.Position = UDim2.new(0.39268586, 0, 0.887514353, 0)
ResetButton.Size = UDim2.new(0, 70, 0, 43)
ResetButton.Font = Enum.Font.Unknown
ResetButton.Text = "รีเซ็ต"
ResetButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ResetButton.TextSize = 14.000

UICorner_3.CornerRadius = UDim.new(0, 10)
UICorner_3.Parent = ResetButton

HideButton.Name = "HideButton"
HideButton.Parent = SpeedGUI
HideButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HideButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HideButton.BorderSizePixel = 0
HideButton.Position = UDim2.new(0.470623493, 0, 0.112197928, 0)
HideButton.Size = UDim2.new(0, 52, 0, 50)
HideButton.Font = Enum.Font.SourceSansBold
HideButton.Text = "V1"
HideButton.TextColor3 = Color3.fromRGB(0, 0, 0)
HideButton.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(0, 60)
UICorner_4.Parent = HideButton

-- Scripts:

local function PUCVS_fake_script() -- HideButton.LocalScript 
	local script = Instance.new('LocalScript', HideButton)

	-- ทำให้ปุ่มสามารถลากได้
	local button = script.Parent
	local dragging = false
	local dragStart = nil
	local startPos = nil
	
	local userInput = game:GetService("UserInputService")
	
	-- เมื่อเริ่มกดปุ่มซ้าย
	button.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = button.Position
		end
	end)
	
	-- เมื่อปล่อยปุ่มเมาส์
	userInput.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)
	
	-- ขณะลากเมาส์อยู่
	userInput.InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			local delta = input.Position - dragStart
			button.Position = UDim2.new(
				startPos.X.Scale,
				startPos.X.Offset + delta.X,
				startPos.Y.Scale,
				startPos.Y.Offset + delta.Y
			)
		end
	end)
	
	
end
coroutine.wrap(PUCVS_fake_script)()
local function LARG_fake_script() -- SpeedGUI.LocalScript 
	local script = Instance.new('LocalScript', SpeedGUI)

	-- ดึง Player และ Humanoid
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:WaitForChild("Humanoid")
	
	-- ดึง Object จาก GUI
	local gui = script.Parent
	local inputBox = gui:WaitForChild("TextBox")
	local confirmButton = gui:WaitForChild("ConfirmButton")
	local resetButton = gui:WaitForChild("ResetButton")
	local hideButton = gui:WaitForChild("HideButton")
	
	-- เก็บค่าความเร็วพื้นฐานไว้
	local defaultSpeed = humanoid.WalkSpeed
	
	-- เมื่อกดปุ่ม "ตกลง"
	confirmButton.MouseButton1Click:Connect(function()
		local speedValue = tonumber(inputBox.Text)
		if speedValue then
			humanoid.WalkSpeed = speedValue
		else
			warn("⚠️ กรุณาใส่ตัวเลขเท่านั้น!")
		end
	end)
	
	-- เมื่อกดปุ่ม "รีเซ็ต"
	resetButton.MouseButton1Click:Connect(function()
		inputBox.Text = "" -- ลบค่าที่พิมพ์ออก
		humanoid.WalkSpeed = defaultSpeed -- คืนค่าความเร็วเดิม
	end)
	
	-- ถ้าตัวละครตาย/เกิดใหม่ ให้รีเซ็ตอัตโนมัติ
	player.CharacterAdded:Connect(function(newChar)
		humanoid = newChar:WaitForChild("Humanoid")
		humanoid.WalkSpeed = defaultSpeed
	end)
	
	-- 🧠 ระบบซ่อน/แสดง GUI
	local guiHidden = false
	
	hideButton.MouseButton1Click:Connect(function()
		guiHidden = not guiHidden
	
		for _, element in ipairs(gui:GetChildren()) do
			if element ~= hideButton and element:IsA("GuiObject") then
				element.Visible = not guiHidden
				element.Active = not guiHidden -- ป้องกันการกด
			end
		end
	
		-- เปลี่ยนข้อความของปุ่ม
		if guiHidden then
			hideButton.Text = "แสดง"
		else
			hideButton.Text = "ซ่อน"
		end
	end)
	
	
end
coroutine.wrap(LARG_fake_script)()
