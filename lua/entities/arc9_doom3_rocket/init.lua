
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include( 'shared.lua' )

function ENT:Initialize()
	self:SetModel("models/projectiles/doom3/rocket.mdl")
	self:SetMoveCollide(COLLISION_GROUP_PROJECTILE)
	self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_CUSTOM)

	local glow = ents.Create( "env_sprite" )
	glow:SetKeyValue( "rendercolor","255 50 0" )
	glow:SetKeyValue( "GlowProxySize","2.0" )
	glow:SetKeyValue( "HDRColorScale","2.0" )
	glow:SetKeyValue( "renderfx","14" )
	glow:SetKeyValue( "rendermode","3" )
	glow:SetKeyValue( "renderamt","255" )
	glow:SetKeyValue( "disablereceiveshadows","0" )
	glow:SetKeyValue( "mindxlevel","0" )
	glow:SetKeyValue( "maxdxlevel","0" )
	glow:SetKeyValue( "framerate","10.0" )
	glow:SetKeyValue( "model","sprites/blueflare1.spr" )
	glow:SetKeyValue( "spawnflags","0" )
	glow:SetKeyValue( "scale",".128" )
	glow:Spawn()
	glow:SetParent( self )
	glow:SetPos( self:GetPos( ) )
	self:SetRenderMode(RENDERMODE_TRANSALPHA)

	util.SpriteTrail( self, 0, Color( 255, 100, 0 ), false, 10, 10, 0.05, 1 / ( 15 + 1 ) * 0.5, "trails/plasma.vmt" )
	
	local phys = self:GetPhysicsObject()
	if IsValid(phys) then
		phys:Wake()
		phys:SetMass(1)
		phys:EnableDrag(false)
		phys:EnableGravity(false)
		phys:SetBuoyancyRatio(0)
	end
	
	self.flysound = CreateSound(self, "weapons/doom3/rocket/rocketlaunch_by_loop.wav")
	self.flysound:Play()
	ParticleEffectAttach("rocket_smoke_trail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
end

function ENT:PhysicsCollide(data, physobj)
	local rad, dmg = 175, 100
	local start = data.HitPos + data.HitNormal
    local endpos = data.HitPos - data.HitNormal
	
	local trace = {}
	trace.start = start
	trace.endpos = endpos
	trace.filter = self
	local tr = util.TraceLine(trace)
	
	if tr.HitWorld then
		util.Decal("Scorch",start,endpos)
	end
	
	if IsValid(self:GetOwner()) then
		util.BlastDamage(self, self:GetOwner(), tr.StartPos, rad, dmg)
	end
	local effectdata = EffectData()
	effectdata:SetOrigin(self:GetPos())
	util.Effect("doom3_rocket_exp", effectdata)
	util.Effect("doom3_rocket_exp1", effectdata)
	self:EmitSound("weapons/doom3/explosions/explode_0"..math.random(1,6)..".wav", 100, 100)
	
	local shake = ents.Create( "env_shake" )
		shake:SetOwner( self:GetOwner() )
		shake:SetPos( self:GetPos() )
		shake:SetKeyValue( "amplitude", "5" )
		shake:SetKeyValue( "radius", "1500" )
		shake:SetKeyValue( "duration", "2.5" )
		shake:SetKeyValue( "frequency", "255" )
		shake:SetKeyValue( "spawnflags", "4" )
		shake:Spawn()
		shake:Activate()
		shake:Fire( "StartShake", "", 0 )
	
	self:Remove()
end

function ENT:OnRemove()
	if self.flysound then self.flysound:Stop() end
end