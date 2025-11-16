-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.521582723, 0, 0.178046986, 0)
Frame.Size = UDim2.new(0, 343, 0, 214)

TextButton.Name = "เสกของ"
TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.206997082, 0, 0.0841121525, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.206997082, 0, 0.383177578, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.206997082, 0, 0.700934589, 0)
TextButton_3.Size = UDim2.new(0, 200, 0, 50)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000

-- Scripts:

local function QOCMXAS_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	
	local itemsFolder = workspace:WaitForChild("Items")
	
	local function teleportItemsAroundPlayer()
		local character = player.Character
		if not character then return end
		local hrp = character:FindFirstChild("HumanoidRootPart")
		if not hrp then return end
	
		local center = hrp.Position
	
		local baseY = 0.8
		local ringRadius = 12
		local groupRadius = 3
		local groupAngleStep = math.rad(20)
	
		-- จัดกลุ่มตามชื่อ
		local groups = {}
		for _, item in ipairs(itemsFolder:GetChildren()) do
	
			-- ❌ ข้ามของที่มีคำว่า chest ไม่ว่าจะตัวเล็กใหญ่
			local lowerName = string.lower(item.Name)
			if string.find(lowerName, "chest") then
				continue
			end
	
			if item:IsA("Tool") or item:IsA("BasePart") or item:IsA("Model") then
				local name = item.Name
				groups[name] = groups[name] or {}
				table.insert(groups[name], item)
			end
		end
	
		local groupIndex = 0
		for name, items in pairs(groups) do
	
			local angle = groupIndex * groupAngleStep
			local gx = center.X + math.cos(angle) * ringRadius
			local gz = center.Z + math.sin(angle) * ringRadius
	
			local groupY = baseY
			local groupCenter = Vector3.new(gx, groupY, gz)
	
			local n = #items
			local step = 2 * math.pi / math.max(n, 1)
	
			for i, item in ipairs(items) do
				local a = (i - 1) * step
				local ix = groupCenter.X + math.cos(a) * groupRadius
				local iz = groupCenter.Z + math.sin(a) * groupRadius
				local finalPos = Vector3.new(ix, groupY, iz)
	
				if item:IsA("Tool") then
					local h = item:FindFirstChild("Handle")
					if h then h.CFrame = CFrame.new(finalPos) end
	
				elseif item:IsA("BasePart") then
					item.CFrame = CFrame.new(finalPos)
	
				elseif item:IsA("Model") then
					local mc = item:GetModelCFrame()
					local offset = finalPos - mc.Position
					for _, p in ipairs(item:GetDescendants()) do
						if p:IsA("BasePart") then
							p.CFrame = p.CFrame + offset
						end
					end
				end
			end
	
			groupIndex += 1
		end
	end
	
	script.Parent.MouseButton1Click:Connect(teleportItemsAroundPlayer)
	
	
end
coroutine.wrap(QOCMXAS_fake_script)()
local function SNKMP_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	local button = script.Parent
	local player = game.Players.LocalPlayer
	local runService = game:GetService("RunService")
	
	-- รายชื่อของที่จะเทเลพอร์ตมาที่ผู้เล่น
	local dropItems = {
		["Morsel"] = true,
		["Bunny Foot"] = true,
		["Coal"] = true
	}
	
	button.MouseButton1Click:Connect(function()
		local char = player.Character
		if not char then return end
	
		local root = char:FindFirstChild("HumanoidRootPart")
		if not root then return end
	
		-----------------------------------------
		-- ① เทเลพอร์ตมอนสเตอร์ใน Characters
		-----------------------------------------
		local folder = workspace:FindFirstChild("Characters")
		if not folder then
			warn("ไม่พบโฟลเดอร์ Characters")
		else
			local distance = 6
	
			for _, mob in pairs(folder:GetChildren()) do
				local mobRoot = mob:FindFirstChild("HumanoidRootPart")
				local humanoid = mob:FindFirstChildWhichIsA("Humanoid")
	
				if mobRoot then
					-- คำนวณตำแหน่งด้านหน้า
					local forwardPos = root.CFrame * CFrame.new(0, 0, -distance)
	
					-- ทำให้ mob หันหลังให้ผู้เล่น
					mobRoot.CFrame = CFrame.lookAt(
						Vector3.new(forwardPos.X, root.Position.Y, forwardPos.Z),
						root.Position
					) * CFrame.Angles(0, math.rad(180), 0)
	
					-- หยุดไม่ให้ขยับ
					if humanoid then
						humanoid.WalkSpeed = 0
						humanoid.JumpPower = 0
						humanoid:ChangeState(Enum.HumanoidStateType.Physics)
					end
	
					-- anchor ทั้งหมด
					for _, part in ipairs(mob:GetDescendants()) do
						if part:IsA("BasePart") then
							part.Anchored = true
						end
					end
	
					-- ปิดสคริปต์ดาเมจถ้ามี
					if mob:FindFirstChild("DamageScript") then
						mob.DamageScript.Disabled = true
					end
				end
			end
		end
	
		-----------------------------------------
		-- ② เทเลพอร์ตของดรอปมาที่ผู้เล่น
		-----------------------------------------
	
		for _, item in ipairs(workspace:GetDescendants()) do
			if dropItems[item.Name] then
	
				local tpPos = root.Position + Vector3.new(0, 4, 0)
	
				-- BasePart
				if item:IsA("BasePart") then
					item.CFrame = CFrame.new(tpPos)
	
					-- Model
				elseif item:IsA("Model") then
					item:PivotTo(CFrame.new(tpPos))
	
					-- Tool
				elseif item:IsA("Tool") and item:FindFirstChild("Handle") then
					item.Handle.CFrame = CFrame.new(tpPos)
				end
			end
		end
	
	end)
	
end
coroutine.wrap(SNKMP_fake_script)()
local function ACHX_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)

	local button = script.Parent
	local player = game.Players.LocalPlayer
	
	button.MouseButton1Click:Connect(function()
		local char = player.Character
		if not char then return end
	
		local root = char:FindFirstChild("HumanoidRootPart")
		if not root then return end
	
		-- MainFire position
		local camp = workspace:FindFirstChild("Campground")
		if not camp then return end
		local mainFire = camp:FindFirstChild("MainFire")
		if not mainFire then return end
		local firePos = mainFire:GetPivot().Position + Vector3.new(0, 4, 0)
	
		-- หา Chests ทั้งหมด
		for _, chest in ipairs(workspace:GetDescendants()) do
			if string.find(string.lower(chest.Name), "chest") then
				-- เปิดกล่อง (ถ้ามีสคริปต์เปิด/ปิดใน Chest ก็เพิ่มได้)
				-- วาร์ปของในกล่องมาที่ MainFire
				for _, item in ipairs(chest:GetDescendants()) do
					if item:IsA("Tool") or item:IsA("BasePart") or item:IsA("Model") then
						if item:IsA("Tool") and item:FindFirstChild("Handle") then
							item.Handle.CFrame = CFrame.new(firePos)
						elseif item:IsA("BasePart") then
							item.CFrame = CFrame.new(firePos)
						elseif item:IsA("Model") then
							item:PivotTo(CFrame.new(firePos))
						end
					end
				end
			end
		end
	end)
	
	
end
coroutine.wrap(ACHX_fake_script)()
