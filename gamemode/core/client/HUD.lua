--[[
	HUD!!!!
]]--
function DrawBox()

	draw.RoundedBox( 8, 5, ScrH()-105, 250, 100, Color(0, 0, 0, 180) );
	
end
hook.Add("HUDPaint", "DrawBox", DrawBox)


local function HideThings( name )
	if(name == "CHudHealth") or (name == "CHudBattery") then
             return false
        end
end
hook.Add( "HUDShouldDraw", "HideThings", HideThings )