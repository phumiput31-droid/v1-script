-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.651478827, 0, 0.015822785, 0)
Frame.Size = UDim2.new(0, 348, 0, 272)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.209963039, 0, 0.365366757, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

-- Scripts:

local function MABA_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	
	local itemsFolder = workspace:WaitForChild("Items")
	
	local function teleportItemsCircle()
		local character = player.Character
		if not character then return end
		local hrp = character:FindFirstChild("HumanoidRootPart")
		if not hrp then return end
	
		local centerPos = hrp.Position
		local groundY = 0.5          -- สูงจากพื้น
		local groupRadius = 3         -- รัศมีวงกลมของกองเดียวกัน
		local groupSpacing = 8        -- ระยะระหว่างกองแต่ละชื่อ
	
		-- จัดกลุ่มตามชื่อ
		local groups = {}
		for _, item in ipairs(itemsFolder:GetChildren()) do
			if item:IsA("Tool") or item:IsA("BasePart") or item:IsA("Model") then
				local name = item.Name
				if not groups[name] then
					groups[name] = {}
				end
				table.insert(groups[name], item)
			end
		end
	
		-- วางแต่ละกอง
		local groupCount = 0
		for groupName, items in pairs(groups) do
			local numItems = #items
			local angleStep = 2 * math.pi / math.max(numItems,1) -- มุมระหว่างแต่ละ item
			local groupCenterX = centerPos.X + groupCount * groupSpacing
			local groupCenterZ = centerPos.Z
	
			for i, item in ipairs(items) do
				local angle = (i-1) * angleStep
				local x = groupCenterX + math.cos(angle) * groupRadius
				local z = groupCenterZ + math.sin(angle) * groupRadius
				local newPos = Vector3.new(x, groundY, z)
	
				if item:IsA("Tool") then
					local handle = item:FindFirstChild("Handle")
					if handle then
						handle.CFrame = CFrame.new(newPos)
					end
				elseif item:IsA("BasePart") then
					item.CFrame = CFrame.new(newPos)
				elseif item:IsA("Model") then
					local modelCFrame = item:GetModelCFrame()
					local offset = newPos - modelCFrame.Position
					for _, part in ipairs(item:GetDescendants()) do
						if part:IsA("BasePart") then
							part.CFrame = part.CFrame + offset
						end
					end
				end
			end
	
			groupCount = groupCount + 1
		end
	end
	
	-- ใส่ในปุ่ม
	local button = script.Parent
	button.MouseButton1Click:Connect(teleportItemsCircle)
end
coroutine.wrap(MABA_fake_script)()
