.class public Lcom/android/settings_ex/location/LocationSettings;
.super Lcom/android/settings_ex/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;


# instance fields
.field private injector:Lcom/android/settings_ex/location/SettingsInjector;

.field private mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

.field private mAgpsMenu:Landroid/preference/PreferenceCategory;

.field private mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

.field private mClockSync:Landroid/preference/SwitchPreference;

.field private mImproveLocation:Landroid/preference/Preference;

.field private mIsEmerMode:Z

.field private mLocationMode:Landroid/preference/Preference;

.field private mManagedProfile:Landroid/os/UserHandle;

.field private mManagedProfilePreference:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSatelliteView:Landroid/preference/PreferenceScreen;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mUm:Landroid/os/UserManager;

.field private mValidListener:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 504
    new-instance v0, Lcom/android/settings_ex/location/LocationSettings$5;

    invoke-direct {v0}, Lcom/android/settings_ex/location/LocationSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings_ex/location/LocationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;-><init>()V

    .line 132
    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mIsEmerMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/location/LocationSettings;)Lcom/android/settings_ex/location/SettingsInjector;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/location/LocationSettings;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->injector:Lcom/android/settings_ex/location/SettingsInjector;

    return-object v0
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;
    .param p3, "lockdownOnLocationAccess"    # Z

    .prologue
    .line 328
    const-string v3, "location_services"

    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 330
    .local v0, "categoryLocationServices":Landroid/preference/PreferenceCategory;
    new-instance v3, Lcom/android/settings_ex/location/SettingsInjector;

    invoke-direct {v3, p1}, Lcom/android/settings_ex/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->injector:Lcom/android/settings_ex/location/SettingsInjector;

    .line 333
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->injector:Lcom/android/settings_ex/location/SettingsInjector;

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/settings_ex/location/SettingsInjector;->getInjectedSettings(I)Ljava/util/List;

    move-result-object v2

    .line 336
    .local v2, "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v3, Lcom/android/settings_ex/location/LocationSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/location/LocationSettings$2;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    iput-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 346
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 347
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 350
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 351
    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 356
    :goto_1
    return-void

    .line 333
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_0
    const/4 v3, -0x2

    goto :goto_0

    .line 354
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_1
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/android/settings_ex/location/LocationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/location/LocationSettings$1;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 219
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 220
    .local v0, "entry":Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 222
    .end local v0    # "entry":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private changeManagedProfileLocationAccessStatus(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "summaryResId"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 316
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 13

    .prologue
    const v12, 0x7f08006a

    .line 225
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 226
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 227
    .local v9, "root":Landroid/preference/PreferenceScreen;
    if-eqz v9, :cond_0

    .line 228
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 230
    :cond_0
    invoke-virtual {p0, v12}, Lcom/android/settings_ex/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 233
    const-string v10, "location_e911"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 234
    .local v2, "e911":Landroid/preference/Preference;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 236
    :cond_1
    if-eqz v2, :cond_2

    .line 237
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 242
    :cond_2
    const-string v10, "clock_sync"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings_ex/location/LocationSettings;->mClockSync:Landroid/preference/SwitchPreference;

    .line 243
    const-string v10, "assisted_gps_function_switch"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcom/android/settings_ex/location/LocationSettings;->mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

    .line 244
    const-string v10, "satellite_view"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcom/android/settings_ex/location/LocationSettings;->mSatelliteView:Landroid/preference/PreferenceScreen;

    .line 245
    const-string v10, "cmcc_agpsmenu"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/settings_ex/location/LocationSettings;->mAgpsMenu:Landroid/preference/PreferenceCategory;

    .line 247
    const-string v10, "CHM"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 248
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/location/LocationSettings;->mClockSync:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 249
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/location/LocationSettings;->mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/location/LocationSettings;->mSatelliteView:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/location/LocationSettings;->mAgpsMenu:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    :cond_3
    invoke-direct {p0, v9}, Lcom/android/settings_ex/location/LocationSettings;->setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V

    .line 255
    const-string v10, "location_mode"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    .line 256
    iget-object v10, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 257
    const-string v10, "improve_location"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/location/LocationSettings;->mImproveLocation:Landroid/preference/Preference;

    .line 258
    const-string v10, "recent_location_requests"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    .line 260
    new-instance v6, Lcom/android/settings_ex/location/RecentLocationApps;

    invoke-direct {v6, v0}, Lcom/android/settings_ex/location/RecentLocationApps;-><init>(Lcom/android/settings_ex/SettingsActivity;)V

    .line 261
    .local v6, "recentApps":Lcom/android/settings_ex/location/RecentLocationApps;
    invoke-virtual {v6}, Lcom/android/settings_ex/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v7

    .line 262
    .local v7, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 263
    iget-object v10, p0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v7, v10}, Lcom/android/settings_ex/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 274
    :goto_0
    iget-boolean v10, p0, Lcom/android/settings_ex/location/LocationSettings;->mIsEmerMode:Z

    if-eqz v10, :cond_5

    .line 275
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "UPSM"

    invoke-static {v10, v12, v11}, Lcom/android/settings_ex/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 276
    .local v8, "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_7

    .line 277
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 278
    .local v4, "list":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/location/LocationSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 266
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/lang/String;
    .end local v8    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 267
    .local v1, "banner":Landroid/preference/Preference;
    const v10, 0x7f040128

    invoke-virtual {v1, v10}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 268
    const v10, 0x7f0e078d

    invoke-virtual {v1, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 269
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 270
    iget-object v10, p0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 282
    .end local v1    # "banner":Landroid/preference/Preference;
    :cond_5
    const/4 v5, 0x0

    .line 286
    .local v5, "lockdownOnLocationAccess":Z
    iget-object v10, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/settings_ex/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string v11, "no_share_location"

    iget-object v12, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v10, v11, v12}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 288
    const/4 v5, 0x1

    .line 290
    :cond_6
    invoke-direct {p0, v0, v9, v5}, Lcom/android/settings_ex/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V

    .line 293
    .end local v5    # "lockdownOnLocationAccess":Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->refreshLocationMode()V

    .line 294
    return-object v9
.end method

.method private setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    .line 301
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 303
    const-string v0, "managed_profile_location_category"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 304
    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    .line 309
    :goto_0
    return-void

    .line 306
    :cond_0
    const-string v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    .line 307
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 382
    const v0, 0x7f0e0d92

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 150
    const/16 v0, 0x3f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/android/settings_ex/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 158
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mUm:Landroid/os/UserManager;

    .line 160
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 161
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    .line 162
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 163
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/android/settings_ex/location/LocationSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/location/LocationSettings;->setHasOptionsMenu(Z)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mIsEmerMode:Z

    .line 182
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 360
    const/4 v0, 0x1

    const v1, 0x7f0e0795

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 362
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/location/LocationSettingsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 363
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onDestroyView()V

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 169
    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 387
    packed-switch p1, :pswitch_data_0

    .line 415
    :goto_0
    if-eqz p1, :cond_6

    move v0, v1

    .line 418
    .local v0, "enabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-nez p2, :cond_7

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 419
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    if-eqz v0, :cond_8

    if-nez p2, :cond_8

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 420
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mImproveLocation:Landroid/preference/Preference;

    if-eqz v0, :cond_9

    if-nez p2, :cond_9

    move v3, v1

    :goto_4
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 421
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 423
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eq v0, v3, :cond_1

    .line 425
    iget-boolean v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    if-eqz v3, :cond_0

    .line 426
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 428
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 429
    iget-boolean v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    if-eqz v3, :cond_1

    .line 430
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 434
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 435
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string v4, "no_share_location"

    iget-object v5, p0, Lcom/android/settings_ex/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 436
    const v1, 0x7f0e0784

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    .line 449
    :cond_2
    :goto_5
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->injector:Lcom/android/settings_ex/location/SettingsInjector;

    if-eqz v1, :cond_3

    .line 450
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->injector:Lcom/android/settings_ex/location/SettingsInjector;

    invoke-virtual {v1}, Lcom/android/settings_ex/location/SettingsInjector;->reloadStatusMessages()V

    .line 452
    :cond_3
    return-void

    .line 389
    .end local v0    # "enabled":Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0e078b

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 392
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0e078a

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 395
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 396
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0e0789

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 398
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0e0788

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 402
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 403
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0e0787

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 405
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0e0786

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 415
    goto/16 :goto_1

    .restart local v0    # "enabled":Z
    :cond_7
    move v3, v2

    .line 418
    goto/16 :goto_2

    :cond_8
    move v3, v2

    .line 419
    goto/16 :goto_3

    :cond_9
    move v3, v2

    .line 420
    goto/16 :goto_4

    .line 439
    :cond_a
    if-eqz v0, :cond_b

    .line 440
    const v2, 0x7f0e0ea6

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    goto :goto_5

    .line 442
    :cond_b
    const v1, 0x7f0e0ea7

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    goto :goto_5

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 367
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 368
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 376
    invoke-super {p0, p1}, Lcom/android/settings_ex/location/LocationSettingsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 370
    :pswitch_0
    const-class v1, Lcom/android/settings_ex/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0e0796

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 374
    const/4 v1, 0x1

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 197
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 206
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    .line 208
    :cond_1
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onPause()V

    .line 209
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "LocationSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const-string v1, "LocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swallowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onResume()V

    .line 187
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 188
    iget-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    .line 192
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 7
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v6, 0x0

    .line 459
    if-eqz p2, :cond_2

    .line 460
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/location/LocationSettings;->showVzwLocationConsentDialog(Landroid/content/Context;)V

    .line 502
    :goto_0
    return-void

    .line 464
    :cond_0
    const-string v4, "DCM"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 466
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 467
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e14ce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 468
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e14cf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 469
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 470
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0f8a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/settings_ex/location/LocationSettings$3;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/location/LocationSettings$3;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 476
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0f8b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/settings_ex/location/LocationSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/location/LocationSettings$4;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 482
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 483
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 485
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/location/LocationSettings;->setLocationMode(I)V

    goto :goto_0

    .line 490
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_SupportWifiCall"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "THL"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 491
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_call_enable"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 492
    .local v3, "wifiCallState":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 493
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_call_enable"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 494
    new-instance v2, Landroid/content/Intent;

    const-string v4, "action_wifi_call_enable_broadcast"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .local v2, "wifiCall":Landroid/content/Intent;
    const-string v4, "wifi_call_enable"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 497
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e079b

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 500
    .end local v2    # "wifiCall":Landroid/content/Intent;
    .end local v3    # "wifiCallState":I
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/location/LocationSettings;->setLocationMode(I)V

    goto/16 :goto_0
.end method
