AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - id Tech 4"
SWEP.SubCategory = "Doom 3"

SWEP.PrintName = "UAC Shotgun"

SWEP.Class = "Shotgun"

SWEP.Trivia = {
    Manufacturer = "Vulcan Arms",
    Calibre = "12 Gauge",
    Mechanism = "Pump Action",
    Year = "2104"
}

SWEP.Credits = {
    Author = "speedonerd",
    Assets = "id Software, originally ported by Upset, c_hands by Seaal Mid",
}

SWEP.Description = [[Vulcan 920 Combat Shotgun
Standard-issue combat shotgun for UAC Marines. While pump-action shotguns may be archaic, they're still powerful and reliable which has allowed them to remain popular for over 200 years. While it sports high capacity in a compact form factor, it's oft-maligned by its users due to its wide spread.]]

SWEP.ViewModel = "models/weapons/doom3/c_shotgun.mdl"
SWEP.WorldModel = ""

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-8, 4, -6),
    TPIKPos = Vector(-15, 3, 3),
    Ang = Angle(-10, 0, 180),
    Scale = 0.75
}
SWEP.NoTPIKVMPos = true

SWEP.Crosshair = true

SWEP.DefaultBodygroups = "0000000000000000000000"

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 195 // 15 damage per pellet. This is genuinely the damage output of the D3 shotgun, no wonder they made the spread so ludicrous.
SWEP.DamageMin = 195

SWEP.Num = 13

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

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1410.76 * 12
SWEP.PhysBulletGravity = 2
SWEP.PhysBulletDrag = 3

-------------------------- MAGAZINE

SWEP.Ammo = "buckshot" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 8 -- Self-explanatory.
SWEP.SupplyLimit = 4 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

SWEP.AutoReload = true

-------------------------- FIREMODES

SWEP.RPM = 45

SWEP.Firemodes = {
    {
        Mode = -1,
        PrintName = "Pump Action"
    }
}

SWEP.ManualAction = false
SWEP.ShotgunReload = true

SWEP.BarrelLength = 24

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1

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

SWEP.RecoilKick = 1

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

SWEP.Spread = 0.15 // not accurate to D3 but 22 degrees horizontal (1320 MOA!!!!) is retarded bite me purists

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
SWEP.SprintToFireTime = 0.2 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 1
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 1
SWEP.SpeedMultCrouch = 1

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.SprintAng = Angle(5, -10, 0)
SWEP.SprintPos = Vector(0, 1, 0)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(1, 4, -1)
SWEP.ActiveAng = Angle(5, 6, 0)

SWEP.CrouchPos = Vector(1, 4, -1)
SWEP.CrouchAng = Angle(5, 6, 0)

SWEP.CustomizeAng = Angle(90, 5, 7)
SWEP.CustomizePos = Vector(13, 27, 5)
SWEP.CustomizeSnapshotFOV = 100

SWEP.BipodPos = Vector(0, 0, 0)

-------------------------- HoldTypes

SWEP.HoldType = "shotgun"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeHolstered = "normal"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_shotgun" -- Used for some muzzle effects.

SWEP.ShellEffect = "nil"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.EjectDelay = 0
SWEP.CaseEffectQCA = 1

SWEP.AfterShotParticle = "barrel_smoke_plume"

SWEP.CamQCA = 1
SWEP.CamQCA_Mult = 0.1
SWEP.CamCoolView = true

-------------------------- SOUNDS

local path = "weapons/doom3/shotgun/"

local shellinsert = {
    path .. "reload/sgreload_addshell_01.wav",
    path .. "reload/sgreload_addshell_02.wav",
    path .. "reload/sgreload_addshell_03.wav",
    path .. "reload/sgreload_addshell_04.wav",
}

SWEP.ShootSound = {
    path .. "fire/sgfire_01.wav",
    path .. "fire/sgfire_02.wav",
    path .. "fire/sgfire_03.wav",
}
SWEP.DistantShootSound = path .. ""
SWEP.ShootSoundSilenced = path .. ""
SWEP.DryFireSound = path .. ""

SWEP.DryFireSingleAction = true


SWEP.Animations = {
    ["draw"] = {
        Source = "draw",
        Time = 0.85,
        EventTable = {
            {s = path .. "shotgun_use_01.wav", t = 0},
        }
    },
	["fire"] = {
		Source = {"fire1", "fire2", "fire3"},
        EventTable = {
            {s = path .. "shotgun_cock_01.wav", t = 11 / 33},
        },
	},
	["reload_start"] = {
		Source = "reloadstart",
        EventTable = {
            {s = path .. "reload/sgreload_start_03.wav", t = 0},
        },
	},
	["reload_insert"] = {
		Source = {"reload1", "reload2", "reload3"},
		RestoreAmmo = 1,
        EventTable = {
            {s = shellinsert, t = 8 / 33}
        }
	},
	["reload_finish"] = {
		Source = "reloadend",
        EventTable = {
            {s = path .. "shotgun_cock_01.wav", t = 10 / 33},
        },
	},
}

SWEP.SuppressCumulativeShoot = true
SWEP.SuppressDefaultEvents = true

-------------------------- ATTACHMENTS

SWEP.Attachments = {

}