include("shared.lua")

AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")

AddCSLuaFile("core/client/scoreboard.lua")
AddCSLuaFile("core/client/HUD.lua")

--[[ function AddCSLuaDir(fol)
	Files = file.FindInLua(fol)
	for k,v in pairs(Files) do
		if(file.IsDir(v)) then
				AddCSLuaDir(v)
		else
			
		end
	end
end ]]

function GM:Initialize()
	print("SimpleRP enabled")
end
