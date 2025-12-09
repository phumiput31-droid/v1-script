-- Gui to Lua
-- Version: 3.2

-- Instances:

local Gui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton_Add = Instance.new("TextButton")
local TextButton_Sub = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")

--Properties:

Gui.Name = "บวกลบGui"
Gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Gui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.833333313, 0, 0.0224971883, 0)
Frame.Size = UDim2.new(0, 154, 0, 167)

TextButton_Add.Name = "TextButton_Add"
TextButton_Add.Parent = Frame
TextButton_Add.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
TextButton_Add.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_Add.BorderSizePixel = 0
TextButton_Add.Position = UDim2.new(0.0881684572, 0, 0.0697248057, 0)
TextButton_Add.Size = UDim2.new(0, 58, 0, 30)
TextButton_Add.Font = Enum.Font.SourceSansBold
TextButton_Add.Text = "+"
TextButton_Add.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_Add.TextScaled = true
TextButton_Add.TextSize = 14.000
TextButton_Add.TextWrapped = true

TextButton_Sub.Name = "TextButton_Sub"
TextButton_Sub.Parent = Frame
TextButton_Sub.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton_Sub.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_Sub.BorderSizePixel = 0
TextButton_Sub.Position = UDim2.new(0.536220431, 0, 0.0697248057, 0)
TextButton_Sub.Size = UDim2.new(0, 58, 0, 30)
TextButton_Sub.Font = Enum.Font.SourceSansBold
TextButton_Sub.Text = "-"
TextButton_Sub.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_Sub.TextScaled = true
TextButton_Sub.TextSize = 14.000
TextButton_Sub.TextWrapped = true

UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-2.86363626, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(235, 235, 235)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.116883114, 0, 0.299401194, 0)
TextBox.Size = UDim2.new(0, 117, 0, 24)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 14.000

UICorner_2.Parent = TextBox

-- Scripts:

local function FMRTMY_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local label = script.Parent:WaitForChild("TextLabel")
	local addButton = script.Parent:WaitForChild("TextButton_Add")
	local subButton = script.Parent:WaitForChild("TextButton_Sub")
	local textbox = script.Parent:WaitForChild("TextBox")
	
	local count = 0
	local extraText = ""   -- เก็บข้อความที่พิมพ์ใน TextBox
	
	-- ฟังก์ชันอัปเดตข้อความใน TextLabel
	local function updateLabel()
		label.Text = tostring(count) .. " " .. extraText
	end
	
	-- ฟังก์ชันเปลี่ยนสี
	local function updateColor()
		if count < 0 then
			label.TextColor3 = Color3.fromRGB(255, 0, 0)
		else
			label.TextColor3 = Color3.fromRGB(0, 255, 0)
		end
	end
	
	-- อัปเดตตอนเริ่ม
	updateLabel()
	updateColor()
	
	-- ปุ่มบวก
	addButton.MouseButton1Click:Connect(function()
		count = count + 1
		updateLabel()
		updateColor()
	end)
	
	-- ปุ่มลบ
	subButton.MouseButton1Click:Connect(function()
		count = count - 1
		updateLabel()
		updateColor()
	end)
	
	-- เมื่อ textbox พิมพ์แล้วกด Enter
	textbox.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			if textbox.Text ~= "" then
				extraText = extraText .. textbox.Text .. " "  -- เพิ่มข้อความ
				updateLabel()
			end
		end
	end)
	
end
coroutine.wrap(FMRTMY_fake_script)()
local function OWFDPL_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	local label = script.Parent -- หรือใส่ path เอง
	
	label.BackgroundTransparency = 1
	label.BorderSizePixel = 0  -- เอาขอบออกด้วยถ้าต้องการ
	
	
end
coroutine.wrap(OWFDPL_fake_script)()
