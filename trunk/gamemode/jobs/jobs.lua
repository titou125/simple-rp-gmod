SimpleRP.Jobs = {}

local JobsDir = "jobs"

function Jobs:LoadJobs()
	local list = file.Find("gamemode/" .. JobsDir .. "/")
	for _, v in pairs(list) do
		include(JobsDir .. "/" .. v)
		self[Job.ID] = Job
		SimpleRP.Chat:RegisterChatCommand(Job.ChatCommand, self:ChangeJob)
	end
end