
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()
	self:SetModel("models/projectiles/doom3/grenade.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	local phys = self:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:AddGameFlag(FVPHYSICS_NO_IMPACT_DMG)
		phys:Wake()
	end

	ParticleEffectAttach("rocket_smoke_trail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
end

function ENT:SetExplodeDelay(flDelay)
	self.delayExplode = CurTime() +flDelay
end

function ENT:OnRemove()
	if self.sound then self.sound:Stop() end
end

function ENT:PhysicsCollide(data,phys)
	self:EmitSound("weapons/doom3/grenades/lowtink_0" .. math.random(1,3) .. ".wav")
	
	local impulse = -data.Speed * data.HitNormal * 5 + (data.OurOldVelocity * 1.2)
	phys:ApplyForceCenter(impulse)
	
	if data.Speed < 100 then
		self:StopParticles()
	end
end

function ENT:Think()
	if !self.delayExplode || CurTime() < self.delayExplode then return end
	self.delayExplode = nil
	self:Explode()
end

function ENT:Explode()
	local dmg = cvars.Number("doom3_sk_grenade_damage")
	if IsValid(self:GetOwner()) then
		util.BlastDamage(self, self:GetOwner(), self:GetPos(), 150, dmg)
	end
	self:EmitSound("weapons/doom3/explosions/explode_0"..math.random(1,6)..".wav", 100, 100)
	
	local shake = ents.Create( "env_shake" )
		shake:SetOwner( self.entOwner )
		shake:SetPos( self:GetPos() )
		shake:SetKeyValue( "amplitude", "5" )
		shake:SetKeyValue( "radius", "1500" )
		shake:SetKeyValue( "duration", "2.5" )
		shake:SetKeyValue( "frequency", "255" )
		shake:SetKeyValue( "spawnflags", "4" )
		shake:Spawn()
		shake:Activate()
		shake:Fire( "StartShake", "", 0 )
	
	local spos = self:GetPos()
	local trs = util.TraceLine({start=spos + Vector(0,0,64), endpos=spos + Vector(0,0,-32), filter=self})
	util.Decal("Scorch", trs.HitPos + trs.HitNormal, trs.HitPos - trs.HitNormal)
	self:Remove()
end

function ENT:StartTouch( ent )
	if ( ent:IsValid() and ent:IsPlayer() || ent:IsNPC() ) then
 		self:Explode()
	end
end