--[[
	HUD!!!!
]]--
function GM:HUDPaint()
	local HP = LocalPlayer():Health()
	local AM = LocalPlayer():Armor()
	local FA  = 0
	local FM  = false -- Mode de faim!
	
	if HP < 1 then HP = 0 end	
	if AM < 1 then AM = 0 end
	
	if HP > 100 then HP = 100 end	
	if AM > 100 then AM = 100 end
	
	
	if LocalPlayer():Alive() then
		--Boit!
		draw.RoundedBox( 8, 5, ScrH()-105, 250, 100, Color(0, 0, 0, 180) );
		
		--Barre de vie!
		draw.RoundedBox( 1, 30, ScrH()-85, 200, 18, Color(80, 80, 80, 255) );
		if HP>0 then
			draw.RoundedBox( 1, 30, ScrH()-85, 2*HP, 18, Color(255-2.55*HP, 2.55*HP, 0, 255) );
		end
		
		--Barre d'armure!
		draw.RoundedBox( 1, 30, ScrH()-64, 200, 18, Color(80, 80, 80, 255) );
		if AM>0 then
			draw.RoundedBox( 1, 30, ScrH()-64, 2*AM, 18, Color(0, 0, 255, 255) );
		end
		
		--Barre de faim!
		if FM == true then -- Mode de faim!
			draw.RoundedBox( 1, 30, ScrH()-43, 200, 18, Color(80, 80, 80, 255) );
			if FA>0 then
				draw.RoundedBox( 1, 30, ScrH()-43, 2*FA, 18, Color(150, 0, 255, 255) );
			end
		end
	end
end


function GM:HUDShouldDraw( name )
	if(name == "CHudHealth") or (name == "CHudBattery") then
             return false
        end
end