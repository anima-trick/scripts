local module = {}
module.__index = module

function module.createInstances()
	local self = {}
	setmetatable(self, module)
	
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local TextButton = Instance.new("TextButton")
	
	function self:createButton()
		ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
		ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		Frame.Parent = ScreenGui
		Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Frame.BorderSizePixel = 0
		Frame.Position = UDim2.new(0.0840088427, 0, 0.13283208, 0)
		Frame.Size = UDim2.new(0, 60, 0, 57)
		Frame.Draggable = true
		
		UICorner.CornerRadius = UDim.new(1, 0)
		UICorner.Parent = Frame

		TextButton.Parent = Frame
		TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.BorderSizePixel = 0
		TextButton.Position = UDim2.new(0.266666681, 0, 0.22807017, 0)
		TextButton.Size = UDim2.new(0, 28, 0, 31)
		TextButton.Font = Enum.Font.SourceSans
		TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.TextSize = 14.000
		return TextButton
	end
	return self
end

return module
