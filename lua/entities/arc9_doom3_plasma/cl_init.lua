include('shared.lua')

function ENT:Initialize()
	local Pos = self:GetPos()
	
	local emitter = ParticleEmitter(Pos)

	self.particle = emitter:Add("sprites/doom3/plasma2", Pos)

	if (self.particle) then
		self.particle:SetLifeTime(0) 
		self.particle:SetDieTime(100)
		self.particle:SetStartAlpha(255)
		self.particle:SetEndAlpha(255)
		self.particle:SetStartSize(24) 
		self.particle:SetEndSize(24)
		self.particle:SetAngles(Angle(0,0,0))
		self.particle:SetAngleVelocity(Angle(math.Rand(.15,2),0,0)) 
		self.particle:SetRoll(math.Rand( 0, 360 ))
		self.particle:SetColor(255,255,255,255)
		self.particle:SetGravity(Vector(0,0,0))
		self.particle:SetAirResistance(0)
		self.particle:SetCollide(true)
	end

	emitter:Finish()
end

function ENT:Draw()
	/*if self.effectdelay == nil or self.effectdelay + .1 < CurTime() then
		self.effectdelay = CurTime()
		local effectdata = EffectData()
		effectdata:SetOrigin(self:GetPos())
		util.Effect("doom3_plasmablast", effectdata)
	end*/
	local Pos = self:GetPos()
	render.SetMaterial(Material("sprites/doom3/plasma"))
	render.DrawSprite(Pos, 32, 32)	
end

function ENT:Think()
	local Pos = self:GetPos()
	self.particle:SetPos(Pos)
end

function ENT:OnRemove()
	self.particle:SetDieTime(0)
end