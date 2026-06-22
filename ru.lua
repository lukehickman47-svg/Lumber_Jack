Locales = Locales or {}
Locales['en'] = {
    -- ═══════ Target / Interaction ═══════
    ['TARGET_START_JOB']         = 'Start Job',
    ['TARGET_CHOP_TREE']         = 'Chop Tree',
    ['TARGET_PICKUP_LOG']        = 'Pick Up Log',
    ['TARGET_LOAD_TRUCK']        = 'Load Truck',
    ['TARGET_GRAB_TRUNK']        = 'Grab Log',
    ['TARGET_PUT_BELT']          = 'Put on Belt',
    ['HELP_START_JOB']           = '~INPUT_CONTEXT~ START JOB',

    -- ═══════ Notifications ═══════
    ['NOTIFY_NO_JOB_ACCESS']     = 'You need the required job to access this menu.',
    ['NOTIFY_NO_ACTIVE_JOB']     = 'No active job to cancel',
    ['NOTIFY_JOB_CANCELLED']     = 'Job cancelled',
    ['NOTIFY_JOB_CANCELLED_SELF']= 'You cancelled the job',
    ['NOTIFY_LEVEL_UP']          = 'Level Up! You are now level %d',

    -- ═══════ Lumberjack — gameplay help prompts ═══════
    ['HELP_CHOP_TREE']           = '~INPUT_CONTEXT~ Chop tree',
    ['HELP_PICKUP_LOG']          = '~INPUT_CONTEXT~ Pick up log',
    ['HELP_PICKUP_LOG_N']        = '~INPUT_CONTEXT~ Pick up log (%s/%s)',
    ['HELP_LOAD_WOOD']           = '~INPUT_CONTEXT~ Load wood (%s)',
    ['HELP_GRAB_TRUNK']          = '~INPUT_CONTEXT~ Take log from the truck',
    ['HELP_PUT_BELT']            = '~INPUT_CONTEXT~ Put on the conveyor',

    -- ═══════ Lumberjack — job tracker steps ═══════
    ['TRACKER_STEP_VEHICLE']     = 'Take the Truck',
    ['TRACKER_STEP_WORK']        = 'Cut & Load Wood',
    ['TRACKER_STEP_PROCESS']     = 'Process Wood',
    ['TRACKER_CTR_TREES']        = 'Trees',
    ['TRACKER_CTR_WOOD']         = 'Wood',
    ['TRACKER_CTR_PROCESSED']    = 'Processed',
    ['TRACKER_ROUTE_NAME']       = 'Tree Cutting Route #%s',
    ['JT_GO_START']              = 'Go to Start',
    ['JT_COMPLETE_TASK']         = 'Complete Task',
    ['JT_DELIVER']               = 'Deliver',
    ['JT_COMPLETE']              = 'Complete',

    -- ═══════ Lumberjack — gameplay notifications ═══════
    ['NOTIFY_JOB_STARTED']       = 'Job started. Head to the first tree',
    ['NOTIFY_LEFT_TREE']         = 'You moved away from the tree',
    ['NOTIFY_TREE_BEING_CHOPPED']= 'That tree is already being chopped',
    ['NOTIFY_LOG_TAKEN']         = 'That log was already picked up',
    ['NOTIFY_WOOD_LOADED']       = 'Wood loaded! Take it to the sawmill',
    ['NOTIFY_ALREADY_ACTIVE']    = 'You already have an active job',
    ['NOTIFY_PAID']              = 'You earned $%s for the delivery. Good job!',
    ['NOTIFY_PAID_XP']           = 'You earned $%s and +%s XP. Good job!',

    -- ═══════ Lumberjack — invites (server) ═══════
    ['INV_INVALID_ID']           = 'Invalid ID',
    ['INV_SELF']                 = "You can't invite yourself",
    ['INV_NOT_ONLINE']           = 'There is no player with ID %s',
    ['INV_TOO_FAR']              = 'That player is too far away (%sm, max %sm)',
    ['INV_NOT_LEADER']           = 'Only the group leader can invite',
    ['INV_CREW_FULL']            = 'The group is full (max 4 players)',
    ['INV_ALREADY_GROUP']        = 'That player is already in a group',
    ['INV_PENDING']              = 'You already have a pending invite with that player',
    ['INV_SENT']                 = 'Invite sent to %s',
    ['INV_EXPIRED']              = 'The invite to %s has expired',
    ['INV_REJECTED']             = '%s rejected the invite',
    ['INV_CREW_FULL_JOIN']       = "The group is full, %s couldn't join",
    ['INV_JOINED_LEADER']        = '%s joined the group',
    ['INV_JOINED_SELF']          = 'You joined the group',

    -- ═══════ Server responses ═══════
    ['SRV_NOT_ENOUGH_MONEY']     = 'Not enough money',
    ['SRV_MAX_LEVEL']            = 'Already at max level',
    ['SRV_REQUIRES_LEVEL']       = 'Requires level %d',
    ['SRV_CREW_FULL']            = 'Crew is already full',
    ['SRV_HAVE_PENDING_INVITE']  = 'You already have a pending invite',
    ['SRV_PLAYER_HAS_INVITE']    = 'Player already has a pending invite',
    ['SRV_PLAYER_IN_SESSION']    = 'Player is already in a session',

    -- ═══════ Toast messages ═══════
    ['TOAST_CREW_FULL']          = 'Crew slot is already full',
    ['TOAST_INVALID_ID']         = 'Enter a valid player ID',
    ['TOAST_REMOVED_CREW_NAME']  = '%s removed from crew',
    ['TOAST_CREW_JOINED_NAME']   = '%s joined your crew',
    ['TOAST_CREW_LEFT_NAME']     = '%s left the crew',
    ['TOAST_INVITE_DECLINED']    = 'Invite declined',
    ['TOAST_UPGRADED']           = 'Upgrade complete!',

    -- ═══════ Route types ═══════
    ['ROUTE_CARGO']              = 'CARGO',
    ['ROUTE_HEAVY_CARGO']        = 'HEAVY CARGO',
    ['UI_CONTAINER_FILTER']      = 'CONTAINER',
    ['UI_TANKER_FILTER']         = 'TANKER',

    -- ═══════ UI labels ═══════
    ['UI_LOADING']               = 'Loading...',
    ['UI_LEVEL']                 = 'Level',
    ['UI_LEVEL_WORD']            = 'Level',
    ['UI_EXP']                   = 'EXP',
    ['UI_PROFILE']               = 'Profile',
    ['UI_NICKNAME']              = 'Nickname',
    ['UI_PLAYER']                = 'Player',
    ['UI_LEADER']                = 'Leader',
    ['UI_PARTNER']               = 'Partner',
    ['UI_PLAYER_LIST']           = 'Player List',
    ['UI_INVITE_PLAYER']         = 'Invite Player',
    ['UI_SEND']                  = 'Send',
    ['UI_CANCEL']                = 'Cancel',
    ['UI_CONFIRM_BTN']           = 'Confirm',
    ['UI_ACCEPT']                = 'Accept',
    ['UI_DECLINE']               = 'Decline',
    ['UI_KICK']                  = 'Kick',
    ['UI_BACK']                  = 'Back',
    ['UI_MAX']                   = 'MAX',

    -- ═══════ Job panel ═══════
    ['UI_TRUCKER']               = 'LUMBERJACK JOB',
    ['UI_HEADER_DESC']           = 'Welcome to the Lumberjack Job! Here you can cut down trees, load logs onto your truck, and deliver them to the sawmill. Earn money and experience as you progress through the levels.',
    ['UI_START_JOB_BTN']         = 'Start Job',
    ['UI_TASK_TYPE']             = 'Task Type',
    ['UI_SELECT_ROUTE']          = 'Select a route',
    ['UI_FIND_ROUTE']            = 'Find Route',
    ['UI_NO_ROUTES']             = 'No routes found',
    ['UI_REWARD']                = 'Reward',
    ['UI_EXPERIENCE']            = 'Experience',

    -- ═══════ Invite notification ═══════
    ['UI_JOB_WORD']              = 'JOB',
    ['UI_INVITE']                = 'INVITE',
    ['UI_JOB_INVITE_DESC']       = 'invited you to join the job',

    -- ═══════ Outfit ═══════
    ['UI_OUTFIT']                = 'Outfit',
    ['UI_SELECT_OUTFIT']         = 'Select Outfit',
    ['UI_OUTFIT_DEFAULT']        = 'Default Clothes',
    ['UI_OUTFIT_JOB']            = 'Job Outfit',

    -- ═══════ Axe / Upgrade panel ═══════
    ['UI_LEVELS']                = 'Levels',
    ['UI_UPGRADE']               = 'Upgrade',
    ['UI_UPGRADES']              = 'Upgrades',
    ['UI_LOCKED']                = 'Locked',
    ['UI_UNLOCK']                = 'Unlock',
    ['UI_REQUIRES_LV']           = 'Requires Lv.',
    ['UI_NEXT_LV']               = 'Next level: Lv.',
    ['UI_UPG_CARRY']             = 'Carry',
    ['UI_UPG_SPEED']             = 'Speed',
    ['UI_UPG_AIM']               = 'Aim',
    ['UI_UPG_YIELD']             = 'Yield',

    -- ═══════ Player list / invite CTAs ═══════
    ['UI_INVITE_UP_TO_3']        = 'Invite up to 3 partners',
    ['UI_INVITE_MORE']           = 'Invite %s more partner(s)',
    ['UI_INVITE_XP_BONUS']       = 'Invite partners to earn XP bonus',
    ['UI_TEAM_BONUS']            = 'Team Bonus',

    -- ═══════ Job details / How it works ═══════
    ['UI_HOW_IT_WORKS']          = 'How It Works',
    ['UI_JOB_DETAILS']           = 'Job Details',
    ['UI_JOB_DETAILS_DESC']      = 'Head to the marked pickup point, complete your tasks, and deliver safely to the drop-off location.',
    ['UI_CARGO_LABEL']           = 'Cargo',
    ['UI_SELECT_PLAYER']         = 'Select a player to join your crew',

    -- ═══════ Route / license requirements ═══════
    ['UI_FORKLIFT_REQ']          = 'Forklift License Required',
    ['UI_DOCK_REQ']              = 'Dock Handler License Required',
    ['UI_FORKLIFT_LICENSE_REQ']  = 'Forklift License required',
    ['UI_DOCK_LICENSE_REQ']      = 'Dock Handler License required',

    -- ═══════ Stats panel ═══════
    ['UI_CAREER_STATS']          = 'Career Stats',
    ['UI_TOTAL_EARNED']          = 'Total Earned',
    ['UI_DELIVERY_HISTORY']      = 'Delivery History',
    ['UI_NO_HISTORY']            = 'No deliveries yet. Start your first job!',
    ['UI_LEGAL_LEVEL']           = 'Legal Level',
    ['UI_ACTIVE_ROUTE']          = 'Active Route',

    -- ═══════ HUD ═══════
    ['UI_ACTIVE_JOB']            = 'Active Job',

    -- Blips
    ['BLIP_LOG']                 = 'Log',
    ['BLIP_TRUCK']               = 'Group Truck',
    ['BLIP_SAWMILL']             = 'Sawmill',
    ['BLIP_TREE']                = 'Tree',
    ['BLIP_JOB']                 = 'Job',
}