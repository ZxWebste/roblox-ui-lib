local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local Layer = {}
local screenGui: ScreenGui?

function Layer.GetRoot(): ScreenGui
	if not screenGui or not screenGui.Parent then
		local parent = CoreGui:FindFirstChild("RobloxGui") or Players.LocalPlayer:WaitForChild("PlayerGui")
		screenGui = parent:FindFirstChild("ModernUI_Layer") :: ScreenGui
		if not screenGui then
			screenGui = Instance.new("ScreenGui")
			screenGui.Name = "ModernUI_Layer"
			screenGui.DisplayOrder = 9999
			screenGui.ResetOnSpawn = false
			screenGui.Parent = parent
		end
	end
	return screenGui :: ScreenGui
end

return Layer
