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

local function JPGZN_fake_script() -- TextButton.LocalScript 
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
		local groundY = 1
	
		local ringRadius = 12        -- ระยะห่างจากตัวผู้เล่น
		local groupRadius = 3        -- ขนาดวงกลมของกอง
		local groupAngleStep = math.rad(20)  -- มุมขยับแต่ละกอง
	
		-- จัดกลุ่มตามชื่อ
		local groups = {}
		for _, item in ipairs(itemsFolder:GetChildren()) do
			if item:IsA("Tool") or item:IsA("BasePart") or item:IsA("Model") then
				local name = item.Name
				groups[name] = groups[name] or {}
				table.insert(groups[name], item)
			end
		end
	
		local groupIndex = 0
		for name, items in pairs(groups) do
			-- มุมของแต่ละกองรอบผู้เล่น
			local angle = groupIndex * groupAngleStep
			local gx = center.X + math.cos(angle) * ringRadius
			local gz = center.Z + math.sin(angle) * ringRadius
			local groupCenter = Vector3.new(gx, groundY, gz)
	
			-- วางภายในกองเป็นวงกลม
			local n = #items
			local itemAngleStep = 2 * math.pi / math.max(n, 1)
	
			for i, item in ipairs(items) do
				local a = (i - 1) * itemAngleStep
				local ix = groupCenter.X + math.cos(a) * groupRadius
				local iz = groupCenter.Z + math.sin(a) * groupRadius
				local finalPos = Vector3.new(ix, groundY, iz)
	
				-- Teleport
				if item:IsA("Tool") then
					local h = item:FindFirstChild("Handle")
					if h then h.CFrame = CFrame.new(finalPos) end
				elseif item:IsA("BasePart") then
					item.CFrame = CFrame.new(finalPos)
				elseif item:IsA("Model") then
					local mc = item:GetModelCFrame()
					local offset = finalPos - mc.Position
					for _, p in ipairs(item:GetDescendants()) do
						if p:IsA("BasePart") then p.CFrame = p.CFrame + offset end
					end
				end
			end
	
			groupIndex += 1
		end
	end
	
	-- ใส่ในปุ่ม
	local button = script.Parent
	button.MouseButton1Click:Connect(teleportItemsAroundPlayer)
	
end
coroutine.wrap(JPGZN_fake_script)()
