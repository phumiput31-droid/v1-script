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

local function WJBSTGF_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	
	-- ชื่อ Folder ใน Workspace
	local itemsFolder = workspace:WaitForChild("Items")
	
	-- ฟังก์ชันเทเลพอร์ต item ไปยังผู้เล่น
	local function teleportItemsToPlayer()
		local character = player.Character
		if not character then return end
		local hrp = character:FindFirstChild("HumanoidRootPart")
		if not hrp then return end
	
		-- วนทุก Object ใน Folder Items
		for _, item in ipairs(itemsFolder:GetDescendants()) do
			if item:IsA("Tool") then
				local handle = item:FindFirstChild("Handle")
				if handle then
					handle.CFrame = hrp.CFrame + Vector3.new(0,3,0)
				end
			elseif item:IsA("BasePart") then
				item.CFrame = hrp.CFrame + Vector3.new(0,3,0)
			elseif item:IsA("Model") then
				for _, part in ipairs(item:GetDescendants()) do
					if part:IsA("BasePart") then
						part.CFrame = hrp.CFrame + Vector3.new(0,3,0)
					end
				end
			end
		end
	end
	
	-- ใส่ในปุ่ม
	local button = script.Parent
	button.MouseButton1Click:Connect(teleportItemsToPlayer)
	
end
coroutine.wrap(WJBSTGF_fake_script)()
