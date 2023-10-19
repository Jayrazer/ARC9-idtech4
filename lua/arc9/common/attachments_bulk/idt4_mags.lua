local ATT = {}

ATT = {}

ATT.PrintName = [[Rhino Shotgun Detachable Box Magazine]]
ATT.CompactName = [[MAGFED]]
//ATT.Icon = Material()
ATT.Description = [[Detachable box magazine for the Rhino Shotgun, extending the weapon's capacity and speeding up reload times.]]
ATT.SortOrder = 0
ATT.Free = false

ATT.Category = {"q4shotgun_mag"}
ATT.ActivateElements = {"mag"}

ATT.ClipSizeMult = 1.25
ATT.ShotgunReload = false

ARC9.LoadAttachment(ATT, "q4_shotgun_mag")

-----

ATT = {}

ATT.PrintName = [[AR-25 Extended Magazine]]
ATT.CompactName = [[EXTMAG]]
//ATT.Icon = Material()
ATT.Description = [[Expanded capacity magazine for extra suppressive fire, though the ammunition is slightly weaker.]]
ATT.SortOrder = 0
ATT.Free = false

ATT.Category = {"q4mg_mag"}

ATT.ClipSizeMult = 2
ATT.DamageMaxMult = 0.66
ATT.DamageMaxMultSights = 0.66
ATT.DamageMinMult = 0.66
ATT.DamageMinMultSights = 0.66

ARC9.LoadAttachment(ATT, "q4_mg_extmag")