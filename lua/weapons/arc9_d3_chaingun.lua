AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - id Tech 4"
SWEP.SubCategory = "Doom 3"

SWEP.PrintName = "Chaingun"

SWEP.Class = "Machine Gun"

SWEP.Trivia = {
    Manufacturer = "UAC Advanced Weapon Labs",
    Calibre = ".30 Cal AP",
    Mechanism = "Electronically-Operated Rotating Barrels",
    Year = "2142"
}

SWEP.Credits = {
    Author = "speedonerd",
    Assets = "id Software, originally ported by Upset, c_hands by Seaal Mid",
}

SWEP.Description = [[UAC Mach-2 Chain Gun
Experimental man-portable autocannon. Designed to provide maximum suppressive fire and able to pierce armored targets with its powerful .30 caliber bullets. It's earned the nickname "Saw" thanks to its ability to literally cut targets in half.]]

SWEP.ViewModel = "models/weapons/doom3/c_chaingun.mdl"
SWEP.WorldModel = "models/weapons/doom3/w_chaingun.mdl"

SWEP.Slot = 3

SWEP.MirrorVMWM = false

SWEP.NoTPIKVMPos = true

SWEP.Crosshair = true

SWEP.DefaultBodygroups = "0000000000000000000000"

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 25 -- Damage done at point blank range
SWEP.DamageMin = 25 -- Damage done at maximum range

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

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 60 -- Self-explanatory.
SWEP.SupplyLimit = 3 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

SWEP.AutoReload = true

-------------------------- FIREMODES

SWEP.RPM = 540

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

SWEP.Spread = 0.05

-------------------------- HANDLING

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.

SWEP.Sway = 0 -- How much the gun sways.

SWEP.SwayMultMidAir = 4
SWEP.SwayMultMove = 1.75
SWEP.SwayMultCrouch = 0.25
SWEP.SwayMultShooting = 1.5

SWEP.FreeAimRadiusMultSights = 0

SWEP.SwayMultSights = 0.3

SWEP.TriggerDelay = true
SWEP.TriggerDelayTime = 0.55
SWEP.TriggerDelayCancellable = true

SWEP.AimDownSightsTime = 0.35 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.1 -- How long it takes to go from sprinting to being able to fire.

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

SWEP.ViewModelFOVBase = 80
SWEP.ActivePos = Vector(0.55, 0, -0.5)
SWEP.ActiveAng = Angle(3, 6, 0)

SWEP.CrouchPos = Vector(1, 3, -0.5)
SWEP.CrouchAng = Angle(5, 6, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(9, 27, 6)
SWEP.CustomizeSnapshotFOV = 100

SWEP.BipodPos = Vector(0, 0, 0)

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
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

local path = "weapons/doom3/chaingun/"

SWEP.ShootSound = {
    path .. "chaingun_shot_1.wav",
    path .. "chaingun_shot_2.wav",
    path .. "chaingun_shot_3.wav",
    path .. "chaingun_shot_4.wav",
}
SWEP.DistantShootSound = path .. ""
SWEP.ShootSoundSilenced = path .. ""
SWEP.DryFireSound = dryfiresound

SWEP.DryFireSingleAction = true


SWEP.Animations = {
    ["idle"] = {
        Source = "idle"
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
			{s = path .. "cg_use_01.wav", t = 0},
        }
    },
	["fire"] = {
		Source = "fire_new",
		Mult = 0.85,
        EventTable = {
			{},
        },
	},
	["reload"] = {
		Source = "reload",
        EventTable = {
            {s = path .. "cg_reload_twist_01.wav", t = 1 / 33}
        },
	},
    ["dryfire"] = {
        Source = "noammo"
    },
	["trigger"] = {
		Source = "windup",
		Mult = 1.2,
		EventTable = {
			{s = path .. "cg_windup_mix_01.wav", t = 0},
		},
	},
	["untrigger"] = {
		Source = "winddown_new",
		EventTable = {
			{s = path .. "cg_winddown_mix_01.wav", t = 0},
		},
	},
}

SWEP.SuppressCumulativeShoot = true
SWEP.SuppressDefaultEvents = true

-------------------------- ATTACHMENTS

SWEP.Attachments = {

}