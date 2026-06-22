Locales = Locales or {}
Locales['ca'] = {
    -- Target / Interacció
    ['TARGET_START_JOB']         = 'Iniciar Feina',
    ['TARGET_CHOP_TREE']         = 'Talar Arbre',
    ['TARGET_PICKUP_LOG']        = 'Recollir Tronc',
    ['TARGET_LOAD_TRUCK']        = 'Carregar Camió',
    ['TARGET_GRAB_TRUNK']        = 'Agafar Tronc',
    ['TARGET_PUT_BELT']          = 'Posar a la Cinta',
    ['HELP_START_JOB']           = '~INPUT_CONTEXT~ INICIAR FEINA',

    -- Notificacions
    ['NOTIFY_NO_JOB_ACCESS']     = 'Necessites la feina requerida per accedir a aquest menú.',
    ['NOTIFY_NO_ACTIVE_JOB']     = 'No tens cap feina activa',
    ['NOTIFY_JOB_CANCELLED']     = 'Feina cancel·lada',
    ['NOTIFY_JOB_CANCELLED_SELF']= 'Has cancel·lat la feina',
    ['NOTIFY_LEVEL_UP']          = 'Has pujat de nivell! Ara ets nivell %d',

    -- Llenyataire — ajudes de joc
    ['HELP_CHOP_TREE']           = '~INPUT_CONTEXT~ Talar arbre',
    ['HELP_PICKUP_LOG']          = '~INPUT_CONTEXT~ Recollir tronc',
    ['HELP_PICKUP_LOG_N']        = '~INPUT_CONTEXT~ Recollir tronc (%s/%s)',
    ['HELP_LOAD_WOOD']           = '~INPUT_CONTEXT~ Carregar fusta (%s)',
    ['HELP_GRAB_TRUNK']          = '~INPUT_CONTEXT~ Agafar tronc del maleter',
    ['HELP_PUT_BELT']            = '~INPUT_CONTEXT~ Posar a la cinta',

    -- Llenyataire — passos del rastrejador
    ['TRACKER_STEP_VEHICLE']     = 'Agafar el camió',
    ['TRACKER_STEP_WORK']        = 'Talar i carregar fusta',
    ['TRACKER_STEP_PROCESS']     = 'Processar fusta',
    ['TRACKER_CTR_TREES']        = 'Arbres',
    ['TRACKER_CTR_WOOD']         = 'Fusta',
    ['TRACKER_CTR_PROCESSED']    = 'Processats',
    ['TRACKER_ROUTE_NAME']       = 'Ruta de tala #%s',
    ['JT_GO_START']              = 'Anar a l\'inici',
    ['JT_COMPLETE_TASK']         = 'Completar tasca',
    ['JT_DELIVER']               = 'Lliurar',
    ['JT_COMPLETE']              = 'Completar',

    -- Llenyataire — notificacions
    ['NOTIFY_JOB_STARTED']       = 'Feina iniciada. Ves al primer arbre',
    ['NOTIFY_LEFT_TREE']         = "T'has allunyat de l'arbre",
    ['NOTIFY_TREE_BEING_CHOPPED']= "Aquest arbre ja s'està talant",
    ['NOTIFY_LOG_TAKEN']         = 'Aquest tronc ja ha estat recollit',
    ['NOTIFY_WOOD_LOADED']       = 'Fusta carregada! Porta-la a la serradora',
    ['NOTIFY_ALREADY_ACTIVE']    = 'Ja tens una feina activa',
    ['NOTIFY_PAID']              = "Has cobrat $%s per l'entrega. Bona feina!",
    ['NOTIFY_PAID_XP']           = 'Has cobrat $%s i +%s XP. Bona feina!',

    -- Invitacions
    ['INV_INVALID_ID']           = 'ID no vàlida',
    ['INV_SELF']                 = 'No pots convidar-te a tu mateix',
    ['INV_NOT_ONLINE']           = 'No hi ha cap jugador amb la ID %s',
    ['INV_TOO_FAR']              = 'Aquest jugador està massa lluny (%sm, màx. %sm)',
    ['INV_NOT_LEADER']           = 'Només el líder del grup pot convidar',
    ['INV_CREW_FULL']            = 'El grup està ple (màx. 4 jugadors)',
    ['INV_ALREADY_GROUP']        = 'Aquest jugador ja és en un grup',
    ['INV_PENDING']              = 'Ja tens una invitació pendent amb aquest jugador',
    ['INV_SENT']                 = 'Invitació enviada a %s',
    ['INV_EXPIRED']              = 'La invitació a %s ha caducat',
    ['INV_REJECTED']             = '%s ha rebutjat la invitació',
    ['INV_CREW_FULL_JOIN']       = "El grup està ple, %s no s'ha pogut unir",
    ['INV_JOINED_LEADER']        = "%s s'ha unit al grup",
    ['INV_JOINED_SELF']          = "T'has unit al grup",

    -- Respostes del servidor
    ['SRV_NOT_ENOUGH_MONEY']     = 'Diners insuficients',
    ['SRV_MAX_LEVEL']            = 'Ja estàs al nivell màxim',
    ['SRV_REQUIRES_LEVEL']       = 'Requereix nivell %d',
    ['SRV_CREW_FULL']            = "L'equip ja està complet",
    ['SRV_HAVE_PENDING_INVITE']  = 'Ja tens una invitació pendent',
    ['SRV_PLAYER_HAS_INVITE']    = 'El jugador ja té una invitació pendent',
    ['SRV_PLAYER_IN_SESSION']    = 'El jugador ja és en una sessió',

    -- Missatges toast
    ['TOAST_CREW_FULL']          = "La plaça de l'equip ja està ocupada",
    ['TOAST_INVALID_ID']         = 'Introdueix una ID de jugador vàlida',
    ['TOAST_REMOVED_CREW_NAME']  = "%s eliminat de l'equip",
    ['TOAST_CREW_JOINED_NAME']   = "%s s'ha unit al teu equip",
    ['TOAST_CREW_LEFT_NAME']     = "%s ha deixat l'equip",
    ['TOAST_INVITE_DECLINED']    = 'Invitació rebutjada',
    ['TOAST_UPGRADED']           = 'Millora completada!',

    -- Tipus de ruta
    ['ROUTE_CARGO']              = 'CÀRREGA',
    ['ROUTE_HEAVY_CARGO']        = 'CÀRREGA PESADA',
    ['UI_CONTAINER_FILTER']      = 'CONTENIDOR',
    ['UI_TANKER_FILTER']         = 'CISTERNA',

    -- Etiquetes UI
    ['UI_LOADING']               = 'Carregant...',
    ['UI_LEVEL']                 = 'Nivell',
    ['UI_LEVEL_WORD']            = 'Nivell',
    ['UI_EXP']                   = 'EXP',
    ['UI_PROFILE']               = 'Perfil',
    ['UI_NICKNAME']              = 'Sobrenom',
    ['UI_PLAYER']                = 'Jugador',
    ['UI_LEADER']                = 'Líder',
    ['UI_PARTNER']               = 'Company',
    ['UI_PLAYER_LIST']           = 'Llista de jugadors',
    ['UI_INVITE_PLAYER']         = 'Convidar jugador',
    ['UI_SEND']                  = 'Enviar',
    ['UI_CANCEL']                = 'Cancel·lar',
    ['UI_CONFIRM_BTN']           = 'Confirmar',
    ['UI_ACCEPT']                = 'Acceptar',
    ['UI_DECLINE']               = 'Rebutjar',
    ['UI_KICK']                  = 'Expulsar',
    ['UI_BACK']                  = 'Enrere',
    ['UI_MAX']                   = 'MÀX',

    -- Panell de la feina
    ['UI_TRUCKER']               = 'FEINA DE LLENYATAIRE',
    ['UI_HEADER_DESC']           = "Benvingut a la feina de llenyataire! Aquí talles arbres, carregues troncs al camió i els entregues a la serradora. Guanya diners i experiència mentre puges de nivell.",
    ['UI_START_JOB_BTN']         = 'Iniciar feina',
    ['UI_TASK_TYPE']             = 'Tipus de tasca',
    ['UI_SELECT_ROUTE']          = 'Selecciona una ruta',
    ['UI_FIND_ROUTE']            = 'Cercar ruta',
    ['UI_NO_ROUTES']             = "No s'han trobat rutes",
    ['UI_REWARD']                = 'Recompensa',
    ['UI_EXPERIENCE']            = 'Experiència',

    -- Notificació d'invitació
    ['UI_JOB_WORD']              = 'FEINA',
    ['UI_INVITE']                = 'INVITACIÓ',
    ['UI_JOB_INVITE_DESC']       = "t'ha convidat a la feina",

    -- Roba
    ['UI_OUTFIT_DEFAULT']        = 'Roba normal',
    ['UI_OUTFIT_JOB']            = 'Uniforme de feina',

    -- Detalls / Com funciona
    ['UI_HOW_IT_WORKS']          = 'Com funciona',
    ['UI_JOB_DETAILS']           = 'Detalls de la feina',
    ['UI_JOB_DETAILS_DESC']      = 'Ves al punt de recollida marcat, completa les teves tasques i entrega de forma segura al punt de destí.',
    ['UI_CARGO_LABEL']           = 'Càrrega',
    ['UI_SELECT_PLAYER']         = "Selecciona un jugador perquè s'uneixi al teu equip",

    -- Requisits de ruta / llicència
    ['UI_FORKLIFT_REQ']          = 'Cal llicència de carretó elevador',
    ['UI_DOCK_REQ']              = 'Cal llicència de moll',
    ['UI_FORKLIFT_LICENSE_REQ']  = 'Cal llicència de carretó elevador',
    ['UI_DOCK_LICENSE_REQ']      = 'Cal llicència de moll',

    -- Panell d'estadístiques
    ['UI_CAREER_STATS']          = 'Estadístiques de carrera',
    ['UI_TOTAL_EARNED']          = 'Total guanyat',
    ['UI_DELIVERY_HISTORY']      = "Historial d'entregues",
    ['UI_NO_HISTORY']            = 'Encara cap entrega. Comença la teva primera feina!',
    ['UI_LEGAL_LEVEL']           = 'Nivell legal',
    ['UI_ACTIVE_ROUTE']          = 'Ruta activa',

    -- HUD
    ['UI_ACTIVE_JOB']            = 'Feina activa',

    -- Vestimenta / Millores
    ['UI_OUTFIT']                = 'Vestimenta',
    ['UI_SELECT_OUTFIT']         = 'Seleccionar vestimenta',
    ['UI_LEVELS']                = 'Nivells',
    ['UI_UPGRADE']               = 'Millorar',
    ['UI_UPGRADES']              = 'Millores',
    ['UI_LOCKED']                = 'Bloquejat',
    ['UI_UNLOCK']                = 'Desbloquejar',
    ['UI_REQUIRES_LV']           = 'Requereix nivell ',
    ['UI_NEXT_LV']               = 'Proper nivell: ',
    ['UI_UPG_CARRY']             = 'Càrrega',
    ['UI_UPG_SPEED']             = 'Velocitat',
    ['UI_UPG_AIM']               = 'Punteria',
    ['UI_UPG_YIELD']             = 'Rendiment',
    ['UI_INVITE_UP_TO_3']        = 'Convidar fins a 3 companys',
    ['UI_INVITE_MORE']           = 'Convidar %s company(s) més',
    ['UI_INVITE_XP_BONUS']       = 'Convida companys per guanyar bonus XP',
    ['UI_TEAM_BONUS']            = 'Bonus equip',

    -- Blips
    ['BLIP_LOG']                 = 'Tronc',
    ['BLIP_TRUCK']               = 'Camió del grup',
    ['BLIP_SAWMILL']             = 'Serra',
    ['BLIP_TREE']                = 'Arbre',
    ['BLIP_JOB']                 = 'Feina',
}