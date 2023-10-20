AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - id Tech 4"
SWEP.SubCategory = "Doom 3"

SWEP.PrintName = "Fists"

SWEP.Class = "why did you open the cust menu whats the point"

SWEP.Trivia = {
    Manufacturer = "Your mother",
    Mechanism = "High-intensity muscular actuation",
    Year = "Your year of birth"
}

SWEP.Credits = {
    Author = "speedonerd",
    Assets = "id Software, originally ported by Upset, c_hands by Seaal Mid",
}

SWEP.Description = [[Fists
If you're ever stuck without a weapon, just remember you were born with two of them permanently attatched to the ends of your arms.]]

SWEP.ViewModel = "models/weapons/doom3/c_fists.mdl"
SWEP.WorldModel = ""

SWEP.Slot = 0

SWEP.MirrorVMWM = false

SWEP.NoTPIKVMPos = true

SWEP.Crosshair = true

SWEP.DefaultBodygroups = "0000000000000000000000"

SWEP.ShootWhileSprint = true

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 20 -- Damage done at point blank range
SWEP.DamageMin = 20 -- Damage done at maximum range

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

SWEP.Ammo = "" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = -1 -- Self-explanatory.
SWEP.SupplyLimit = 0 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

SWEP.AutoReload = true

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = true

SWEP.BashDamage = 20
SWEP.BashLungeRange = 50
SWEP.BashRange = 40
SWEP.PreBashTime = 0.1
SWEP.PostBashTime = 0.25
SWEP.BashDamageType = DMG_CLUB

SWEP.Bash2 = true
SWEP.SecondaryBash = true

SWEP.Bash2Damage = 40
SWEP.Bash2LungeRange = 50
SWEP.Bash2Range = 40
SWEP.PreBash2Time = 0.15
SWEP.PostBash2Time = 0.5
SWEP.Bash2DamageType = DMG_CLUB

SWEP.Backstab = false
SWEP.BackstabDamage = 150
SWEP.BackstabRange = 24
SWEP.PreBackstabTime = 0.25
SWEP.PostBackstabTime = 0.5
SWEP.BackstabDamageType = DMG_CLUB

-------------------------- FIREMODES

SWEP.RPM = 87

SWEP.Firemodes = {
    {
        Mode = -1,
        PrintName = "ATTACKA"
    }
}

SWEP.ManualAction = false
SWEP.ShotgunReload = false

SWEP.BarrelLength = 0

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
SWEP.ActivePos = Vector(1, 1, -0.5)
SWEP.ActiveAng = Angle(5, 5, 0)

SWEP.CrouchPos = Vector(1, 1, -0.5)
SWEP.CrouchAng = Angle(5, 5, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(9, 27, 6)
SWEP.CustomizeSnapshotFOV = 100

SWEP.BipodPos = Vector(0, 0, 0)

-------------------------- HoldTypes

SWEP.HoldType = "fist"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeHolstered = "normal"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "fist"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_KNIFE
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_KNIFE
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = nil -- Used for some muzzle effects.

SWEP.ShellEffect = "nil"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.EjectDelay = 0
SWEP.CaseEffectQCA = nil

SWEP.AfterShotParticle = nil

SWEP.CamQCA = 1
SWEP.CamQCA_Mult = 0.1
SWEP.CamCoolView = true

-------------------------- SOUNDS

local path = "weapons/doom3/fists/"

local woosh = {
	path .. "punch/whoosh_01.wav",
	path .. "punch/whoosh_02.wav",
	path .. "punch/whoosh_03.wav",
	path .. "punch/whoosh_04.wav",
}

local bap = {
	path .. "default_punch_01.wav",
	path .. "default_punch_02.wav",
	path .. "default_punch_03.wav",
	path .. "default_punch_04.wav",
}

local smacka = {
	path .. "impact_02.wav",
	path .. "impact_03.wav",
	path .. "impact_04.wav",
}

SWEP.MeleeSwingSound = woosh
SWEP.MeleeMissSound = woosh
SWEP.MeleeHitSound = smacka
SWEP.MeleeHitNPCSound = smacka

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s = path .. "raise_fists_01.wav", t = 0},
        },
    },
	["bash"] = {
		Source = {"fire", "fire1"},
	},
	["bash2"] = {
		Mult = 1.2,
		Source = {"fire3", "fire4"},
	},
}

SWEP.SuppressCumulativeShoot = true
SWEP.SuppressDefaultEvents = true

-------------------------- ATTACHMENTS

SWEP.Attachments = {

}