AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = false
SWEP.Category = "ARC9 - id Tech 4"
SWEP.SubCategory = "Quake 4"

SWEP.PrintName = "Rhino Machinegun"

SWEP.Class = "Assault Rifle"

SWEP.Trivia = {
    Manufacturer = "Homeland Armaments",
    Calibre = "7.62x51mm",
    Mechanism = "Gas-Operated Blowback",
    Year = "2074"
}

SWEP.Credits = {
    Author = "speedonerd",
    Assets = "id Software, originally ported by Upset, c_hands by speedonerd",
}

SWEP.Description = [[AR-25 Assault Rifle
Standard-issue infantry automatic weapon for SMC Marine forces. The weapon features an integral low-power gunsight and a dual-mode trigger that allows for a powerful semi-auto shot when scoped.]]

SWEP.ViewModel = "models/weapons/quake4/c_q4_machinegun.mdl"
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

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1410.76 * 12
SWEP.PhysBulletGravity = 2
SWEP.PhysBulletDrag = 3

-------------------------- MAGAZINE

SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 40 -- Self-explanatory.
SWEP.SupplyLimit = 5 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

SWEP.AutoReload = true

-------------------------- FIREMODES

SWEP.RPM = 600

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

SWEP.Spread = 0.03

-------------------------- HANDLING

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.

SWEP.Sway = 0 -- How much the gun sways.

SWEP.SwayMultMidAir = 4
SWEP.SwayMultMove = 1.75
SWEP.SwayMultCrouch = 0.25
SWEP.SwayMultShooting = 1.5

SWEP.FreeAimRadiusMultSights = 0

SWEP.SwayMultSights = 0.3

SWEP.AimDownSightsTime = 0.1 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.1 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 1
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 1
SWEP.SpeedMultCrouch = 1

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(0, 0, 0),
    Ang = Angle(0, 0, 0),
    Magnification = 2,
    AssociatedSlot = 0, -- Attachment slot to associate the sights with. Causes RT scopes to render.
    CrosshairInSights = false,
    Blur = false, -- If arc9_fx_adsblur 1 then blur gun in that ironsights. Disable if your "ironsights" are not real ironsights
    ---- FLAT SCOPES
    -- These don't look very good; please use actual RT scopes if possible.
    FlatScope = true,
    FlatScopeOverlay = nil, -- Material()
    FlatScopeKeepVM = false,
    FlatScopeBlackBox = false,
    FlatScopeCC = nil -- Color correction table, see default.lua
}

SWEP.HasSights = true

SWEP.SprintAng = Angle(5, -15, 0)
SWEP.SprintPos = Vector(1, 1, 0)

SWEP.ViewModelFOVBase = 80
SWEP.ActivePos = Vector(1, -1, -0.5)
SWEP.ActiveAng = Angle(3, 3, 0)

SWEP.CrouchPos = Vector(1, 3, -0.5)
SWEP.CrouchAng = Angle(5, 6, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(9, 27, 6)
SWEP.CustomizeSnapshotFOV = 100

SWEP.BipodPos = Vector(0, 0, 0)

-------------------------- HoldTypes

SWEP.HoldType = "smg"
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

SWEP.MuzzleParticle = "muzzleflash_smg" -- Used for some muzzle effects.

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

local path = "weapons/quake4/machinegun/"

SWEP.ShootSound = {
    path .. "player_fire0.ogg",
    path .. "player_fire1.ogg",
}
SWEP.DistantShootSound = path .. ""
SWEP.ShootSoundSilenced = path .. ""
SWEP.DryFireSound = path .. "dry_fire.ogg"

SWEP.DryFireSingleAction = true


SWEP.Animations = {
    ["idle"] = {
        Source = "idle"
    },
	["holster"] = {
		Source = "lower"
	},
    ["draw"] = {
        Source = "raise",
        EventTable = {
			{s = path .. "draw.ogg", t = 3 / 33},
        },
    },
	["fire"] = {
		Source = "fire",
        EventTable = {
        },
	},
	["reload"] = {
		Source = "reload",
        Mult = 1.05,
        EventTable = {
            {s = path .. "reload.ogg", t = 1 / 33}
        },
	},
    ["dryfire"] = {
        Source = "noammo"
    }
}

SWEP.SuppressCumulativeShoot = true
SWEP.SuppressDefaultEvents = true

-------------------------- ATTACHMENTS

SWEP.Attachments = {

}