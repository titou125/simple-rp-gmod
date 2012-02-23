--[[
	HUD!!!!
]]
function DrawBox()
	local Health = LocalPlayer():Health()
	local Armor = LocalPlayer():Armor()
	local Hunger  = 0
	local HungerModEnabled  = false -- Mode de Hungerim!
	
	local Job = --[[LocalPlayer():GetTable().SimpleRP.Job.Name]] "jobz"
	local JobColor = --[[LocalPlayer():GetTable().SimpleRP.Job.Color]] Color(255,0,255,255)
	if Health < 1 then Health = 0 end	
	if Armor < 1 then Armor = 0 end
	
	if Health > 100 then Health = 100 end	
	if Armor > 100 then Armor = 100 end
	
	
	if LocalPlayer():Alive() then
	
		--Métier
		draw.SimpleText("Job:","Trebuchet24",30,ScrH()-100,Color(255,255,255,255))
		draw.SimpleText(Job,"Trebuchet24",80,ScrH()-100,JobColor)
	
		--Boite!
		draw.RoundedBox( 8, 5, ScrH()-105, 250, 100, Color(0, 0, 0, 180) )
		
		--[[Barre de vie!
		
		draw.TexturedQuad({ 
			texture = surface.GetTextureID("gui/silkicons/heart"),		UGLY
			color = Color(255, 255, 255, 255),
			x = 10,
			y = ScrH() - 65,
			w = 18,
			h = 18
		})]]--
		draw.RoundedBox( 1, 30, ScrH()-65, 200, 18, Color(80, 80, 80, 255) )
		
		if Health>0 then
			draw.RoundedBox( 1, 30, ScrH()-65, 2*Health, 18, Color(255-2.55*Health, 2.55*Health, 0, 255) )
		end
		
		--[[Barre d'armure!
		
		draw.TexturedQuad({ 
			texture = surface.GetTextureID("gui/silkicons/shield"),		UGLY
			color = Color(255, 255, 255, 255),
			x = 10,
			y = ScrH() - 44,
			w = 18,
			h = 18
		})]]--
		
		draw.RoundedBox( 1, 30, ScrH()-44, 200, 18, Color(80, 80, 80, 255) )
		if Armor>0 then
			draw.RoundedBox( 1, 30, ScrH()-44, 2*Armor, 18, Color(0, 0, 255, 255) )
		end
		
		--Barre de faim!
		if HungerModEnabled then -- Mode de faim!
			draw.RoundedBox( 1, 30, ScrH()-23, 200, 10, Color(80, 80, 80, 255) )
			if Hunger>0 then
				draw.RoundedBox( 1, 30, ScrH()-23, 2*Hunger, 18, Color(150, 0, 255, 255) )
			end
		end
	end
end
hook.Add("HUDPaint", "DrawBox", DrawBox)


local function HideThings( name )
	if(name == "CHudHealth") or (name == "CHudBattery") then
             return false
        end
end
hook.Add( "HUDShouldDraw", "HideThings", HideThings )