-- Gui to Lua
-- Version: 3.2

-- Instances:

local AutoFarmGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local LevelLabel = Instance.new("TextLabel")
local FarmButton = Instance.new("TextButton")

--Properties:

AutoFarmGUI.Name = "AutoFarmGUI"
AutoFarmGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
AutoFarmGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = AutoFarmGUI
MainFrame.BackgroundColor3 = Color3.fromRGB(147, 147, 147)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0, 0, -0.0129459146, 0)
MainFrame.Size = UDim2.new(0, 1030, 0, 704)

LevelLabel.Name = "LevelLabel"
LevelLabel.Parent = MainFrame
LevelLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LevelLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
LevelLabel.BorderSizePixel = 0
LevelLabel.Position = UDim2.new(0.351456314, 0, 0.0696022734, 0)
LevelLabel.Size = UDim2.new(0, 200, 0, 50)
LevelLabel.Font = Enum.Font.SourceSans
LevelLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
LevelLabel.TextSize = 14.000

FarmButton.Name = "FarmButton"
FarmButton.Parent = MainFrame
FarmButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FarmButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
FarmButton.BorderSizePixel = 0
FarmButton.Position = UDim2.new(0.368932039, 0, 0.491477281, 0)
FarmButton.Size = UDim2.new(0, 200, 0, 50)
FarmButton.Font = Enum.Font.SourceSans
FarmButton.TextColor3 = Color3.fromRGB(0, 0, 0)
FarmButton.TextSize = 14.000

-- Scripts:

local function NQUKK_fake_script() -- MainFrame.LocalScript 
	local script = Instance.new('LocalScript', MainFrame)

	local player = game.Players.LocalPlayer
	
	local frame = script.Parent
	local levelLabel = frame:WaitForChild("LevelLabel")
	local farmButton = frame:WaitForChild("FarmButton")
	
	local farming = false
	
	-- ฟังก์ชันอัปเดต Level
	local function updateLevel()
		local stats = player:FindFirstChild("leaderstats")
		if stats and stats:FindFirstChild("Level") then
			levelLabel.Text = "Level: " .. stats.Level.Value
		else
			levelLabel.Text = "Level: N/A"
		end
	end
	
	-- Loop อัปเดต Level ทุก 1 วินาที
	spawn(function()
		while true do
			updateLevel()
			wait(1)
		end
	end)
	
	-- ฟังก์ชันออโต้ฟาร์ม
	local function autoFarm()
		while farming do
			-- ใส่โค้ดเคลื่อนที่หรือโจมตีศัตรูของเกมที่นี่
			print("กำลังฟาร์ม... Level: "..levelLabel.Text)
			wait(1) -- ปรับตามความเร็วเกม
		end
	end
	
	-- ปุ่ม Start/Stop AutoFarm
	farmButton.MouseButton1Click:Connect(function()
		farming = not farming
		if farming then
			farmButton.Text = "Stop AutoFarm"
			spawn(autoFarm)
		else
			farmButton.Text = "Start AutoFarm"
		end
	end)
	
	
end
coroutine.wrap(NQUKK_fake_script)()
