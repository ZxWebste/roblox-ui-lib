local Maid = {}
Maid.__index = Maid

function Maid.new()
	return setmetatable({ _tasks = {} }, Maid)
end

function Maid:GiveTask(task)
	if not task then return end
	table.insert(self._tasks, task)
	return task
end

function Maid:DoCleaning()
	for index, task in ipairs(self._tasks) do
		if typeof(task) == "RBXScriptConnection" then
			task:Disconnect()
		elseif typeof(task) == "Instance" then
			task:Destroy()
		elseif typeof(task) == "function" then
			task()
		elseif typeof(task) == "table" and typeof(task.Destroy) == "function" then
			task:Destroy()
		end
		self._tasks[index] = nil
	end
end

function Maid:Destroy()
	self:DoCleaning()
end

return Maid
