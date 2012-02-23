SimpleRP.Jobs = {}
local JobsDir = "jobs"
function Jobs:LoadJobs
	local list = file.Find("gamemode/" .. JobsDir .. "/")
	for _, v in pairs(list) do
		Jobs[v.Job.ID] = v.Job
		Jobs:RegisterChatCommand
	end
end

function Jobs:RegisterChatCommand()
end