-- ทำให้ปุ่มสามารถลากได้
local button = script.Parent
local dragging = false
local dragStart = nil
local startPos = nil

local userInput = game:GetService("UserInputService")

-- เมื่อเริ่มกดปุ่มซ้าย
button.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = button.Position
	end
end)

-- เมื่อปล่อยปุ่มเมาส์
userInput.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)

-- ขณะลากเมาส์อยู่
userInput.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - dragStart
		button.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
    end
end)
	end
end)
