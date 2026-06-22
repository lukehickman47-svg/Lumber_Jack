Locales = Locales or {}
Locales['de'] = {
    -- Target / Interaktion
    ['TARGET_START_JOB']         = 'Arbeit starten',
    ['TARGET_CHOP_TREE']         = 'Baum fällen',
    ['TARGET_PICKUP_LOG']        = 'Baumstamm aufheben',
    ['TARGET_LOAD_TRUCK']        = 'LKW beladen',
    ['TARGET_GRAB_TRUNK']        = 'Stamm greifen',
    ['TARGET_PUT_BELT']          = 'Aufs Band legen',
    ['HELP_START_JOB']           = '~INPUT_CONTEXT~ ARBEIT STARTEN',

    -- Benachrichtigungen
    ['NOTIFY_NO_JOB_ACCESS']     = 'Du brauchst den passenden Job, um dieses Menü zu öffnen.',
    ['NOTIFY_NO_ACTIVE_JOB']     = 'Kein aktiver Job zum Abbrechen',
    ['NOTIFY_JOB_CANCELLED']     = 'Job abgebrochen',
    ['NOTIFY_JOB_CANCELLED_SELF']= 'Du hast den Job abgebrochen',
    ['NOTIFY_LEVEL_UP']          = 'Level aufgestiegen! Du bist jetzt Level %d',

    -- Holzfäller — Hilfetexte
    ['HELP_CHOP_TREE']           = '~INPUT_CONTEXT~ Baum fällen',
    ['HELP_PICKUP_LOG']          = '~INPUT_CONTEXT~ Stamm aufheben',
    ['HELP_PICKUP_LOG_N']        = '~INPUT_CONTEXT~ Stamm aufheben (%s/%s)',
    ['HELP_LOAD_WOOD']           = '~INPUT_CONTEXT~ Holz verladen (%s)',
    ['HELP_GRAB_TRUNK']          = '~INPUT_CONTEXT~ Stamm aus dem Laderaum nehmen',
    ['HELP_PUT_BELT']            = '~INPUT_CONTEXT~ Aufs Förderband legen',

    -- Holzfäller — Job-Tracker-Schritte
    ['TRACKER_STEP_VEHICLE']     = 'LKW nehmen',
    ['TRACKER_STEP_WORK']        = 'Holz fällen & laden',
    ['TRACKER_STEP_PROCESS']     = 'Holz verarbeiten',
    ['TRACKER_CTR_TREES']        = 'Bäume',
    ['TRACKER_CTR_WOOD']         = 'Holz',
    ['TRACKER_CTR_PROCESSED']    = 'Verarbeitet',
    ['TRACKER_ROUTE_NAME']       = 'Holzfäller-Route #%s',
    ['JT_GO_START']              = 'Zum Start',
    ['JT_COMPLETE_TASK']         = 'Aufgabe erfüllen',
    ['JT_DELIVER']               = 'Liefern',
    ['JT_COMPLETE']              = 'Abschließen',

    -- Holzfäller — Benachrichtigungen
    ['NOTIFY_JOB_STARTED']       = 'Job gestartet. Geh zum ersten Baum',
    ['NOTIFY_LEFT_TREE']         = 'Du hast dich vom Baum entfernt',
    ['NOTIFY_TREE_BEING_CHOPPED']= 'Dieser Baum wird bereits gefällt',
    ['NOTIFY_LOG_TAKEN']         = 'Dieser Stamm wurde bereits aufgehoben',
    ['NOTIFY_WOOD_LOADED']       = 'Holz verladen! Bring es zum Sägewerk',
    ['NOTIFY_ALREADY_ACTIVE']    = 'Du hast bereits einen aktiven Job',
    ['NOTIFY_PAID']              = 'Du hast $%s für die Lieferung erhalten. Gute Arbeit!',
    ['NOTIFY_PAID_XP']           = 'Du hast $%s und +%s XP erhalten. Gute Arbeit!',

    -- Einladungen
    ['INV_INVALID_ID']           = 'Ungültige ID',
    ['INV_SELF']                 = 'Du kannst dich nicht selbst einladen',
    ['INV_NOT_ONLINE']           = 'Es gibt keinen Spieler mit der ID %s',
    ['INV_TOO_FAR']              = 'Dieser Spieler ist zu weit weg (%sm, max. %sm)',
    ['INV_NOT_LEADER']           = 'Nur der Gruppenleiter kann einladen',
    ['INV_CREW_FULL']            = 'Die Gruppe ist voll (max. 4 Spieler)',
    ['INV_ALREADY_GROUP']        = 'Dieser Spieler ist bereits in einer Gruppe',
    ['INV_PENDING']              = 'Du hast bereits eine offene Einladung an diesen Spieler',
    ['INV_SENT']                 = 'Einladung an %s gesendet',
    ['INV_EXPIRED']              = 'Die Einladung an %s ist abgelaufen',
    ['INV_REJECTED']             = '%s hat die Einladung abgelehnt',
    ['INV_CREW_FULL_JOIN']       = 'Die Gruppe ist voll, %s konnte nicht beitreten',
    ['INV_JOINED_LEADER']        = '%s ist der Gruppe beigetreten',
    ['INV_JOINED_SELF']          = 'Du bist der Gruppe beigetreten',

    -- Server-Antworten
    ['SRV_NOT_ENOUGH_MONEY']     = 'Nicht genug Geld',
    ['SRV_MAX_LEVEL']            = 'Bereits auf maximalem Level',
    ['SRV_REQUIRES_LEVEL']       = 'Benötigt Level %d',
    ['SRV_CREW_FULL']            = 'Das Team ist bereits voll',
    ['SRV_HAVE_PENDING_INVITE']  = 'Du hast bereits eine offene Einladung',
    ['SRV_PLAYER_HAS_INVITE']    = 'Spieler hat bereits eine offene Einladung',
    ['SRV_PLAYER_IN_SESSION']    = 'Spieler ist bereits in einer Sitzung',

    -- Toast-Meldungen
    ['TOAST_CREW_FULL']          = 'Der Team-Platz ist bereits belegt',
    ['TOAST_INVALID_ID']         = 'Gib eine gültige Spieler-ID ein',
    ['TOAST_REMOVED_CREW_NAME']  = '%s aus dem Team entfernt',
    ['TOAST_CREW_JOINED_NAME']   = '%s ist deinem Team beigetreten',
    ['TOAST_CREW_LEFT_NAME']     = '%s hat das Team verlassen',
    ['TOAST_INVITE_DECLINED']    = 'Einladung abgelehnt',
    ['TOAST_UPGRADED']           = 'Upgrade abgeschlossen!',

    -- Routentypen
    ['ROUTE_CARGO']              = 'FRACHT',
    ['ROUTE_HEAVY_CARGO']        = 'SCHWERLAST',
    ['UI_CONTAINER_FILTER']      = 'CONTAINER',
    ['UI_TANKER_FILTER']         = 'TANKWAGEN',

    -- UI-Labels
    ['UI_LOADING']               = 'Lädt...',
    ['UI_LEVEL']                 = 'Level',
    ['UI_LEVEL_WORD']            = 'Level',
    ['UI_EXP']                   = 'EP',
    ['UI_PROFILE']               = 'Profil',
    ['UI_NICKNAME']              = 'Spitzname',
    ['UI_PLAYER']                = 'Spieler',
    ['UI_LEADER']                = 'Anführer',
    ['UI_PARTNER']               = 'Partner',
    ['UI_PLAYER_LIST']           = 'Spielerliste',
    ['UI_INVITE_PLAYER']         = 'Spieler einladen',
    ['UI_SEND']                  = 'Senden',
    ['UI_CANCEL']                = 'Abbrechen',
    ['UI_CONFIRM_BTN']           = 'Bestätigen',
    ['UI_ACCEPT']                = 'Annehmen',
    ['UI_DECLINE']               = 'Ablehnen',
    ['UI_KICK']                  = 'Entfernen',
    ['UI_BACK']                  = 'Zurück',
    ['UI_MAX']                   = 'MAX',

    -- Job-Panel
    ['UI_TRUCKER']               = 'HOLZFÄLLER-JOB',
    ['UI_HEADER_DESC']           = 'Willkommen beim Holzfäller-Job! Hier fällst du Bäume, lädst Stämme auf deinen Laster und lieferst sie ans Sägewerk. Verdiene Geld und Erfahrung, während du Level aufsteigst.',
    ['UI_START_JOB_BTN']         = 'Job starten',
    ['UI_TASK_TYPE']             = 'Aufgabentyp',
    ['UI_SELECT_ROUTE']          = 'Route auswählen',
    ['UI_FIND_ROUTE']            = 'Route finden',
    ['UI_NO_ROUTES']             = 'Keine Routen gefunden',
    ['UI_REWARD']                = 'Belohnung',
    ['UI_EXPERIENCE']            = 'Erfahrung',

    -- Einladungs-Benachrichtigung
    ['UI_JOB_WORD']              = 'JOB',
    ['UI_INVITE']                = 'EINLADUNG',
    ['UI_JOB_INVITE_DESC']       = 'hat dich zum Job eingeladen',

    -- Kleidung
    ['UI_OUTFIT_DEFAULT']        = 'Standardkleidung',
    ['UI_OUTFIT_JOB']            = 'Arbeitskleidung',

    -- Details / So funktioniert es
    ['UI_HOW_IT_WORKS']          = 'So funktioniert es',
    ['UI_JOB_DETAILS']           = 'Job-Details',
    ['UI_JOB_DETAILS_DESC']      = 'Geh zum markierten Abholpunkt, erledige deine Aufgaben und liefere sicher am Zielort ab.',
    ['UI_CARGO_LABEL']           = 'Fracht',
    ['UI_SELECT_PLAYER']         = 'Wähle einen Spieler für dein Team aus',

    -- Routen-/Lizenzanforderungen
    ['UI_FORKLIFT_REQ']          = 'Gabelstapler-Lizenz erforderlich',
    ['UI_DOCK_REQ']              = 'Hafenarbeiter-Lizenz erforderlich',
    ['UI_FORKLIFT_LICENSE_REQ']  = 'Gabelstapler-Lizenz erforderlich',
    ['UI_DOCK_LICENSE_REQ']      = 'Hafenarbeiter-Lizenz erforderlich',

    -- Statistik-Panel
    ['UI_CAREER_STATS']          = 'Karriere-Statistik',
    ['UI_TOTAL_EARNED']          = 'Gesamt verdient',
    ['UI_DELIVERY_HISTORY']      = 'Lieferverlauf',
    ['UI_NO_HISTORY']            = 'Noch keine Lieferungen. Starte deinen ersten Job!',
    ['UI_LEGAL_LEVEL']           = 'Legales Level',
    ['UI_ACTIVE_ROUTE']          = 'Aktive Route',

    -- HUD
    ['UI_ACTIVE_JOB']            = 'Aktiver Job',

    -- Outfit / Verbesserungen
    ['UI_OUTFIT']                = 'Outfit',
    ['UI_SELECT_OUTFIT']         = 'Outfit auswählen',
    ['UI_LEVELS']                = 'Stufen',
    ['UI_UPGRADE']               = 'Verbessern',
    ['UI_UPGRADES']              = 'Verbesserungen',
    ['UI_LOCKED']                = 'Gesperrt',
    ['UI_UNLOCK']                = 'Entsperren',
    ['UI_REQUIRES_LV']           = 'Benötigt Stufe ',
    ['UI_NEXT_LV']               = 'Nächste Stufe: ',
    ['UI_UPG_CARRY']             = 'Last',
    ['UI_UPG_SPEED']             = 'Geschwindigkeit',
    ['UI_UPG_AIM']               = 'Zielgenauigkeit',
    ['UI_UPG_YIELD']             = 'Ertrag',
    ['UI_INVITE_UP_TO_3']        = 'Bis zu 3 Partner einladen',
    ['UI_INVITE_MORE']           = '%s weitere Partner einladen',
    ['UI_INVITE_XP_BONUS']       = 'Partner einladen für XP-Bonus',
    ['UI_TEAM_BONUS']            = 'Teambonus',

    -- Blips
    ['BLIP_LOG']                 = 'Baumstamm',
    ['BLIP_TRUCK']               = 'Gruppen-LKW',
    ['BLIP_SAWMILL']             = 'Sägewerk',
    ['BLIP_TREE']                = 'Baum',
    ['BLIP_JOB']                 = 'Job',
}