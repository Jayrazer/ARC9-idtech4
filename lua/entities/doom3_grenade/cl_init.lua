include("shared.lua")

killicon.Add( "doom3_grenade", "vgui/icons/grenadew", Color( 255, 80, 0, 255 ) )
function ENT:Draw()
	self.Entity:DrawModel()
end

function ENT:IsTranslucent()
	return true
end

function ENT:OnRemove()
	local effectdata = EffectData()
	effectdata:SetStart(self:GetPos())
	effectdata:SetOrigin(self:GetPos())
	util.Effect("doom3_rocket_exp", effectdata)
	util.Effect("doom3_rocket_exp1", effectdata)
end