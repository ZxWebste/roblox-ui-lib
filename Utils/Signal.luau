local Signal = {}
Signal.__index = Signal

function Signal.new()
	return setmetatable({ _listeners = {} }, Signal)
end

function Signal:Connect(fn)
	table.insert(self._listeners, fn)
	return {
		Disconnect = function()
			local idx = table.find(self._listeners, fn)
			if idx then table.remove(self._listeners, idx) end
		end
	}
end

function Signal:Fire(...)
	for _, fn in ipairs(self._listeners) do
		task.spawn(fn, ...)
	end
end

function Signal:Destroy()
	table.clear(self._listeners)
end

return Signal
