Locales = Locales or {}
Locales['da'] = {
    -- Target / Interaktion
    ['TARGET_START_JOB']         = 'Start job',
    ['TARGET_CHOP_TREE']         = 'Fæld træ',
    ['TARGET_PICKUP_LOG']        = 'Saml tømmerstok',
    ['TARGET_LOAD_TRUCK']        = 'Læs lastbil',
    ['TARGET_GRAB_TRUNK']        = 'Tag tømmerstok',
    ['TARGET_PUT_BELT']          = 'Læg på båndet',
    ['HELP_START_JOB']           = '~INPUT_CONTEXT~ START JOB',

    -- Notifikationer
    ['NOTIFY_NO_JOB_ACCESS']     = 'Du skal have det krævede job for at åbne denne menu.',
    ['NOTIFY_NO_ACTIVE_JOB']     = 'Intet aktivt job at annullere',
    ['NOTIFY_JOB_CANCELLED']     = 'Job annulleret',
    ['NOTIFY_JOB_CANCELLED_SELF']= 'Du annullerede jobbet',
    ['NOTIFY_LEVEL_UP']          = 'Level op! Du er nu level %d',

    -- Skovhugger — hjælpetekster
    ['HELP_CHOP_TREE']           = '~INPUT_CONTEXT~ Fæld træ',
    ['HELP_PICKUP_LOG']          = '~INPUT_CONTEXT~ Saml kævle op',
    ['HELP_PICKUP_LOG_N']        = '~INPUT_CONTEXT~ Saml kævle op (%s/%s)',
    ['HELP_LOAD_WOOD']           = '~INPUT_CONTEXT~ Læs træ (%s)',
    ['HELP_GRAB_TRUNK']          = '~INPUT_CONTEXT~ Tag en kævle fra lastbilen',
    ['HELP_PUT_BELT']            = '~INPUT_CONTEXT~ Læg på transportbåndet',

    -- Skovhugger — sporskrin-trin
    ['TRACKER_STEP_VEHICLE']     = 'Tag lastbilen',
    ['TRACKER_STEP_WORK']        = 'Fæld og læs træ',
    ['TRACKER_STEP_PROCESS']     = 'Behandl træ',
    ['TRACKER_CTR_TREES']        = 'Træer',
    ['TRACKER_CTR_WOOD']         = 'Træ',
    ['TRACKER_CTR_PROCESSED']    = 'Behandlet',
    ['TRACKER_ROUTE_NAME']       = 'Fælderute #%s',
    ['JT_GO_START']              = 'Gå til start',
    ['JT_COMPLETE_TASK']         = 'Fuldfør opgave',
    ['JT_DELIVER']               = 'Lever',
    ['JT_COMPLETE']              = 'Afslut',

    -- Skovhugger — notifikationer
    ['NOTIFY_JOB_STARTED']       = 'Job startet. Gå til det første træ',
    ['NOTIFY_LEFT_TREE']         = 'Du bevægede dig væk fra træet',
    ['NOTIFY_TREE_BEING_CHOPPED']= 'Det træ bliver allerede fældet',
    ['NOTIFY_LOG_TAKEN']         = 'Den kævle er allerede samlet op',
    ['NOTIFY_WOOD_LOADED']       = 'Træet er læsset! Kør det til savværket',
    ['NOTIFY_ALREADY_ACTIVE']    = 'Du har allerede et aktivt job',
    ['NOTIFY_PAID']              = 'Du tjente $%s for leveringen. Godt arbejde!',
    ['NOTIFY_PAID_XP']           = 'Du tjente $%s og +%s XP. Godt arbejde!',

    -- Invitationer
    ['INV_INVALID_ID']           = 'Ugyldigt ID',
    ['INV_SELF']                 = 'Du kan ikke invitere dig selv',
    ['INV_NOT_ONLINE']           = 'Der er ingen spiller med ID %s',
    ['INV_TOO_FAR']              = 'Den spiller er for langt væk (%sm, maks. %sm)',
    ['INV_NOT_LEADER']           = 'Kun gruppelederen kan invitere',
    ['INV_CREW_FULL']            = 'Gruppen er fuld (maks. 4 spillere)',
    ['INV_ALREADY_GROUP']        = 'Den spiller er allerede i en gruppe',
    ['INV_PENDING']              = 'Du har allerede en afventende invitation til den spiller',
    ['INV_SENT']                 = 'Invitation sendt til %s',
    ['INV_EXPIRED']              = 'Invitationen til %s er udløbet',
    ['INV_REJECTED']             = '%s afviste invitationen',
    ['INV_CREW_FULL_JOIN']       = 'Gruppen er fuld, %s kunne ikke tilslutte sig',
    ['INV_JOINED_LEADER']        = '%s tilsluttede sig gruppen',
    ['INV_JOINED_SELF']          = 'Du tilsluttede dig gruppen',

    -- Serversvar
    ['SRV_NOT_ENOUGH_MONEY']     = 'Ikke nok penge',
    ['SRV_MAX_LEVEL']            = 'Allerede på maks level',
    ['SRV_REQUIRES_LEVEL']       = 'Kræver level %d',
    ['SRV_CREW_FULL']            = 'Holdet er allerede fuldt',
    ['SRV_HAVE_PENDING_INVITE']  = 'Du har allerede en afventende invitation',
    ['SRV_PLAYER_HAS_INVITE']    = 'Spilleren har allerede en afventende invitation',
    ['SRV_PLAYER_IN_SESSION']    = 'Spilleren er allerede i en session',

    -- Toast-beskeder
    ['TOAST_CREW_FULL']          = 'Pladsen på holdet er allerede optaget',
    ['TOAST_INVALID_ID']         = 'Indtast et gyldigt spiller-ID',
    ['TOAST_REMOVED_CREW_NAME']  = '%s fjernet fra holdet',
    ['TOAST_CREW_JOINED_NAME']   = '%s tilsluttede sig dit hold',
    ['TOAST_CREW_LEFT_NAME']     = '%s forlod holdet',
    ['TOAST_INVITE_DECLINED']    = 'Invitation afvist',
    ['TOAST_UPGRADED']           = 'Opgradering fuldført!',

    -- Rutetyper
    ['ROUTE_CARGO']              = 'FRAGT',
    ['ROUTE_HEAVY_CARGO']        = 'TUNG FRAGT',
    ['UI_CONTAINER_FILTER']      = 'CONTAINER',
    ['UI_TANKER_FILTER']         = 'TANKVOGN',

    -- UI-etiketter
    ['UI_LOADING']               = 'Indlæser...',
    ['UI_LEVEL']                 = 'Level',
    ['UI_LEVEL_WORD']            = 'Level',
    ['UI_EXP']                   = 'EXP',
    ['UI_PROFILE']               = 'Profil',
    ['UI_NICKNAME']              = 'Kaldenavn',
    ['UI_PLAYER']                = 'Spiller',
    ['UI_LEADER']                = 'Leder',
    ['UI_PARTNER']               = 'Partner',
    ['UI_PLAYER_LIST']           = 'Spillerliste',
    ['UI_INVITE_PLAYER']         = 'Inviter spiller',
    ['UI_SEND']                  = 'Send',
    ['UI_CANCEL']                = 'Annuller',
    ['UI_CONFIRM_BTN']           = 'Bekræft',
    ['UI_ACCEPT']                = 'Accepter',
    ['UI_DECLINE']               = 'Afvis',
    ['UI_KICK']                  = 'Smid ud',
    ['UI_BACK']                  = 'Tilbage',
    ['UI_MAX']                   = 'MAKS',

    -- Job-panel
    ['UI_TRUCKER']               = 'SKOVHUGGER-JOB',
    ['UI_HEADER_DESC']           = 'Velkommen til skovhugger-jobbet! Her fælder du træer, læsser kævler på din lastbil og leverer dem til savværket. Tjen penge og erfaring, mens du stiger i level.',
    ['UI_START_JOB_BTN']         = 'Start job',
    ['UI_TASK_TYPE']             = 'Opgavetype',
    ['UI_SELECT_ROUTE']          = 'Vælg en rute',
    ['UI_FIND_ROUTE']            = 'Find rute',
    ['UI_NO_ROUTES']             = 'Ingen ruter fundet',
    ['UI_REWARD']                = 'Belønning',
    ['UI_EXPERIENCE']            = 'Erfaring',

    -- Invitationsnotifikation
    ['UI_JOB_WORD']              = 'JOB',
    ['UI_INVITE']                = 'INVITATION',
    ['UI_JOB_INVITE_DESC']       = 'inviterede dig til jobbet',

    -- Tøj
    ['UI_OUTFIT_DEFAULT']        = 'Standardtøj',
    ['UI_OUTFIT_JOB']            = 'Arbejdstøj',

    -- Detaljer / Sådan virker det
    ['UI_HOW_IT_WORKS']          = 'Sådan virker det',
    ['UI_JOB_DETAILS']           = 'Jobdetaljer',
    ['UI_JOB_DETAILS_DESC']      = 'Tag til det markerede afhentningssted, udfør dine opgaver og lever sikkert på afleveringsstedet.',
    ['UI_CARGO_LABEL']           = 'Last',
    ['UI_SELECT_PLAYER']         = 'Vælg en spiller til dit hold',

    -- Rute-/licenskrav
    ['UI_FORKLIFT_REQ']          = 'Gaffeltruck-licens påkrævet',
    ['UI_DOCK_REQ']              = 'Havnearbejder-licens påkrævet',
    ['UI_FORKLIFT_LICENSE_REQ']  = 'Gaffeltruck-licens påkrævet',
    ['UI_DOCK_LICENSE_REQ']      = 'Havnearbejder-licens påkrævet',

    -- Statistikpanel
    ['UI_CAREER_STATS']          = 'Karrierestatistik',
    ['UI_TOTAL_EARNED']          = 'Tjent i alt',
    ['UI_DELIVERY_HISTORY']      = 'Leveringshistorik',
    ['UI_NO_HISTORY']            = 'Ingen leveringer endnu. Start dit første job!',
    ['UI_LEGAL_LEVEL']           = 'Lovligt level',
    ['UI_ACTIVE_ROUTE']          = 'Aktiv rute',

    -- HUD
    ['UI_ACTIVE_JOB']            = 'Aktivt job',

    -- Outfit / Opgraderinger
    ['UI_OUTFIT']                = 'Outfit',
    ['UI_SELECT_OUTFIT']         = 'Vælg outfit',
    ['UI_LEVELS']                = 'Niveauer',
    ['UI_UPGRADE']               = 'Opgrader',
    ['UI_UPGRADES']              = 'Opgraderinger',
    ['UI_LOCKED']                = 'Låst',
    ['UI_UNLOCK']                = 'Lås op',
    ['UI_REQUIRES_LV']           = 'Kræver niveau ',
    ['UI_NEXT_LV']               = 'Næste niveau: ',
    ['UI_UPG_CARRY']             = 'Bæreevne',
    ['UI_UPG_SPEED']             = 'Hastighed',
    ['UI_UPG_AIM']               = 'Sigte',
    ['UI_UPG_YIELD']             = 'Udbytte',
    ['UI_INVITE_UP_TO_3']        = 'Inviter op til 3 partnere',
    ['UI_INVITE_MORE']           = 'Inviter %s partner(e) mere',
    ['UI_INVITE_XP_BONUS']       = 'Inviter partnere for at tjene XP-bonus',
    ['UI_TEAM_BONUS']            = 'Holdbonus',

    -- Blips
    ['BLIP_LOG']                 = 'Stykke træ',
    ['BLIP_TRUCK']               = 'Holdets lastbil',
    ['BLIP_SAWMILL']             = 'Savværk',
    ['BLIP_TREE']                = 'Træ',
    ['BLIP_JOB']                 = 'Job',
}