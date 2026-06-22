Locales = Locales or {}
Locales['fr'] = {
    -- Cible / Interaction
    ['TARGET_START_JOB']         = 'Commencer le travail',
    ['TARGET_CHOP_TREE']         = 'Abattre l\'arbre',
    ['TARGET_PICKUP_LOG']        = 'Ramasser la bûche',
    ['TARGET_LOAD_TRUCK']        = 'Charger le camion',
    ['TARGET_GRAB_TRUNK']        = 'Saisir la bûche',
    ['TARGET_PUT_BELT']          = 'Poser sur le tapis',
    ['HELP_START_JOB']           = '~INPUT_CONTEXT~ COMMENCER LE TRAVAIL',

    -- Notifications
    ['NOTIFY_NO_JOB_ACCESS']     = 'Tu as besoin du métier requis pour accéder à ce menu.',
    ['NOTIFY_NO_ACTIVE_JOB']     = 'Aucun travail actif à annuler',
    ['NOTIFY_JOB_CANCELLED']     = 'Travail annulé',
    ['NOTIFY_JOB_CANCELLED_SELF']= 'Tu as annulé le travail',
    ['NOTIFY_LEVEL_UP']          = 'Niveau supérieur ! Tu es maintenant niveau %d',

    -- Bûcheron — aides de jeu
    ['HELP_CHOP_TREE']           = "~INPUT_CONTEXT~ Abattre l'arbre",
    ['HELP_PICKUP_LOG']          = '~INPUT_CONTEXT~ Ramasser une bûche',
    ['HELP_PICKUP_LOG_N']        = '~INPUT_CONTEXT~ Ramasser une bûche (%s/%s)',
    ['HELP_LOAD_WOOD']           = '~INPUT_CONTEXT~ Charger le bois (%s)',
    ['HELP_GRAB_TRUNK']          = '~INPUT_CONTEXT~ Prendre une bûche du camion',
    ['HELP_PUT_BELT']            = '~INPUT_CONTEXT~ Poser sur le convoyeur',

    -- Bûcheron — étapes du tracker
    ['TRACKER_STEP_VEHICLE']     = 'Prendre le camion',
    ['TRACKER_STEP_WORK']        = 'Couper et charger le bois',
    ['TRACKER_STEP_PROCESS']     = 'Traiter le bois',
    ['TRACKER_CTR_TREES']        = 'Arbres',
    ['TRACKER_CTR_WOOD']         = 'Bois',
    ['TRACKER_CTR_PROCESSED']    = 'Traités',
    ['TRACKER_ROUTE_NAME']       = 'Route de coupe #%s',
    ['JT_GO_START']              = 'Aller au départ',
    ['JT_COMPLETE_TASK']         = 'Accomplir la tâche',
    ['JT_DELIVER']               = 'Livrer',
    ['JT_COMPLETE']              = 'Terminer',

    -- Bûcheron — notifications
    ['NOTIFY_JOB_STARTED']       = 'Travail commencé. Va au premier arbre',
    ['NOTIFY_LEFT_TREE']         = "Tu t'es éloigné de l'arbre",
    ['NOTIFY_TREE_BEING_CHOPPED']= "Cet arbre est déjà en train d'être abattu",
    ['NOTIFY_LOG_TAKEN']         = 'Cette bûche a déjà été ramassée',
    ['NOTIFY_WOOD_LOADED']       = 'Bois chargé ! Apporte-le à la scierie',
    ['NOTIFY_ALREADY_ACTIVE']    = 'Tu as déjà un travail actif',
    ['NOTIFY_PAID']              = 'Tu as gagné $%s pour la livraison. Beau travail !',
    ['NOTIFY_PAID_XP']           = 'Tu as gagné $%s et +%s XP. Beau travail !',

    -- Invitations
    ['INV_INVALID_ID']           = 'ID invalide',
    ['INV_SELF']                 = "Tu ne peux pas t'inviter toi-même",
    ['INV_NOT_ONLINE']           = "Aucun joueur avec l'ID %s",
    ['INV_TOO_FAR']              = 'Ce joueur est trop loin (%sm, max %sm)',
    ['INV_NOT_LEADER']           = 'Seul le chef du groupe peut inviter',
    ['INV_CREW_FULL']            = 'Le groupe est plein (max 4 joueurs)',
    ['INV_ALREADY_GROUP']        = 'Ce joueur est déjà dans un groupe',
    ['INV_PENDING']              = 'Tu as déjà une invitation en attente pour ce joueur',
    ['INV_SENT']                 = 'Invitation envoyée à %s',
    ['INV_EXPIRED']              = "L'invitation à %s a expiré",
    ['INV_REJECTED']             = "%s a refusé l'invitation",
    ['INV_CREW_FULL_JOIN']       = "Le groupe est plein, %s n'a pas pu rejoindre",
    ['INV_JOINED_LEADER']        = '%s a rejoint le groupe',
    ['INV_JOINED_SELF']          = 'Tu as rejoint le groupe',

    -- Réponses serveur
    ['SRV_NOT_ENOUGH_MONEY']     = "Pas assez d'argent",
    ['SRV_MAX_LEVEL']            = 'Déjà au niveau maximum',
    ['SRV_REQUIRES_LEVEL']       = 'Nécessite le niveau %d',
    ['SRV_CREW_FULL']            = "L'équipe est déjà complète",
    ['SRV_HAVE_PENDING_INVITE']  = 'Tu as déjà une invitation en attente',
    ['SRV_PLAYER_HAS_INVITE']    = 'Le joueur a déjà une invitation en attente',
    ['SRV_PLAYER_IN_SESSION']    = 'Le joueur est déjà dans une session',

    -- Messages toast
    ['TOAST_CREW_FULL']          = "La place dans l'équipe est déjà prise",
    ['TOAST_INVALID_ID']         = 'Entre un ID de joueur valide',
    ['TOAST_REMOVED_CREW_NAME']  = "%s retiré de l'équipe",
    ['TOAST_CREW_JOINED_NAME']   = '%s a rejoint ton équipe',
    ['TOAST_CREW_LEFT_NAME']     = "%s a quitté l'équipe",
    ['TOAST_INVITE_DECLINED']    = 'Invitation refusée',
    ['TOAST_UPGRADED']           = 'Amélioration terminée !',

    -- Types de route
    ['ROUTE_CARGO']              = 'CARGAISON',
    ['ROUTE_HEAVY_CARGO']        = 'CARGAISON LOURDE',
    ['UI_CONTAINER_FILTER']      = 'CONTENEUR',
    ['UI_TANKER_FILTER']         = 'CITERNE',

    -- Libellés UI
    ['UI_LOADING']               = 'Chargement...',
    ['UI_LEVEL']                 = 'Niveau',
    ['UI_LEVEL_WORD']            = 'Niveau',
    ['UI_EXP']                   = 'EXP',
    ['UI_PROFILE']               = 'Profil',
    ['UI_NICKNAME']              = 'Pseudo',
    ['UI_PLAYER']                = 'Joueur',
    ['UI_LEADER']                = 'Chef',
    ['UI_PARTNER']               = 'Partenaire',
    ['UI_PLAYER_LIST']           = 'Liste des joueurs',
    ['UI_INVITE_PLAYER']         = 'Inviter un joueur',
    ['UI_SEND']                  = 'Envoyer',
    ['UI_CANCEL']                = 'Annuler',
    ['UI_CONFIRM_BTN']           = 'Confirmer',
    ['UI_ACCEPT']                = 'Accepter',
    ['UI_DECLINE']               = 'Refuser',
    ['UI_KICK']                  = 'Exclure',
    ['UI_BACK']                  = 'Retour',
    ['UI_MAX']                   = 'MAX',

    -- Panneau du travail
    ['UI_TRUCKER']               = 'MÉTIER DE BÛCHERON',
    ['UI_HEADER_DESC']           = "Bienvenue dans le métier de bûcheron ! Ici tu abats des arbres, charges les bûches sur ton camion et les livres à la scierie. Gagne de l'argent et de l'expérience en montant de niveau.",
    ['UI_START_JOB_BTN']         = 'Commencer le travail',
    ['UI_TASK_TYPE']             = 'Type de tâche',
    ['UI_SELECT_ROUTE']          = 'Choisir un itinéraire',
    ['UI_FIND_ROUTE']            = 'Trouver un itinéraire',
    ['UI_NO_ROUTES']             = 'Aucun itinéraire trouvé',
    ['UI_REWARD']                = 'Récompense',
    ['UI_EXPERIENCE']            = 'Expérience',

    -- Notification d'invitation
    ['UI_JOB_WORD']              = 'MÉTIER',
    ['UI_INVITE']                = 'INVITATION',
    ['UI_JOB_INVITE_DESC']       = "t'a invité à rejoindre le travail",

    -- Tenue
    ['UI_OUTFIT_DEFAULT']        = 'Vêtements par défaut',
    ['UI_OUTFIT_JOB']            = 'Tenue de travail',

    -- Détails / Comment ça marche
    ['UI_HOW_IT_WORKS']          = 'Comment ça marche',
    ['UI_JOB_DETAILS']           = 'Détails du travail',
    ['UI_JOB_DETAILS_DESC']      = 'Rends-toi au point de collecte marqué, accomplis tes tâches et livre en toute sécurité au point de dépôt.',
    ['UI_CARGO_LABEL']           = 'Cargaison',
    ['UI_SELECT_PLAYER']         = 'Choisis un joueur pour rejoindre ton équipe',

    -- Exigences de route / licence
    ['UI_FORKLIFT_REQ']          = 'Permis de chariot élévateur requis',
    ['UI_DOCK_REQ']              = 'Permis de docker requis',
    ['UI_FORKLIFT_LICENSE_REQ']  = 'Permis de chariot élévateur requis',
    ['UI_DOCK_LICENSE_REQ']      = 'Permis de docker requis',

    -- Panneau de statistiques
    ['UI_CAREER_STATS']          = 'Statistiques de carrière',
    ['UI_TOTAL_EARNED']          = 'Total gagné',
    ['UI_DELIVERY_HISTORY']      = 'Historique des livraisons',
    ['UI_NO_HISTORY']            = "Aucune livraison pour l'instant. Commence ton premier travail !",
    ['UI_LEGAL_LEVEL']           = 'Niveau légal',
    ['UI_ACTIVE_ROUTE']          = 'Itinéraire actif',

    -- HUD
    ['UI_ACTIVE_JOB']            = 'Travail actif',

    -- Tenue / Améliorations
    ['UI_OUTFIT']                = 'Tenue',
    ['UI_SELECT_OUTFIT']         = "Choisir une tenue",
    ['UI_LEVELS']                = 'Niveaux',
    ['UI_UPGRADE']               = 'Améliorer',
    ['UI_UPGRADES']              = 'Améliorations',
    ['UI_LOCKED']                = 'Verrouillé',
    ['UI_UNLOCK']                = 'Déverrouiller',
    ['UI_REQUIRES_LV']           = 'Nécessite niv. ',
    ['UI_NEXT_LV']               = 'Prochain niveau : niv. ',
    ['UI_UPG_CARRY']             = 'Charge',
    ['UI_UPG_SPEED']             = 'Vitesse',
    ['UI_UPG_AIM']               = 'Précision',
    ['UI_UPG_YIELD']             = 'Rendement',
    ['UI_INVITE_UP_TO_3']        = "Inviter jusqu'à 3 partenaires",
    ['UI_INVITE_MORE']           = 'Inviter %s partenaire(s) de plus',
    ['UI_INVITE_XP_BONUS']       = 'Invitez des partenaires pour gagner un bonus XP',
    ['UI_TEAM_BONUS']            = "Bonus d'équipe",

    -- Blips
    ['BLIP_LOG']                 = 'Bûche',
    ['BLIP_TRUCK']               = 'Camion du groupe',
    ['BLIP_SAWMILL']             = 'Scierie',
    ['BLIP_TREE']                = 'Arbre',
    ['BLIP_JOB']                 = 'Travail',
}