Locales = Locales or {}
Locales['es'] = {
    -- ═══════ Target / Interacción ═══════
    ['TARGET_START_JOB']         = 'Iniciar Trabajo',
    ['TARGET_CHOP_TREE']         = 'Talar Árbol',
    ['TARGET_PICKUP_LOG']        = 'Recoger Tronco',
    ['TARGET_LOAD_TRUCK']        = 'Cargar Camión',
    ['TARGET_GRAB_TRUNK']        = 'Coger Tronco',
    ['TARGET_PUT_BELT']          = 'Poner en Cinta',
    ['HELP_START_JOB']           = '~INPUT_CONTEXT~ INICIAR TRABAJO',

    -- ═══════ Notificaciones ═══════
    ['NOTIFY_NO_JOB_ACCESS']     = 'Necesitas el trabajo requerido para acceder a este menú.',
    ['NOTIFY_NO_ACTIVE_JOB']     = 'No tienes ningún trabajo activo',
    ['NOTIFY_JOB_CANCELLED']     = 'Trabajo cancelado',
    ['NOTIFY_JOB_CANCELLED_SELF']= 'Has cancelado el trabajo',
    ['NOTIFY_LEVEL_UP']          = '¡Subiste de nivel! Ahora eres nivel %d',

    -- ═══════ Leñador — ayudas de juego ═══════
    ['HELP_CHOP_TREE']           = '~INPUT_CONTEXT~ Talar árbol',
    ['HELP_PICKUP_LOG']          = '~INPUT_CONTEXT~ Recoger tronco',
    ['HELP_PICKUP_LOG_N']        = '~INPUT_CONTEXT~ Recoger tronco (%s/%s)',
    ['HELP_LOAD_WOOD']           = '~INPUT_CONTEXT~ Cargar madera (%s)',
    ['HELP_GRAB_TRUNK']          = '~INPUT_CONTEXT~ Coger tronco del maletero',
    ['HELP_PUT_BELT']            = '~INPUT_CONTEXT~ Poner en la cinta',

    -- ═══════ Leñador — pasos del tracker ═══════
    ['TRACKER_STEP_VEHICLE']     = 'Coger el camión',
    ['TRACKER_STEP_WORK']        = 'Talar y cargar madera',
    ['TRACKER_STEP_PROCESS']     = 'Procesar madera',
    ['TRACKER_CTR_TREES']        = 'Árboles',
    ['TRACKER_CTR_WOOD']         = 'Madera',
    ['TRACKER_CTR_PROCESSED']    = 'Procesados',
    ['TRACKER_ROUTE_NAME']       = 'Ruta de tala #%s',
    ['JT_GO_START']              = 'Ir al inicio',
    ['JT_COMPLETE_TASK']         = 'Completar tarea',
    ['JT_DELIVER']               = 'Entregar',
    ['JT_COMPLETE']              = 'Completado',

    -- ═══════ Leñador — notificaciones de juego ═══════
    ['NOTIFY_JOB_STARTED']       = 'Trabajo iniciado. Ve al primer árbol',
    ['NOTIFY_LEFT_TREE']         = 'Te has alejado del árbol',
    ['NOTIFY_TREE_BEING_CHOPPED']= 'Ese árbol ya está siendo talado',
    ['NOTIFY_LOG_TAKEN']         = 'Ese tronco ya fue recogido',
    ['NOTIFY_WOOD_LOADED']       = '¡Madera cargada! Llévala al aserradero',
    ['NOTIFY_ALREADY_ACTIVE']    = 'Ya tienes un trabajo activo',
    ['NOTIFY_PAID']              = 'Has cobrado $%s por la entrega. ¡Buen trabajo!',
    ['NOTIFY_PAID_XP']           = 'Has cobrado $%s y +%s XP. ¡Buen trabajo!',

    -- ═══════ Leñador — invitaciones (servidor) ═══════
    ['INV_INVALID_ID']           = 'ID inválida',
    ['INV_SELF']                 = 'No puedes invitarte a ti mismo',
    ['INV_NOT_ONLINE']           = 'No hay ningún jugador con la ID %s',
    ['INV_TOO_FAR']              = 'Ese jugador está demasiado lejos (%sm, máx. %sm)',
    ['INV_NOT_LEADER']           = 'Solo el líder del grupo puede invitar',
    ['INV_CREW_FULL']            = 'El grupo está lleno (máx. 4 jugadores)',
    ['INV_ALREADY_GROUP']        = 'Ese jugador ya está en un grupo',
    ['INV_PENDING']              = 'Ya tienes una invitación pendiente con ese jugador',
    ['INV_SENT']                 = 'Invitación enviada a %s',
    ['INV_EXPIRED']              = 'La invitación a %s ha caducado',
    ['INV_REJECTED']             = '%s ha rechazado la invitación',
    ['INV_CREW_FULL_JOIN']       = 'El grupo está lleno, %s no pudo unirse',
    ['INV_JOINED_LEADER']        = '%s se ha unido al grupo',
    ['INV_JOINED_SELF']          = 'Te has unido al grupo',

    -- ═══════ Respuestas del servidor ═══════
    ['SRV_NOT_ENOUGH_MONEY']     = 'Dinero insuficiente',
    ['SRV_MAX_LEVEL']            = 'Ya está al nivel máximo',
    ['SRV_REQUIRES_LEVEL']       = 'Requiere nivel %d',
    ['SRV_CREW_FULL']            = 'El equipo ya está completo',
    ['SRV_HAVE_PENDING_INVITE']  = 'Ya tienes una invitación pendiente',
    ['SRV_PLAYER_HAS_INVITE']    = 'El jugador ya tiene una invitación pendiente',
    ['SRV_PLAYER_IN_SESSION']    = 'El jugador ya está en una sesión',

    -- ═══════ Mensajes toast ═══════
    ['TOAST_CREW_FULL']          = 'El equipo ya está lleno',
    ['TOAST_INVALID_ID']         = 'Ingresa un ID de jugador válido',
    ['TOAST_REMOVED_CREW_NAME']  = '%s eliminado del equipo',
    ['TOAST_CREW_JOINED_NAME']   = '%s se unió a tu equipo',
    ['TOAST_CREW_LEFT_NAME']     = '%s abandonó el equipo',
    ['TOAST_INVITE_DECLINED']    = 'Invitación rechazada',
    ['TOAST_UPGRADED']           = '¡Mejora completada!',

    -- ═══════ Tipos de ruta ═══════
    ['ROUTE_CARGO']              = 'CARGA',
    ['ROUTE_HEAVY_CARGO']        = 'CARGA PESADA',
    ['UI_CONTAINER_FILTER']      = 'CONTENEDOR',
    ['UI_TANKER_FILTER']         = 'CISTERNA',

    -- ═══════ Etiquetas de UI ═══════
    ['UI_LOADING']               = 'Cargando...',
    ['UI_LEVEL']                 = 'Nivel',
    ['UI_LEVEL_WORD']            = 'Nivel',
    ['UI_EXP']                   = 'EXP',
    ['UI_PROFILE']               = 'Perfil',
    ['UI_NICKNAME']              = 'Nombre',
    ['UI_PLAYER']                = 'Jugador',
    ['UI_LEADER']                = 'Líder',
    ['UI_PARTNER']               = 'Compañero',
    ['UI_PLAYER_LIST']           = 'Lista de Jugadores',
    ['UI_INVITE_PLAYER']         = 'Invitar Jugador',
    ['UI_SEND']                  = 'Enviar',
    ['UI_CANCEL']                = 'Cancelar',
    ['UI_CONFIRM_BTN']           = 'Confirmar',
    ['UI_ACCEPT']                = 'Aceptar',
    ['UI_DECLINE']               = 'Rechazar',
    ['UI_KICK']                  = 'Expulsar',
    ['UI_BACK']                  = 'Atrás',
    ['UI_MAX']                   = 'MÁX',

    -- ═══════ Panel de trabajo ═══════
    ['UI_TRUCKER']               = 'TRABAJO',
    ['UI_HEADER_DESC']           = 'Selecciona una tarea, arma tu equipo y empieza a ganar.',
    ['UI_START_JOB_BTN']         = 'Iniciar Trabajo',
    ['UI_TASK_TYPE']             = 'Tipo de Tarea',
    ['UI_SELECT_ROUTE']          = 'Selecciona una ruta',
    ['UI_FIND_ROUTE']            = 'Buscar Ruta',
    ['UI_NO_ROUTES']             = 'No se encontraron rutas',
    ['UI_REWARD']                = 'Recompensa',
    ['UI_EXPERIENCE']            = 'Experiencia',

    -- ═══════ Búsqueda de rutas ═══════
    ['UI_SEARCH_ROUTES']         = 'Buscar rutas...',
    ['UI_SORT_LEVEL_ASC']        = 'Nivel ↑',
    ['UI_SORT_LEVEL_DESC']       = 'Nivel ↓',
    ['UI_SORT_DIST_ASC']         = 'Distancia ↑',
    ['UI_SORT_DIST_DESC']        = 'Distancia ↓',
    ['UI_SORT_PAY_ASC']          = 'Pago ↑',
    ['UI_SORT_PAY_DESC']         = 'Pago ↓',
    ['UI_FILTER_ALL']            = 'Todos',
    ['UI_FORKLIFT_REQ']          = 'Licencia de Montacargas Requerida',
    ['UI_DOCK_REQ']              = 'Licencia de Manejador de Muelle Requerida',
    ['UI_FORKLIFT_LICENSE_REQ']  = 'Licencia de montacargas requerida',
    ['UI_DOCK_LICENSE_REQ']      = 'Licencia de muelle requerida',

    -- ═══════ Notificación de invitación ═══════
    ['UI_JOB_WORD']              = 'TRABAJO',
    ['UI_INVITE']                = 'INVITACIÓN',
    ['UI_JOB_INVITE_DESC']       = 'te invitó a unirte al trabajo',

    -- ═══════ Atuendo ═══════
    ['UI_OUTFIT_DEFAULT']        = 'Ropa Normal',
    ['UI_OUTFIT_JOB']            = 'Uniforme de Trabajo',

    -- ═══════ Detalles / Cómo funciona ═══════
    ['UI_HOW_IT_WORKS']          = 'Cómo Funciona',
    ['UI_JOB_DETAILS']           = 'Detalles del Trabajo',
    ['UI_JOB_DETAILS_DESC']      = 'Dirígete al punto de recogida marcado, completa tus tareas y entrega de forma segura en el punto de destino.',
    ['UI_CARGO_LABEL']           = 'Carga',
    ['UI_SELECT_PLAYER']         = 'Selecciona un jugador para unirse a tu equipo',

    -- ═══════ Prompts de garaje ═══════
    ['PROMPT_ENTER_GARAGE']      = 'ENTRAR AL GARAJE',
    ['PROMPT_EXIT_GARAGE']       = 'SALIR DEL GARAJE',
    ['PROMPT_STORE_VEHICLE']     = 'GUARDAR VEHÍCULO',
    ['PROMPT_GARAGE_MANAGER']    = 'ADMINISTRADOR DEL GARAJE',

    -- ═══════ Panel de estadísticas ═══════
    ['UI_STATS_WORD']            = 'ESTADÍSTICAS',
    ['UI_CAREER_STATS']          = 'Estadísticas de Carrera',
    ['UI_TOTAL_DELIVERIES']      = 'Total de Entregas',
    ['UI_TOTAL_EARNED']          = 'Total Ganado',
    ['UI_TOTAL_KM']              = 'KM Totales',
    ['UI_DELIVERY_HISTORY']      = 'Historial de Entregas',
    ['UI_NO_HISTORY']            = 'Sin entregas aún. ¡Empieza tu primer trabajo!',
    ['UI_LEGAL_LEVEL']           = 'Nivel Legal',
    ['UI_ACTIVE_ROUTE']          = 'Ruta Activa',

    -- ═══════ HUD ═══════
    ['UI_ACTIVE_JOB']            = 'Trabajo Activo',
    ['UI_HEALTH']                = 'Salud',
    ['UI_FUEL_WORD']             = 'Combustible',

    -- ═══════ Selectores de reparación / combustible ═══════
    ['UI_SELECT_REPAIR']         = 'Seleccionar Kit de Reparación',
    ['UI_REPAIR_KIT']            = 'Kit de Reparación',
    ['UI_ADVANCED_KIT']          = 'Kit Avanzado',
    ['UI_SELECT_FUEL']           = 'Seleccionar Combustible',
    ['UI_FUEL_CAN']              = 'Bidón de Combustible',
    ['UI_PREMIUM_FUEL']          = 'Combustible Premium',

    -- ═══════ Atuendo / mejoras ═══════
    ['UI_OUTFIT']                = 'Atuendo',
    ['UI_SELECT_OUTFIT']         = 'Seleccionar atuendo',
    ['UI_LEVELS']                = 'Niveles',
    ['UI_UPGRADE']               = 'Mejorar',
    ['UI_UPGRADES']              = 'Mejoras',
    ['UI_LOCKED']                = 'Bloqueado',
    ['UI_UNLOCK']                = 'Desbloquear',
    ['UI_REQUIRES_LV']           = 'Requiere Nv.',
    ['UI_NEXT_LV']               = 'Siguiente nivel: Nv.',
    ['UI_UPG_CARRY']             = 'Carga',
    ['UI_UPG_SPEED']             = 'Velocidad',
    ['UI_UPG_AIM']               = 'Puntería',
    ['UI_UPG_YIELD']             = 'Rendimiento',
    ['UI_INVITE_UP_TO_3']        = 'Invitar hasta 3 compañeros',
    ['UI_INVITE_MORE']           = 'Invitar %s compañero(s) más',
    ['UI_INVITE_XP_BONUS']       = 'Invita compañeros para ganar bono de XP',
    ['UI_TEAM_BONUS']            = 'Bono de equipo',

    -- Blips
    ['BLIP_LOG']                 = 'Tronco',
    ['BLIP_TRUCK']               = 'Camión del grupo',
    ['BLIP_SAWMILL']             = 'Aserradero',
    ['BLIP_TREE']                = 'Árbol',
    ['BLIP_JOB']                 = 'Trabajo',
}