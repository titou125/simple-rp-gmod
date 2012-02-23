SimpleRP.Jobs = {}
local JobsDir = "jobs"
function LoadJobs
	local list = file.Find("gamemode/" .. JobsDir .. "/")
	for _, v in pairs(list) do
		Jobs[v.Job.ID] = v.Job
	end
end

function RegisterChatCommand()
end