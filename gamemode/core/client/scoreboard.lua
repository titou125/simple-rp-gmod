--[[

]]--
function GM:HUDDrawScoreBoard()
	if(!self.ScoreboardShouldShow) then return end
	
	local height = ScrH()/2
	local width = ScrW()/2
	
	local x = ScrW()/2 - width/2
	local y = ScrH()/2 - height/2
	
	draw.RoundedBox(4,x,y,width,height,Color(125,125,125,125))
	
	return false
end

function GM:ScoreboardShow()
	self.ScoreboardShouldShow = true
end

function GM:ScoreboardHide()
	self.ScoreboardShouldShow = false
end