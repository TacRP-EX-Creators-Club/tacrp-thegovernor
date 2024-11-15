SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "USP \"The Governor\""
SWEP.AbbrevName = "The Governor"
SWEP.Category = "Tactical RP (Bonus)"

SWEP.SubCatTier = "0Exotic"
SWEP.SubCatType = "1Pistol"

SWEP.Description = "USP Elite decked out with competition parts and chambered in .45 Super for extra firepower. Superb performance at range, but not steady while moving."
SWEP.Description_Quote = "\"Loud enough to knock you down.\""

SWEP.Trivia_Caliber = ".45 Super"
SWEP.Trivia_Manufacturer = "Heckler & Koch"
SWEP.Trivia_Year = "1993"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = [[
Custom built by speedonerd for Valence
Original model: Thanez, Racer445, fxdarkloki
Additional assets: Battlestate Games, Crytek
Sound: Vunsunta, BlitzBoaR
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_usp_valencespecial.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_usp_valencespecial.mdl"

SWEP.Slot = 1


SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 35,
        Damage_Min = 12,

        ShootTimeMult = 0.75,

        RPM = 330,
        HipFireSpreadPenalty = 0.015,
        MoveSpreadPenalty = 0.02,
    },
    [TacRP.BALANCE_TTT] = {
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Pistol

// "ballistics"

SWEP.Damage_Max = 38
SWEP.Damage_Min = 15
SWEP.Range_Min = 400 // distance for which to maintain maximum damage
SWEP.Range_Max = 3000 // distance at which we drop to minimum damage
SWEP.Penetration = 7 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.8
SWEP.ArmorBonus = 1

SWEP.MuzzleVelocity = 17000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 4,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 400
SWEP.RPMMultSemi = 0.75

SWEP.Spread = 0.002
SWEP.RecoilSpreadPenalty = 0.006
SWEP.HipFireSpreadPenalty = 0.012
SWEP.MoveSpreadPenalty = 0.025

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 5
SWEP.RecoilResetTime = 0.01
SWEP.RecoilDissipationRate = 15
SWEP.RecoilFirstShotMult = 0.7

SWEP.RecoilVisualKick = 1.5
SWEP.RecoilKick = 5
SWEP.RecoilStability = 0.75

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.975
SWEP.ShootingSpeedMult = 0.8
SWEP.SightedSpeedMult = 0.8

SWEP.ReloadSpeedMult = 0.75

SWEP.AimDownSightsTime = 0.25
SWEP.SprintToFireTime = 0.25

SWEP.Sway = 0.5
SWEP.ScopedSway = 0.3

SWEP.FreeAimMaxAngle = 2.5

// hold types

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -2, -5)

SWEP.BlindFireSuicideAng = Angle(-125, 0, 45)
SWEP.BlindFireSuicidePos = Vector(25, 12, -6)

SWEP.SprintAng = Angle(0, 30, 0)
SWEP.SprintPos = Vector(2, 0, -12)

SWEP.SightAng = Angle(0.08, -0.5, 0)
SWEP.SightPos = Vector(-3.45, 0.2, -3.3)

SWEP.CorrectivePos = Vector(0, 0, 0)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

// reload

SWEP.ClipSize = 14
SWEP.Ammo = "pistol"
SWEP.Ammo_Expanded = "ti_pistol_heavy"

SWEP.ReloadTimeMult = 1.25

SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/usp_valencespecial.mdl"
SWEP.DropMagazineImpact = "pistol"

SWEP.ReloadUpInTime = 0.85

// sounds

local path = "tacrp_extras/usp/"
local path1 = "tacint_shark/usp_valencespecial/usp_special_"

SWEP.Sound_Shoot = "^" .. path1 .. "unsil-1.wav"
SWEP.Sound_Shoot_Silenced = path1 .. "sil.wav"

SWEP.Vol_Shoot = 110
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 4

SWEP.MuzzleEffect = "muzzleflash_pistol_deagle"
SWEP.EjectEffect = 1

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["fire_iron"] = "new_shoot1",
    ["fire"] = "new_shoot1", // {"shoot1", "shoot2", "shoot3"},
    ["lastshot"] = "new_lastshot",
    ["blind_fire"] = {"blind_shoot1", "blind_shoot2", "blind_shoot3"},
    ["melee"] = {"melee1", "melee2"}
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.5, -0.6),
    vm_ang = Angle(0, 2, 0),
    t = 0.2,
    tmax = 0.2,
    bones = {
        {
            bone = "ValveBiped.slide",
            pos = Vector(0, 0, -3),
            t0 = 0,
            t1 = 0.1,
        },
        {
            bone = "ValveBiped.hammer",
            ang = Angle(-15, 0, 0),
            t0 = 0,
            t1 = 0.15,
        },
        {
            bone = "ValveBiped.Bip01_R_Finger1",
            ang = Angle(0, -15, 0),
            t0 = 0,
            t1 = 0.2,
        },
        {
            bone = "ValveBiped.Bip01_R_Finger11",
            ang = Angle(-35, 0, 0),
            t0 = 0,
            t1 = 0.15,
        },
    },
}

SWEP.NoIdle = false

SWEP.ShootTimeMult = 0.6

SWEP.LastShot = true

// attachments

SWEP.AttachmentElements = {
    ["optic"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = "optic_pistol",
        Bone = "ValveBiped.slide",
        WMBone = "Box01",
        InstalledElements = {"optic"},
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 1,
        WMScale = 1.2,
        Pos_VM = Vector(0.035, 0.8, -0.32),
        Ang_VM = Angle(0, 90, 180),
        Pos_WM = Vector(0, -1, -0.8),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = {"silencer"},
        Bone = "ValveBiped.barrel_assembly",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/silencer_on.wav",
        DetachSound = "tacrp/weapons/silencer_off.wav",
        VMScale = 0.6,
        WMScale = 0.5,
        Pos_VM = Vector(-0.63, 0.41, 8.2),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 8.5, -1.5),
        Ang_WM = Angle(0, -90, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "ValveBiped.p2000_rootbone",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        VMScale = 1,
        WMScale = 1.3,
        Pos_VM = Vector(-1.7, 0, 6.5),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(0, 5, -3),
        Ang_WM = Angle(0, -90, 180),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_extmag_pistol", "acc_holster", "acc_brace"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Trigger",
        Category = {"trigger_semi"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = "ammo_pistol",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [8] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
}

--[[]
local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_extras_usp.clip_in", path .. "clipin.wav")
addsound("tacint_extras_usp.clip_in-mid", path .. "clipin.wav")
addsound("tacint_extras_usp.clip_out", path .. "clipout.wav")

addsound("tacint_extras_usp.slide_action", path .. "SlideBack.wav")

addsound("tacint_extras_usp.slide_open", path .. "magshove.mp3")
addsound("tacint_extras_usp.slide_shut", path .. "boltrelease.wav")
]]