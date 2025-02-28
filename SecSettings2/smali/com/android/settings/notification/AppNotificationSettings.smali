.class public Lcom/android/settings_ex/notification/AppNotificationSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AppNotificationSettings.java"


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z

.field private static final mSmartManagerForCHN:Z


# instance fields
.field private bHideOnLockscreen:Z

.field private hide_app_list:Ljava/lang/String;

.field private hide_app_notification_list:[Ljava/lang/String;

.field private mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

.field private final mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

.field private mBlock:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private mHideApp:Z

.field private mHideBlock:Z

.field private mHideOnLockscreen:Landroid/preference/SwitchPreference;

.field private mIsSystemPackage:Z

.field private mPeekable:Landroid/preference/SwitchPreference;

.field private mPriority:Landroid/preference/SwitchPreference;

.field private mSensitive:Landroid/preference/SwitchPreference;

.field private mStatusBar:Landroid/preference/SwitchPreference;

.field private mUid:I

.field private nHideContent:I

.field private pkg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-string v0, "AppNotificationSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    .line 69
    const-string v0, "notificationmanager"

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSmartManagerForCHN:Z

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 74
    new-instance v0, Lcom/android/settings_ex/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    .line 88
    iput-boolean v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->bHideOnLockscreen:Z

    .line 89
    iput v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->nHideContent:I

    .line 90
    iput-boolean v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mHideBlock:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mHideApp:Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->hide_app_list:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/notification/AppNotificationSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/AppNotificationSettings;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notification/AppNotificationSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/AppNotificationSettings;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/notification/AppNotificationSettings;)Lcom/android/settings_ex/notification/NotificationBackend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/AppNotificationSettings;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/notification/AppNotificationSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/AppNotificationSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/AppNotificationSettings;->updateDependents(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/notification/AppNotificationSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/AppNotificationSettings;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->bHideOnLockscreen:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/notification/AppNotificationSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/AppNotificationSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->bHideOnLockscreen:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/notification/AppNotificationSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/AppNotificationSettings;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/notification/AppNotificationSettings;Landroid/preference/Preference;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/AppNotificationSettings;
    .param p1, "x1"    # Landroid/preference/Preference;
    .param p2, "x2"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/settings_ex/notification/AppNotificationSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/AppNotificationSettings;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->nHideContent:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/notification/AppNotificationSettings;)Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/AppNotificationSettings;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/notification/AppNotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/AppNotificationSettings;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/notification/NotificationBackend$AppRow;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings_ex/notification/NotificationBackend$AppRow;>;"
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v5, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v6, "AppNotificationSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " preference activities"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    const-string v5, " ;_;"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 400
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 401
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 402
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    .line 403
    .local v4, "row":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    if-nez v4, :cond_3

    .line 404
    sget-boolean v5, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "AppNotificationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") for unknown package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 397
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    :cond_2
    const-string v5, ""

    goto :goto_0

    .line 409
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "row":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    :cond_3
    iget-object v5, v4, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_4

    .line 410
    sget-boolean v5, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "AppNotificationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 415
    :cond_4
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/settings_ex/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 418
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/settings_ex/notification/NotificationBackend$AppRow;
    :cond_5
    return-void
.end method

.method public static collectConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/notification/NotificationBackend$AppRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings_ex/notification/NotificationBackend$AppRow;>;"
    invoke-static {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 392
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p0, p1, v0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 393
    return-void
.end method

.method private static findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 363
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 365
    array-length v0, v4

    .line 366
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 367
    aget-object v3, v4, v2

    .line 368
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 370
    const/16 v5, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 377
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 371
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "p":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "AppNotificationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 353
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    sget-boolean v1, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AppNotificationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings_ex/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    sget-object v1, Lcom/android/settings_ex/notification/AppNotificationSettings;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 387
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private setVisible(Landroid/preference/Preference;Z)V
    .locals 3
    .param p1, "p"    # Landroid/preference/Preference;
    .param p2, "visible"    # Z

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 339
    .local v0, "isVisible":Z
    :goto_0
    if-ne v0, p2, :cond_1

    .line 345
    :goto_1
    return-void

    .line 338
    .end local v0    # "isVisible":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 340
    .restart local v0    # "isVisible":Z
    :cond_1
    if-eqz p2, :cond_2

    .line 341
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 343
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private toastAndFinish()V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0e083c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 359
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 360
    return-void
.end method

.method private updateDependents(Z)V
    .locals 7
    .param p1, "banned"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 319
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 321
    .local v2, "lockscreenSecure":Z
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 322
    .local v1, "lockscreenNotificationsEnabled":Z
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 324
    .local v0, "allowPrivate":Z
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mHideBlock:Z

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->showBlockNotiication(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_1
    move v3, v5

    :goto_0
    invoke-direct {p0, v6, v3}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 326
    sget-boolean v3, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSmartManagerForCHN:Z

    if-eqz v3, :cond_3

    .line 327
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mStatusBar:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v3, :cond_2

    if-nez p1, :cond_a

    :cond_2
    move v3, v5

    :goto_1
    invoke-direct {p0, v6, v3}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 329
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v3, :cond_4

    if-nez p1, :cond_b

    :cond_4
    move v3, v5

    :goto_2
    invoke-direct {p0, v6, v3}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 330
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPeekable:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v3, :cond_5

    if-nez p1, :cond_c

    :cond_5
    move v3, v5

    :goto_3
    invoke-direct {p0, v6, v3}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 331
    iget-object v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mHideOnLockscreen:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v3, :cond_6

    if-nez p1, :cond_d

    if-eqz v1, :cond_d

    :cond_6
    move v3, v5

    :goto_4
    invoke-direct {p0, v6, v3}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 333
    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    iget-boolean v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v6, :cond_7

    if-nez p1, :cond_8

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    iget-boolean v6, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->bHideOnLockscreen:Z

    if-nez v6, :cond_8

    :cond_7
    move v4, v5

    :cond_8
    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 335
    return-void

    :cond_9
    move v3, v4

    .line 324
    goto :goto_0

    :cond_a
    move v3, v4

    .line 327
    goto :goto_1

    :cond_b
    move v3, v4

    .line 329
    goto :goto_2

    :cond_c
    move v3, v4

    .line 330
    goto :goto_3

    :cond_d
    move v3, v4

    .line 331
    goto :goto_4
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 112
    const/16 v0, 0x48

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    sget-boolean v0, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppNotificationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated mCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mCreated:Z

    if-eqz v0, :cond_2

    .line 101
    const-string v0, "AppNotificationSettings"

    const-string v1, "onActivityCreated: ignoring duplicate call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 104
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mCreated:Z

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/settings_ex/applications/AppInfoWithHeader;->getInfoIntent(Landroid/app/Fragment;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings_ex/AppHeader;->createAppHeader(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 130
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 131
    .local v1, "args":Landroid/os/Bundle;
    sget-boolean v11, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "AppNotificationSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onCreate getIntent()="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    if-nez v5, :cond_1

    if-nez v1, :cond_1

    .line 133
    const-string v11, "AppNotificationSettings"

    const-string v12, "No intent"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->toastAndFinish()V

    .line 307
    :goto_0
    return-void

    .line 138
    :cond_1
    if-eqz v1, :cond_3

    const-string v11, "package"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "package"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_1
    iput-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    .line 141
    if-eqz v1, :cond_4

    const-string v11, "uid"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "uid"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    :goto_2
    iput v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    .line 144
    iget v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 145
    :cond_2
    const-string v11, "AppNotificationSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Missing extras: app_package was "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "app_uid"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " was "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->toastAndFinish()V

    goto :goto_0

    .line 138
    :cond_3
    const-string v11, "app_package"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 141
    :cond_4
    const-string v11, "app_uid"

    const/4 v12, -0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    goto :goto_2

    .line 151
    :cond_5
    sget-boolean v11, Lcom/android/settings_ex/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v11, :cond_6

    const-string v11, "AppNotificationSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Load details for pkg="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 153
    .local v9, "pm":Landroid/content/pm/PackageManager;
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    iget v12, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-static {v9, v11, v12}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 154
    .local v4, "info":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_7

    .line 155
    const-string v11, "AppNotificationSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to find package info: app_package was "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "app_uid"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " was "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->toastAndFinish()V

    goto/16 :goto_0

    .line 165
    :cond_7
    invoke-static {v9, v4}, Lcom/android/settings_ex/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mIsSystemPackage:Z

    .line 168
    const v11, 0x7f080016

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/notification/AppNotificationSettings;->addPreferencesFromResource(I)V

    .line 169
    const-string v11, "block"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    .line 170
    const-string v11, "priority"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    .line 171
    const-string v11, "peekable"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPeekable:Landroid/preference/SwitchPreference;

    .line 172
    const-string v11, "hide_on_lockscreen"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mHideOnLockscreen:Landroid/preference/SwitchPreference;

    .line 173
    const-string v11, "sensitive"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    .line 174
    const-string v11, "status_bar"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mStatusBar:Landroid/preference/SwitchPreference;

    .line 176
    sget-boolean v11, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSmartManagerForCHN:Z

    if-nez v11, :cond_8

    .line 177
    const-string v11, "status_bar"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/notification/AppNotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 179
    :cond_8
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    iget-object v12, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v9, v12}, Lcom/android/settings_ex/notification/NotificationBackend;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    .line 182
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 183
    .local v10, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings_ex/notification/NotificationBackend$AppRow;>;"
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v11, v11, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    invoke-virtual {v10, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/android/settings_ex/notification/AppNotificationSettings;->collectConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V

    .line 185
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->hide_app_list:Ljava/lang/String;

    .line 186
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->hide_app_list:Ljava/lang/String;

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->hide_app_list:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 187
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mHideApp:Z

    .line 188
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->hide_app_list:Ljava/lang/String;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->hide_app_notification_list:[Ljava/lang/String;

    .line 189
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->hide_app_notification_list:[Ljava/lang/String;

    if-nez v11, :cond_9

    .line 190
    const-string v11, "AppNotificationSettings"

    const-string v12, "Hide app notification list is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mHideApp:Z

    .line 195
    :cond_9
    iget-boolean v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mHideApp:Z

    if-eqz v11, :cond_a

    .line 196
    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->hide_app_notification_list:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3
    if-ge v3, v6, :cond_a

    aget-object v8, v2, v3

    .line 197
    .local v8, "packageName":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 198
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mHideBlock:Z

    .line 211
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_a
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v7

    .line 212
    .local v7, "lockscreenNotificationsEnabled":Z
    invoke-direct {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 214
    .local v0, "allowPrivate":Z
    iget-object v12, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v11, v11, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->banned:Z

    if-nez v11, :cond_f

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v12, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 215
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v11, v11, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->show:Z

    if-nez v11, :cond_10

    const/4 v11, 0x1

    :goto_5
    iput-boolean v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->bHideOnLockscreen:Z

    .line 216
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v11, v11, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->banned:Z

    invoke-direct {p0, v11}, Lcom/android/settings_ex/notification/AppNotificationSettings;->updateDependents(Z)V

    .line 217
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    iget-object v12, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v12, v12, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->priority:Z

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 218
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPeekable:Landroid/preference/SwitchPreference;

    iget-object v12, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v12, v12, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->peekable:Z

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 219
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mHideOnLockscreen:Landroid/preference/SwitchPreference;

    iget-boolean v12, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->bHideOnLockscreen:Z

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 220
    iget-object v12, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mHideOnLockscreen:Landroid/preference/SwitchPreference;

    iget-boolean v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v11, :cond_b

    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v11, v11, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->banned:Z

    if-nez v11, :cond_11

    if-eqz v7, :cond_11

    :cond_b
    const/4 v11, 0x1

    :goto_6
    invoke-direct {p0, v12, v11}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 221
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    iget-object v12, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v12, v12, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->sensitive:Z

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 222
    iget-object v12, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    iget-boolean v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mIsSystemPackage:Z

    if-nez v11, :cond_c

    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v11, v11, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->banned:Z

    if-nez v11, :cond_12

    if-eqz v7, :cond_12

    if-eqz v0, :cond_12

    iget-boolean v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->bHideOnLockscreen:Z

    if-nez v11, :cond_12

    :cond_c
    const/4 v11, 0x1

    :goto_7
    invoke-direct {p0, v12, v11}, Lcom/android/settings_ex/notification/AppNotificationSettings;->setVisible(Landroid/preference/Preference;Z)V

    .line 223
    sget-boolean v11, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSmartManagerForCHN:Z

    if-eqz v11, :cond_d

    .line 224
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mStatusBar:Landroid/preference/SwitchPreference;

    iget-object v12, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-boolean v12, v12, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->statusBar:Z

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 226
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mStatusBar:Landroid/preference/SwitchPreference;

    new-instance v12, Lcom/android/settings_ex/notification/AppNotificationSettings$1;

    invoke-direct {v12, p0}, Lcom/android/settings_ex/notification/AppNotificationSettings$1;-><init>(Lcom/android/settings_ex/notification/AppNotificationSettings;)V

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 235
    :cond_d
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    new-instance v12, Lcom/android/settings_ex/notification/AppNotificationSettings$2;

    invoke-direct {v12, p0}, Lcom/android/settings_ex/notification/AppNotificationSettings$2;-><init>(Lcom/android/settings_ex/notification/AppNotificationSettings;)V

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 251
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    new-instance v12, Lcom/android/settings_ex/notification/AppNotificationSettings$3;

    invoke-direct {v12, p0}, Lcom/android/settings_ex/notification/AppNotificationSettings$3;-><init>(Lcom/android/settings_ex/notification/AppNotificationSettings;)V

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 260
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPeekable:Landroid/preference/SwitchPreference;

    new-instance v12, Lcom/android/settings_ex/notification/AppNotificationSettings$4;

    invoke-direct {v12, p0}, Lcom/android/settings_ex/notification/AppNotificationSettings$4;-><init>(Lcom/android/settings_ex/notification/AppNotificationSettings;)V

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 269
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mHideOnLockscreen:Landroid/preference/SwitchPreference;

    new-instance v12, Lcom/android/settings_ex/notification/AppNotificationSettings$5;

    invoke-direct {v12, p0}, Lcom/android/settings_ex/notification/AppNotificationSettings$5;-><init>(Lcom/android/settings_ex/notification/AppNotificationSettings;)V

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 279
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    new-instance v12, Lcom/android/settings_ex/notification/AppNotificationSettings$6;

    invoke-direct {v12, p0}, Lcom/android/settings_ex/notification/AppNotificationSettings$6;-><init>(Lcom/android/settings_ex/notification/AppNotificationSettings;)V

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 295
    iget-object v11, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v11, v11, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v11, :cond_13

    .line 296
    const-string v11, "app_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    new-instance v12, Lcom/android/settings_ex/notification/AppNotificationSettings$7;

    invoke-direct {v12, p0}, Lcom/android/settings_ex/notification/AppNotificationSettings$7;-><init>(Lcom/android/settings_ex/notification/AppNotificationSettings;)V

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0

    .line 196
    .end local v0    # "allowPrivate":Z
    .end local v7    # "lockscreenNotificationsEnabled":Z
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v6    # "len$":I
    .restart local v8    # "packageName":Ljava/lang/String;
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 214
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "packageName":Ljava/lang/String;
    .restart local v0    # "allowPrivate":Z
    .restart local v7    # "lockscreenNotificationsEnabled":Z
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 215
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 220
    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 222
    :cond_12
    const/4 v11, 0x0

    goto :goto_7

    .line 305
    :cond_13
    const-string v11, "app_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/notification/AppNotificationSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 119
    iget v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->nHideContent:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    const-string v1, "com.android.settings"

    const-string v2, "ANHC"

    iget-object v3, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->pkg:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 311
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 312
    iget v0, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/AppNotificationSettings;->finish()V

    .line 316
    :cond_0
    return-void
.end method
