.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;,
        Lcom/android/providers/settings/SettingsProvider$Arguments;
    }
.end annotation


# static fields
.field private static final ALL_COLUMNS:[Ljava/lang/String;

.field private static final AUDITABLE_EVENTS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DROP_DATABASE_ON_MIGRATION:Z

.field private static final NULL_SETTING:Landroid/os/Bundle;

.field private static final REMOVED_LEGACY_TABLES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCloneToKnoxSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sGlobalMovedToSecureSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSecureCloneToManagedSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sSecureMovedToGlobalSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSettingToUserRestrictionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSystemCloneToManagedSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sSystemMovedToGlobalSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sSystemMovedToSecureSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private SHARE_KNOX:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private volatile mPackageManager:Landroid/content/pm/PackageManager;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/providers/settings/SettingsProvider;->DROP_DATABASE_ON_MIGRATION:Z

    .line 151
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    .line 153
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    const-string v3, "favorites"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    const-string v3, "old_favorites"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    const-string v3, "bluetooth_devices"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    const-string v3, "bookmarks"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    const-string v3, "android_metadata"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    .line 175
    const-string v0, "value"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    .line 182
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->AUDITABLE_EVENTS:Ljava/util/HashSet;

    .line 186
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSettingToUserRestrictionMap:Ljava/util/Map;

    .line 189
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->AUDITABLE_EVENTS:Ljava/util/HashSet;

    const-string v1, "usb_mass_storage_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->AUDITABLE_EVENTS:Ljava/util/HashSet;

    const-string v1, "development_settings_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->AUDITABLE_EVENTS:Ljava/util/HashSet;

    const-string v1, "screen_off_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->AUDITABLE_EVENTS:Ljava/util/HashSet;

    const-string v1, "knox_screen_off_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->AUDITABLE_EVENTS:Ljava/util/HashSet;

    const-string v1, "adb_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->AUDITABLE_EVENTS:Ljava/util/HashSet;

    const-string v1, "location_providers_allowed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSettingToUserRestrictionMap:Ljava/util/Map;

    const-string v1, "location_mode"

    const-string v2, "no_share_location"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSettingToUserRestrictionMap:Ljava/util/Map;

    const-string v1, "location_providers_allowed"

    const-string v2, "no_share_location"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSettingToUserRestrictionMap:Ljava/util/Map;

    const-string v1, "install_non_market_apps"

    const-string v2, "no_install_unknown_sources"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSettingToUserRestrictionMap:Ljava/util/Map;

    const-string v1, "adb_enabled"

    const-string v2, "no_debugging_features"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSettingToUserRestrictionMap:Ljava/util/Map;

    const-string v1, "package_verifier_enable"

    const-string v2, "ensure_verify_apps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSettingToUserRestrictionMap:Ljava/util/Map;

    const-string v1, "preferred_network_mode"

    const-string v2, "no_config_mobile_networks"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureMovedToGlobalSettings:Ljava/util/Set;

    .line 213
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureMovedToGlobalSettings:Ljava/util/Set;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getMovedToGlobalSettings(Ljava/util/Set;)V

    .line 217
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToGlobalSettings:Ljava/util/Set;

    .line 219
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToGlobalSettings:Ljava/util/Set;

    invoke-static {v0}, Landroid/provider/Settings$System;->getMovedToGlobalSettings(Ljava/util/Set;)V

    .line 223
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToSecureSettings:Ljava/util/Set;

    .line 225
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToSecureSettings:Ljava/util/Set;

    invoke-static {v0}, Landroid/provider/Settings$System;->getMovedToSecureSettings(Ljava/util/Set;)V

    .line 229
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sGlobalMovedToSecureSettings:Ljava/util/Set;

    .line 231
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sGlobalMovedToSecureSettings:Ljava/util/Set;

    invoke-static {v0}, Landroid/provider/Settings$Global;->getMovedToSecureSettings(Ljava/util/Set;)V

    .line 235
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;

    .line 237
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    .line 241
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;

    .line 243
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;

    invoke-static {v0}, Landroid/provider/Settings$System;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    .line 248
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sCloneToKnoxSettings:Ljava/util/Set;

    .line 250
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sCloneToKnoxSettings:Ljava/util/Set;

    invoke-static {v0}, Landroid/os/PersonaPolicyManager;->getCloneToKnoxSettings(Ljava/util/Set;)V

    .line 251
    return-void

    :cond_0
    move v0, v2

    .line 135
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 171
    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    .line 172
    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    .line 254
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    .line 1511
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/settings/SettingsProvider;)Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsProvider;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/settings/SettingsProvider;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsProvider;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/Set;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/providers/settings/SettingsProvider;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsProvider;
    .param p1, "x1"    # Ljava/util/HashSet;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$1100()Ljava/util/Set;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sCloneToKnoxSettings:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/Set;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/settings/SettingsProvider;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsProvider;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 132
    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider;->getValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 132
    invoke-static {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->logValueForAudit(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/providers/settings/SettingsProvider;)Landroid/os/PersonaManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsProvider;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/settings/SettingsProvider;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsProvider;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, Lcom/android/providers/settings/SettingsProvider;->DROP_DATABASE_ON_MIGRATION:Z

    return v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method private static appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V
    .locals 6
    .param p0, "cursor"    # Landroid/database/MatrixCursor;
    .param p1, "setting"    # Lcom/android/providers/settings/SettingsState$Setting;

    .prologue
    .line 1393
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v1

    .line 1395
    .local v1, "columnCount":I
    new-array v3, v1, [Ljava/lang/String;

    .line 1397
    .local v3, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1398
    invoke-virtual {p0, v2}, Landroid/database/MatrixCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 1400
    .local v0, "column":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 1397
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1400
    :sswitch_0
    const-string v5, "_id"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "name"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "value"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    .line 1402
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_2

    .line 1406
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_2

    .line 1410
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_2

    .line 1415
    .end local v0    # "column":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1416
    return-void

    .line 1400
    :sswitch_data_0
    .sparse-switch
        0x171ba -> :sswitch_0
        0x337a8b -> :sswitch_1
        0x6ac9171 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private deleteGlobalSetting(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "requestingUserId"    # I

    .prologue
    .line 741
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/providers/settings/SettingsProvider;->mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private deleteSecureSetting(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "requestingUserId"    # I

    .prologue
    .line 857
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private deleteSystemSetting(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "requestingUserId"    # I

    .prologue
    .line 986
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private dumpForUser(ILjava/io/PrintWriter;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 596
    if-nez p1, :cond_0

    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLOBAL SETTINGS (user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/providers/settings/SettingsProvider;->getAllGlobalSettings([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 599
    .local v0, "globalCursor":Landroid/database/Cursor;
    invoke-direct {p0, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettings(Landroid/database/Cursor;Ljava/io/PrintWriter;)V

    .line 600
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 603
    .end local v0    # "globalCursor":Landroid/database/Cursor;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SECURE SETTINGS (user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/android/providers/settings/SettingsProvider;->getAllSecureSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 605
    .local v1, "secureCursor":Landroid/database/Cursor;
    invoke-direct {p0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettings(Landroid/database/Cursor;Ljava/io/PrintWriter;)V

    .line 606
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 608
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYSTEM SETTINGS (user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/android/providers/settings/SettingsProvider;->getAllSystemSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 610
    .local v2, "systemCursor":Landroid/database/Cursor;
    invoke-direct {p0, v2, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettings(Landroid/database/Cursor;Ljava/io/PrintWriter;)V

    .line 611
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 612
    return-void
.end method

.method private dumpSettings(Landroid/database/Cursor;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 615
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 620
    .local v0, "idColumnIdx":I
    const-string v3, "name"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 621
    .local v1, "nameColumnIdx":I
    const-string v3, "value"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 624
    .local v2, "valueColumnIdx":I
    :cond_2
    const-string v3, "_id:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 625
    const-string v3, " name:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 626
    const-string v3, " value:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 627
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 628
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0
.end method

.method private enforceRestrictedSystemSettingsMutationForCallingPackage(ILjava/lang/String;)V
    .locals 4
    .param p1, "operation"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1136
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    .line 1137
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1143
    .local v0, "callingUid":I
    :goto_0
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_2

    .line 1194
    :cond_0
    :goto_1
    return-void

    .line 1139
    .end local v0    # "callingUid":I
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .restart local v0    # "callingUid":I
    goto :goto_0

    .line 1149
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1153
    :pswitch_0
    sget-object v2, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/provider/Settings$System;->SAMSUNG_PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/provider/Settings$System;->SAMSUNG_DEPRECATING_PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1160
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfoOrThrow()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1163
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    .line 1168
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v2, p2}, Lcom/android/providers/settings/SettingsProvider;->warnOrThrowForUndesiredSecureSettingsMutationForTargetSdk(ILjava/lang/String;)V

    goto :goto_1

    .line 1173
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :pswitch_1
    sget-object v2, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/provider/Settings$System;->SAMSUNG_PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/provider/Settings$System;->SAMSUNG_DEPRECATING_PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1177
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You cannot delete system defined secure settings."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1182
    :cond_4
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfoOrThrow()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1185
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    .line 1190
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v2, p2}, Lcom/android/providers/settings/SettingsProvider;->warnOrThrowForUndesiredSecureSettingsMutationForTargetSdk(ILjava/lang/String;)V

    goto :goto_1

    .line 1149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private enforceWritePermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1231
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission denial: writing to settings requires:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1236
    :cond_0
    return-void
.end method

.method private getAllGlobalSettings([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 688
    iget-object v9, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 690
    :try_start_0
    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v7

    .line 693
    .local v7, "settingsState":Lcom/android/providers/settings/SettingsState;
    invoke-virtual {v7}, Lcom/android/providers/settings/SettingsState;->getSettingNamesLocked()Ljava/util/List;

    move-result-object v3

    .line 695
    .local v3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 697
    .local v2, "nameCount":I
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 698
    .local v4, "normalizedProjection":[Ljava/lang/String;
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, v4, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 701
    .local v5, "result":Landroid/database/MatrixCursor;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 702
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 703
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v7, v1}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v6

    .line 704
    .local v6, "setting":Lcom/android/providers/settings/SettingsState$Setting;
    invoke-static {v5, v6}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    .line 701
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    .end local v1    # "name":Ljava/lang/String;
    .end local v6    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    :cond_0
    monitor-exit v9

    return-object v5

    .line 708
    .end local v0    # "i":I
    .end local v2    # "nameCount":I
    .end local v3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "normalizedProjection":[Ljava/lang/String;
    .end local v5    # "result":Landroid/database/MatrixCursor;
    .end local v7    # "settingsState":Lcom/android/providers/settings/SettingsState;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method private getAllSecureSettings(I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "userId"    # I
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 789
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 791
    .local v0, "callingUserId":I
    iget-object v10, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 792
    :try_start_0
    iget-object v9, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v11, 0x2

    invoke-virtual {v9, v11, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object v4

    .line 795
    .local v4, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 797
    .local v3, "nameCount":I
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 798
    .local v5, "normalizedProjection":[Ljava/lang/String;
    new-instance v7, Landroid/database/MatrixCursor;

    invoke-direct {v7, v5, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 800
    .local v7, "result":Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 801
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 803
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSettingLocked(ILjava/lang/String;)I

    move-result v6

    .line 807
    .local v6, "owningUserId":I
    invoke-direct {p0, v2, v0, v6}, Lcom/android/providers/settings/SettingsProvider;->isLocationProvidersAllowedRestricted(Ljava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 808
    const/4 v7, 0x0

    monitor-exit v10

    .line 816
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "owningUserId":I
    .end local v7    # "result":Landroid/database/MatrixCursor;
    :goto_1
    return-object v7

    .line 811
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v6    # "owningUserId":I
    .restart local v7    # "result":Landroid/database/MatrixCursor;
    :cond_0
    iget-object v9, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v11, 0x2

    invoke-virtual {v9, v11, v6, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v8

    .line 813
    .local v8, "setting":Lcom/android/providers/settings/SettingsState$Setting;
    invoke-static {v7, v8}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    .line 800
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 816
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "owningUserId":I
    .end local v8    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    :cond_1
    monitor-exit v10

    goto :goto_1

    .line 817
    .end local v1    # "i":I
    .end local v3    # "nameCount":I
    .end local v4    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "normalizedProjection":[Ljava/lang/String;
    .end local v7    # "result":Landroid/database/MatrixCursor;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method private getAllSystemSettings(I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "userId"    # I
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 927
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 929
    .local v0, "callingUserId":I
    iget-object v10, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 930
    :try_start_0
    iget-object v9, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object v4

    .line 933
    .local v4, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 935
    .local v3, "nameCount":I
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 936
    .local v5, "normalizedProjection":[Ljava/lang/String;
    new-instance v7, Landroid/database/MatrixCursor;

    invoke-direct {v7, v5, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 938
    .local v7, "result":Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 939
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 942
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result v6

    .line 945
    .local v6, "owningUserId":I
    iget-object v9, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v6, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v8

    .line 947
    .local v8, "setting":Lcom/android/providers/settings/SettingsState$Setting;
    invoke-static {v7, v8}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    .line 938
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 950
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "owningUserId":I
    .end local v8    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    :cond_0
    monitor-exit v10

    return-object v7

    .line 951
    .end local v1    # "i":I
    .end local v3    # "nameCount":I
    .end local v4    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "normalizedProjection":[Ljava/lang/String;
    .end local v7    # "result":Landroid/database/MatrixCursor;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method private getCallingPackageInfoOrThrow()Landroid/content/pm/PackageInfo;
    .locals 6

    .prologue
    .line 1198
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v2, :cond_2

    .line 1199
    :cond_0
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1205
    :cond_1
    return-object v1

    .line 1201
    :cond_2
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/PersonaManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1202
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_1

    .line 1203
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Calling package doesn\'t exist"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 1209
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Calling package doesn\'t exist"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2245
    const-string v0, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edmUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    const-string v0, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "projectionArgs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    const/4 v7, -0x1

    .line 2248
    .local v7, "ret":I
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2249
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2250
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2252
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2253
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 2254
    const/4 v7, 0x1

    .line 2260
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2263
    :cond_0
    :goto_1
    const-string v0, "SettingsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    return v7

    .line 2256
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 2258
    :catch_0
    move-exception v0

    .line 2260
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2268
    const-string v0, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edmUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    const-string v0, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "projectionArgs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, p3

    if-ge v7, v0, :cond_0

    .line 2271
    const-string v0, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectionArgs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2273
    :cond_0
    const/4 v8, -0x1

    .line 2274
    .local v8, "ret":I
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2275
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2276
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2278
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2279
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 2280
    const/4 v8, 0x1

    .line 2286
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2289
    :cond_1
    :goto_2
    const-string v0, "SettingsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    return v8

    .line 2282
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 2284
    :catch_0
    move-exception v0

    .line 2286
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 717
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 720
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getGroupParentLocked(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1215
    if-nez p1, :cond_0

    .line 1226
    .end local p1    # "userId":I
    :goto_0
    return p1

    .line 1220
    .restart local p1    # "userId":I
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1223
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1224
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1

    iget p1, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1226
    .end local p1    # "userId":I
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local p1    # "userId":I
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private static getRequestingUserId(Landroid/os/Bundle;)I
    .locals 2
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1347
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1348
    .local v0, "callingUserId":I
    if-eqz p0, :cond_0

    const-string v1, "_user"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .end local v0    # "callingUserId":I
    :cond_0
    return v0
.end method

.method private getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "requestingUserId"    # I

    .prologue
    .line 826
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 829
    .local v0, "callingUserId":I
    invoke-direct {p0, v0, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSettingLocked(ILjava/lang/String;)I

    move-result v1

    .line 832
    .local v1, "owningUserId":I
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/SettingsProvider;->isLocationProvidersAllowedRestricted(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 833
    const/4 v2, 0x0

    .line 838
    :goto_0
    return-object v2

    .line 837
    :cond_0
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 838
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 840
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1353
    if-eqz p0, :cond_0

    const-string v0, "value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSystemSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "requestingUserId"    # I

    .prologue
    .line 960
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 963
    .local v0, "callingUserId":I
    invoke-direct {p0, v0, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result v1

    .line 966
    .local v1, "owningUserId":I
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 967
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v1, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 969
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1357
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1358
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1359
    .local v0, "table":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/settings/DatabaseHelper;->isValidTable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1360
    return-object v0

    .line 1362
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad root path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1364
    .end local v0    # "table":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private hasWriteSecureSettingsPermission()Z
    .locals 2

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1070
    const/4 v0, 0x1

    .line 1073
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private insertGlobalSetting(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "requestingUserId"    # I

    .prologue
    .line 734
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/settings/SettingsProvider;->mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private insertSecureSetting(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "requestingUserId"    # I

    .prologue
    .line 849
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private insertSystemSetting(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "requestingUserId"    # I

    .prologue
    .line 978
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private isAirViewRelated(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 2510
    const-string v1, "air_view_master_onoff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2526
    :cond_0
    :goto_0
    return v0

    .line 2513
    :cond_1
    const-string v1, "finger_air_view"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2516
    const-string v1, "finger_air_view_information_preview"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2519
    const-string v1, "finger_air_view_highlight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2522
    const-string v1, "pen_hovering"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2526
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAssistAppRelated(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 2533
    const-string v1, "assistant"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2543
    :cond_0
    :goto_0
    return v0

    .line 2536
    :cond_1
    const-string v1, "voice_interaction_service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2539
    const-string v1, "voice_recognition_service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2543
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isChangeAllowed(Landroid/content/ContentValues;I)Z
    .locals 3
    .param p1, "initialValues"    # Landroid/content/ContentValues;
    .param p2, "userId"    # I

    .prologue
    .line 2311
    if-nez p1, :cond_0

    .line 2312
    const/4 v2, 0x1

    .line 2316
    :goto_0
    return v2

    .line 2314
    :cond_0
    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2315
    .local v0, "name":Ljava/lang/String;
    const-string v2, "value"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2316
    .local v1, "setvalue":Ljava/lang/String;
    invoke-direct {p0, v0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->isChangeAllowed(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0
.end method

.method private isChangeAllowed(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "setvalue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 2322
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2323
    .local v2, "callingUid":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 2324
    .local v0, "args_callingUid":Ljava/lang/String;
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2325
    .local v1, "args_usedId":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 2327
    .local v5, "selectionArgs_widgetView":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2329
    .local v4, "selectionArgs_shortcutView":Ljava/lang/String;
    const-string v6, "SettingsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isChangeAllowed() : name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    if-eqz p1, :cond_1

    const-string v6, "mobile_data"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v7, "isCellularDataAllowed"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "false"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "0"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2337
    :cond_0
    const-string v6, "SettingsProvider"

    const-string v7, "isChangeAllowed() : return true by celluar data disallwed"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    const/4 v6, 0x1

    .line 2497
    :goto_0
    return v6

    .line 2340
    :cond_1
    const/16 v6, 0x3e8

    if-eq v2, v6, :cond_2

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isSettingsChangesAllowed"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "false"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 2344
    const/4 v6, 0x0

    goto :goto_0

    .line 2345
    :cond_2
    if-eqz p1, :cond_3

    const-string v6, "install_non_market_apps"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v7, "isNonMarketAppAllowed"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 2349
    const/4 v6, 0x0

    goto :goto_0

    .line 2350
    :cond_3
    if-eqz p1, :cond_7

    const-string v6, "location_providers_allowed"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2351
    const-string v6, "SettingsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    const/4 v3, 0x0

    .line 2353
    .local v3, "provider":Ljava/lang/String;
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_4

    .line 2354
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2356
    :cond_4
    const-string v6, "SettingsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "provider = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    if-eqz v3, :cond_5

    const-string v6, "content://com.sec.knox.provider/LocationPolicy"

    const-string v7, "isLocationProviderBlockedAsUser"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 2361
    const-string v6, "SettingsProvider"

    const-string v7, "LOCATIONPOLICY_LOCATIONPROVIDERBLOCKEDASUSER_METHOD = EDM_TRUE"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2363
    :cond_5
    if-eqz v3, :cond_6

    const-string v6, "gps"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "content://com.sec.knox.provider/LocationPolicy"

    const-string v7, "isGPSStateChangeAllowed"

    invoke-direct {p0, v6, v7}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    .line 2366
    const-string v6, "SettingsProvider"

    const-string v7, "LOCATIONPOLICY_GPSSTATECHANGE_METHOD = EDM_FALSE"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2369
    :cond_6
    const-string v6, "SettingsProvider"

    const-string v7, "LOCATION_PROVIDERS_ALLOWED is change allowed true"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2373
    .end local v3    # "provider":Ljava/lang/String;
    :cond_7
    if-eqz p1, :cond_8

    const-string v6, "always_finish_activities"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v7, "isKillingActivitiesOnLeaveAllowed"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8

    .line 2377
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2378
    :cond_8
    if-eqz p1, :cond_b

    const-string v6, "voice_input_control"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "wake_up_lock_screen"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_9
    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v7, "isSVoiceAllowed"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "false"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v7, "isMicrophoneEnabledAsUser"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "false"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_b

    .line 2385
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2386
    :cond_b
    if-eqz p1, :cond_d

    const-string v6, "kg_multiple_lockscreen"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "kg_enable_camera_widget"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_c
    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v7, "isLockScreenViewAllowed"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_d

    .line 2391
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2392
    :cond_d
    if-eqz p1, :cond_f

    const-string v6, "lock_screen_shortcut"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "set_shortcuts_mode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_e
    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v7, "isLockScreenViewAllowed"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_f

    .line 2397
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2398
    :cond_f
    if-eqz p1, :cond_10

    const-string v6, "mock_location"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v7, "isMockLocationEnabled"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_10

    .line 2402
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2405
    :cond_10
    if-eqz p1, :cond_12

    const-string v6, "airplane_mode_on"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v7, "isAirplaneModeAllowed"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "true"

    aput-object v10, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_12

    const-string v6, "true"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "1"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 2409
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2410
    :cond_12
    if-eqz p1, :cond_14

    const-string v6, "global_http_proxy_host"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    const-string v6, "global_http_proxy_port"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    const-string v6, "global_http_proxy_exclusion_list"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    const-string v6, "global_proxy_pac_url"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_13
    const-string v6, "FirewallPolicy"

    const-string v7, "isGlobalProxyAllowed"

    invoke-direct {p0, v6, v7}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_14

    .line 2416
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2418
    :cond_14
    if-eqz p1, :cond_15

    const-string v6, "show_password"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const-string v6, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v7, "isPasswordVisibilityEnabled"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_15

    .line 2422
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2423
    :cond_15
    if-eqz p1, :cond_17

    const-string v6, "multi_window_enabled"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const-string v6, "content://com.sec.knox.provider2/KioskMode"

    const-string v7, "isMultiWindowModeAllowedAsUser"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_17

    const-string v6, "true"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    const-string v6, "1"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 2427
    :cond_16
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2428
    :cond_17
    if-eqz p1, :cond_18

    const-string v6, "toolbox_onoff"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    const-string v6, "content://com.sec.knox.provider2/KioskMode"

    const-string v7, "isKioskModeEnabled"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_18

    .line 2432
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2434
    :cond_18
    if-eqz p1, :cond_1a

    const-string v6, "air_button_onoff"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const/16 v6, 0x3e8

    if-eq v2, v6, :cond_1a

    const-string v6, "content://com.sec.knox.provider2/KioskMode"

    const-string v7, "isAirCommandModeAllowed"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1a

    const-string v6, "true"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string v6, "1"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 2440
    :cond_19
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2441
    :cond_1a
    if-eqz p1, :cond_1b

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->isAirViewRelated(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/16 v6, 0x3e8

    if-eq v2, v6, :cond_1b

    const-string v6, "content://com.sec.knox.provider2/KioskMode"

    const-string v7, "isAirViewModeAllowed"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1b

    .line 2447
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2449
    :cond_1b
    if-eqz p1, :cond_1c

    const-string v6, "sms_default_application"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const-string v6, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v7, "isChangeSmsDefaultAppAllowed"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1c

    .line 2453
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2454
    :cond_1c
    if-eqz p1, :cond_1d

    const-string v6, "lock_to_app_enabled"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isScreenPinningAllowedAsUser"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "false"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1d

    .line 2458
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2460
    :cond_1d
    if-eqz p1, :cond_1e

    const-string v6, "night_mode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    const-string v6, "content://com.sec.knox.provider2/KioskMode"

    const-string v7, "isNightClockAllowed"

    invoke-direct {p0, v6, v7}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1e

    .line 2463
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2464
    :cond_1e
    if-eqz p1, :cond_1f

    const-string v6, "people_stripe"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const-string v6, "content://com.sec.knox.provider2/KioskMode"

    const-string v7, "isPeopleEdgeAllowed"

    invoke-direct {p0, v6, v7}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1f

    .line 2467
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2468
    :cond_1f
    if-eqz p1, :cond_20

    const-string v6, "turn_over_lighting"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    const-string v6, "content://com.sec.knox.provider2/KioskMode"

    const-string v7, "isEdgeLightingAllowed"

    invoke-direct {p0, v6, v7}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_20

    .line 2471
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2472
    :cond_20
    if-eqz p1, :cond_21

    const-string v6, "edge_information_stream"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    const-string v6, "content://com.sec.knox.provider2/KioskMode"

    const-string v7, "isInformationStreamAllowed"

    invoke-direct {p0, v6, v7}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_21

    .line 2475
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2476
    :cond_21
    if-eqz p1, :cond_22

    const-string v6, "task_edge"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const-string v6, "content://com.sec.knox.provider2/KioskMode"

    const-string v7, "isAppsEdgeAllowed"

    invoke-direct {p0, v6, v7}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_22

    .line 2479
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2480
    :cond_22
    if-eqz p1, :cond_23

    const-string v6, "edge_enable"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    const-string v6, "content://com.sec.knox.provider2/KioskMode"

    const-string v7, "isEdgeAllowed"

    invoke-direct {p0, v6, v7}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_23

    .line 2483
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2485
    :cond_23
    if-eqz p1, :cond_24

    const-string v6, "adb_enabled"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isUsbDebuggingEnabled"

    invoke-direct {p0, v6, v7}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_24

    .line 2488
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2490
    :cond_24
    if-eqz p1, :cond_25

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->isAssistAppRelated(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    const-string v6, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v7, "isChangeAssistDefaultAppAllowed"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/providers/settings/SettingsProvider;->getEnterprisePolicyEnabled(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_25

    .line 2494
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2497
    :cond_25
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method private isGlobalOrSecureSettingRestrictedForUser(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1099
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSettingToUserRestrictionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1100
    .local v0, "restriction":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1101
    const/4 v1, 0x0

    .line 1103
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    goto :goto_0
.end method

.method private static isKeyValid(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1419
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/providers/settings/SettingsState;->isBinary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLocationProvidersAllowedRestricted(Ljava/lang/String;II)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callingUserId"    # I
    .param p3, "owningUserId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1087
    if-ne p2, p3, :cond_1

    .line 1095
    :cond_0
    :goto_0
    return v0

    .line 1090
    :cond_1
    const-string v1, "location_providers_allowed"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_share_location"

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1093
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static logValueForAudit(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 562
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->AUDITABLE_EVENTS:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "SettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Property "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has been changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v6, p2

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 569
    :cond_0
    return-void
.end method

.method private mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "requestingUserId"    # I
    .param p4, "operation"    # I

    .prologue
    const/4 v0, 0x0

    .line 747
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsProvider;->enforceWritePermission(Ljava/lang/String;)V

    .line 750
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v6

    .line 753
    .local v6, "callingUserId":I
    invoke-direct {p0, p1, v6}, Lcom/android/providers/settings/SettingsProvider;->isGlobalOrSecureSettingRestrictedForUser(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    :goto_0
    return v0

    .line 758
    :cond_0
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 759
    packed-switch p4, :pswitch_data_0

    .line 778
    :try_start_0
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 761
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v7

    goto :goto_0

    .line 767
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IILjava/lang/String;)Z

    move-result v0

    monitor-exit v7

    goto :goto_0

    .line 773
    :pswitch_2
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->updateSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 759
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "requestingUserId"    # I
    .param p4, "operation"    # I

    .prologue
    const/4 v0, 0x0

    .line 872
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsProvider;->enforceWritePermission(Ljava/lang/String;)V

    .line 875
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v6

    .line 878
    .local v6, "callingUserId":I
    invoke-direct {p0, p1, v6}, Lcom/android/providers/settings/SettingsProvider;->isGlobalOrSecureSettingRestrictedForUser(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 918
    :cond_0
    :goto_0
    return v0

    .line 883
    :cond_1
    invoke-direct {p0, v6, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSettingLocked(ILjava/lang/String;)I

    move-result v2

    .line 886
    .local v2, "owningUserId":I
    if-ne v2, v6, :cond_0

    .line 891
    const-string v1, "location_providers_allowed"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 892
    invoke-direct {p0, p2, v2}, Lcom/android/providers/settings/SettingsProvider;->updateLocationProvidersAllowedLocked(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 896
    :cond_2
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 897
    packed-switch p4, :pswitch_data_0

    .line 916
    :try_start_0
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 899
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v7

    goto :goto_0

    .line 905
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IILjava/lang/String;)Z

    move-result v0

    monitor-exit v7

    goto :goto_0

    .line 911
    :pswitch_2
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->updateSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 897
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "runAsUserId"    # I
    .param p4, "operation"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 1002
    const-string v1, "allow_volte_provisioning"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1003
    const-string v6, "com.vzw.permission.ALLOW_VOLTE_PERMISSION"

    .line 1005
    .local v6, "ALLOW_VOLTE_PERMISSION":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.vzw.permission.ALLOW_VOLTE_PERMISSION"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    .line 1006
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "com.vzw.permission.ALLOW_VOLTE_PERMISSION"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1007
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "Permission denial: Modifying allow_volte_provisioning requires com.vzw.permission.ALLOW_VOLTE_PERMISSION"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    :catch_0
    move-exception v8

    .line 1010
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "SettingsProvider"

    const-string v3, "ALLOW_VOLTE_PERMISSION is not defined."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    .end local v6    # "ALLOW_VOLTE_PERMISSION":Ljava/lang/String;
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->hasWriteSecureSettingsPermission()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1018
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4, v5}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1062
    :cond_1
    :goto_0
    return v0

    .line 1025
    :cond_2
    invoke-direct {p0, p4, p1}, Lcom/android/providers/settings/SettingsProvider;->enforceRestrictedSystemSettingsMutationForCallingPackage(ILjava/lang/String;)V

    .line 1028
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v7

    .line 1031
    .local v7, "callingUserId":I
    invoke-direct {p0, v7, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result v2

    .line 1034
    .local v2, "owningUserId":I
    if-ne v2, v7, :cond_1

    .line 1039
    iget-object v9, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1040
    packed-switch p4, :pswitch_data_0

    .line 1062
    :try_start_1
    monitor-exit v9

    goto :goto_0

    .line 1063
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1042
    :pswitch_0
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v9

    goto :goto_0

    .line 1049
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IILjava/lang/String;)Z

    move-result v0

    monitor-exit v9

    goto :goto_0

    .line 1055
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->updateSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1040
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "projection"    # [Ljava/lang/String;

    .prologue
    .line 1377
    if-nez p0, :cond_1

    .line 1378
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    .line 1389
    .local v1, "columnCount":I
    .local v2, "i":I
    :cond_0
    return-object p0

    .line 1381
    .end local v1    # "columnCount":I
    .end local v2    # "i":I
    :cond_1
    array-length v1, p0

    .line 1382
    .restart local v1    # "columnCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1383
    aget-object v0, p0, v2

    .line 1384
    .local v0, "column":Ljava/lang/String;
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1385
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid column: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1382
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 2
    .param p0, "setting"    # Lcom/android/providers/settings/SettingsState$Setting;
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 1368
    if-nez p0, :cond_0

    .line 1369
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1373
    :goto_0
    return-object v0

    .line 1371
    :cond_0
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1372
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-static {v0, p0}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    goto :goto_0
.end method

.method private static packageValueForCallResult(Lcom/android/providers/settings/SettingsState$Setting;)Landroid/os/Bundle;
    .locals 2
    .param p0, "setting"    # Lcom/android/providers/settings/SettingsState$Setting;

    .prologue
    .line 1340
    if-nez p0, :cond_0

    .line 1341
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    .line 1343
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "value"

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private registerBroadcastReceivers()V
    .locals 6

    .prologue
    .line 639
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 640
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/providers/settings/SettingsProvider$1;

    invoke-direct {v3, p0}, Lcom/android/providers/settings/SettingsProvider$1;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 668
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$2;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsProvider$2;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    .line 679
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 681
    return-void
.end method

.method private static resolveCallingUserIdEnforcingPermissionsLocked(I)I
    .locals 7
    .param p0, "requestingUserId"    # I

    .prologue
    .line 1331
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 1334
    .end local p0    # "requestingUserId":I
    :goto_0
    return p0

    .restart local p0    # "requestingUserId":I
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "get/set setting for user"

    const/4 v6, 0x0

    move v2, p0

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_0
.end method

.method private resolveOwningUserIdForSecureSettingLocked(ILjava/lang/String;)I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    .line 1107
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 1108
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdLocked(ILjava/util/Set;Ljava/lang/String;)I

    move-result v0

    .line 1110
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sCloneToKnoxSettings:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdLocked(ILjava/util/Set;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    .line 1115
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 1116
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdLocked(ILjava/util/Set;Ljava/lang/String;)I

    move-result v0

    .line 1118
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sCloneToKnoxSettings:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdLocked(ILjava/util/Set;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private resolveOwningUserIdLocked(ILjava/util/Set;Ljava/lang/String;)I
    .locals 2
    .param p1, "userId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1123
    .local p2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getGroupParentLocked(I)I

    move-result v0

    .line 1124
    .local v0, "parentId":I
    if-eq v0, p1, :cond_0

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1127
    .end local v0    # "parentId":I
    :goto_0
    return v0

    .restart local v0    # "parentId":I
    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method private static toDumpString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 632
    if-eqz p0, :cond_0

    .line 635
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    const-string p0, "{null}"

    goto :goto_0
.end method

.method private updateGlobalSetting(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "requestingUserId"    # I

    .prologue
    .line 727
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/settings/SettingsProvider;->mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private updateLocationProvidersAllowedLocked(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "owningUserId"    # I

    .prologue
    const/16 v5, 0x2d

    const/16 v3, 0x2b

    const/16 v2, 0x2c

    const/4 v0, 0x0

    .line 1247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1304
    :cond_0
    :goto_0
    return v0

    .line 1251
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1252
    .local v9, "prefix":C
    if-eq v9, v3, :cond_2

    if-ne v9, v5, :cond_0

    .line 1257
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1259
    const-string v1, "location_providers_allowed"

    invoke-direct {p0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v10

    .line 1262
    .local v10, "settingValue":Lcom/android/providers/settings/SettingsState$Setting;
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 1264
    .local v8, "oldProviders":Ljava/lang/String;
    :goto_1
    invoke-virtual {v8, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 1265
    .local v7, "index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v6, v7, v1

    .line 1268
    .local v6, "end":I
    if-lez v7, :cond_3

    add-int/lit8 v1, v7, -0x1

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_3

    .line 1269
    const/4 v7, -0x1

    .line 1273
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v6, v1, :cond_4

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_4

    .line 1274
    const/4 v7, -0x1

    .line 1279
    :cond_4
    if-ne v9, v3, :cond_8

    if-gez v7, :cond_8

    .line 1281
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 1282
    move-object v4, p1

    .line 1304
    .local v4, "newProviders":Ljava/lang/String;
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x2

    const-string v3, "location_providers_allowed"

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1262
    .end local v4    # "newProviders":Ljava/lang/String;
    .end local v6    # "end":I
    .end local v7    # "index":I
    .end local v8    # "oldProviders":Ljava/lang/String;
    :cond_6
    const-string v8, ""

    goto :goto_1

    .line 1284
    .restart local v6    # "end":I
    .restart local v7    # "index":I
    .restart local v8    # "oldProviders":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "newProviders":Ljava/lang/String;
    goto :goto_2

    .line 1286
    .end local v4    # "newProviders":Ljava/lang/String;
    :cond_8
    if-ne v9, v5, :cond_0

    if-ltz v7, :cond_0

    .line 1289
    if-lez v7, :cond_a

    .line 1290
    add-int/lit8 v7, v7, -0x1

    .line 1295
    :cond_9
    :goto_3
    invoke-virtual {v8, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1296
    .restart local v4    # "newProviders":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v6, v0, :cond_5

    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 1291
    .end local v4    # "newProviders":Ljava/lang/String;
    :cond_a
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v6, v1, :cond_9

    .line 1292
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method private updateSecureSetting(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "requestingUserId"    # I

    .prologue
    .line 866
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private updateSystemSetting(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "requestingUserId"    # I

    .prologue
    .line 995
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1077
    sget-object v1, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$System$Validator;

    .line 1078
    .local v0, "validator":Landroid/provider/Settings$System$Validator;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/provider/Settings$System$Validator;->validate(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1079
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for setting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1082
    :cond_0
    return-void
.end method

.method private static warnOrThrowForUndesiredSecureSettingsMutationForTargetSdk(ILjava/lang/String;)V
    .locals 2
    .param p0, "targetSdkVersion"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1312
    const/16 v0, 0x16

    if-gt p0, v0, :cond_1

    .line 1313
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    const-string v0, "SettingsProvider"

    const-string v1, "You shouldn\'t not change private system settings. This will soon become an error."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :goto_0
    return-void

    .line 1317
    :cond_0
    const-string v0, "SettingsProvider"

    const-string v1, "You shouldn\'t keep your settings in the secure settings. This will soon become an error."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1321
    :cond_1
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot change private secure settings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1324
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot keep your settings in the secure settings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "allValues"    # [Landroid/content/ContentValues;

    .prologue
    .line 462
    const/4 v1, 0x0

    .line 463
    .local v1, "insertionCount":I
    array-length v3, p2

    .line 464
    .local v3, "valuesCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 465
    aget-object v2, p2, v0

    .line 466
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p0, p1, v2}, Lcom/android/providers/settings/SettingsProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 467
    add-int/lit8 v1, v1, 0x1

    .line 464
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    return v1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 293
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getRequestingUserId(Landroid/os/Bundle;)I

    move-result v0

    .line 295
    .local v0, "requestingUserId":I
    const-string v4, "PUT_global"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PUT_secure"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PUT_system"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v4, v0}, Lcom/android/providers/settings/SettingsProvider;->isChangeAllowed(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 339
    :goto_0
    return-object v3

    .line 300
    :cond_1
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 335
    const-string v4, "SettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call() with invalid method: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :sswitch_0
    const-string v5, "GET_global"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "GET_secure"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "GET_system"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "PUT_global"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    const-string v5, "PUT_secure"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_5
    const-string v5, "PUT_system"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x5

    goto :goto_1

    .line 302
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v1

    .line 303
    .local v1, "setting":Lcom/android/providers/settings/SettingsState$Setting;
    invoke-static {v1}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(Lcom/android/providers/settings/SettingsState$Setting;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    .line 307
    .end local v1    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    :pswitch_1
    invoke-direct {p0, p2, v0}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v1

    .line 308
    .restart local v1    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    invoke-static {v1}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(Lcom/android/providers/settings/SettingsState$Setting;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    .line 312
    .end local v1    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    :pswitch_2
    invoke-direct {p0, p2, v0}, Lcom/android/providers/settings/SettingsProvider;->getSystemSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v1

    .line 313
    .restart local v1    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    invoke-static {v1}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(Lcom/android/providers/settings/SettingsState$Setting;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    .line 317
    .end local v1    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    :pswitch_3
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "value":Ljava/lang/String;
    invoke-direct {p0, p2, v2, v0}, Lcom/android/providers/settings/SettingsProvider;->insertGlobalSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 323
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_4
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 324
    .restart local v2    # "value":Ljava/lang/String;
    invoke-direct {p0, p2, v2, v0}, Lcom/android/providers/settings/SettingsProvider;->insertSecureSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 329
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_5
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 330
    .restart local v2    # "value":Ljava/lang/String;
    invoke-direct {p0, p2, v2, v0}, Lcom/android/providers/settings/SettingsProvider;->insertSystemSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 300
    :sswitch_data_0
    .sparse-switch
        -0x118110d -> :sswitch_3
        0x12fa46c7 -> :sswitch_4
        0x141b5d7f -> :sswitch_5
        0x240c04cc -> :sswitch_0
        0x381e5ca0 -> :sswitch_1
        0x393f7358 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 480
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    invoke-direct {v0, p1, p2, p3, v3}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 483
    .local v0, "args":Lcom/android/providers/settings/SettingsProvider$Arguments;
    sget-object v4, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    iget-object v5, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 504
    :cond_0
    :goto_0
    return v2

    .line 487
    :cond_1
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 488
    goto :goto_0

    .line 491
    :cond_2
    iget-object v5, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 508
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad Uri path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 491
    :sswitch_0
    const-string v6, "global"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v3

    goto :goto_1

    :sswitch_1
    const-string v6, "secure"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v2

    goto :goto_1

    :sswitch_2
    const-string v6, "system"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x2

    goto :goto_1

    .line 493
    :pswitch_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 494
    .local v1, "userId":I
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, v4, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteGlobalSetting(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 498
    .end local v1    # "userId":I
    :pswitch_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 499
    .restart local v1    # "userId":I
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, v4, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteSecureSetting(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 503
    .end local v1    # "userId":I
    :pswitch_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 504
    .restart local v1    # "userId":I
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, v4, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteSystemSetting(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 491
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a16fc5d -> :sswitch_0
        -0x3604a489 -> :sswitch_1
        -0x34e38dd1 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 580
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 581
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 583
    .local v2, "identity":J
    :try_start_1
    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .line 584
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 585
    .local v4, "userCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 586
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 587
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpForUser(ILjava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 592
    monitor-exit v7

    .line 593
    return-void

    .line 590
    .end local v0    # "i":I
    .end local v4    # "userCount":I
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 592
    .end local v2    # "identity":J
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 344
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 345
    .local v0, "args":Lcom/android/providers/settings/SettingsProvider$Arguments;
    iget-object v1, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x0

    .line 409
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->getValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "table":Ljava/lang/String;
    sget-object v4, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-object v3

    .line 417
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-direct {p0, p2, v4}, Lcom/android/providers/settings/SettingsProvider;->isChangeAllowed(Landroid/content/ContentValues;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 422
    const-string v4, "name"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 427
    const-string v4, "value"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, "value":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 449
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad Uri path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 429
    :sswitch_0
    const-string v5, "global"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "secure"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "system"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    .line 431
    :pswitch_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/SettingsProvider;->insertGlobalSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 432
    sget-object v3, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 437
    :pswitch_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/SettingsProvider;->insertSecureSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 438
    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 443
    :pswitch_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/SettingsProvider;->insertSystemSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 444
    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_0

    .line 429
    :sswitch_data_0
    .sparse-switch
        -0x4a16fc5d -> :sswitch_0
        -0x3604a489 -> :sswitch_1
        -0x34e38dd1 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    .line 269
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 270
    .local v0, "versionInfo":Landroid/os/Bundle;
    const-string v1, "2.0"

    const-string v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v1, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mPersonaManager:Landroid/os/PersonaManager;

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    if-nez v1, :cond_1

    .line 276
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    .line 277
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->SHARE_KNOX:Ljava/util/HashSet;

    invoke-static {v1}, Landroid/os/PersonaPolicyManager;->getKnoxKeys(Ljava/util/HashSet;)V

    .line 282
    :cond_1
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "user"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    .line 284
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 285
    new-instance v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    .line 286
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->registerBroadcastReceivers()V

    .line 288
    const/4 v1, 0x1

    return v1

    .line 286
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 574
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Direct file access no longer supported; ringtone playback is available through android.media.Ringtone"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "order"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 359
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    invoke-direct {v0, p1, p3, p4, v6}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 360
    .local v0, "args":Lcom/android/providers/settings/SettingsProvider$Arguments;
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "normalizedProjection":[Ljava/lang/String;
    sget-object v4, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 364
    new-instance v4, Landroid/database/MatrixCursor;

    invoke-direct {v4, v1, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 393
    :goto_0
    return-object v4

    .line 367
    :cond_0
    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 398
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Uri path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 367
    :sswitch_0
    const-string v6, "global"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    goto :goto_1

    :sswitch_1
    const-string v5, "secure"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v6

    goto :goto_1

    :sswitch_2
    const-string v5, "system"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    .line 369
    :pswitch_0
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 370
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/providers/settings/SettingsProvider;->getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v2

    .line 371
    .local v2, "setting":Lcom/android/providers/settings/SettingsState$Setting;
    invoke-static {v2, v1}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v4

    goto :goto_0

    .line 373
    .end local v2    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getAllGlobalSettings([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0

    .line 378
    :pswitch_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 379
    .local v3, "userId":I
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 380
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v2

    .line 381
    .restart local v2    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    invoke-static {v2, v1}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v4

    goto :goto_0

    .line 383
    .end local v2    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    :cond_3
    invoke-direct {p0, v3, p2}, Lcom/android/providers/settings/SettingsProvider;->getAllSecureSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0

    .line 388
    .end local v3    # "userId":I
    :pswitch_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 389
    .restart local v3    # "userId":I
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 390
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/android/providers/settings/SettingsProvider;->getSystemSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v2

    .line 391
    .restart local v2    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    invoke-static {v2, v1}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v4

    goto/16 :goto_0

    .line 393
    .end local v2    # "setting":Lcom/android/providers/settings/SettingsState$Setting;
    :cond_4
    invoke-direct {p0, v3, p2}, Lcom/android/providers/settings/SettingsProvider;->getAllSystemSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0

    .line 367
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a16fc5d -> :sswitch_0
        -0x3604a489 -> :sswitch_1
        -0x34e38dd1 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 519
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    invoke-direct {v0, p1, p3, p4, v5}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 522
    .local v0, "args":Lcom/android/providers/settings/SettingsProvider$Arguments;
    sget-object v6, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 551
    :cond_0
    :goto_0
    return v5

    .line 527
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {p0, p2, v6}, Lcom/android/providers/settings/SettingsProvider;->isChangeAllowed(Landroid/content/ContentValues;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 532
    const-string v6, "name"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 536
    const-string v6, "value"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, "value":Ljava/lang/String;
    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 555
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Uri path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 538
    :sswitch_0
    const-string v8, "global"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v6, v5

    goto :goto_1

    :sswitch_1
    const-string v8, "secure"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v6, v4

    goto :goto_1

    :sswitch_2
    const-string v8, "system"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x2

    goto :goto_1

    .line 540
    :pswitch_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 541
    .local v2, "userId":I
    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v3, v2}, Lcom/android/providers/settings/SettingsProvider;->updateGlobalSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    move v5, v4

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_2

    .line 545
    .end local v2    # "userId":I
    :pswitch_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 546
    .restart local v2    # "userId":I
    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v3, v2}, Lcom/android/providers/settings/SettingsProvider;->updateSecureSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_3
    move v5, v4

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_3

    .line 550
    .end local v2    # "userId":I
    :pswitch_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 551
    .restart local v2    # "userId":I
    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v3, v2}, Lcom/android/providers/settings/SettingsProvider;->updateSystemSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_4
    move v5, v4

    goto/16 :goto_0

    :cond_5
    move v4, v5

    goto :goto_4

    .line 538
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a16fc5d -> :sswitch_0
        -0x3604a489 -> :sswitch_1
        -0x34e38dd1 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
