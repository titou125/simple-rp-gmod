include("shared.lua")

AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")

AddCSLuaFile("core/client/scoreboard.lua")
AddCSLuaFile("core/client/HUD.lua")

function GM:Initialize()
	print("SimpleRP enabled")
end
