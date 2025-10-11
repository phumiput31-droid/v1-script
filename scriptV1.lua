-- HUGA HUB V1
-- Version: 1.2

-- Instances:

local AppleHubGUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local ESPToggle = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local FlyToggle = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local GodToggle = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local HideButton = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local name = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local UICorner_7 = Instance.new("UICorner")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local ENTERSPEED = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local StealthToggle = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local SpeedTextBox = Instance.new("TextBox")
local Frame_3 = Instance.new("Frame")

--Properties:

AppleHubGUI.Name = "AppleHubGUI"
AppleHubGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
AppleHubGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = AppleHubGUI
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.331959903, 0, 0.0395319611, 0)
Frame.Size = UDim2.new(0, 293, 0, 175)

UICorner.Parent = Frame

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(2.06898832e-07, 0, -0.0793763548, 0)
Frame_2.Size = UDim2.new(0, 293, 0, 33)

ESPToggle.Name = "ESPToggle"
ESPToggle.Parent = Frame
ESPToggle.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
ESPToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPToggle.BorderSizePixel = 0
ESPToggle.Position = UDim2.new(0.436730921, 0, 0.453669816, 0)
ESPToggle.Size = UDim2.new(0, 20, 0, 21)
ESPToggle.Font = Enum.Font.Arcade
ESPToggle.Text = "Use"
ESPToggle.TextColor3 = Color3.fromRGB(234, 234, 234)
ESPToggle.TextScaled = true
ESPToggle.TextSize = 14.000
ESPToggle.TextWrapped = true

UICorner_2.Parent = ESPToggle

FlyToggle.Name = "FlyToggle"
FlyToggle.Parent = Frame
FlyToggle.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
FlyToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlyToggle.BorderSizePixel = 0
FlyToggle.Position = UDim2.new(0.433596253, 0, 0.15002659, 0)
FlyToggle.Size = UDim2.new(0, 20, 0, 21)
FlyToggle.Font = Enum.Font.Arcade
FlyToggle.Text = "Use"
FlyToggle.TextColor3 = Color3.fromRGB(229, 229, 229)
FlyToggle.TextScaled = true
FlyToggle.TextSize = 14.000
FlyToggle.TextWrapped = true

UICorner_3.Parent = FlyToggle

GodToggle.Name = "GodToggle"
GodToggle.Parent = Frame
GodToggle.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
GodToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
GodToggle.BorderSizePixel = 0
GodToggle.Position = UDim2.new(0.435289919, 0, 0.302248538, 0)
GodToggle.Size = UDim2.new(0, 20, 0, 21)
GodToggle.Font = Enum.Font.Arcade
GodToggle.Text = "Use"
GodToggle.TextColor3 = Color3.fromRGB(229, 229, 229)
GodToggle.TextScaled = true
GodToggle.TextSize = 14.000
GodToggle.TextWrapped = true

UICorner_4.Parent = GodToggle

HideButton.Name = "HideButton"
HideButton.Parent = Frame
HideButton.BackgroundColor3 = Color3.fromRGB(255, 128, 128)
HideButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HideButton.BorderSizePixel = 0
HideButton.Position = UDim2.new(0.956421018, 0, 0.0719499588, 0)
HideButton.Size = UDim2.new(0, -18, 0, -19)
HideButton.Font = Enum.Font.FredokaOne
HideButton.Text = "X"
HideButton.TextColor3 = Color3.fromRGB(255, 85, 0)
HideButton.TextScaled = true
HideButton.TextSize = 14.000
HideButton.TextWrapped = true

UICorner_5.Parent = HideButton

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(114, 116, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0270194206, 0, 0.151510417, 0)
TextLabel.Size = UDim2.new(0, 111, 0, 19)
TextLabel.Font = Enum.Font.Arcade
TextLabel.Text = "Teleport BM"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(114, 116, 255)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0281438474, 0, 0.302248508, 0)
TextLabel_2.Size = UDim2.new(0, 111, 0, 18)
TextLabel_2.Font = Enum.Font.Arcade
TextLabel_2.Text = "Noclip"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(114, 116, 255)
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.0250090919, 0, 0.453763098, 0)
TextLabel_3.Size = UDim2.new(0, 111, 0, 21)
TextLabel_3.Font = Enum.Font.Arcade
TextLabel_3.Text = "EPS all"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

name.Name = "name"
name.Parent = Frame
name.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
name.BorderColor3 = Color3.fromRGB(0, 0, 0)
name.BorderSizePixel = 0
name.Position = UDim2.new(0.221102357, 0, -0.0643684193, 0)
name.Size = UDim2.new(0, 163, 0, 27)
name.Font = Enum.Font.FredokaOne
name.Text = "NUGA HUB"
name.TextColor3 = Color3.fromRGB(85, 170, 255)
name.TextScaled = true
name.TextSize = 14.000
name.TextWrapped = true

TextLabel_4.Name = "เครดิต"
TextLabel_4.Parent = Frame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BorderColor3 = Color3.fromRGB(255, 255, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.060448762, 0, 0.950522542, 0)
TextLabel_4.Size = UDim2.new(0, 101, 0, 8)
TextLabel_4.Font = Enum.Font.FredokaOne
TextLabel_4.Text = "Made by NUGA"
TextLabel_4.TextColor3 = Color3.fromRGB(85, 170, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextStrokeColor3 = Color3.fromRGB(85, 170, 255)
TextLabel_4.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 50)
UICorner_6.Parent = TextLabel_4

UICorner_7.CornerRadius = UDim.new(0, 50)
UICorner_7.Parent = Frame

TextLabel_5.Parent = Frame
TextLabel_5.BackgroundColor3 = Color3.fromRGB(114, 116, 255)
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.0312786028, 0, 0.766243696, 0)
TextLabel_5.Size = UDim2.new(0, 110, 0, 21)
TextLabel_5.Font = Enum.Font.Arcade
TextLabel_5.Text = ""
TextLabel_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14.000
TextLabel_5.TextWrapped = true

TextLabel_6.Parent = Frame
TextLabel_6.BackgroundColor3 = Color3.fromRGB(114, 116, 255)
TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.0281438474, 0, 0.609288633, 0)
TextLabel_6.Size = UDim2.new(0, 111, 0, 21)
TextLabel_6.Font = Enum.Font.Arcade
TextLabel_6.Text = "Invisible"
TextLabel_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14.000
TextLabel_6.TextWrapped = true

ENTERSPEED.Name = "ENTERSPEED"
ENTERSPEED.Parent = Frame
ENTERSPEED.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
ENTERSPEED.BorderColor3 = Color3.fromRGB(0, 0, 0)
ENTERSPEED.BorderSizePixel = 0
ENTERSPEED.Position = UDim2.new(0.433596462, 0, 0.766243696, 0)
ENTERSPEED.Size = UDim2.new(0, 20, 0, 21)
ENTERSPEED.Font = Enum.Font.Arcade
ENTERSPEED.Text = "Use"
ENTERSPEED.TextColor3 = Color3.fromRGB(234, 234, 234)
ENTERSPEED.TextScaled = true
ENTERSPEED.TextSize = 14.000
ENTERSPEED.TextWrapped = true

UICorner_8.Parent = ENTERSPEED

StealthToggle.Name = "StealthToggle"
StealthToggle.Parent = Frame
StealthToggle.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
StealthToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
StealthToggle.BorderSizePixel = 0
StealthToggle.Position = UDim2.new(0.435289919, 0, 0.609956563, 0)
StealthToggle.Size = UDim2.new(0, 20, 0, 21)
StealthToggle.Font = Enum.Font.Arcade
StealthToggle.Text = "Use"
StealthToggle.TextColor3 = Color3.fromRGB(234, 234, 234)
StealthToggle.TextScaled = true
StealthToggle.TextSize = 14.000
StealthToggle.TextWrapped = true

UICorner_9.Parent = StealthToggle

SpeedTextBox.Name = "SpeedTextBox"
SpeedTextBox.Parent = Frame
SpeedTextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpeedTextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpeedTextBox.BorderSizePixel = 0
SpeedTextBox.Position = UDim2.new(0.0517564602, 0, 0.791002452, 0)
SpeedTextBox.Size = UDim2.new(0, 99, 0, 11)
SpeedTextBox.Font = Enum.Font.SourceSans
SpeedTextBox.Text = ""
SpeedTextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
SpeedTextBox.TextSize = 14.000

Frame_3.Parent = Frame
Frame_3.BackgroundColor3 = Color3.fromRGB(229, 229, 229)
Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.531438529, 0, 0.146661818, 0)
Frame_3.Size = UDim2.new(0, 131, 0, 129)

-- Scripts:

local function HTUMPRT_fake_script() -- AppleHubGUI.1 
	local script = Instance.new('LocalScript', AppleHubGUI)

	--  ✅ NUGA HUB Speed System (by งู้ย)
	-- มาเอาได้ติดตาม Tiktok ของผม  @NUGA_HUB
	
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")
	
	local player = Players.LocalPlayer
	local camera = workspace.CurrentCamera
	local mouse = player:GetMouse()
	
	-- === GUI references (ปรับให้ตรงกับ GUI ของคุณ) ===
	-- สมมติ LocalScript นี้วางไว้เป็นลูกของ ScreenGui ที่มี Frame และปุ่มต่าง ๆ
	local gui = script.Parent
	local panel = gui:WaitForChild("Frame")
	local hideBtn = panel:WaitForChild("HideButton")
	local godBtn = panel:WaitForChild("GodToggle")    -- Noclip
	local flyBtn = panel:WaitForChild("FlyToggle")    -- Marker / Teleport system (ชื่อยังเป็น flyBtn แต่ทำอย่างอื่น)
	local espBtn = panel:WaitForChild("ESPToggle")
	
	-- === Sounds (client-side) ===
	local sounds = {
		God = Instance.new("Sound"),
		Fly = Instance.new("Sound"),
		ESP = Instance.new("Sound"),
		Hide = Instance.new("Sound"),
		QQ = Instance.new("Sound")
	}
	
	-- เสียงตัวอย่าง (เปลี่ยน id ตามต้องการ)
	sounds.God.SoundId = "rbxassetid://17570651967"  -- เสียงเปิด Noclip
	sounds.Fly.SoundId = "rbxassetid://71143538823812"   -- เสียงเทเลพอร์ต/confirm
	sounds.ESP.SoundId = "rbxassetid://7173976933"
	sounds.Hide.SoundId = "rbxassetid://8981398719"
	sounds.QQ.SoundId = "rbxassetid://157167203"
	
	for _, s in pairs(sounds) do
		s.Parent = gui
	end
	
	-- === helper: toggle button setup ===
	local function setupToggleButton(button, sound, callback)
		button.Text = "Use"
		local isUsed = false
		button.MouseButton1Click:Connect(function()
			isUsed = not isUsed
			button.Text = isUsed and "Nope" or "Use"
			pcall(function() sound:Play() end)
			if callback then callback(isUsed) end
		end)
	end
	
	-- === Character handling (ensure humanoid available, rebind on respawn) ===
	local char = player.Character or player.CharacterAdded:Wait()
	local humanoid = char:WaitForChild("Humanoid")
	
	local function refreshCharacterRefs()
		char = player.Character or player.CharacterAdded:Wait()
		humanoid = char:WaitForChild("Humanoid")
	end
	player.CharacterAdded:Connect(function()
		refreshCharacterRefs()
		-- When character respawns, ensure noclip off (or reapply if needed) and ESP handles will recreate
	end)
	
	-- === Noclip (เดินทะลุกำแพง) ===
	local noclipEnabled = false
	local noclipConn = nil
	
	setupToggleButton(godBtn, sounds.God, function(state)
		noclipEnabled = state
		if noclipEnabled then
			-- เริ่ม loop ที่ทำให้ทุก BasePart ของตัวละคร CanCollide = false
			noclipConn = RunService.Stepped:Connect(function()
				if noclipEnabled and char and char.Parent then
					for _, part in pairs(char:GetChildren()) do
						if part:IsA("BasePart") then
							part.CanCollide = false
						end
					end
				end
			end)
		else
			-- ย้อนกลับให้ CanCollide = true
			if noclipConn then
				noclipConn:Disconnect()
				noclipConn = nil
			end
			if char and char.Parent then
				for _, part in pairs(char:GetChildren()) do
					if part:IsA("BasePart") then
						part.CanCollide = true
					end
				end
			end
		end
	end)
	
	-- === ESP (เห็นผู้เล่น + ม็อบ) ===
	local espEnabled = false
	local espLoop = nil
	
	local function clearAllESP()
		for _, v in pairs(workspace:GetDescendants()) do
			if v:IsA("BoxHandleAdornment") and v.Name == "ESP" then
				v:Destroy()
			end
		end
	end
	
	local function addESPToPart(part, color)
		if not part or not part:IsA("BasePart") then return end
		if part:FindFirstChild("ESP") then return end
		local box = Instance.new("BoxHandleAdornment")
		box.Name = "ESP"
		box.Adornee = part
		box.AlwaysOnTop = true
		box.ZIndex = 10
		box.Size = part.Size
		box.Color3 = color
		box.Transparency = 0.35
		box.Parent = part
	end
	
	setupToggleButton(espBtn, sounds.ESP, function(state)
		espEnabled = state
		if espEnabled then
			-- Start a loop to refresh ESP every 1.5-2 seconds
			espLoop = task.spawn(function()
				while espEnabled do
					clearAllESP()
					-- Players
					for _, p in pairs(Players:GetPlayers()) do
						if p ~= player and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
							addESPToPart(p.Character.HumanoidRootPart, Color3.fromRGB(255,0,0)) -- red
						end
					end
					-- Mobs / NPCs (Models with Humanoid + HumanoidRootPart) that are NOT player characters
					for _, obj in pairs(workspace:GetDescendants()) do
						if obj:IsA("Model") and obj:FindFirstChild("Humanoid") and obj:FindFirstChild("HumanoidRootPart") then
							if not Players:GetPlayerFromCharacter(obj) then
								local nameLower = obj.Name:lower()
								if string.find(nameLower, "boss") or string.find(nameLower, "enemyboss") then
									addESPToPart(obj.HumanoidRootPart, Color3.fromRGB(255,255,0)) -- yellow boss
								else
									addESPToPart(obj.HumanoidRootPart, Color3.fromRGB(0,255,0)) -- green mob
								end
							end
						end
					end
					task.wait(1.7)
				end
			end)
		else
			-- stop and clear
			if espLoop then
				espLoop = nil
			end
			clearAllESP()
		end
	end)
	
	-- Ensure ESP cleared on script disable / character change
	player.AncestryChanged:Connect(function(_, parent)
		if not parent then
			clearAllESP()
		end
	end)
	
	-- === Local Teleport Marker System (แทน Fly) ===
	-- Behavior:
	--  - กด Use ครั้งแรก: เปิดโหมดมาร์กเกอร์ (เห็นเฉพาะเรา) — จะขึ้นมาร์กเกอร์ที่ตามพื้นใต้ตัวเรา
	--  - ขณะเปิด: คลิกซ้าย anywhere เพื่อเลือกจุดเป้าหมาย (ยิง ray หาพื้น)
	--  - กด Use อีกครั้ง: ปิดโหมดและเทเลพอร์ตไปยังจุดที่คลิกไว้ (ถ้าไม่คลิก -> ไปตำแหน่งมาร์กเกอร์ที่ตามพื้น)
	--  - ทุกอย่างเป็น client-only GUI, ไม่มีการสร้าง part ใน workspace ฝั่ง server
	local teleportEnabled = false
	local trackingGui = nil
	local trackingConn = nil
	local inputConn = nil
	local targetWorldPos = nil
	
	-- helper: raycast ลงพื้น (blacklist ตัวผู้เล่น)
	local function getGroundUnder(pos)
		local origin = pos + Vector3.new(0, 5, 0)
		local dir = Vector3.new(0, -500, 0)
		local rp = RaycastParams.new()
		if player.Character then
			rp.FilterDescendantsInstances = {player.Character}
			rp.FilterType = Enum.RaycastFilterType.Blacklist
		end
		local r = workspace:Raycast(origin, dir, rp)
		if r and r.Position then
			return r.Position
		else
			return pos
		end
	end
	
	local function cleanupTeleportGui()
		if trackingConn then
			trackingConn:Disconnect()
			trackingConn = nil
		end
		if inputConn then
			inputConn:Disconnect()
			inputConn = nil
		end
		if trackingGui and trackingGui.Parent then
			trackingGui:Destroy()
			trackingGui = nil
		end
		targetWorldPos = nil
	end
	
	setupToggleButton(flyBtn, sounds.Fly, function(state)
		teleportEnabled = state
		if teleportEnabled then
			-- create player-only GUI in PlayerGui
			cleanupTeleportGui()
			local sg = Instance.new("ScreenGui")
			sg.Name = "LocalTeleportMarkerGui"
			sg.ResetOnSpawn = false
			sg.Parent = player:WaitForChild("PlayerGui")
	
			-- follow marker (circle) for ground under player
			local marker = Instance.new("Frame")
			marker.Name = "FollowMarker"
			marker.Size = UDim2.new(0, 64, 0, 64)
			marker.AnchorPoint = Vector2.new(0.5, 0.5)
			marker.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
			marker.BackgroundTransparency = 0.45
			marker.BorderSizePixel = 0
			marker.Parent = sg
			local mkCorner = Instance.new("UICorner", marker)
			mkCorner.CornerRadius = UDim.new(1,0)
			local mkStroke = Instance.new("UIStroke", marker)
			mkStroke.Thickness = 3
			mkStroke.Transparency = 0.25
			mkStroke.Color = Color3.fromRGB(50,255,255)
	
			-- target marker (when player clicks a spot)
			local tmarker = Instance.new("Frame")
			tmarker.Name = "TargetMarker"
			tmarker.Size = UDim2.new(0, 88, 0, 88)
			tmarker.AnchorPoint = Vector2.new(0.5, 0.5)
			tmarker.BackgroundColor3 = Color3.fromRGB(255,150,0)
			tmarker.BackgroundTransparency = 0.55
			tmarker.BorderSizePixel = 0
			tmarker.Visible = false
			tmarker.Parent = sg
			local tmCorner = Instance.new("UICorner", tmarker)
			tmCorner.CornerRadius = UDim.new(1,0)
			local tmStroke = Instance.new("UIStroke", tmarker)
			tmStroke.Thickness = 3
			tmStroke.Color = Color3.fromRGB(255,200,0)
	
			-- update marker position each frame (RenderStepped)
			trackingConn = RunService.RenderStepped:Connect(function()
				if not teleportEnabled then return end
				if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then return end
	
				local hrp = player.Character.HumanoidRootPart
				local groundPos = getGroundUnder(hrp.Position)
	
				local screenPos, onScreen = camera:WorldToViewportPoint(groundPos)
				marker.Position = UDim2.new(0, screenPos.X, 0, screenPos.Y)
	
				-- scale by distance so marker looks appropriate
				local dist = (camera.CFrame.Position - groundPos).Magnitude
				local scale = math.clamp(1000 / math.max(dist,1), 0.35, 1.6)
				marker.Size = UDim2.new(0, 64 * scale, 0, 64 * scale)
	
				-- if we have clicked target, show it
				if targetWorldPos then
					local s2, onS2 = camera:WorldToViewportPoint(targetWorldPos)
					tmarker.Position = UDim2.new(0, s2.X, 0, s2.Y)
					tmarker.Visible = true
				else
					tmarker.Visible = false
				end
			end)
	
			-- Input: left click to set target point (world position)
			inputConn = UserInputService.InputBegan:Connect(function(input, processed)
				if processed then return end
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					local clickPos = mouse.Hit and mouse.Hit.p
					if clickPos then
						targetWorldPos = getGroundUnder(clickPos)
						pcall(function() sounds.Fly:Play() end)
					end
				end
			end)
	
			trackingGui = sg
		else
			-- closing: teleport to targetWorldPos (if exists) or to marker under player
			local dest = nil
			if targetWorldPos then
				dest = targetWorldPos + Vector3.new(0, 3, 0)
			else
				if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
					dest = getGroundUnder(player.Character.HumanoidRootPart.Position) + Vector3.new(0, 3, 0)
				end
			end
	
			-- perform client-side teleport (ถ้าต้องการ authoritative server teleport ให้ใช้ RemoteEvent แทน)
			if dest and player.Character then
				pcall(function()
					local rootPart = player.Character.PrimaryPart or player.Character:FindFirstChild("HumanoidRootPart")
					if rootPart then
						-- try safe move
						if player.Character.PrimaryPart then
							player.Character:SetPrimaryPartCFrame(CFrame.new(dest))
						else
							rootPart.CFrame = CFrame.new(dest)
						end
					end
				end)
				pcall(function() sounds.Fly:Play() end)
			end
	
			-- cleanup GUI and connections
			cleanupTeleportGui()
		end
	end)
	
	-- === Hide / QQ buttons (GUI show/hide) ===
	-- create qq button (visible when panel hidden)
	local qqBtn = Instance.new("TextButton")
	qqBtn.Size = UDim2.new(0, 100, 0, 50)
	qqBtn.Position = UDim2.new(0, 20, 0, 20)
	qqBtn.Text = "qq"
	qqBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
	qqBtn.TextColor3 = Color3.fromRGB(255,255,255)
	qqBtn.Visible = false
	qqBtn.Parent = gui
	
	hideBtn.MouseButton1Click:Connect(function()
		panel.Visible = false
		qqBtn.Visible = true
		pcall(function() sounds.Hide:Play() end)
	end)
	
	qqBtn.MouseButton1Click:Connect(function()
		panel.Visible = true
		qqBtn.Visible = false
		pcall(function() sounds.QQ:Play() end)
	end)
	
	-- === Safety / cleanup on script end ===
	script.AncestryChanged:Connect(function(_, parent)
		if not parent then
			-- script removed: cleanup
			if noclipConn then noclipConn:Disconnect(); noclipConn = nil end
			if trackingConn then trackingConn:Disconnect(); trackingConn = nil end
			if inputConn then inputConn:Disconnect(); inputConn = nil end
			clearAllESP()
			if trackingGui and trackingGui.Parent then trackingGui:Destroy() end
		end
	end)
	
	-- optional: cleanup esp when player leaves or character removed
	player.CharacterRemoving:Connect(function()
		-- ensure parts' CanCollide reset on removal (optional)
		if noclipEnabled and char then
			for _, part in pairs(char:GetChildren()) do
				if part:IsA("BasePart") then
					pcall(function() part.CanCollide = true end)
				end
			end
		end
		-- clear ESP to avoid orphan adornments
		clearAllESP()
		cleanupTeleportGui()
	end)
	
end
coroutine.wrap(HTUMPRT_fake_script)()
local function IYWLQ_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:WaitForChild("Humanoid")
	
	local frame = script.Parent
	local speedBox = frame:WaitForChild("SpeedTextBox")
	local enterSpeedBtn = frame:WaitForChild("ENTERSPEED")
	
	local soundUse = Instance.new("Sound")
	soundUse.SoundId = "rbxassetid://8208593535"
	soundUse.Volume = 1
	soundUse.Parent = frame
	
	local soundReset = Instance.new("Sound")
	soundReset.SoundId = "rbxassetid://6346074926"
	soundReset.Volume = 1
	soundReset.Parent = frame
	
	local speedEnabled = false
	local normalSpeed = 16
	
	-- Placeholder
	local placeholderText = "ใส่ค่าที่ต้องการ"
	speedBox.Text = placeholderText
	speedBox.TextColor3 = Color3.fromRGB(150,150,150)
	
	-- ข้อความสุ่มกวนๆ
	local randomMessages = {
		"ความเร็วนี้ต้องใช้หมวกกันน็อค",
		"เร็วแบบนี้ระวังหน้าจอแตก",
		"ใส่เลขดีๆ ไม่งั้นพัง",
		"นี่ไม่ใช่เกมปกติแล้วนะ",
		"อย่าเพิ่งตกใจถ้าโหดเกินไป",
		"ใช้แล้วรู้สึกเทพทันที",
		"ระวังถูกจับได้!",
		"ใส่ตัวเลขแล้วกด Use สิ",
		"นี่ไม่ใช่ของเล่นสำหรับเด็ก",
		"เร็วแบบนี้ ต้องใช้ไฟฟ้าแรงสูง",
		"ระวังเมาส์บิน!",
		"คุณกำลังโกงระดับเบา",
		"ถ้าเร็วเกินไป เดี๋ยวเกมแฮงค์",
		"ใช้ด้วยความระมัดระวัง",
		"ใส่เลขแล้วลองดูผลลัพธ์",
		"นี่คือความเร็วระดับตำนาน",
		"ระวังตัวละครลอยไปข้างบน",
		"ใส่โค้ดแล้วคุณอาจรวย",
		"เกมนี้เร็วขึ้นแล้วนะ",
		"ระวังจะหลุดโลก!",
		"อย่าลืมเซฟก่อนใช้",
		"ความเร็วนี้เหมาะกับสายฟ้า",
		"คุณคือผู้เชี่ยวชาญเรื่องสปีด",
		"ใส่เลขผิด เดี๋ยวตกใจ",
		"นี่คือความเร็วระดับ GOD",
		"สนุกกับความเร็วสุดติ่ง",
		"ใส่โค้ดแล้วรับพลังพิเศษ",
		"เร็วเกินไปอาจทำให้เวียนหัว",
		"ใช้แล้วต้องหัวเราะ",
		"นี่คือความเร็วขั้นสุด",
		"ระวังตัวละครลอยข้ามแมพ",
		"ใส่เลขไม่ถูก เดี๋ยวพัง",
		"ใครเห็นคุณตอนนี้อาจตกใจ",
		"เร็วแบบนี้ เกมแทบค้าง",
		"ใช้แล้วอย่าลืมแชร์เพื่อน",
		"นี่คือความเร็วแห่งอนาคต",
		"ระวังจะชนกำแพง!",
		"ใส่เลขแล้วลองเสี่ยง",
		"เร็วเกินไปต้องเปิดแอร์",
		"เกมนี้ไม่เหมาะกับคนช้า",
		"ใช้แล้วคุณคือ SPEED KING",
		"ระวังตัวละครหายไป",
		"ใส่โค้ดแล้วรับรางวัล",
		"นี่คือสปีดระดับตำนาน",
		"เร็วแบบนี้ ต้องขอบคุณสูตรลับ",
		"ใส่เลขผิด เดี๋ยวเจ็บใจ",
		"ความเร็วนี้แรงเกินจะคุม",
		"ระวังเมาส์หลุดมือ!",
		"ใช้แล้วเตรียมหัวเราะ"
	}
	
	
	-- ฟังก์ชั่นโชว์ข้อความ NUGAisGOD
	local function showGODCode()
		local msg = Instance.new("TextLabel")
		msg.Size = UDim2.new(0, 200, 0, 50)
		msg.Position = UDim2.new(0.5, -100, 0.3, 0)
		msg.BackgroundTransparency = 0.5
		msg.BackgroundColor3 = Color3.fromRGB(0,0,0)
		msg.TextColor3 = Color3.fromRGB(255,255,0)
		msg.TextScaled = true
		msg.Text = "5555"
		msg.Parent = player.PlayerGui
	
		task.wait(5)
		msg:Destroy()
	end
	
	-- TextBox behavior
	speedBox.Focused:Connect(function()
		if speedBox.Text == placeholderText then
			speedBox.Text = ""
			speedBox.TextColor3 = Color3.fromRGB(0,0,0)
		end
	end)
	
	speedBox.FocusLost:Connect(function()
		if speedBox.Text == "" then
			speedBox.Text = placeholderText
			speedBox.TextColor3 = Color3.fromRGB(150,150,150)
		end
	end)
	
	-- Player respawn
	player.CharacterAdded:Connect(function(char)
		character = char
		humanoid = character:WaitForChild("Humanoid")
	end)
	
	-- ปุ่ม Use / Reset
	enterSpeedBtn.MouseButton1Click:Connect(function()
		local text = speedBox.Text
	
		if text == placeholderText then
			text = ""
		end
	
		-- กรณีใส่รหัสพิเศษ
		if text == "NUGAisGOD" then
			showGODCode()
			speedBox.Text = ""
			speedBox.TextColor3 = Color3.fromRGB(150,150,150)
			return
		end
	
		if not speedEnabled then
			local newSpeed = tonumber(text)
			if newSpeed and newSpeed > 16 then
				speedEnabled = true
				humanoid.WalkSpeed = newSpeed
				enterSpeedBtn.Text = "Reset"
				soundUse:Play()
	
				-- random ข้อความกวน
				local randMsg = randomMessages[math.random(1, #randomMessages)]
				speedBox.Text = randMsg
				speedBox.TextColor3 = Color3.fromRGB(150,150,150)
			else
				enterSpeedBtn.Text = "Invalid!"
				task.wait(1.5)
				enterSpeedBtn.Text = "Use"
			end
		else
			speedEnabled = false
			humanoid.WalkSpeed = normalSpeed
			speedBox.Text = placeholderText
			speedBox.TextColor3 = Color3.fromRGB(150,150,150)
			enterSpeedBtn.Text = "Use"
			soundReset:Play()
		end
	end)
	
end
coroutine.wrap(IYWLQ_fake_script)()
local function BOMCV_fake_script() -- StealthToggle.Invisible 
	local script = Instance.new('LocalScript', StealthToggle)

	local player = game.Players.LocalPlayer
	local char = player.Character or player.CharacterAdded:Wait()
	local humanoid = char:WaitForChild("Humanoid")
	local root = char:WaitForChild("HumanoidRootPart")
	local button = script.Parent
	
	local isStealth = false
	
	-- เสียง
	local soundOn = Instance.new("Sound", button)
	soundOn.SoundId = "rbxassetid://115654600945216"
	local soundOff = Instance.new("Sound", button)
	soundOff.SoundId = "rbxassetid://5835032207"
	
	-- เก็บค่า CanCollide เดิม
	local originalCollide = {}
	
	button.MouseButton1Click:Connect(function()
		isStealth = not isStealth
	
		if isStealth then
			soundOn:Play()
			button.Text = "Nope"
	
			for _, part in ipairs(char:GetDescendants()) do
				if part:IsA("BasePart") and part ~= root then
					originalCollide[part] = part.CanCollide -- เก็บค่าเดิม
					part.CanCollide = false
					part.Transparency = 1
				elseif part:IsA("Decal") or part:IsA("Texture") then
					part.Transparency = 1
				end
			end
		else
			soundOff:Play()
			button.Text = "Use"
	
			for part, collide in pairs(originalCollide) do
				if part.Parent then
					part.CanCollide = collide -- คืนค่าเดิม
					part.Transparency = 0
				end
			end
	
			-- คืนค่า Decal/Texture
			for _, part in ipairs(char:GetDescendants()) do
				if part:IsA("Decal") or part:IsA("Texture") then
					part.Transparency = 0
				end
			end
	
			originalCollide = {} -- ล้าง table
		end
	end)
	
end
coroutine.wrap(BOMCV_fake_script)()
local function OCNT_fake_script() -- Frame_3.LocalScript 
	local script = Instance.new('LocalScript', Frame_3)

	-- LocalScript ใต้ Frame
	local frame = script.Parent
	frame.BackgroundTransparency = 1
	frame.ClipsDescendants = true
	
	local RunService = game:GetService("RunService")
	
	-- ข้อความและสี (เข้ม ไม่ขาว)
	local credits = {
		{Text = "✅ NUGA HUB Credits", Color = Color3.fromRGB(180, 140, 0)},
		{Text = "ผู้สร้าง: งู้ย (Poomi)", Color = Color3.fromRGB(200, 200, 200)},
		{Text = "ช่องทางติดตาม:", Color = Color3.fromRGB(60, 120, 180)},
		{Text = "- TikTok: @NUGA_HUB", Color = Color3.fromRGB(60, 120, 180)},
		{Text = "- YouTube: NUGA HUB Official", Color = Color3.fromRGB(60, 120, 180)},
		{Text = "- Discord: NUGA_HUB#1234", Color = Color3.fromRGB(60, 120, 180)},
		{Text = "Special Thanks:", Color = Color3.fromRGB(60, 160, 60)},
		{Text = "- ทีมพัฒนา Roblox Hub", Color = Color3.fromRGB(60, 160, 60)},
		{Text = "- ผู้เล่นทุกคนที่สนับสนุน", Color = Color3.fromRGB(60, 160, 60)},
		{Text = "- ชุมชน Roblox Developers", Color = Color3.fromRGB(60, 160, 60)},
		{Text = "ฟีเจอร์หลัก:", Color = Color3.fromRGB(180, 100, 100)},
		{Text = "- Speed System", Color = Color3.fromRGB(180, 100, 100)},
		{Text = "- Invisible / Stealth Mode", Color = Color3.fromRGB(180, 100, 100)},
		{Text = "- Noclip / Walk Through Walls", Color = Color3.fromRGB(180, 100, 100)},
		{Text = "- ESP (เห็นผู้เล่นและม็อบ)", Color = Color3.fromRGB(180, 100, 100)},
		{Text = "- Local Teleport Marker System", Color = Color3.fromRGB(180, 100, 100)},
		{Text = "- GUI แบบเรียบง่าย เข้าใจง่าย", Color = Color3.fromRGB(180, 100, 100)},
		{Text = "- ระบบเสียงตอนเปิด/ปิด", Color = Color3.fromRGB(180, 100, 100)},
		{Text = "หมายเหตุ:", Color = Color3.fromRGB(160, 90, 0)},
		{Text = "- ใช้เพื่อเรียนรู้และทดสอบ", Color = Color3.fromRGB(160, 90, 0)},
		{Text = "- โปรดใช้ด้วยความรับผิดชอบ", Color = Color3.fromRGB(160, 90, 0)},
		{Text = "- ห้ามใช้ในเกมผู้อื่นโดยไม่ได้รับอนุญาต", Color = Color3.fromRGB(160, 90, 0)},
		{Text = "ขอบคุณทุกคนที่สนับสนุน NUGA HUB! 💖", Color = Color3.fromRGB(150, 10, 80)}
	}
	
	-- ตัวแปรควบคุม
	local labels = {}
	local spacing = 8 -- ช่องว่างระหว่างบรรทัด
	local speed = 30 -- ความเร็วเลื่อนช้า
	local textSize = 12
	
	-- สร้าง TextLabel สำหรับแต่ละบรรทัด
	local yOffset = frame.AbsoluteSize.Y
	for _, line in ipairs(credits) do
		local label = Instance.new("TextLabel")
		label.Size = UDim2.new(1, -10, 0, textSize + 4)
		label.Position = UDim2.new(0, 5, 0, yOffset)
		label.BackgroundTransparency = 1
		label.Text = line.Text
		label.TextColor3 = line.Color
		label.Font = Enum.Font.Gotham
		label.TextSize = textSize
		label.TextXAlignment = Enum.TextXAlignment.Left
		label.TextYAlignment = Enum.TextYAlignment.Top
		label.Parent = frame
	
		table.insert(labels, label)
		yOffset = yOffset + label.Size.Y.Offset + spacing
	end
	
	-- Loop เลื่อนข้อความ
	RunService.RenderStepped:Connect(function(dt)
		for _, label in ipairs(labels) do
			label.Position = label.Position - UDim2.new(0, 0, 0, speed * dt)
		end
	
		-- ถ้าเลื่อนหมดแล้ว ให้กลับไปด้านล่าง
		local lastLabel = labels[#labels]
		if lastLabel.Position.Y.Offset + lastLabel.Size.Y.Offset < 0 then
			local y = frame.AbsoluteSize.Y
			for _, label in ipairs(labels) do
				label.Position = UDim2.new(0, 5, 0, y)
				y = y + label.Size.Y.Offset + spacing
			end
		end
	end)
	
end
coroutine.wrap(OCNT_fake_script)()
