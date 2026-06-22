Locales = Locales or {}
Locales['ar'] = {
    -- الهدف / التفاعل
    ['TARGET_START_JOB']         = 'بدء العمل',
    ['TARGET_CHOP_TREE']         = 'قطع الشجرة',
    ['TARGET_PICKUP_LOG']        = 'التقاط جذع',
    ['TARGET_LOAD_TRUCK']        = 'تحميل الشاحنة',
    ['TARGET_GRAB_TRUNK']        = 'أمسك جذعاً',
    ['TARGET_PUT_BELT']          = 'ضع على الحزام',
    ['HELP_START_JOB']           = '~INPUT_CONTEXT~ بدء العمل',

    -- الإشعارات
    ['NOTIFY_NO_JOB_ACCESS']     = 'تحتاج إلى الوظيفة المطلوبة للوصول إلى هذه القائمة.',
    ['NOTIFY_NO_ACTIVE_JOB']     = 'لا يوجد عمل نشط لإلغائه',
    ['NOTIFY_JOB_CANCELLED']     = 'تم إلغاء العمل',
    ['NOTIFY_JOB_CANCELLED_SELF']= 'لقد ألغيت العمل',
    ['NOTIFY_LEVEL_UP']          = 'ارتقيت مستوى! أنت الآن مستوى %d',

    -- الحطّاب — نصوص المساعدة
    ['HELP_CHOP_TREE']           = '~INPUT_CONTEXT~ قطع الشجرة',
    ['HELP_PICKUP_LOG']          = '~INPUT_CONTEXT~ التقاط جذع',
    ['HELP_PICKUP_LOG_N']        = '~INPUT_CONTEXT~ التقاط جذع (%s/%s)',
    ['HELP_LOAD_WOOD']           = '~INPUT_CONTEXT~ تحميل الخشب (%s)',
    ['HELP_GRAB_TRUNK']          = '~INPUT_CONTEXT~ أخذ جذع من الشاحنة',
    ['HELP_PUT_BELT']            = '~INPUT_CONTEXT~ ضعه على الناقل',

    -- الحطّاب — خطوات المتتبع
    ['TRACKER_STEP_VEHICLE']     = 'خذ الشاحنة',
    ['TRACKER_STEP_WORK']        = 'قطع وحمّل الخشب',
    ['TRACKER_STEP_PROCESS']     = 'معالجة الخشب',
    ['TRACKER_CTR_TREES']        = 'أشجار',
    ['TRACKER_CTR_WOOD']         = 'خشب',
    ['TRACKER_CTR_PROCESSED']    = 'معالَج',
    ['TRACKER_ROUTE_NAME']       = 'مسار القطع #%s',
    ['JT_GO_START']              = 'اذهب للبداية',
    ['JT_COMPLETE_TASK']         = 'أكمل المهمة',
    ['JT_DELIVER']               = 'سلّم',
    ['JT_COMPLETE']              = 'أنهِ',

    -- الحطّاب — الإشعارات
    ['NOTIFY_JOB_STARTED']       = 'بدأ العمل. اذهب إلى الشجرة الأولى',
    ['NOTIFY_LEFT_TREE']         = 'لقد ابتعدت عن الشجرة',
    ['NOTIFY_TREE_BEING_CHOPPED']= 'هذه الشجرة يتم قطعها بالفعل',
    ['NOTIFY_LOG_TAKEN']         = 'هذا الجذع تم التقاطه بالفعل',
    ['NOTIFY_WOOD_LOADED']       = 'تم تحميل الخشب! خذه إلى المنشرة',
    ['NOTIFY_ALREADY_ACTIVE']    = 'لديك بالفعل عمل نشط',
    ['NOTIFY_PAID']              = 'لقد كسبت $%s مقابل التسليم. عمل جيد!',
    ['NOTIFY_PAID_XP']           = 'لقد كسبت $%s و +%s خبرة. عمل جيد!',

    -- الدعوات
    ['INV_INVALID_ID']           = 'معرّف غير صالح',
    ['INV_SELF']                 = 'لا يمكنك دعوة نفسك',
    ['INV_NOT_ONLINE']           = 'لا يوجد لاعب بالمعرّف %s',
    ['INV_TOO_FAR']              = 'هذا اللاعب بعيد جدًا (%sم، الحد الأقصى %sم)',
    ['INV_NOT_LEADER']           = 'يمكن لقائد المجموعة فقط الدعوة',
    ['INV_CREW_FULL']            = 'المجموعة ممتلئة (4 لاعبين كحد أقصى)',
    ['INV_ALREADY_GROUP']        = 'هذا اللاعب موجود بالفعل في مجموعة',
    ['INV_PENDING']              = 'لديك بالفعل دعوة معلقة لهذا اللاعب',
    ['INV_SENT']                 = 'تم إرسال الدعوة إلى %s',
    ['INV_EXPIRED']              = 'انتهت صلاحية الدعوة إلى %s',
    ['INV_REJECTED']             = '%s رفض الدعوة',
    ['INV_CREW_FULL_JOIN']       = 'المجموعة ممتلئة، لم يستطع %s الانضمام',
    ['INV_JOINED_LEADER']        = 'انضم %s إلى المجموعة',
    ['INV_JOINED_SELF']          = 'لقد انضممت إلى المجموعة',

    -- ردود الخادم
    ['SRV_NOT_ENOUGH_MONEY']     = 'لا يوجد مال كافٍ',
    ['SRV_MAX_LEVEL']            = 'أنت بالفعل في أعلى مستوى',
    ['SRV_REQUIRES_LEVEL']       = 'يتطلب المستوى %d',
    ['SRV_CREW_FULL']            = 'الفريق ممتلئ بالفعل',
    ['SRV_HAVE_PENDING_INVITE']  = 'لديك بالفعل دعوة معلقة',
    ['SRV_PLAYER_HAS_INVITE']    = 'اللاعب لديه بالفعل دعوة معلقة',
    ['SRV_PLAYER_IN_SESSION']    = 'اللاعب موجود بالفعل في جلسة',

    -- رسائل منبثقة
    ['TOAST_CREW_FULL']          = 'المكان في الفريق ممتلئ بالفعل',
    ['TOAST_INVALID_ID']         = 'أدخل معرّف لاعب صالح',
    ['TOAST_REMOVED_CREW_NAME']  = 'تمت إزالة %s من الفريق',
    ['TOAST_CREW_JOINED_NAME']   = 'انضم %s إلى فريقك',
    ['TOAST_CREW_LEFT_NAME']     = 'غادر %s الفريق',
    ['TOAST_INVITE_DECLINED']    = 'تم رفض الدعوة',
    ['TOAST_UPGRADED']           = 'اكتمل الترقية!',

    -- أنواع المسارات
    ['ROUTE_CARGO']              = 'بضائع',
    ['ROUTE_HEAVY_CARGO']        = 'بضائع ثقيلة',
    ['UI_CONTAINER_FILTER']      = 'حاوية',
    ['UI_TANKER_FILTER']         = 'صهريج',

    -- عناصر الواجهة
    ['UI_LOADING']               = 'جارٍ التحميل...',
    ['UI_LEVEL']                 = 'المستوى',
    ['UI_LEVEL_WORD']            = 'المستوى',
    ['UI_EXP']                   = 'خبرة',
    ['UI_PROFILE']               = 'الملف الشخصي',
    ['UI_NICKNAME']              = 'الاسم المستعار',
    ['UI_PLAYER']                = 'لاعب',
    ['UI_LEADER']                = 'القائد',
    ['UI_PARTNER']               = 'شريك',
    ['UI_PLAYER_LIST']           = 'قائمة اللاعبين',
    ['UI_INVITE_PLAYER']         = 'دعوة لاعب',
    ['UI_SEND']                  = 'إرسال',
    ['UI_CANCEL']                = 'إلغاء',
    ['UI_CONFIRM_BTN']           = 'تأكيد',
    ['UI_ACCEPT']                = 'قبول',
    ['UI_DECLINE']               = 'رفض',
    ['UI_KICK']                  = 'طرد',
    ['UI_BACK']                  = 'رجوع',
    ['UI_MAX']                   = 'الأقصى',

    -- لوحة العمل
    ['UI_TRUCKER']               = 'وظيفة الحطّاب',
    ['UI_HEADER_DESC']           = 'مرحبًا بك في وظيفة الحطّاب! هنا تقطع الأشجار وتحمّل الجذوع على شاحنتك وتسلّمها إلى المنشرة. اكسب المال والخبرة كلما ارتقيت في المستويات.',
    ['UI_START_JOB_BTN']         = 'بدء العمل',
    ['UI_TASK_TYPE']             = 'نوع المهمة',
    ['UI_SELECT_ROUTE']          = 'اختر مسارًا',
    ['UI_FIND_ROUTE']            = 'ابحث عن مسار',
    ['UI_NO_ROUTES']             = 'لم يتم العثور على مسارات',
    ['UI_REWARD']                = 'المكافأة',
    ['UI_EXPERIENCE']            = 'الخبرة',

    -- إشعار الدعوة
    ['UI_JOB_WORD']              = 'عمل',
    ['UI_INVITE']                = 'دعوة',
    ['UI_JOB_INVITE_DESC']       = 'دعاك للانضمام إلى العمل',

    -- الملابس
    ['UI_OUTFIT_DEFAULT']        = 'الملابس الافتراضية',
    ['UI_OUTFIT_JOB']            = 'ملابس العمل',

    -- التفاصيل / كيف يعمل
    ['UI_HOW_IT_WORKS']          = 'كيف يعمل',
    ['UI_JOB_DETAILS']           = 'تفاصيل العمل',
    ['UI_JOB_DETAILS_DESC']      = 'توجّه إلى نقطة الاستلام المحددة، أكمل مهامك، وسلّم بأمان إلى نقطة التسليم.',
    ['UI_CARGO_LABEL']           = 'البضائع',
    ['UI_SELECT_PLAYER']         = 'اختر لاعبًا للانضمام إلى فريقك',

    -- متطلبات المسار / الرخصة
    ['UI_FORKLIFT_REQ']          = 'رخصة رافعة شوكية مطلوبة',
    ['UI_DOCK_REQ']              = 'رخصة عامل ميناء مطلوبة',
    ['UI_FORKLIFT_LICENSE_REQ']  = 'رخصة رافعة شوكية مطلوبة',
    ['UI_DOCK_LICENSE_REQ']      = 'رخصة عامل ميناء مطلوبة',

    -- لوحة الإحصائيات
    ['UI_CAREER_STATS']          = 'إحصائيات المسيرة',
    ['UI_TOTAL_EARNED']          = 'إجمالي الأرباح',
    ['UI_DELIVERY_HISTORY']      = 'سجل التسليمات',
    ['UI_NO_HISTORY']            = 'لا توجد تسليمات بعد. ابدأ أول عمل لك!',
    ['UI_LEGAL_LEVEL']           = 'المستوى القانوني',
    ['UI_ACTIVE_ROUTE']          = 'المسار النشط',

    -- HUD
    ['UI_ACTIVE_JOB']            = 'العمل النشط',

    -- زي / ترقيات
    ['UI_OUTFIT']                = 'زي',
    ['UI_SELECT_OUTFIT']         = 'اختر الزي',
    ['UI_LEVELS']                = 'مستويات',
    ['UI_UPGRADE']               = 'ترقية',
    ['UI_UPGRADES']              = 'الترقيات',
    ['UI_LOCKED']                = 'مقفل',
    ['UI_UNLOCK']                = 'فتح القفل',
    ['UI_REQUIRES_LV']           = 'يتطلب المستوى ',
    ['UI_NEXT_LV']               = 'المستوى التالي: ',
    ['UI_UPG_CARRY']             = 'الحمولة',
    ['UI_UPG_SPEED']             = 'السرعة',
    ['UI_UPG_AIM']               = 'الدقة',
    ['UI_UPG_YIELD']             = 'الإنتاجية',
    ['UI_INVITE_UP_TO_3']        = 'دعوة ما يصل إلى 3 شركاء',
    ['UI_INVITE_MORE']           = 'دعوة %s شريك(اء) آخرين',
    ['UI_INVITE_XP_BONUS']       = 'ادعُ شركاء للحصول على مكافأة XP',
    ['UI_TEAM_BONUS']            = 'مكافأة الفريق',

    -- Blips
    ['BLIP_LOG']                 = 'جذع',
    ['BLIP_TRUCK']               = 'شاحنة المجموعة',
    ['BLIP_SAWMILL']             = 'منشرة',
    ['BLIP_TREE']                = 'شجرة',
    ['BLIP_JOB']                 = 'عمل',
}