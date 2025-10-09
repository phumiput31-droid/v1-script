-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local InvisButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

InvisButton.Name = "InvisButton"
InvisButton.Parent = ScreenGui
InvisButton.BackgroundColor3 = Color3.fromRGB(255, 255, 127)
InvisButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
InvisButton.BorderSizePixel = 0
InvisButton.Position = UDim2.new(0.407268822, 0, 0.183239698, 0)
InvisButton.Size = UDim2.new(0, 123, 0, 36)
InvisButton.Font = Enum.Font.Michroma
InvisButton.Text = "invinsible"
InvisButton.TextColor3 = Color3.fromRGB(0, 0, 0)
InvisButton.TextSize = 14.000

-- Scripts:

local function ALKOTWQ_fake_script() -- InvisButton.LocalScript 
	local script = Instance.new('LocalScript', InvisButton)

	--// ดึงตัวแปร
	local button = script.Parent
	local player = game.Players.LocalPlayer
	
	-- ถ้ายังไม่มีตัวละคร ให้รอจนกว่าจะมี
	local function getCharacter()
		local char = player.Character
		if not char or not char.Parent then
			char = player.CharacterAdded:Wait()
		end
		return char
	end
	
	local invisible = false
	
	--// ฟังก์ชันสลับสถานะล่องหน
	local function toggleInvisible()
		local character = getCharacter()
		invisible = not invisible
	
		for _, part in ipairs(character:GetDescendants()) do
			if part:IsA("BasePart") or part:IsA("Decal") then
				part.Transparency = invisible and 1 or 0
			end
		end
	
		for _, part in ipairs(character:GetChildren()) do
			if part:IsA("BasePart") then
				part.CanCollide = not invisible
			end
		end
	
		button.Text = invisible and "กลับมาเป็นปกติ" or "ล่องหน"
	end
	
	--// เมื่อกดปุ่ม
	button.MouseButton1Click:Connect(toggleInvisible)
	
end
coroutine.wrap(ALKOTWQ_fake_script)()
