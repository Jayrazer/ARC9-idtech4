AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - id Tech 4"
SWEP.SubCategory = "Doom 3"

SWEP.PrintName = "UAC Rocket Launcher"

SWEP.Class = "Explosives Launhcer"

SWEP.Trivia = {
    Manufacturer = "UAC Advanced Weapon Labs",
    Calibre = "40mm Rockets",
    Mechanism = "Recoilless Round, Electronic Feed",
    Year = "2144"
}

SWEP.Credits = {
    Author = "speedonerd",
    Assets = "id Software, originally ported by Upset, c_hands by Seaal Mid",
}

SWEP.Description = [[UAC MANPRL
Experimental multi-shot rocket launcher developed for use within UAC Marine Heavy Weapon Squads.  The 5-shot clip allows the user to fire a volley of destructive rockets quickly.]]

SWEP.ViewModel = "models/weapons/doom3/c_rocketl.mdl"
SWEP.WorldModel = "models/weapons/doom3/w_rocketlauncher.mdl"

SWEP.Slot = 4

SWEP.MirrorVMWM = false

SWEP.NoTPIKVMPos = true

SWEP.Crosshair = true
SWEP.ForceStandardCrosshair = true	

SWEP.DefaultBodygroups = "0000000000000000000000"

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 15 -- Damage done at point blank range
SWEP.DamageMin = 15 -- Damage done at maximum range

SWEP.Num = 1

SWEP.DistributeDamage = true

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 1700 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 4200 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 1 -- Units of wood that can be penetrated by this gun.
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

SWEP.ShootEnt = "arc9_idt4_doom3_rocket" -- Set to an entity to launch it out of this weapon.
SWEP.ShootEntForce = 900
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

SWEP.Ammo = "RPG_Round" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 5 -- Self-explanatory.
SWEP.SupplyLimit = 5 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

SWEP.AutoReload = true

-------------------------- FIREMODES

SWEP.RPM = 60

SWEP.Firemodes = {
    {
        Mode = -1,
        PrintName = "Continuous"
    }
}

SWEP.ManualAction = false
SWEP.ShotgunReload = false

SWEP.BarrelLength = 24

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 0.85

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

SWEP.SpeedMult = 0.85
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

SWEP.ViewModelFOVBase = 80
SWEP.ActivePos = Vector(1, 1, -0.5)
SWEP.ActiveAng = Angle(5, 5, 0)

SWEP.CrouchPos = Vector(1, 1, -0.5)
SWEP.CrouchAng = Angle(5, 5, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(9, 27, 6)
SWEP.CustomizeSnapshotFOV = 100

SWEP.BipodPos = Vector(0, 0, 0)

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_SMG1
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_pistol" -- Used for some muzzle effects.

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

local path = "weapons/doom3/rocket/"

SWEP.ShootSound = {
    path .. "rocket_launcher_blast_1.wav",
    path .. "rocket_launcher_blast_2.wav",
    path .. "rocket_launcher_blast_3.wav",
    path .. "rocket_launcher_blast_4.wav",
}
SWEP.DistantShootSound = path .. ""
SWEP.ShootSoundSilenced = path .. ""
SWEP.DryFireSound = dryfiresound

SWEP.DryFireSingleAction = true


SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s = path .. "raise.wav", t = 0}
        }
    },
	["fire"] = {
		Source = "fire",
	},
	["reload"] = {
		Source = "reload",
		Mult = 1.1,
        EventTable = {
            {s = path .. "rocket_launcher_reload.wav", t = 2 / 33},
        },
	},
}

SWEP.SuppressCumulativeShoot = true
SWEP.SuppressDefaultEvents = true

-------------------------- ATTACHMENTS

SWEP.Attachments = {

}