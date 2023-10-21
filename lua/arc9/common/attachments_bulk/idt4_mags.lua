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
ATT.DamageMaxMult = 0.67
ATT.DamageMaxMultSights = 0.67
ATT.DamageMinMult = 0.67
ATT.DamageMinMultSights = 0.67
ATT.ReloadTimeMult = 1.1

ARC9.LoadAttachment(ATT, "q4_mg_extmag")

-----

ATT = {}

ATT.PrintName = [[SMC Technician's Upgrade]]
ATT.CompactName = [[UPGD]]
//ATT.Icon = Material()
ATT.Description = [[Upgraded launcher with a three-round internal sub-magazine that can fire a quick burst of rockets before being reloaded. Also comes equipped with a short-range tracking device. The rockets fired are slightly weaker than the un-upgraded launcher.]]
ATT.SortOrder = 0
ATT.Free = false

ATT.CustomPros = {
    ["Three-rocket burst"] = "",
}

ATT.CustomCons = {
	["Direct Damage"] = "-50%",
	["Splash Damage"] = "-50%",
}

ATT.Category = {"q4_rl_upgd"}

ATT.ClipSizeOverride = 3
ATT.RPMMult = 4
ATT.ShotgunReload = true
ATT.ShootEnt = "arc9_idt4_quake4_rocket_burst"
ATT.ActivateElements = {"upgrade"}

ARC9.LoadAttachment(ATT, "q4_rl_uprade")

-----

ATT = {}

ATT.PrintName = [[Deckard Hair Trigger]]
ATT.CompactName = [[TRG]]
//ATT.Icon = Material()
ATT.Description = [[Lightweight trigger that increases RPM, but requires a deft hand to use to its full potential.]]
ATT.SortOrder = 0
ATT.Free = false

ATT.Category = {"d3_pistol_trigger"}

ATT.Firemodes = {
    { 
        Mode = 1,
		PrintName = "Semi"
    }
}

ATT.RPMMult = 2

ARC9.LoadAttachment(ATT, "d3_pistol_semi")

-----

ATT = {}

ATT.PrintName = [[Nailgun Dual Magazines]]
ATT.CompactName = [[DUALMAG]]
//ATT.Icon = Material()
ATT.Description = [[Reconfigured feed system that loads from two individual magazines, doubling the capacity and firerate at the cost of projectile velocity.]]
ATT.SortOrder = 0
ATT.Free = false
ATT.ActivateElements = {"dualmag"}

ATT.Category = {"q4nailgun_mag"}

ATT.CustomCons = {
	["Projectile Speed"] = "-25%",
}

ATT.ClipSizeMult = 2
ATT.RPMMult = 1.6
ATT.ShootEntForce = 1000

ARC9.LoadAttachment(ATT, "q4_nailgun_dualmag")