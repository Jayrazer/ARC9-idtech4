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

ATT.PrintName = [[Overpenetration Round]]
ATT.CompactName = [[OVRPEN]]
//ATT.Icon = Material()
ATT.Description = [[Oversized railgun slug with nearly triple the mass of the standard, allowing the round to overpenetrate and hit multiple targets. As a result of the overpenetration, the round does less damage overall.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 1
ATT.Free = false

ATT.Category = {"q4_rg_ammo"}
ATT.Penetration = 200
ATT.DamageMaxMult = 0.75
ATT.DamageMinMult = 0.75


ARC9.LoadAttachment(ATT, "idt4_ammo_overpen")