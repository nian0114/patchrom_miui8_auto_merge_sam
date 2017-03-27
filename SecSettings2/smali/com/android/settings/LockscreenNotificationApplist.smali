.class public Lcom/android/settings_ex/LockscreenNotificationApplist;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LockscreenNotificationApplist.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;,
        Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;,
        Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;,
        Lcom/android/settings_ex/LockscreenNotificationApplist$Row;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static mAppArray:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;",
            ">;"
        }
    .end annotation
.end field

.field public static mBackend:Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field edit:Landroid/content/SharedPreferences$Editor;

.field private hide_app_list:Ljava/lang/String;

.field private hide_app_notification_list:[Ljava/lang/String;

.field private mAllApps:Landroid/preference/SwitchPreference;

.field mAppPreference:Landroid/preference/SwitchPreference;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHideApp:Z

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListViewState:Landroid/os/Parcelable;

.field private mLockscreen:Lcom/android/settings_ex/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    const-string v0, "LockNotificationApplist"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/LockscreenNotificationApplist;->DEBUG:Z

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/LockscreenNotificationApplist;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 96
    new-instance v0, Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;

    invoke-direct {v0}, Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;-><init>()V

    sput-object v0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mBackend:Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;

    .line 117
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    .line 344
    new-instance v0, Lcom/android/settings_ex/LockscreenNotificationApplist$3;

    invoke-direct {v0}, Lcom/android/settings_ex/LockscreenNotificationApplist$3;-><init>()V

    sput-object v0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mRowComparator:Ljava/util/Comparator;

    .line 718
    new-instance v0, Lcom/android/settings_ex/LockscreenNotificationApplist$6;

    invoke-direct {v0}, Lcom/android/settings_ex/LockscreenNotificationApplist$6;-><init>()V

    sput-object v0, Lcom/android/settings_ex/LockscreenNotificationApplist;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mRows:Landroid/util/ArrayMap;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mSections:Ljava/util/ArrayList;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mHideApp:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    .line 410
    new-instance v0, Lcom/android/settings_ex/LockscreenNotificationApplist$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/LockscreenNotificationApplist$4;-><init>(Lcom/android/settings_ex/LockscreenNotificationApplist;)V

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mCollectAppsRunnable:Ljava/lang/Runnable;

    .line 565
    new-instance v0, Lcom/android/settings_ex/LockscreenNotificationApplist$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/LockscreenNotificationApplist$5;-><init>(Lcom/android/settings_ex/LockscreenNotificationApplist;)V

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    .line 573
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/LockscreenNotificationApplist;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/LockscreenNotificationApplist;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/LockscreenNotificationApplist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/LockscreenNotificationApplist;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/LockscreenNotificationApplist;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/LockscreenNotificationApplist;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/LockscreenNotificationApplist;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/LockscreenNotificationApplist;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/LockscreenNotificationApplist;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/LockscreenNotificationApplist;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/LockscreenNotificationApplist;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/LockscreenNotificationApplist;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->refreshDisplayedItems()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/LockscreenNotificationApplist;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/LockscreenNotificationApplist;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/LockscreenNotificationApplist;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/LockscreenNotificationApplist;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/LockscreenNotificationApplist;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/LockscreenNotificationApplist;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/LockscreenNotificationApplist;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/LockscreenNotificationApplist;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/settings_ex/LockscreenNotificationApplist;->DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/LockscreenNotificationApplist;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/LockscreenNotificationApplist;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/LockscreenNotificationApplist;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/LockscreenNotificationApplist;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getEnabledItemCount()I
    .locals 7

    .prologue
    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, "cnt":I
    iget-object v4, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;

    .line 693
    .local v2, "r":Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;
    sget-object v4, Lcom/android/settings_ex/LockscreenNotificationApplist;->mBackend:Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;

    iget-object v5, v2, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v6, v2, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;->getShowonSharedeLocked(Ljava/lang/String;I)Z

    move-result v3

    .line 694
    .local v3, "state":Z
    if-nez v3, :cond_0

    .line 695
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 697
    .end local v2    # "r":Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;
    .end local v3    # "state":Z
    :cond_1
    return v0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 240
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getVisibilityString(I)Ljava/lang/String;
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 703
    packed-switch p1, :pswitch_data_0

    .line 706
    const-string v1, "show_content"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 709
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_0
    const-string v1, "hide_contents"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 710
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 712
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_1
    const-string v1, "do_not_show_notifications"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 703
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;)Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backend"    # Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;

    .prologue
    const/4 v5, 0x1

    .line 354
    new-instance v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;

    invoke-direct {v0}, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;-><init>()V

    .line 355
    .local v0, "row":Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    .line 356
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->uid:I

    .line 358
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    invoke-virtual {p1, p0, v5, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 364
    iget-object v2, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->banned:Z

    .line 365
    iget-object v2, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;->getHighPriority(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->priority:Z

    .line 366
    iget-object v2, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;->getSensitive(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->sensitive:Z

    .line 367
    iget-object v2, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;->getShowonSharedeLocked(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->show:Z

    .line 368
    return-object v0

    .line 359
    :catch_0
    move-exception v1

    .line 360
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "LockNotificationApplist"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    iget-object v2, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private loadAppsList()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 317
    return-void
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "original"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 758
    new-instance v1, Lcom/android/settings_ex/IconResizer;

    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/IconResizer;-><init>(Landroid/content/Context;)V

    .line 759
    .local v1, "mIconResizer":Lcom/android/settings_ex/IconResizer;
    const v2, 0x7f0c00ac

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/IconResizer;->setIconSize(I)V

    .line 760
    const/4 v0, 0x0

    .line 761
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 762
    invoke-virtual {v1, p1}, Lcom/android/settings_ex/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 764
    :cond_0
    return-object v0
.end method

.method private refreshDisplayedItems()V
    .locals 12

    .prologue
    .line 511
    sget-boolean v7, Lcom/android/settings_ex/LockscreenNotificationApplist;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "LockNotificationApplist"

    const-string v8, "Refreshing apps..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v8

    .line 514
    const/4 v6, 0x0

    .line 515
    .local v6, "section":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    sget-object v9, Lcom/android/settings_ex/LockscreenNotificationApplist;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 516
    iget-object v7, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 517
    .local v0, "N":I
    const/4 v2, 0x1

    .line 518
    .local v2, "first":Z
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v4

    .line 520
    .local v4, "isEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    new-instance v9, Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 522
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 523
    iget-object v7, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;

    .line 525
    .local v5, "row":Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;
    iput-boolean v2, v5, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->first:Z

    .line 526
    const/4 v2, 0x0

    .line 528
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_2

    .line 529
    monitor-exit v8

    .line 558
    .end local v5    # "row":Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;
    :cond_1
    :goto_1
    return-void

    .line 531
    .restart local v5    # "row":Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;
    :cond_2
    new-instance v7, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    .line 532
    iget-object v9, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;

    iget-object v7, v7, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v9, v7}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v9, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;

    iget-object v7, v7, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v7}, Lcom/android/settings_ex/LockscreenNotificationApplist;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 534
    iget-object v7, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 535
    iget-object v7, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 536
    iget-object v9, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    sget-object v10, Lcom/android/settings_ex/LockscreenNotificationApplist;->mBackend:Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;

    iget-object v7, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;

    iget-object v11, v7, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;

    iget v7, v7, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {v10, v11, v7}, Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;->getShowonSharedeLocked(Ljava/lang/String;I)Z

    move-result v7

    invoke-virtual {v9, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 537
    iget-boolean v7, v5, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->banned:Z

    if-eqz v7, :cond_3

    .line 538
    iget-object v7, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e14fe

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v7, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 542
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 544
    new-instance v1, Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;

    invoke-direct {v1}, Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;-><init>()V

    .line 545
    .local v1, "data":Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;
    iget-object v7, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;

    iget-object v7, v7, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iput-object v7, v1, Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    .line 546
    iget-object v7, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;

    iget v7, v7, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->uid:I

    iput v7, v1, Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;->uid:I

    .line 548
    sget-object v7, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    iget-object v9, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 550
    .end local v1    # "data":Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;
    .end local v5    # "row":Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;
    :cond_4
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    iget-object v7, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    if-eqz v7, :cond_6

    .line 553
    sget-boolean v7, Lcom/android/settings_ex/LockscreenNotificationApplist;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "LockNotificationApplist"

    const-string v8, "Restoring listView state"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 555
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    .line 557
    :cond_6
    sget-boolean v7, Lcom/android/settings_ex/LockscreenNotificationApplist;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "LockNotificationApplist"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Refreshed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " displayed items"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 550
    .end local v0    # "N":I
    .end local v2    # "first":Z
    .end local v3    # "i":I
    .end local v4    # "isEnabled":Z
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method private updateAllAppsPreference()V
    .locals 4

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 273
    iget-object v1, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "lock_notification_all_apps"

    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->isAllAppsCheckedState()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 274
    .local v0, "allAppsValue":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->edit:Landroid/content/SharedPreferences$Editor;

    .line 276
    const-string v1, "notification_all_apps"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/LockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    .line 277
    iget-object v1, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 278
    iget-object v1, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 279
    iget-object v1, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings_ex/LockscreenNotificationApplist$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/LockscreenNotificationApplist$2;-><init>(Lcom/android/settings_ex/LockscreenNotificationApplist;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 302
    iget-object v1, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 303
    return-void
.end method

.method private updateDropdownList()V
    .locals 5

    .prologue
    const v4, 0x7f0e0e3a

    const v3, 0x7f0e0e39

    const v2, 0x7f0e0e38

    .line 168
    const-string v0, "set_visibility"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    if-nez v0, :cond_0

    .line 170
    const-string v0, "LockNotificationApplist"

    const-string v1, "Preference not found: set_visibility"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DropDownPreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/settings_ex/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/settings_ex/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 182
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->updateLockscreenNotifications()V

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    new-instance v1, Lcom/android/settings_ex/LockscreenNotificationApplist$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/LockscreenNotificationApplist$1;-><init>(Lcom/android/settings_ex/LockscreenNotificationApplist;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DropDownPreference;->setCallback(Lcom/android/settings_ex/DropDownPreference$Callback;)V

    goto :goto_0
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    .line 228
    iget-object v2, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    if-nez v2, :cond_0

    .line 237
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 232
    .local v1, "enabled":Z
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 233
    .local v0, "allowPrivate":Z
    if-nez v1, :cond_1

    const v2, 0x7f0e0e3a

    :goto_1
    iput v2, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mLockscreenSelectedValue:I

    .line 236
    iget-object v2, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    iget v3, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    :cond_1
    if-eqz v0, :cond_2

    const v2, 0x7f0e0e38

    goto :goto_1

    :cond_2
    const v2, 0x7f0e0e39

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 121
    const/16 v0, 0x57

    return v0
.end method

.method public isAllAppsCheckedState()Z
    .locals 7

    .prologue
    .line 769
    const/4 v3, 0x0

    .line 770
    .local v3, "offCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 772
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    .line 773
    sget-object v4, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 770
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 775
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 776
    .local v2, "mCurrentPreference":Landroid/preference/SwitchPreference;
    sget-object v4, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;

    .line 778
    .local v0, "data":Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;
    sget-object v4, Lcom/android/settings_ex/LockscreenNotificationApplist;->mBackend:Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;

    iget-object v5, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    iget v6, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;->getShowonSharedeLocked(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 779
    add-int/lit8 v3, v3, 0x1

    .line 782
    .end local v0    # "data":Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;
    .end local v2    # "mCurrentPreference":Landroid/preference/SwitchPreference;
    :cond_2
    if-lez v3, :cond_0

    .line 783
    const/4 v4, 0x0

    .line 786
    :goto_1
    return v4

    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 156
    .local v12, "resources":Landroid/content/res/Resources;
    const v0, 0x7f0c00a2

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0c00b0

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x7f0c00ac

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int v4, v0, v1

    .line 160
    .local v4, "divider_inset_size":I
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object v11, v0

    .line 162
    .local v11, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 164
    return-void

    .line 160
    .end local v11    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :cond_0
    new-instance v5, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object v11, v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->addPreferencesFromResource(I)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mPM:Landroid/content/pm/PackageManager;

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 135
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mHideApp:Z

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->hide_app_notification_list:[Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->hide_app_notification_list:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 140
    const-string v0, "LockNotificationApplist"

    const-string v1, "Hide app notification list is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mHideApp:Z

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->updateDropdownList()V

    .line 146
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->updateAllAppsPreference()V

    .line 148
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->loadAppsList()V

    .line 149
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 683
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 684
    sget-boolean v0, Lcom/android/settings_ex/Utils;->isEnabledSurveyMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string v1, "com.android.settings"

    const-string v2, "LDST"

    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getEnabledItemCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroyView()V

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    .line 260
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 252
    sget-boolean v0, Lcom/android/settings_ex/LockscreenNotificationApplist;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockNotificationApplist"

    const-string v1, "Saving listView state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    .line 254
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 740
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .local v1, "desiredState":Z
    move-object v2, p1

    .line 741
    check-cast v2, Landroid/preference/SwitchPreference;

    .line 743
    .local v2, "mCurrentPreference":Landroid/preference/SwitchPreference;
    sget-object v3, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;

    .line 745
    .local v0, "data":Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;
    sget-object v3, Lcom/android/settings_ex/LockscreenNotificationApplist;->mBackend:Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;

    iget-object v4, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    iget v5, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;->uid:I

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/settings_ex/LockscreenNotificationApplist$Backend;->setShowonSharedeLocked(Ljava/lang/String;IZ)Z

    .line 746
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 748
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->isAllAppsCheckedState()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/LockscreenNotificationApplist;->setStatusPreference(Z)V

    .line 750
    sget-boolean v3, Lcom/android/settings_ex/Utils;->isEnabledSurveyMode:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 751
    iget-object v3, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string v4, "com.android.settings"

    const-string v5, "NFST"

    iget-object v6, v0, Lcom/android/settings_ex/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings_ex/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 264
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 266
    invoke-virtual {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 268
    return-void
.end method

.method public setStatusPreference(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "lock_notification_all_apps"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 307
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 308
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 309
    return-void
.end method
