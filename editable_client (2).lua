local esxHas = GetResourceState('es_extended') == 'started'
local qbHas  = GetResourceState('qb-core') == 'started'
Locales = Locales or {}

Config = {
    Framework    = esxHas and 'esx' or qbHas and 'qb' or 'esx',
    TargetSystem = 'none',  -- 'auto', 'ox_target', 'qb-target', 'qtarget', 'none'
    Language     = 'en',   -- 'en' or 'es' (add more in locales/)
    Mysql        = 'oxmysql', -- 'oxmysql', 'mysql-async', or 'ghmattisql'

    -- ═══════ LUMBERJACK JOB ═══════
    VehicleSpawn  = vector4(-574.8746, 5253.0938, 70.4684, 339.9537), -- CHANGE to the actual truck spawn
    SawmillPoint  = vector4(-569.2208, 5273.2900, 69.2625, 520.4972), -- Sawmill conveyor belt
    PayPerLog     = 100,   -- $ per delivered log
    XpPerLog      = 25,    -- XP per delivered log (on job completion)

    -- ═══════ PAYMENT AND REWARDS ═══════
    PayAccount    = 'cash',   -- payment account: 'cash' (money) or 'bank' (bank account)
    MaxPayPerJob  = 100000,   -- safety cap per payment per player (anti-exploit)

    -- Items each group player receives on job COMPLETION.
    -- count  = fixed amount   |   perLog = amount × logs delivered
    -- Leave the table empty {} to give no items.
    RewardItems   = {
        -- { name = 'wood',  count  = 5 },
        -- { name = 'plank', perLog = 1 },
    },

    -- ═══════ JOB GATE (optional) ═══════
    SetJob = {
        enabled  = false,
        job_name = 'myjob',
    },

    -- ═══════ INTERACTION POINT ═══════
    start_job = {
        type = 'npc', -- 'npc' or 'marker'

        npc = {
            model  = 'a_m_m_hillbilly_01',
            coords = vector4(-567.6230, 5253.1758, 69.4874, 68.2908),
            anim   = { 'amb@world_human_smoking@male@male_a@base', 'base' },
            blip   = {
                enabled    = true,
                sprite     = 516,
                color      = 31,
                scale      = 0.8,
                shortRange = true,
                label      = 'Lumberjack Job'
            }
        },

        marker = {
            coords        = vector3(-567.6230, 5253.1758, 70.4874),
            type          = 2,
            color         = { r = 0, g = 150, b = 255 },
            draw_distance = 50.0
        }
    },

    -- ═══════ LEVEL SYSTEM ═══════
    XpPerLevel          = 500,  -- Base XP needed to level up
    XpIncrement         = 100,  -- Extra XP required each level
    PaymentBonusPerLevel = 50,  -- Extra $ per level added to payment

    -- ═══════ AXE UPGRADES ═══════
    -- lvlreq=0 → unlocked from the start (available at player level 1)
    -- lvlreq>0 → locks the ENTIRE upgrade until that player level is reached
    -- prices  → cost of each upgrade step
    -- bonuses → % bonus per level (first value is the level 1 base)
    --
    -- stepReq → (optional) player level required for EACH upgrade step.
    --           stepReq[1] = level to buy step 1, stepReq[2] for step 2, etc.
    --           0 = no requirement. Allows locking specific steps of an upgrade.
    --
    -- Trees always require HitsToFell hits to fall.
    --
    -- speed        → +% chopping animation speed
    -- aim          → +% circle size (easier to hit)
    -- yield        → +% money on job completion
    -- carry (Load) → bonuses = +% speed when picking up / loading logs
    --                carryCap = logs per trip (only 2 at the highest level)
    HitsToFell      = 5,     -- hits (clicks) to fell a tree
    ChopSwingTime   = 1200,  -- ms each hit lasts (block). LOWER = faster. The speed upgrade reduces this.
    ChopBaseSpeed   = 0.5,   -- VISUAL speed of the chopping animation (cosmetic only, does not affect game rhythm)
    ChopFirstPerson = true,  -- force first-person camera while chopping (restored when the tree falls or you walk away)

    AxeUpgrades = {
        speed = { lvlreq = 2, prices = { 2000, 3000, 4500, 6500 },  bonuses = { 5, 15, 30, 45, 60 }, stepReq = { 0, 2, 4, 8 } },
        aim   = { lvlreq = 3, prices = { 1800, 2800, 4000, 6000 },  bonuses = { 5, 12, 24, 38, 55 }, stepReq = { 3, 5, 7, 10 } },
        yield = { lvlreq = 4, prices = { 3000, 5000, 8000, 12000 }, bonuses = { 7, 15, 30, 50, 75 }, stepReq = { 4, 6, 8, 10 } },
        carry = { lvlreq = 0, prices = { 2500, 4000, 6000, 9000 },  bonuses = { 0, 15, 30, 45, 60 }, carryCap = { 1, 1, 1, 1, 2 }, stepReq = { 0, 2, 4, 6 } },
    },

    -- ═══════ JOB OUTFIT ═══════
    JobOutfit = {
        male = {
            { component = 3, drawable = 0,   texture = 0 },   -- Arms
            { component = 8, drawable = 15,  texture = 0 },   -- T-Shirt
            { component = 11, drawable = 234, texture = 19 }, -- Torso
            { component = 4, drawable = 123, texture = 0 },   -- Pants
            { component = 6, drawable = 72,  texture = 11 },  -- Shoes
        },

        female = {
            { component = 3, drawable = 0,   texture = 0 },   -- Arms
            { component = 8, drawable = 14,  texture = 0 },   -- T-Shirt
            { component = 11, drawable = 9,  texture = 7 },   -- Torso
            { component = 4, drawable = 129, texture = 0 },   -- Pants
            { component = 6, drawable = 75,  texture = 11 },  -- Shoes
        },
    }
}

Routes = {
    {
        vec3(-829.4909, 5684.7910, 19.3733),
        vec3(-820.1400, 5671.1426, 21.0163),
        vec3(-833.6870, 5660.0146, 20.1283),
        vec3(-847.1127, 5655.8965, 18.8861),
        vec3(-839.7205, 5666.8125, 18.8811),
        vec3(-796.9612, 5671.7246, 23.2461)
    },
    {
        vec3(-552.0808, 5879.5527, 32.3940),
        vec3(-543.0416, 5859.1899, 32.8703),
        vec3(-571.3123, 5864.7207, 30.0229),
        vec3(-594.3763, 5879.9121, 26.2118),
        vec3(-599.5585, 5909.0591, 25.9449),
        vec3(-563.6160, 5911.9751, 31.6539)
    },
    {
        vec3(-892.8512, 5258.7192, 85.0615),
        vec3(-880.7000, 5264.7778, 85.8071),
        vec3(-891.4587, 5268.8853, 85.9987),
        vec3(-885.2430, 5275.1626, 85.8508),
        vec3(-898.4473, 5270.7642, 85.7183),
        vec3(-898.2321, 5280.0459, 84.7312)
    },
}

-- Translation helper: _L('KEY') or _L('KEY', arg1, arg2)
function _L(key, ...)
    local lang = Config.Language or 'en'
    local str  = (Locales[lang] and Locales[lang][key])
               or (Locales['en'] and Locales['en'][key])
               or key
    if select('#', ...) > 0 then
        return string.format(str, ...)
    end
    return str
end
