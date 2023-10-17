
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')

function ENT:Initialize()
	self:SetModel("models/items/AR2_Grenade.mdl")
	self:SetMoveCollide(COLLISION_GROUP_PROJECTILE)
	self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_CUSTOM)
	self:DrawShadow(false)

	util.SpriteTrail( self, 0, Color( 255, 255, 255 ), false, 20, 20, .1, 1 / ( 20 ) * 1, "sprites/doom3/plasmalight.vmt" )

	local phys = self:GetPhysicsObject()
	if IsValid(phys) then
		phys:Wake()
		phys:SetMass(1)
		phys:EnableDrag(false)
		phys:EnableGravity(false)
		phys:SetBuoyancyRatio(0)
	end
	
	self.plsSound = CreateSound(self, "weapons/doom3/plasmagun/flight_01.wav")
	self.plsSound:Play()
end

function ENT:PhysicsCollide(data, physobj)
	local dmg = 30
	data.HitEntity:TakeDamage(dmg, self:GetOwner())
	local start = data.HitPos + data.HitNormal
    local endpos = data.HitPos - data.HitNormal
	util.Decal("dark",start,endpos)
	self:Explode()
end

function ENT:Explode()
	local effectdata = EffectData()
	effectdata:SetOrigin(self:GetPos())
	util.Effect("doom3_plasma_light", effectdata)
	self:EmitSound("weapons/doom3/plasmagun/plasma_impact"..math.random(1,3)..".wav")
	self:Remove()
end

function ENT:OnRemove()
	if self.plsSound then self.plsSound:Stop() end
end