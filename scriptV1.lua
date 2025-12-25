-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local SkipButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.129950494, 0, 0.138576776, 0)
Frame.Size = UDim2.new(0, 186, 0, 156)

SkipButton.Name = "SkipButton"
SkipButton.Parent = Frame
SkipButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SkipButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SkipButton.BorderSizePixel = 0
SkipButton.Position = UDim2.new(0.24907364, 0, 0.375590026, 0)
SkipButton.Size = UDim2.new(0, 93, 0, 40)
SkipButton.Font = Enum.Font.SourceSans
SkipButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SkipButton.TextSize = 14.000

UICorner.Parent = SkipButton

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 186, 0, 29)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Auto Skip"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

-- Scripts:

local function GJONT_fake_script() -- SkipButton.LocalScript 
	local script = Instance.new('LocalScript', SkipButton)

	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local button = script.Parent
	
	local stagesFolder = workspace:WaitForChild("stages")
	
	-- รอตัวละคร
	local function getHRP()
		local char = player.Character or player.CharacterAdded:Wait()
		return char:WaitForChild("HumanoidRootPart")
	end
	
	-- รวบรวม stage
	local stages = {}
	
	for _,rangeFolder in ipairs(stagesFolder:GetChildren()) do
		if rangeFolder:IsA("Folder") then
			for _,stage in ipairs(rangeFolder:GetChildren()) do
				if stage:IsA("BasePart") and stage.Name:match("^stage%d+$") then
					local num = tonumber(stage.Name:match("%d+"))
					table.insert(stages, {n = num, p = stage})
				end
			end
		end
	end
	
	table.sort(stages, function(a, b)
		return a.n < b.n
	end)
	
	-- ===== ระบบควบคุม =====
	local index = 1
	local running = false
	local delayTime = 0.4
	local taskRunning = false
	
	button.Text = "SKIP : OFF"
	
	local function startSkip()
		if taskRunning then return end
		taskRunning = true
	
		task.spawn(function()
			while running do
				if index > #stages then
					button.Text = "DONE"
					running = false
					break
				end
	
				local hrp = getHRP()
				local target = stages[index].p
				hrp.CFrame = target.CFrame + Vector3.new(0, 5, 0)
	
				index += 1
				task.wait(delayTime)
			end
	
			taskRunning = false
		end)
	end
	
	button.MouseButton1Click:Connect(function()
		if index > #stages then
			button.Text = "DONE"
			return
		end
	
		running = not running
	
		if running then
			button.Text = "SKIP : ON"
			startSkip()
		else
			button.Text = "SKIP : OFF"
		end
	end)
	
end
coroutine.wrap(GJONT_fake_script)()
