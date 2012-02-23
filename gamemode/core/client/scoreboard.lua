--[[

]]--
function GM:HUDDrawScoreBoard()
	
	
	local height = self:GetTall()/2
	local width = self:GetWide()/2
	
	local x = 5
	local y = 6
	
	draw.RoundedBox(4,x,y,width,height,Color(125,125,125,125))
	
	return true
end