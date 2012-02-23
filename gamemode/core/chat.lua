local Chat = {}

function Chat:RegisterChatCommand(command, func)
	self.Commands[command] = func
end

function Chat:RunCommands(ply, text, public)
	local args = string.Explode(text, " ")
	for k, v in pairs(SimpleRP.Chat.Commands) do
		if args[1] == k then return v(ply, text, public) end
	end
end

SimpleRP.Chat = Chat

function GM:PlayerSay(ply, text, public)
	local newText = SimpleRP.Chat:RunCommands(ply, text, public)
	if newText ~= nil then text = newText end
	return text
end