AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - id Tech 4"
SWEP.SubCategory = "Quake 4"

SWEP.PrintName = "Nailgun"

SWEP.Class = "Automatic Flechette Thrower"

SWEP.Trivia = {
    Manufacturer = "Stroggos Military Complex",
    Projectile = "3mm Iron Flechettes",
    Mechanism = "Rotary Pneumatic Mechanism",
    Year = "Unknown"
}

SWEP.Credits = {
    Author = "speedonerd",
    Assets = "Raven Software, originally ported by Hidden, c_hands by speedonerd",
}

SWEP.Description = [[Strogg Automatic Nail Gun
Automatic flechette-shooting weapon developed by the Strogg. The weapon appears to have been hastily designed and manufactured, sporting a slow rate of fire, made up for by its projectiles' decent damage.]]

SWEP.ViewModel = "models/weapons/quake4/c_q4_nailgun.mdl"
SWEP.WorldModel = "models/weapons/quake4/w_q4_hyperblaster.mdl"

SWEP.Slot = 3

SWEP.MirrorVMWM = false

SWEP.NoTPIKVMPos = true

SWEP.Crosshair = true
SWEP.ForceStandardCrosshair = true	

SWEP.DefaultBodygroups = "0000000000000000000000"

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 25 -- Damage done at point blank range
SWEP.DamageMin = 25 -- Damage done at maximum range

SWEP.Num = 1

SWEP.DistributeDamage = true

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 1700 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 4200 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 5 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.1

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- ENTITY LAUNCHING

SWEP.ShootEnt = "arc9_idt4_nail" -- Set to an entity to launch it out of this weapon.
SWEP.ShootEntForce = 1250
SWEP.ShootEntInheritPlayerVelocity = false -- Set to true to inherit velocity
SWEP.ShootEntInheritPlayerVelocityLimit = 0 -- Upper limit of velocity to inherit. 0 - no limit.
SWEP.ShootEntData = {} -- Extra data that can be given to a projectile. Sets ENT.ShootEntData with this table.

SWEP.Throwable = false -- Set to true to give this weapon throwing capabilities.
SWEP.Tossable = true -- When grenade is enabled, right click will toss. Set to false to disable, allowing you to aim down sights.
SWEP.ThrowAnimSpeed = 1

SWEP.FuseTimer = -1 -- Length of time that the grenade will take to explode in your hands. -1 = Won't explode.

SWEP.ThrowForceMin = 3000 -- Minimum force that the grenade will be thrown with.
SWEP.ThrowForceMax = 5000 -- Maximum force that the grenade will be thrown with.
SWEP.TossForce = 500 -- Force that the grenade will be thrown with when right clicked.

SWEP.ThrowChargeTime = 1 -- How long it takes to charge the grenade to its maximum throw force.

SWEP.ThrowTumble = true -- Grenade tumbles when thrown.

SWEP.ThrowOnGround = false -- If set, entity's position and angles ignores vertical aim, and is lowered by up to 36 units onto the ground.

SWEP.Detonator = false -- Set to true to give this weapon a detonator. After throwing out a grenade, you enter detonator mode.

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1410.76 * 12
SWEP.PhysBulletGravity = 2
SWEP.PhysBulletDrag = 3

-------------------------- MAGAZINE

SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 50 -- Self-explanatory.
SWEP.SupplyLimit = 5 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

SWEP.AutoReload = true

-------------------------- FIREMODES

SWEP.RPM = 375

SWEP.Firemodes = {
    {
        Mode = -1,
        PrintName = "Automatic"
    }
}

SWEP.ManualAction = false
SWEP.ShotgunReload = false

SWEP.BarrelLength = 24

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 0.5

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 50 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.05 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1
SWEP.RecoilAutoControlHipFire = 2.5

SWEP.RecoilKick = 0.25

SWEP.UseVisualRecoil = false

SWEP.PhysicalVisualRecoil = false

SWEP.VisualRecoilUp = 8 -- Vertical tilt for visual recoil.F
SWEP.VisualRecoilSide = 0.8 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilRoll = 30 -- Roll tilt for visual recoil.
SWEP.VisualRecoilPunch = 0.5

SWEP.VisualRecoil = 1
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilPositionBump = 1.5

SWEP.VisualRecoilDampingConst = 40
SWEP.VisualRecoilSpringMagnitude = 1

SWEP.VisualRecoilCenter = Vector(4.525, 4, -3)

-------------------------- SPREAD

SWEP.Spread = 0

-------------------------- HANDLING

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.

SWEP.Sway = 0 -- How much the gun sways.

SWEP.SwayMultMidAir = 4
SWEP.SwayMultMove = 1.75
SWEP.SwayMultCrouch = 0.25
SWEP.SwayMultShooting = 1.5

SWEP.FreeAimRadiusMultSights = 0

SWEP.SwayMultSights = 0.3

SWEP.AimDownSightsTime = 0.35 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.3 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 1
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 1
SWEP.SpeedMultCrouch = 1

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.SprintAng = Angle(5, -15, 0)
SWEP.SprintPos = Vector(1, 1, 0)

SWEP.ViewModelFOVBase = 65
SWEP.ActivePos = Vector(1, -2, 0)
SWEP.ActiveAng = Angle(5, 2, 0)

SWEP.CrouchPos = Vector(0, -2, -0.5)
SWEP.CrouchAng = Angle(5, 2, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(18, 27, 8)
SWEP.CustomizeSnapshotFOV = 100

SWEP.BipodPos = Vector(0, 0, 0)

SWEP.CustomizeNoRotate = true

-------------------------- HoldTypes

SWEP.HoldType = "shotgun"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleEffect = "nil"

SWEP.ShellEffect = "nil"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.EjectDelay = 0
SWEP.CaseEffectQCA = 2

SWEP.AfterShotParticle = "barrel_smoke_plume"

SWEP.CamQCA = 1
SWEP.CamQCA_Mult = 0.1
SWEP.CamCoolView = true

-------------------------- SOUNDS

local path = "weapons/quake4/nailgun/"

SWEP.ShootSound = {
    path .. "fire_01.ogg",
    path .. "fire_02.ogg",
    path .. "fire_03.ogg",
}

SWEP.DistantShootSound = path .. ""
SWEP.ShootSoundSilenced = path .. ""
SWEP.DryFireSound = path .. "dry_fire.ogg"

SWEP.DryFireSingleAction = true

SWEP.Hook_TranslateAnimation = function (self, anim)
	local attached = self:GetElements()

	if attached["q4_nailgun_dualmag"] then
		if self:Clip1() >= 50 then
			if anim == "reload" then
				return "reload_1mag"
			end
		else
			if anim == "reload" then
				return "reload_2mag"
			end
		end
	end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "raise",
        EventTable = {
            {}
        }
    },
	["holster"] = {
        Source = "lower",
        EventTable = {
            {}
        }
    },
	["fire"] = {
		Source = "fire_slow",
		EventTable = {
			{s = path .. "stereo_fire_b.ogg", t = 0},
		},
	},
	["reload"] = {
		Source = "reload",
        EventTable = {
            {s = path .. "reload.ogg", t = 0},
        },
	},
	["reload_1mag"] = {
		Source = "reload_leftmag",
		Mult = 0.9,
        EventTable = {
		    {s = path .. "handle.ogg", t = 1 / 33},
            {s = path .. "clipout.ogg", t = 4 / 33},
            {s = path .. "clipin.ogg", t = 32 / 33},
        },
	},
	["reload_2mag"] = {
		Source = "reload_bothmag",
		Mult = 0.9,
        EventTable = {
			{s = path .. "handle.ogg", t = 1 / 33},
            {s = path .. "clipout.ogg", t = 4 / 33},
            {s = path .. "clipin.ogg", t = 32 / 33},
            {s = path .. "clipout.ogg", t = 57 / 33},
			{s = path .. "clipin.ogg", t = 91 / 33},
        },
	},
}

SWEP.SuppressCumulativeShoot = true
SWEP.SuppressDefaultEvents = true

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {
	["dualmag"] = {
		Bodygroups = {
			{2,1}
		},
	},
}

SWEP.Attachments = {

	{
		PrintName = "Magazine",
		Bone = "nailgun_body",
		Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Category = {"q4nailgun_mag"}
	},

}