-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local xxxx = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

xxxx.Name = "xxxx"
xxxx.Parent = ScreenGui
xxxx.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
xxxx.BorderColor3 = Color3.fromRGB(0, 0, 0)
xxxx.BorderSizePixel = 0
xxxx.Position = UDim2.new(0.0361220688, 0, -0.0011183545, 0)
xxxx.Size = UDim2.new(0, 78, 0, 22)
xxxx.Font = Enum.Font.SourceSans
xxxx.Text = ""
xxxx.TextColor3 = Color3.fromRGB(0, 0, 0)
xxxx.TextSize = 14.000

UICorner.Parent = xxxx

-- Scripts:

local function CLGPTFB_fake_script() -- xxxx.สคริบปุ่มวาป 
	local script = Instance.new('LocalScript', xxxx)

	--// Counter Warp Button Script (สำหรับปุ่มใน GUI)
	local Players = game:GetService("Players")
	local TweenService = game:GetService("TweenService")
	local player = Players.LocalPlayer
	
	local button = script.Parent
	local counterEnabled = false
	local debounce = false
	
	-- โหลดตัวละคร
	local function getCharacter()
		local char = player.Character or player.CharacterAdded:Wait()
		local hum = char:WaitForChild("Humanoid")
		local HRP = char:WaitForChild("HumanoidRootPart")
		return char, hum, HRP
	end
	
	local char, hum, HRP = getCharacter()
	local lastHealth = hum.Health
	
	-- 🌈 เอฟเฟกต์ตกแต่งปุ่ม
	button.Text = "🔴 ปิดระบบวาร์ป"
	button.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
	button.TextScaled = true
	button.Font = Enum.Font.GothamBold
	button.AutoButtonColor = false
	
	-- ขอบเรืองแสง
	local stroke = Instance.new("UIStroke")
	stroke.Thickness = 2
	stroke.Color = Color3.fromRGB(255, 255, 255)
	stroke.Parent = button
	
	-- Gradient สีเคลื่อนไหว
	local gradient = Instance.new("UIGradient")
	gradient.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
		ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 0))
	}
	gradient.Rotation = 0
	gradient.Parent = button
	
	task.spawn(function()
		while task.wait(0.03) do
			gradient.Rotation = (gradient.Rotation + 1) % 360
		end
	end)
	
	-- เอฟเฟกต์ตอนกด (ย่อ/ขยายแบบปลอดภัย)
	local function pulseButton()
		local originalSize = button.Size
		local tweenOut = TweenService:Create(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {
			Size = originalSize - UDim2.new(0, 5, 0, 3)
		})
		local tweenIn = TweenService:Create(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {
			Size = originalSize
		})
		tweenOut:Play()
		tweenOut.Completed:Wait()
		tweenIn:Play()
	end
	
	-- เสียงคลิก
	local function playClickSound()
		local sound = Instance.new("Sound", button)
		sound.SoundId = "rbxassetid://12222142"
		sound.Volume = 0.6
		sound:Play()
		game.Debris:AddItem(sound, 1)
	end
	
	-- เปิด/ปิดระบบ
	button.MouseButton1Click:Connect(function()
		counterEnabled = not counterEnabled
		pulseButton()
		playClickSound()
	
		if counterEnabled then
			button.Text = "🟢 เปิดระบบวาร์ป"
			button.BackgroundColor3 = Color3.fromRGB(100, 255, 100)
		else
			button.Text = "🔴 ปิดระบบวาร์ป"
			button.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
		end
	end)
	
	-- ฟังก์ชันหาศัตรู
	local function findAttacker()
		local creator = hum:FindFirstChild("creator")
		if creator and creator.Value and creator.Value.Character then
			return creator.Value.Character
		end
	
		local nearest, dist = nil, 12
		for _, obj in pairs(workspace:GetChildren()) do
			if obj:IsA("Model") and obj ~= char and obj:FindFirstChild("Humanoid") and obj:FindFirstChild("HumanoidRootPart") then
				local hrp = obj.HumanoidRootPart
				local d = (hrp.Position - HRP.Position).Magnitude
				if d < dist and obj.Humanoid.Health > 0 then
					dist = d
					nearest = obj
				end
			end
		end
		return nearest
	end
	
	-- เมื่อเลือดลด (โดนตี)
	hum.HealthChanged:Connect(function(newHealth)
		if not counterEnabled or debounce then return end
		if newHealth < lastHealth then
			local attacker = findAttacker()
			if attacker and attacker:FindFirstChild("HumanoidRootPart") then
				debounce = true
				local atkHRP = attacker.HumanoidRootPart
	
				-- เอฟเฟกต์ตอนวาร์ป
				local effect = Instance.new("ParticleEmitter")
				effect.Texture = "rbxassetid://241837157" -- แสงหมุน
				effect.Rate = 100
				effect.Lifetime = NumberRange.new(0.4)
				effect.Speed = NumberRange.new(1)
				effect.Parent = HRP
	
				-- วาร์ปไปข้างหลังศัตรู
				local warpCFrame = atkHRP.CFrame * CFrame.new(0, 0, 3)
				HRP.CFrame = warpCFrame
				task.wait(0.05)
				HRP.CFrame = CFrame.lookAt(HRP.Position, atkHRP.Position)
	
				-- เปลี่ยนข้อความชั่วคราว
				local oldText = button.Text
				button.Text = "⚡ วาร์ป!"
				button.BackgroundColor3 = Color3.fromRGB(255, 255, 100)
				task.wait(1)
				button.Text = oldText
				if counterEnabled then
					button.BackgroundColor3 = Color3.fromRGB(100, 255, 100)
				else
					button.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
				end
	
				effect.Enabled = false
				game.Debris:AddItem(effect, 1)
	
				task.wait(1)
				debounce = false
			end
		end
		lastHealth = newHealth
	end)
	
	player.CharacterAdded:Connect(function()
		char, hum, HRP = getCharacter()
		lastHealth = hum.Health
	end)
	
	
end
coroutine.wrap(CLGPTFB_fake_script)()
