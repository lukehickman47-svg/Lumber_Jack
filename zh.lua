Locales = Locales or {}
Locales['fa'] = {
    -- هدف / تعامل
    ['TARGET_START_JOB']         = 'شروع کار',
    ['TARGET_CHOP_TREE']         = 'قطع درخت',
    ['TARGET_PICKUP_LOG']        = 'برداشتن چوب',
    ['TARGET_LOAD_TRUCK']        = 'بارگیری کامیون',
    ['TARGET_GRAB_TRUNK']        = 'گرفتن تنه',
    ['TARGET_PUT_BELT']          = 'گذاشتن روی نوار',
    ['HELP_START_JOB']           = '~INPUT_CONTEXT~ شروع کار',

    -- اعلان‌ها
    ['NOTIFY_NO_JOB_ACCESS']     = 'برای دسترسی به این منو به شغل موردنیاز نیاز داری.',
    ['NOTIFY_NO_ACTIVE_JOB']     = 'هیچ کار فعالی برای لغو وجود ندارد',
    ['NOTIFY_JOB_CANCELLED']     = 'کار لغو شد',
    ['NOTIFY_JOB_CANCELLED_SELF']= 'تو کار را لغو کردی',
    ['NOTIFY_LEVEL_UP']          = 'لِوِل بالا رفت! حالا لِوِل %d هستی',

    -- هیزم‌شکن — متن‌های راهنما
    ['HELP_CHOP_TREE']           = '~INPUT_CONTEXT~ قطع درخت',
    ['HELP_PICKUP_LOG']          = '~INPUT_CONTEXT~ برداشتن کنده',
    ['HELP_PICKUP_LOG_N']        = '~INPUT_CONTEXT~ برداشتن کنده (%s/%s)',
    ['HELP_LOAD_WOOD']           = '~INPUT_CONTEXT~ بارگیری چوب (%s)',
    ['HELP_GRAB_TRUNK']          = '~INPUT_CONTEXT~ برداشتن کنده از کامیون',
    ['HELP_PUT_BELT']            = '~INPUT_CONTEXT~ گذاشتن روی نوار نقاله',

    -- هیزم‌شکن — مراحل ردیاب
    ['TRACKER_STEP_VEHICLE']     = 'گرفتن کامیون',
    ['TRACKER_STEP_WORK']        = 'قطع و بارگیری چوب',
    ['TRACKER_STEP_PROCESS']     = 'پردازش چوب',
    ['TRACKER_CTR_TREES']        = 'درختان',
    ['TRACKER_CTR_WOOD']         = 'چوب',
    ['TRACKER_CTR_PROCESSED']    = 'پردازش‌شده',
    ['TRACKER_ROUTE_NAME']       = 'مسیر قطع #%s',
    ['JT_GO_START']              = 'رفتن به شروع',
    ['JT_COMPLETE_TASK']         = 'تکمیل وظیفه',
    ['JT_DELIVER']               = 'تحویل دادن',
    ['JT_COMPLETE']              = 'تکمیل',

    -- هیزم‌شکن — اعلان‌ها
    ['NOTIFY_JOB_STARTED']       = 'کار شروع شد. به اولین درخت برو',
    ['NOTIFY_LEFT_TREE']         = 'از درخت دور شدی',
    ['NOTIFY_TREE_BEING_CHOPPED']= 'این درخت در حال قطع شدن است',
    ['NOTIFY_LOG_TAKEN']         = 'این کنده قبلاً برداشته شده',
    ['NOTIFY_WOOD_LOADED']       = 'چوب بارگیری شد! آن را به کارخانه چوب‌بری ببر',
    ['NOTIFY_ALREADY_ACTIVE']    = 'تو همین حالا یک کار فعال داری',
    ['NOTIFY_PAID']              = 'برای تحویل $%s دریافت کردی. کارت خوب بود!',
    ['NOTIFY_PAID_XP']           = '$%s و +%s تجربه دریافت کردی. کارت خوب بود!',

    -- دعوت‌ها
    ['INV_INVALID_ID']           = 'شناسه نامعتبر',
    ['INV_SELF']                 = 'نمی‌توانی خودت را دعوت کنی',
    ['INV_NOT_ONLINE']           = 'هیچ بازیکنی با شناسه %s وجود ندارد',
    ['INV_TOO_FAR']              = 'این بازیکن خیلی دور است (%sمتر، حداکثر %sمتر)',
    ['INV_NOT_LEADER']           = 'فقط رهبر گروه می‌تواند دعوت کند',
    ['INV_CREW_FULL']            = 'گروه پر است (حداکثر ۴ بازیکن)',
    ['INV_ALREADY_GROUP']        = 'این بازیکن همین حالا در یک گروه است',
    ['INV_PENDING']              = 'تو همین حالا یک دعوت در انتظار برای این بازیکن داری',
    ['INV_SENT']                 = 'دعوت برای %s ارسال شد',
    ['INV_EXPIRED']              = 'دعوت برای %s منقضی شد',
    ['INV_REJECTED']             = '%s دعوت را رد کرد',
    ['INV_CREW_FULL_JOIN']       = 'گروه پر است، %s نتوانست بپیوندد',
    ['INV_JOINED_LEADER']        = '%s به گروه پیوست',
    ['INV_JOINED_SELF']          = 'به گروه پیوستی',

    -- پاسخ‌های سرور
    ['SRV_NOT_ENOUGH_MONEY']     = 'پول کافی نیست',
    ['SRV_MAX_LEVEL']            = 'در حال حاضر در بالاترین لِوِل هستی',
    ['SRV_REQUIRES_LEVEL']       = 'به لِوِل %d نیاز دارد',
    ['SRV_CREW_FULL']            = 'تیم در حال حاضر پُر است',
    ['SRV_HAVE_PENDING_INVITE']  = 'تو در حال حاضر یک دعوت در انتظار داری',
    ['SRV_PLAYER_HAS_INVITE']    = 'بازیکن در حال حاضر یک دعوت در انتظار دارد',
    ['SRV_PLAYER_IN_SESSION']    = 'بازیکن در حال حاضر در یک جلسه است',

    -- پیام‌های اعلان
    ['TOAST_CREW_FULL']          = 'جای تیم در حال حاضر پُر است',
    ['TOAST_INVALID_ID']         = 'یک شناسه بازیکن معتبر وارد کن',
    ['TOAST_REMOVED_CREW_NAME']  = '%s از تیم حذف شد',
    ['TOAST_CREW_JOINED_NAME']   = '%s به تیم تو پیوست',
    ['TOAST_CREW_LEFT_NAME']     = '%s تیم را ترک کرد',
    ['TOAST_INVITE_DECLINED']    = 'دعوت رد شد',
    ['TOAST_UPGRADED']           = 'ارتقا کامل شد!',

    -- انواع مسیر
    ['ROUTE_CARGO']              = 'بار',
    ['ROUTE_HEAVY_CARGO']        = 'بار سنگین',
    ['UI_CONTAINER_FILTER']      = 'کانتینر',
    ['UI_TANKER_FILTER']         = 'تانکر',

    -- برچسب‌های رابط
    ['UI_LOADING']               = 'در حال بارگذاری...',
    ['UI_LEVEL']                 = 'لِوِل',
    ['UI_LEVEL_WORD']            = 'لِوِل',
    ['UI_EXP']                   = 'تجربه',
    ['UI_PROFILE']               = 'پروفایل',
    ['UI_NICKNAME']              = 'نام مستعار',
    ['UI_PLAYER']                = 'بازیکن',
    ['UI_LEADER']                = 'رهبر',
    ['UI_PARTNER']               = 'همراه',
    ['UI_PLAYER_LIST']           = 'لیست بازیکنان',
    ['UI_INVITE_PLAYER']         = 'دعوت بازیکن',
    ['UI_SEND']                  = 'ارسال',
    ['UI_CANCEL']                = 'لغو',
    ['UI_CONFIRM_BTN']           = 'تأیید',
    ['UI_ACCEPT']                = 'قبول',
    ['UI_DECLINE']               = 'رد',
    ['UI_KICK']                  = 'اخراج',
    ['UI_BACK']                  = 'بازگشت',
    ['UI_MAX']                   = 'حداکثر',

    -- پنل کار
    ['UI_TRUCKER']               = 'شغل هیزم‌شکن',
    ['UI_HEADER_DESC']           = 'به شغل هیزم‌شکن خوش آمدی! اینجا درخت قطع می‌کنی، کنده‌ها را روی کامیونت بار می‌زنی و به کارخانه چوب‌بری تحویل می‌دهی. با بالا رفتن لِوِل، پول و تجربه به دست بیاور.',
    ['UI_START_JOB_BTN']         = 'شروع کار',
    ['UI_TASK_TYPE']             = 'نوع وظیفه',
    ['UI_SELECT_ROUTE']          = 'یک مسیر انتخاب کن',
    ['UI_FIND_ROUTE']            = 'یافتن مسیر',
    ['UI_NO_ROUTES']             = 'مسیری یافت نشد',
    ['UI_REWARD']                = 'پاداش',
    ['UI_EXPERIENCE']            = 'تجربه',

    -- اعلان دعوت
    ['UI_JOB_WORD']              = 'کار',
    ['UI_INVITE']                = 'دعوت',
    ['UI_JOB_INVITE_DESC']       = 'تو را به کار دعوت کرد',

    -- لباس
    ['UI_OUTFIT_DEFAULT']        = 'لباس پیش‌فرض',
    ['UI_OUTFIT_JOB']            = 'لباس کار',

    -- جزئیات / نحوه کار
    ['UI_HOW_IT_WORKS']          = 'نحوه کار',
    ['UI_JOB_DETAILS']           = 'جزئیات کار',
    ['UI_JOB_DETAILS_DESC']      = 'به نقطه برداشت مشخص‌شده برو، وظایفت را کامل کن و با خیال راحت به نقطه تحویل برسان.',
    ['UI_CARGO_LABEL']           = 'بار',
    ['UI_SELECT_PLAYER']         = 'یک بازیکن برای پیوستن به تیمت انتخاب کن',

    -- نیازمندی‌های مسیر / مجوز
    ['UI_FORKLIFT_REQ']          = 'مجوز لیفتراک لازم است',
    ['UI_DOCK_REQ']              = 'مجوز کارگر اسکله لازم است',
    ['UI_FORKLIFT_LICENSE_REQ']  = 'مجوز لیفتراک لازم است',
    ['UI_DOCK_LICENSE_REQ']      = 'مجوز کارگر اسکله لازم است',

    -- پنل آمار
    ['UI_CAREER_STATS']          = 'آمار حرفه‌ای',
    ['UI_TOTAL_EARNED']          = 'مجموع درآمد',
    ['UI_DELIVERY_HISTORY']      = 'تاریخچه تحویل‌ها',
    ['UI_NO_HISTORY']            = 'هنوز تحویلی نیست. اولین کارت را شروع کن!',
    ['UI_LEGAL_LEVEL']           = 'سطح قانونی',
    ['UI_ACTIVE_ROUTE']          = 'مسیر فعال',

    -- HUD
    ['UI_ACTIVE_JOB']            = 'کار فعال',

    -- لباس / ارتقاها
    ['UI_OUTFIT']                = 'لباس',
    ['UI_SELECT_OUTFIT']         = 'انتخاب لباس',
    ['UI_LEVELS']                = 'سطوح',
    ['UI_UPGRADE']               = 'ارتقا',
    ['UI_UPGRADES']              = 'ارتقاها',
    ['UI_LOCKED']                = 'قفل شده',
    ['UI_UNLOCK']                = 'باز کردن قفل',
    ['UI_REQUIRES_LV']           = 'سطح مورد نیاز: ',
    ['UI_NEXT_LV']               = 'سطح بعدی: ',
    ['UI_UPG_CARRY']             = 'حمل',
    ['UI_UPG_SPEED']             = 'سرعت',
    ['UI_UPG_AIM']               = 'دقت',
    ['UI_UPG_YIELD']             = 'بازده',
    ['UI_INVITE_UP_TO_3']        = 'دعوت تا ۳ همراه',
    ['UI_INVITE_MORE']           = 'دعوت %s همراه دیگر',
    ['UI_INVITE_XP_BONUS']       = 'همراهان را برای دریافت پاداش XP دعوت کنید',
    ['UI_TEAM_BONUS']            = 'پاداش تیم',

    -- Blips
    ['BLIP_LOG']                 = 'چوب',
    ['BLIP_TRUCK']               = 'کامیون گروه',
    ['BLIP_SAWMILL']             = 'اره‌خانه',
    ['BLIP_TREE']                = 'درخت',
    ['BLIP_JOB']                 = 'کار',
}