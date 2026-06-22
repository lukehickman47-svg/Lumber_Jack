Locales = Locales or {}
Locales['bg'] = {
    -- Цел / Взаимодействие
    ['TARGET_START_JOB']         = 'Започни работа',
    ['TARGET_CHOP_TREE']         = 'Отсечи дърво',
    ['TARGET_PICKUP_LOG']        = 'Вземи трупа',
    ['TARGET_LOAD_TRUCK']        = 'Натовари камиона',
    ['TARGET_GRAB_TRUNK']        = 'Хвани трупа',
    ['TARGET_PUT_BELT']          = 'Постави на лентата',
    ['HELP_START_JOB']           = '~INPUT_CONTEXT~ ЗАПОЧНИ РАБОТА',

    -- Известия
    ['NOTIFY_NO_JOB_ACCESS']     = 'Нужна ти е съответната работа за достъп до това меню.',
    ['NOTIFY_NO_ACTIVE_JOB']     = 'Няма активна работа за отказ',
    ['NOTIFY_JOB_CANCELLED']     = 'Работата е отказана',
    ['NOTIFY_JOB_CANCELLED_SELF']= 'Ти отказа работата',
    ['NOTIFY_LEVEL_UP']          = 'Ново ниво! Вече си ниво %d',

    -- Дървар — помощни текстове
    ['HELP_CHOP_TREE']           = '~INPUT_CONTEXT~ Отсечи дърво',
    ['HELP_PICKUP_LOG']          = '~INPUT_CONTEXT~ Вземи дънер',
    ['HELP_PICKUP_LOG_N']        = '~INPUT_CONTEXT~ Вземи дънер (%s/%s)',
    ['HELP_LOAD_WOOD']           = '~INPUT_CONTEXT~ Натовари дървесина (%s)',
    ['HELP_GRAB_TRUNK']          = '~INPUT_CONTEXT~ Вземи дънер от камиона',
    ['HELP_PUT_BELT']            = '~INPUT_CONTEXT~ Постави на конвейера',

    -- Дървар — стъпки на тракера
    ['TRACKER_STEP_VEHICLE']     = 'Вземи камиона',
    ['TRACKER_STEP_WORK']        = 'Сечи и товари дърва',
    ['TRACKER_STEP_PROCESS']     = 'Обработи дървата',
    ['TRACKER_CTR_TREES']        = 'Дървета',
    ['TRACKER_CTR_WOOD']         = 'Дърва',
    ['TRACKER_CTR_PROCESSED']    = 'Обработени',
    ['TRACKER_ROUTE_NAME']       = 'Маршрут за сеч #%s',
    ['JT_GO_START']              = 'Към старта',
    ['JT_COMPLETE_TASK']         = 'Изпълни задачата',
    ['JT_DELIVER']               = 'Достави',
    ['JT_COMPLETE']              = 'Завърши',

    -- Дървар — известия
    ['NOTIFY_JOB_STARTED']       = 'Работата започна. Иди до първото дърво',
    ['NOTIFY_LEFT_TREE']         = 'Отдалечи се от дървото',
    ['NOTIFY_TREE_BEING_CHOPPED']= 'Това дърво вече се сече',
    ['NOTIFY_LOG_TAKEN']         = 'Този дънер вече е вдигнат',
    ['NOTIFY_WOOD_LOADED']       = 'Дървесината е натоварена! Закарай я до дъскорезницата',
    ['NOTIFY_ALREADY_ACTIVE']    = 'Вече имаш активна работа',
    ['NOTIFY_PAID']              = 'Получи $%s за доставката. Браво!',
    ['NOTIFY_PAID_XP']           = 'Получи $%s и +%s опит. Браво!',

    -- Покани
    ['INV_INVALID_ID']           = 'Невалиден ID',
    ['INV_SELF']                 = 'Не можеш да поканиш себе си',
    ['INV_NOT_ONLINE']           = 'Няма играч с ID %s',
    ['INV_TOO_FAR']              = 'Този играч е твърде далеч (%sм, макс. %sм)',
    ['INV_NOT_LEADER']           = 'Само лидерът на групата може да кани',
    ['INV_CREW_FULL']            = 'Групата е пълна (макс. 4 играча)',
    ['INV_ALREADY_GROUP']        = 'Този играч вече е в група',
    ['INV_PENDING']              = 'Вече имаш чакаща покана към този играч',
    ['INV_SENT']                 = 'Поканата е изпратена до %s',
    ['INV_EXPIRED']              = 'Поканата до %s изтече',
    ['INV_REJECTED']             = '%s отказа поканата',
    ['INV_CREW_FULL_JOIN']       = 'Групата е пълна, %s не можа да се присъедини',
    ['INV_JOINED_LEADER']        = '%s се присъедини към групата',
    ['INV_JOINED_SELF']          = 'Присъедини се към групата',

    -- Отговори от сървъра
    ['SRV_NOT_ENOUGH_MONEY']     = 'Недостатъчно пари',
    ['SRV_MAX_LEVEL']            = 'Вече си на максимално ниво',
    ['SRV_REQUIRES_LEVEL']       = 'Изисква ниво %d',
    ['SRV_CREW_FULL']            = 'Отборът вече е пълен',
    ['SRV_HAVE_PENDING_INVITE']  = 'Вече имаш чакаща покана',
    ['SRV_PLAYER_HAS_INVITE']    = 'Играчът вече има чакаща покана',
    ['SRV_PLAYER_IN_SESSION']    = 'Играчът вече е в сесия',

    -- Изскачащи съобщения
    ['TOAST_CREW_FULL']          = 'Мястото в отбора вече е заето',
    ['TOAST_INVALID_ID']         = 'Въведи валиден ID на играч',
    ['TOAST_REMOVED_CREW_NAME']  = '%s е премахнат от отбора',
    ['TOAST_CREW_JOINED_NAME']   = '%s се присъедини към отбора ти',
    ['TOAST_CREW_LEFT_NAME']     = '%s напусна отбора',
    ['TOAST_INVITE_DECLINED']    = 'Поканата е отказана',
    ['TOAST_UPGRADED']           = 'Надграждането е завършено!',

    -- Типове маршрути
    ['ROUTE_CARGO']              = 'ТОВАР',
    ['ROUTE_HEAVY_CARGO']        = 'ТЕЖЪК ТОВАР',
    ['UI_CONTAINER_FILTER']      = 'КОНТЕЙНЕР',
    ['UI_TANKER_FILTER']         = 'ЦИСТЕРНА',

    -- Етикети на интерфейса
    ['UI_LOADING']               = 'Зареждане...',
    ['UI_LEVEL']                 = 'Ниво',
    ['UI_LEVEL_WORD']            = 'Ниво',
    ['UI_EXP']                   = 'ОПИТ',
    ['UI_PROFILE']               = 'Профил',
    ['UI_NICKNAME']              = 'Псевдоним',
    ['UI_PLAYER']                = 'Играч',
    ['UI_LEADER']                = 'Лидер',
    ['UI_PARTNER']               = 'Партньор',
    ['UI_PLAYER_LIST']           = 'Списък с играчи',
    ['UI_INVITE_PLAYER']         = 'Покани играч',
    ['UI_SEND']                  = 'Изпрати',
    ['UI_CANCEL']                = 'Отказ',
    ['UI_CONFIRM_BTN']           = 'Потвърди',
    ['UI_ACCEPT']                = 'Приеми',
    ['UI_DECLINE']               = 'Откажи',
    ['UI_KICK']                  = 'Изгони',
    ['UI_BACK']                  = 'Назад',
    ['UI_MAX']                   = 'МАКС',

    -- Панел на работата
    ['UI_TRUCKER']               = 'РАБОТА ДЪРВАР',
    ['UI_HEADER_DESC']           = 'Добре дошъл в работата на дървар! Тук сечеш дървета, товариш дънери на камиона и ги доставяш до дъскорезницата. Печели пари и опит, докато покачваш нива.',
    ['UI_START_JOB_BTN']         = 'Започни работа',
    ['UI_TASK_TYPE']             = 'Тип задача',
    ['UI_SELECT_ROUTE']          = 'Избери маршрут',
    ['UI_FIND_ROUTE']            = 'Намери маршрут',
    ['UI_NO_ROUTES']             = 'Няма намерени маршрути',
    ['UI_REWARD']                = 'Награда',
    ['UI_EXPERIENCE']            = 'Опит',

    -- Известие за покана
    ['UI_JOB_WORD']              = 'РАБОТА',
    ['UI_INVITE']                = 'ПОКАНА',
    ['UI_JOB_INVITE_DESC']       = 'те покани на работата',

    -- Облекло
    ['UI_OUTFIT_DEFAULT']        = 'Обикновени дрехи',
    ['UI_OUTFIT_JOB']            = 'Работно облекло',

    -- Детайли / Как работи
    ['UI_HOW_IT_WORKS']          = 'Как работи',
    ['UI_JOB_DETAILS']           = 'Детайли за работата',
    ['UI_JOB_DETAILS_DESC']      = 'Иди до маркираната точка за товарене, изпълни задачите си и достави безопасно до точката за разтоварване.',
    ['UI_CARGO_LABEL']           = 'Товар',
    ['UI_SELECT_PLAYER']         = 'Избери играч за своя отбор',

    -- Изисквания за маршрут / лиценз
    ['UI_FORKLIFT_REQ']          = 'Изисква се лиценз за мотокар',
    ['UI_DOCK_REQ']              = 'Изисква се лиценз за пристанищен работник',
    ['UI_FORKLIFT_LICENSE_REQ']  = 'Изисква се лиценз за мотокар',
    ['UI_DOCK_LICENSE_REQ']      = 'Изисква се лиценз за пристанищен работник',

    -- Панел със статистики
    ['UI_CAREER_STATS']          = 'Статистики за кариерата',
    ['UI_TOTAL_EARNED']          = 'Общо спечелено',
    ['UI_DELIVERY_HISTORY']      = 'История на доставките',
    ['UI_NO_HISTORY']            = 'Все още няма доставки. Започни първата си работа!',
    ['UI_LEGAL_LEVEL']           = 'Легално ниво',
    ['UI_ACTIVE_ROUTE']          = 'Активен маршрут',

    -- HUD
    ['UI_ACTIVE_JOB']            = 'Активна работа',

    -- Облекло / Подобрения
    ['UI_OUTFIT']                = 'Облекло',
    ['UI_SELECT_OUTFIT']         = 'Избери облекло',
    ['UI_LEVELS']                = 'Нива',
    ['UI_UPGRADE']               = 'Подобри',
    ['UI_UPGRADES']              = 'Подобрения',
    ['UI_LOCKED']                = 'Заключено',
    ['UI_UNLOCK']                = 'Отключи',
    ['UI_REQUIRES_LV']           = 'Изисква ниво ',
    ['UI_NEXT_LV']               = 'Следващо ниво: ',
    ['UI_UPG_CARRY']             = 'Товар',
    ['UI_UPG_SPEED']             = 'Скорост',
    ['UI_UPG_AIM']               = 'Прицел',
    ['UI_UPG_YIELD']             = 'Добив',
    ['UI_INVITE_UP_TO_3']        = 'Покани до 3 партньора',
    ['UI_INVITE_MORE']           = 'Покани още %s партньор(а)',
    ['UI_INVITE_XP_BONUS']       = 'Кани партньори за XP бонус',
    ['UI_TEAM_BONUS']            = 'Екипен бонус',

    -- Blips
    ['BLIP_LOG']                 = 'Трупец',
    ['BLIP_TRUCK']               = 'Камион на групата',
    ['BLIP_SAWMILL']             = 'Дъскорезница',
    ['BLIP_TREE']                = 'Дърво',
    ['BLIP_JOB']                 = 'Работа',
}