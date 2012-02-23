

AddCSLuaFile("core/client/scoreboard.lua")


function GM:Initialize()
	print(GM.Name.." enabled")
end

function GM:HUDShouldDraw(name)
	if name == "CHudGMod" then
		return false
	end
	return true
end