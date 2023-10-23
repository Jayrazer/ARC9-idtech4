AddCSLuaFile()

ENT.Type 				= "anim"
ENT.Base 				= "arc9_idt4_projectile_base"
ENT.PrintName 			= "Hyperblaster Shot"
ENT.Spawnable 			= false

ENT.Model = "models/items/AR2_Grenade.mdl"
ENT.BoxSize = Vector(2, 2, 2)
ENT.Drunkenness = 0
ENT.Defused = true

ENT.Drag = false
ENT.Gravity = false
ENT.DragCoefficient = 0
ENT.Boost = 0
ENT.Lift = 0
ENT.BoostTime = 0
ENT.SmokeTrailSize = 0
ENT.SmokeTrailTime = 0

ENT.GunshipWorkaround = false
ENT.HelicopterWorkaround = false

ENT.Damage = 12
ENT.ImpactDamage = 12
ENT.Radius = 0

ENT.ShootEntData = {}

ENT.IsProjectile = true

if SERVER then

    function ENT:Initialize()
        local pb_vert = self.BoxSize[1]
        local pb_hor = self.BoxSize[2]
        self:SetModel(self.Model)
        self:PhysicsInitBox( Vector(-pb_vert,-pb_hor,-pb_hor), Vector(pb_vert,pb_hor,pb_hor) )

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:EnableDrag(self.Drag)
            phys:SetDragCoefficient(self.DragCoefficient)
            phys:EnableGravity(self.Gravity)
            phys:SetMass(1)
            phys:SetBuoyancyRatio(0)
        end

        self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)

        self.SpawnTime = CurTime()
		
		self.BounceCount = 0

        util.SpriteTrail( self, 0, Color( 255, 255, 255 ), false, 20, 6, .05, 1 / 128, "sprites/quake4/blaster_fly.vmt" )
		
    end
	
	function ENT:PhysicsCollide(colData, physobj)
        if !self:IsValid() then return end
		
		if self.BounceCount >= 1 then
			self:Remove()
		elseif !colData.HitEntity:IsWorld() then
			self:Remove()
		else
			local impulse = -colData.Speed * colData.HitNormal
			physobj:ApplyForceCenter(impulse)
			timer.Simple(0.1, function() if IsValid(self) then self.BounceCount = 1 end end)
		end

        if CurTime() - self.SpawnTime < self.FuseTime then
            if IsValid(colData.HitEntity) then
                local v = colData.OurOldVelocity:Length() ^ 0.5
                local dmg = DamageInfo()
                dmg:SetAttacker(IsValid(self:GetOwner()) and self:GetOwner() or self)
                dmg:SetInflictor(self)
                dmg:SetDamageType(DMG_CRUSH)
                dmg:SetDamage(v)
                dmg:SetDamagePosition(colData.HitPos)
                dmg:SetDamageForce(colData.OurOldVelocity)
                colData.HitEntity:TakeDamageInfo(dmg)
                self:EmitSound("weapons/rpg/shotdown.wav", 80, math.random(90, 110))
            end
            self:Defuse()
            return
        end

        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )

        -- simulate AP damage on vehicles, mainly simfphys
        local tgt = colData.HitEntity
        while IsValid(tgt) do
            if tgt.GetParent and IsValid(tgt:GetParent()) then
                tgt = tgt:GetParent()
            elseif tgt.GetBaseEnt and IsValid(tgt:GetBaseEnt()) then
                tgt = tgt:GetBaseEnt()
            else
                break
            end
        end

        if self.ImpactDamage and IsValid(tgt) then
            local dmg = DamageInfo()
            dmg:SetAttacker(IsValid(self:GetOwner()) and self:GetOwner() or self)
            dmg:SetInflictor(self)
            dmg:SetDamageType(DMG_BULLET) -- helicopters
            dmg:SetDamage(self.ImpactDamage)
            dmg:SetDamagePosition(colData.HitPos)
            dmg:SetDamageForce(self:GetForward() * self.ImpactDamage)

            if IsValid(tgt:GetOwner()) and tgt:GetOwner():GetClass() == "npc_helicopter" then
                tgt = tgt:GetOwner()
                dmg:ScaleDamage(0.1)
                dmg:SetDamageType(DMG_BLAST + DMG_AIRBOAT)
                dmg:SetDamageForce(self:GetForward() * 100)
            end

            tgt:TakeDamageInfo(dmg)
        end

        self.HitPos = colData.HitPos
        self.HitVelocity = colData.OurOldVelocity
		self:EmitSound("weapons/quake4/hyperblaster/blast_hit0"..math.random(1,3)..".ogg")
        self:Detonate()
    end
	
end

local pewpew = Material("sprites/quake4/energy1")
function ENT:Draw()
    self.SpawnTime = self.SpawnTime or CurTime()
	render.SetMaterial(pewpew)
	render.DrawSprite(self:GetPos(), 30, 30, Color(255, 255, 255))

    if (self.Boost or 0) > 0 and self.BoostTime + self.SpawnTime > CurTime() and (self.Tick or 0) % 3 == 0 then
        local eff = EffectData()
        eff:SetOrigin(self:GetPos())
        eff:SetAngles(self:GetAngles())
        eff:SetEntity(self)
        eff:SetScale(0.5)
        util.Effect("MuzzleEffect", eff)
    end
end