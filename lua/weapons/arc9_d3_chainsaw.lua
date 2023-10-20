AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = false
SWEP.Category = "ARC9 - id Tech 4"
SWEP.SubCategory = "Doom 3"

SWEP.PrintName = "Chainsaw"

SWEP.Class = "Woodcutting device"

SWEP.Trivia = {
    Manufacturer = "Homeland Tools",
    Mechanism = "Rotating chain",
    Year = "idk when were chainsaws invented"
}

SWEP.Credits = {
    Author = "speedonerd",
    Assets = "id Software, originally ported by Upset, c_hands by Seaal Mid",
}

SWEP.Description = [[Homeland Tools Chainsaw
Gas-powered chainsaw that was mistakenly delivered to Mars City in a shipping mixup. Regardless, if any horrible crisis occurs (like a demonic invasion from Hell), Marine HQ believes this could be a viable last-resort weapon, so we're keeping it in the barracks just in case.]]

SWEP.ViewModel = "models/weapons/doom3/c_chainsaw.mdl"
SWEP.WorldModel = ""

SWEP.Slot = 0

SWEP.MirrorVMWM = false

SWEP.NoTPIKVMPos = true

SWEP.Crosshair = true

SWEP.DefaultBodygroups = "0000000000000000000000"

SWEP.ShootWhileSprint = true

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 50 -- Damage done at point blank range
SWEP.DamageMin = 50 -- Damage done at maximum range

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
SWEP.PreBashTime = 0
SWEP.PostBashTime = 0.1
SWEP.BashDamageType = DMG_SLASH

SWEP.Bash2 = false
SWEP.SecondaryBash = false

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

SWEP.RPM = 600

SWEP.Firemodes = {
    {
        Mode = -1,
        PrintName = "GRINDA"
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

SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.5

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

SWEP.HoldType = "shotgun"
SWEP.HoldTypeSprint = "shotgun"
SWEP.HoldTypeHolstered = "normal"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "fist"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
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

local path = "weapons/doom3/chainsaw/"

local gore = {
	path .. "hit_00.wav",
	path .. "hit_01.wav",
	path .. "hit_02.wav",
	path .. "hit_03.wav",
	path .. "hit_04.wav",
	path .. "hit_05.wav",
	path .. "hit_06.wav",
	path .. "hit_07.wav",
	path .. "hit_08.wav",
	path .. "hit_09.wav",
}

local earrape = {
	path .. "hit_metal_01.wav",
	path .. "hit_metal_02.wav",
	path .. "hit_metal_03.wav",
	path .. "hit_metal_04.wav",
}

SWEP.MeleeSwingSound = path .. "attack.wav"
SWEP.MeleeMissSound = earrape
SWEP.MeleeHitSound = gore
SWEP.MeleeHitNPCSound = gore

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
		EventTable = {
			--{s = path .. "idle.wav", t = 0},
		},
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s = path .. "pull_zip.wav", t = 0},
            {s = path .. "pull.wav", t = 1 / 33},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "put_away.wav", t = 0},
        },
    },
	["bash"] = {
		Source = "attack",
	},
	["trigger"] = {
		Source = "attackstart",
		EventTable = {
			{s = path .. "start_attack.wav", t = 0},
		},
	}
}

SWEP.SuppressCumulativeShoot = true
SWEP.SuppressDefaultEvents = true

-------------------------- ATTACHMENTS

SWEP.Attachments = {

}