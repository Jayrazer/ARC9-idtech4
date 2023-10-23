local ATT = {}

ATT = {}

ATT.PrintName = [[Titanium Slug Round]]
ATT.CompactName = [[SLUG]]
//ATT.Icon = Material()
ATT.Description = [[Shotgun shells loaded with a single large round, improving long-range accuracy at the expense of close-range power.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1
ATT.Free = false

ATT.Category = {"idt4_ammo_shotgun"}
ATT.Num = 1
ATT.DamageMaxMult = 0.3
ATT.DamageMinMult = 0.3
ATT.SpreadMult = 0


ARC9.LoadAttachment(ATT, "idt4_ammo_slug")

-----

ATT = {}

ATT.PrintName = [[Quad Threat Round]]
ATT.CompactName = [[QUAD]]
//ATT.Icon = Material()
ATT.Description = [[Shotgun shells loaded with four magnum buckshot pellets with a tight spread, improving medium-range effectiveness.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1
ATT.Free = false

ATT.Category = {"idt4_ammo_shotgun"}
ATT.Num = 4
ATT.DamageMaxMult = 0.5
ATT.DamageMinMult = 0.5
ATT.SpreadMult = 0.35


ARC9.LoadAttachment(ATT, "idt4_ammo_quad")

-----

ATT = {}

ATT.PrintName = [[Overpenetration Mod]]
ATT.CompactName = [[OVRPEN]]
//ATT.Icon = Material()
ATT.Description = [[Modified accelerator magnet that triples the velocity of the slug, allowing it to overpenetrate and potentially hit multiple targets. As a result of the overpenetration, the slugs do less damage overall.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1
ATT.Free = false
ATT.ActivateElements = {"mod"}

ATT.Category = {"q4_rg_ammo"}
ATT.Penetration = 200
ATT.DamageMaxMult = 0.75
ATT.DamageMinMult = 0.75


ARC9.LoadAttachment(ATT, "idt4_ammo_overpen")

-----

ATT = {}

ATT.PrintName = [[gangster sounds]]
ATT.CompactName = [[gangter]]
//ATT.Icon = Material()
ATT.Description = [[gangtser sounds fuck tha polic ecomming straight from the undergroun
(Switches firing sound to NPC firing sounds)]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1
ATT.Free = false

ATT.CustomPros = {
    ["swag level"] = "+10000000000%",
}

ATT.Category = {"d3_pistol_gangster"}

local path = "weapons/doom3/pistol/fire/fire_"

ATT.ShootSound = {
	path .. "01.wav",
	path .. "02.wav",
	path .. "03.wav",
	path .. "04.wav",
	path .. "05.wav",
}

ARC9.LoadAttachment(ATT, "idt4_ammo_gangster")

-----

ATT = {}

ATT.PrintName = [[Hyperblaster Bounce Shot Upgrade]]
ATT.CompactName = [[BNCE]]
//ATT.Icon = Material()
ATT.Description = [[Specialized battery pack that alters the molecular structure of the fired plasma projectiles, allowing them to bounce off walls a single time. Useful for hitting enemies hidding in cover or around corners.]]
ATT.SortOrder = 0
ATT.Free = false

ATT.CustomPros = {
    ["Projectiles ricochet"] = "",
}

ATT.CustomCons = {
	["Weaker projectiles"] = "",
}

ATT.Category = {"q4_hb_bouncy"}

ATT.RecoilOverride = 0 -- disable recoil to make bounces as predictable as possible
ATT.ShootEnt = "arc9_idt4_hyperblaster_bounceshot"
ATT.ActivateElements = {"bouncycastle"}

ARC9.LoadAttachment(ATT, "q4_hb_bouncycastle")