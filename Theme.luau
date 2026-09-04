local Theme = {
	Background = Color3.fromRGB(12, 13, 16),
	Surface = Color3.fromRGB(18, 19, 24),
	Surface2 = Color3.fromRGB(24, 26, 32),
	Border = Color3.fromRGB(36, 39, 48),
	Text = Color3.fromRGB(235, 238, 245),
	Muted = Color3.fromRGB(130, 135, 150),
	Accent = Color3.fromRGB(120, 90, 245),
	AccentHover = Color3.fromRGB(140, 110, 255),
	Success = Color3.fromRGB(46, 204, 113),
	Warning = Color3.fromRGB(241, 196, 15),
	Error = Color3.fromRGB(231, 76, 60),
	Font = Enum.Font.BuilderSans,
	FontMedium = Enum.Font.BuilderSansMedium,
	FontBold = Enum.Font.BuilderSansBold,
}

function Theme.Set(newTheme)
	for key, value in pairs(newTheme) do
		if Theme[key] ~= nil then
			Theme[key] = value
		end
	end
end

return Theme
