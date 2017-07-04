.class final Lcom/android/server/pm/DefaultPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# static fields
.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mpeg"

.field private static final CALENDAR_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAMERA_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTACTS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MICROPHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SENSORS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STORAGE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DefaultPermGrantPolicy"


# instance fields
.field private mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mImePackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private final mService:Lcom/android/server/pm/PackageManagerService;

.field private mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

.field private mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 69
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 80
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 87
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 93
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 99
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CELL_BROADCASTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 109
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 114
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 119
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 124
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 140
    return-void
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 2334
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDefaultMusicHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2159
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5, p2}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 2161
    .local v1, "handler":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_1

    .line 2169
    :cond_0
    :goto_0
    return-object v2

    .line 2164
    :cond_1
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2165
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2169
    :cond_2
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    goto :goto_0
.end method

.method private getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2218
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 2219
    .local v0, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_0

    .line 2220
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 2222
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2144
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5, p2}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 2146
    .local v1, "handler":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_1

    .line 2154
    :cond_0
    :goto_0
    return-object v2

    .line 2149
    :cond_1
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2150
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2154
    :cond_2
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    goto :goto_0
.end method

.method private getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 2174
    iget-object v6, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, p1, v7, v8, p2}, Lcom/android/server/pm/PackageManagerService;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 2176
    .local v3, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_1

    move-object v2, v5

    .line 2188
    :cond_0
    :goto_0
    return-object v2

    .line 2179
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 2180
    .local v1, "handlerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 2181
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2182
    .local v0, "handler":Landroid/content/pm/ResolveInfo;
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 2184
    .local v2, "handlerPackage":Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_0

    .line 2180
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "handler":Landroid/content/pm/ResolveInfo;
    .end local v2    # "handlerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_2
    move-object v2, v5

    .line 2188
    goto :goto_0
.end method

.method private getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .param p1, "syncAdapterPackageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2193
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2195
    .local v7, "syncAdapterPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2196
    .local v2, "homeIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2198
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 2199
    .local v6, "syncAdapterPackageName":Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2201
    iget-object v8, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v2, v9, v10, p2}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 2203
    .local v1, "homeActivity":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_1

    .line 2198
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2207
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 2208
    .local v5, "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_0

    .line 2209
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2213
    .end local v1    # "homeActivity":Landroid/content/pm/ResolveInfo;
    .end local v5    # "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "syncAdapterPackageName":Ljava/lang/String;
    :cond_2
    return-object v7
.end method

.method private getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2226
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    return-object v0
.end method

.method private getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2230
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 2231
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2232
    invoke-direct {p0, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2234
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_0
    return-object v0

    .restart local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_0
    move-object v0, v1

    .line 2232
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2234
    goto :goto_0
.end method

.method private grantDefaultPermissionsToAttApp(I)V
    .locals 17
    .param p1, "userId"    # I

    .prologue
    .line 1855
    const-string v16, "com.cequint.ecid"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 1856
    .local v6, "ecidPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_0

    invoke-static {v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1857
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 1858
    .local v7, "ecidPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v16, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1859
    const-string v16, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1860
    const-string v16, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1861
    const-string v16, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1862
    const-string v16, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1863
    const-string v16, "android.permission.SEND_SMS"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1864
    const-string v16, "android.permission.READ_SMS"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1865
    const-string v16, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1866
    const-string v16, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1867
    const-string v16, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1868
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v6, v7, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1872
    .end local v7    # "ecidPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string v16, "com.samsung.acms"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1873
    .local v4, "ambsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1874
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 1875
    .local v5, "ambsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v16, "android.permission.READ_SMS"

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1876
    const-string v16, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1877
    const-string v16, "android.permission.SEND_SMS"

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1878
    const-string v16, "android.permission.CALL_PHONE"

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1879
    const-string v16, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1880
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1884
    .end local v5    # "ambsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    new-instance v13, Landroid/content/Intent;

    const-string v16, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1885
    .local v13, "vvmIntent":Landroid/content/Intent;
    const-string v16, "com.samsung.att_vvm.pregrant_category"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1886
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v14

    .line 1887
    .local v14, "vvmPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v14, :cond_2

    invoke-static {v14}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1888
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    .line 1889
    .local v15, "vvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v16, "android.permission.CALL_PHONE"

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1890
    const-string v16, "android.permission.READ_PHONE_STATE"

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1891
    const-string v16, "android.permission.READ_SMS"

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1892
    const-string v16, "android.permission.RECEIVE_SMS"

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1893
    const-string v16, "android.permission.SEND_SMS"

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1894
    const-string v16, "android.permission.READ_CONTACTS"

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1895
    const-string v16, "android.permission.RECORD_AUDIO"

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1896
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v14, v15, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1900
    .end local v15    # "vvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v16, "com.sec.att.usagemanager3"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    .line 1901
    .local v12, "usageManagerPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v12, :cond_3

    invoke-static {v12}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1902
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 1903
    .local v11, "usageManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v16, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1904
    const-string v16, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1905
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v12, v11, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1909
    .end local v11    # "usageManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    new-instance v8, Landroid/content/Intent;

    const-string v16, "com.synchronoss.dcs.r2g.R2G_POST_OEM"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1910
    .local v8, "r2gIntent":Landroid/content/Intent;
    const-string v16, "android.intent.category.DEFAULT"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1911
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 1913
    .local v9, "r2gPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_4

    invoke-static {v9}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1915
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 1916
    .local v10, "r2gPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v16, "android.permission.CAMERA"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1917
    const-string v16, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1918
    const-string v16, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1919
    const-string v16, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1920
    const-string v16, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1921
    const-string v16, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1922
    const-string v16, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1923
    const-string v16, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1924
    const-string v16, "android.permission.READ_SMS"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1925
    const-string v16, "android.permission.SEND_SMS"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1926
    const-string v16, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1927
    const-string v16, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1928
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v9, v10, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1932
    .end local v10    # "r2gPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const-string v16, "com.samsung.aab"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 1933
    .local v2, "aabSyncmlPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_5

    invoke-static {v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1934
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1935
    .local v3, "aabSyncnlPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v16, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1936
    const-string v16, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1937
    const-string v16, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1938
    const-string v16, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1939
    const-string v16, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1940
    const-string v16, "android.permission.RECEIVE_WAP_PUSH"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1941
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1943
    .end local v3    # "aabSyncnlPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    return-void
.end method

.method private grantDefaultPermissionsToCricketApp(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1218
    const-string v2, "com.smithmicro.netwise.director.cricket"

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1219
    .local v0, "netWisePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1220
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1221
    .local v1, "netWisePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1222
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1223
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1224
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1226
    .end local v1    # "netWisePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 3
    .param p1, "simCallManagerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    .line 2097
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to sim call manager for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2099
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2100
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2102
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 1
    .param p1, "dialerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    .line 2018
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2019
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2020
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2021
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2022
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2024
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 2
    .param p1, "smsPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    .line 2029
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2030
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2031
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2032
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2034
    const-string v0, "com.android.mms"

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2035
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2036
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2037
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2040
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDocomoApp(I)V
    .locals 42
    .param p1, "userId"    # I

    .prologue
    .line 1230
    const-string v41, "com.nttdocomo.android.idmanager"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    .line 1231
    .local v13, "DcmIDManager":Landroid/content/pm/PackageParser$Package;
    if-eqz v13, :cond_0

    invoke-static {v13}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 1232
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 1233
    .local v14, "DcmIDManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v41

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1234
    const-string v41, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v41

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1235
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v14, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1239
    .end local v14    # "DcmIDManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string v41, "com.nttdocomo.android.accountauthenticator"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1240
    .local v5, "DcmAccountAuthenticator":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_1

    invoke-static {v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_1

    .line 1241
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 1242
    .local v6, "DcmAccountAuthenticatorPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v41

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1243
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v41

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1244
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v6, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1248
    .end local v6    # "DcmAccountAuthenticatorPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v41, "jp.co.nttdocomo.lcsapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v31

    .line 1249
    .local v31, "Dcmlcsapp":Landroid/content/pm/PackageParser$Package;
    if-eqz v31, :cond_2

    invoke-static/range {v31 .. v31}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_2

    .line 1250
    new-instance v32, Landroid/util/ArraySet;

    invoke-direct/range {v32 .. v32}, Landroid/util/ArraySet;-><init>()V

    .line 1251
    .local v32, "DcmlcsappPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1252
    const-string v41, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1253
    const/16 v41, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v41

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1257
    .end local v32    # "DcmlcsappPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v41, "com.nttdocomo.android.wipe"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    .line 1258
    .local v19, "DcmWipe":Landroid/content/pm/PackageParser$Package;
    if-eqz v19, :cond_3

    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_3

    .line 1259
    new-instance v20, Landroid/util/ArraySet;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArraySet;-><init>()V

    .line 1260
    .local v20, "DcmWipePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1261
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1265
    .end local v20    # "DcmWipePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const-string v41, "com.nttdocomo.android.applicationmanager"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 1266
    .local v7, "DcmApplicationManager":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_4

    invoke-static {v7}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_4

    .line 1267
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 1268
    .local v8, "DcmApplicationManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v41

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1269
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v8, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1273
    .end local v8    # "DcmApplicationManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const-string v41, "com.nttdocomo.android.lac"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v29

    .line 1274
    .local v29, "Dcmlac":Landroid/content/pm/PackageParser$Package;
    if-eqz v29, :cond_5

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_5

    .line 1275
    new-instance v30, Landroid/util/ArraySet;

    invoke-direct/range {v30 .. v30}, Landroid/util/ArraySet;-><init>()V

    .line 1276
    .local v30, "DcmlacPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1277
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1281
    .end local v30    # "DcmlacPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    const-string v41, "com.nttdocomo.android.areamail"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 1282
    .local v9, "DcmAreaMail":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_6

    invoke-static {v9}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_6

    .line 1283
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 1284
    .local v10, "DcmAreaMailPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v41

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1285
    const-string v41, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v41

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1286
    const/16 v41, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, p1

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1290
    .end local v10    # "DcmAreaMailPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    const-string/jumbo v41, "jp.co.omronsoft.android.decoemojimanager_docomo"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    .line 1291
    .local v11, "DcmEmojiManager":Landroid/content/pm/PackageParser$Package;
    if-eqz v11, :cond_7

    invoke-static {v11}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_7

    .line 1292
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 1293
    .local v12, "DcmEmojiManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v41

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1294
    const-string v41, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v41

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1295
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v12, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1299
    .end local v12    # "DcmEmojiManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    const-string/jumbo v41, "jp.co.nttdocomo.saigaiban"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v39

    .line 1300
    .local v39, "Dcmsaigaiban":Landroid/content/pm/PackageParser$Package;
    if-eqz v39, :cond_8

    invoke-static/range {v39 .. v39}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_8

    .line 1301
    new-instance v40, Landroid/util/ArraySet;

    invoke-direct/range {v40 .. v40}, Landroid/util/ArraySet;-><init>()V

    .line 1302
    .local v40, "DcmsaigaibanPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.RECEIVE_SMS"

    invoke-interface/range {v40 .. v41}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1303
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1307
    .end local v40    # "DcmsaigaibanPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    const-string v41, "com.nttdocomo.android.remotelock"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 1308
    .local v17, "DcmRemotelock":Landroid/content/pm/PackageParser$Package;
    if-eqz v17, :cond_9

    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_9

    .line 1309
    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    .line 1310
    .local v18, "DcmRemotelockPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1311
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1315
    .end local v18    # "DcmRemotelockPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    const-string v41, "com.nttdocomo.android.osv"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v35

    .line 1316
    .local v35, "Dcmosv":Landroid/content/pm/PackageParser$Package;
    if-eqz v35, :cond_a

    invoke-static/range {v35 .. v35}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_a

    .line 1317
    new-instance v36, Landroid/util/ArraySet;

    invoke-direct/range {v36 .. v36}, Landroid/util/ArraySet;-><init>()V

    .line 1318
    .local v36, "DcmosvPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1319
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1323
    .end local v36    # "DcmosvPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a
    const-string v41, "com.nttdocomo.android.hcebridge"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v27

    .line 1324
    .local v27, "Dcmhcebridge":Landroid/content/pm/PackageParser$Package;
    if-eqz v27, :cond_b

    invoke-static/range {v27 .. v27}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_b

    .line 1325
    new-instance v28, Landroid/util/ArraySet;

    invoke-direct/range {v28 .. v28}, Landroid/util/ArraySet;-><init>()V

    .line 1326
    .local v28, "DcmhcebridgePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1327
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1331
    .end local v28    # "DcmhcebridgePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b
    const-string v41, "com.nttdocomo.android.mediaplayer"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v15

    .line 1332
    .local v15, "DcmMediaplayer":Landroid/content/pm/PackageParser$Package;
    if-eqz v15, :cond_c

    invoke-static {v15}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_c

    .line 1333
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    .line 1334
    .local v16, "DcmMediaplayerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1335
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1339
    .end local v16    # "DcmMediaplayerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c
    const-string v41, "com.nttdocomo.android.dhome"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    .line 1340
    .local v23, "Dcmdhome":Landroid/content/pm/PackageParser$Package;
    if-eqz v23, :cond_d

    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_d

    .line 1341
    new-instance v24, Landroid/util/ArraySet;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    .line 1342
    .local v24, "DcmdhomePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1343
    const-string v41, "android.permission.CALL_PHONE"

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1344
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1348
    .end local v24    # "DcmdhomePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    const-string v41, "com.nttdocomo.android.cloudstorageservice"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v21

    .line 1349
    .local v21, "Dcmcloudstorageservice":Landroid/content/pm/PackageParser$Package;
    if-eqz v21, :cond_e

    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_e

    .line 1350
    new-instance v22, Landroid/util/ArraySet;

    invoke-direct/range {v22 .. v22}, Landroid/util/ArraySet;-><init>()V

    .line 1351
    .local v22, "DcmcloudstorageservicePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v22

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1352
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1356
    .end local v22    # "DcmcloudstorageservicePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_e
    const-string v41, "com.nttdocomo.android.iconcier"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    .line 1357
    .local v25, "Dcmdiconcier":Landroid/content/pm/PackageParser$Package;
    if-eqz v25, :cond_f

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_f

    .line 1358
    new-instance v26, Landroid/util/ArraySet;

    invoke-direct/range {v26 .. v26}, Landroid/util/ArraySet;-><init>()V

    .line 1359
    .local v26, "DcmdiconcierPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1360
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1364
    .end local v26    # "DcmdiconcierPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    const-string v41, "com.nttdocomo.android.mascot"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v33

    .line 1365
    .local v33, "Dcmmascot":Landroid/content/pm/PackageParser$Package;
    if-eqz v33, :cond_10

    invoke-static/range {v33 .. v33}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_10

    .line 1366
    new-instance v34, Landroid/util/ArraySet;

    invoke-direct/range {v34 .. v34}, Landroid/util/ArraySet;-><init>()V

    .line 1367
    .local v34, "DcmmascotPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1368
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1372
    .end local v34    # "DcmmascotPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_10
    const-string v41, "com.nttdocomo.android.phonemotion"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v37

    .line 1373
    .local v37, "Dcmphonemotion":Landroid/content/pm/PackageParser$Package;
    if-eqz v37, :cond_11

    invoke-static/range {v37 .. v37}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_11

    .line 1374
    new-instance v38, Landroid/util/ArraySet;

    invoke-direct/range {v38 .. v38}, Landroid/util/ArraySet;-><init>()V

    .line 1375
    .local v38, "DcmphonemotionPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1376
    const-string v41, "android.permission.CALL_PHONE"

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1377
    const-string v41, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1378
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1381
    .end local v38    # "DcmphonemotionPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_11
    return-void
.end method

.method private grantDefaultPermissionsToKddiApp(I)V
    .locals 26
    .param p1, "userId"    # I

    .prologue
    .line 1386
    const-string v25, "com.kddi.android.au_wifi_connect2"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    .line 1387
    .local v23, "KddiAUwificonnectPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v23, :cond_0

    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 1388
    new-instance v24, Landroid/util/ArraySet;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    .line 1389
    .local v24, "KddiAUwificonnectPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v25, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface/range {v24 .. v25}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1390
    const-string v25, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface/range {v24 .. v25}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1391
    const-string v25, "android.permission.READ_PHONE_STATE"

    invoke-interface/range {v24 .. v25}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1393
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1397
    .end local v24    # "KddiAUwificonnectPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string v25, "com.kddi.android.klop"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v15

    .line 1398
    .local v15, "KddiAUklopPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v15, :cond_1

    invoke-static {v15}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 1399
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    .line 1400
    .local v16, "KddiAUklopPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v25, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1401
    const-string v25, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1402
    const-string v25, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1404
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v25

    move/from16 v3, p1

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1408
    .end local v16    # "KddiAUklopPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string v25, "com.kddi.android.AddressbookPlus"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1409
    .local v5, "KddiAUaddressbookplusPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_2

    invoke-static {v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 1410
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 1411
    .local v6, "KddiAUaddressbookplusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v25, "android.permission.CALL_PHONE"

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1412
    const-string v25, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1413
    const-string v25, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1415
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, p1

    invoke-direct {v0, v5, v6, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1419
    .end local v6    # "KddiAUaddressbookplusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v25, "com.kddi.android.evc"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    .line 1420
    .local v13, "KddiAUevcPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v13, :cond_3

    invoke-static {v13}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 1421
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 1422
    .local v14, "KddiAUevcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v25, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v25

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1423
    const-string v25, "android.permission.CALL_PHONE"

    move-object/from16 v0, v25

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1424
    const-string v25, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v25

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1425
    const-string v25, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v25

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1427
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, p1

    invoke-direct {v0, v13, v14, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1431
    .end local v14    # "KddiAUevcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const-string v25, "com.kddi.android.checker_android"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 1432
    .local v7, "KddiAUcheckerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_4

    invoke-static {v7}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 1433
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 1434
    .local v8, "KddiAUcheckerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v25, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v25

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1435
    const-string v25, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v25

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1436
    const-string v25, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v25

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1438
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, p1

    invoke-direct {v0, v7, v8, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1442
    .end local v8    # "KddiAUcheckerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const-string v25, "com.kddi.android.ausharelink"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v21

    .line 1443
    .local v21, "KddiAUsharelinkPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v21, :cond_5

    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 1444
    new-instance v22, Landroid/util/ArraySet;

    invoke-direct/range {v22 .. v22}, Landroid/util/ArraySet;-><init>()V

    .line 1445
    .local v22, "KddiAUsharelinkPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v25, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1446
    const-string v25, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1448
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v25

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1452
    .end local v22    # "KddiAUsharelinkPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    const-string v25, "com.kddi.android.screenshotshare"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    .line 1453
    .local v19, "KddiAUscreenshotsharePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v19, :cond_6

    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 1454
    new-instance v20, Landroid/util/ArraySet;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArraySet;-><init>()V

    .line 1455
    .local v20, "KddiAUscreenshotsharePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v25, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1457
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v25

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1461
    .end local v20    # "KddiAUscreenshotsharePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    const-string v25, "com.kddi.cs.app001"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 1462
    .local v9, "KddiAUcsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_7

    invoke-static {v9}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 1463
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 1464
    .local v10, "KddiAUcsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v25, "android.permission.CALL_PHONE"

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1465
    const-string v25, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1467
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, p1

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1471
    .end local v10    # "KddiAUcsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    const-string v25, "com.kddi.disasterapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    .line 1472
    .local v11, "KddiAUdisasterappPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v11, :cond_8

    invoke-static {v11}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 1473
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 1474
    .local v12, "KddiAUdisasterappPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v25, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v25

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1475
    const-string v25, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v25

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1477
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, p1

    invoke-direct {v0, v11, v12, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1481
    .end local v12    # "KddiAUdisasterappPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    const-string v25, "com.kddi.market"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 1482
    .local v17, "KddiAUmarketPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v17, :cond_9

    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 1483
    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    .line 1484
    .local v18, "KddiAUmarketPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v25, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1486
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v25

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1489
    .end local v18    # "KddiAUmarketPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    return-void
.end method

.method private grantDefaultPermissionsToSingtelApp(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1622
    const-string v2, "com.LogiaGroup.LogiaDeck"

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 1623
    .local v1, "sinDtIgnitePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1624
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1625
    .local v0, "dtiPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1627
    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1629
    .end local v0    # "dtiPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToSprintApps(I)V
    .locals 28
    .param p1, "userId"    # I

    .prologue
    .line 1500
    :try_start_0
    const-string v26, "com.sprint.dsa"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    .line 1501
    .local v11, "sprDSSPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v11, :cond_0

    invoke-static {v11}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 1502
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 1503
    .local v10, "sprDSSPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v26, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v26

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1504
    const-string v26, "android.permission.CALL_PHONE"

    move-object/from16 v0, v26

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1505
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v10, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1512
    .end local v10    # "sprDSSPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "sprDSSPkg":Landroid/content/pm/PackageParser$Package;
    :cond_0
    :goto_0
    :try_start_1
    const-string v26, "com.sprint.ce.updater"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    .line 1513
    .local v25, "sprintMIPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v25, :cond_1

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 1514
    new-instance v24, Landroid/util/ArraySet;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    .line 1515
    .local v24, "sprintMIPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v26, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1516
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1523
    .end local v24    # "sprintMIPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v25    # "sprintMIPkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    :goto_1
    :try_start_2
    const-string v26, "com.sprint.w.installer"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v15

    .line 1524
    .local v15, "sprMobileIDPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v15, :cond_2

    invoke-static {v15}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 1525
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 1526
    .local v14, "sprMobileIDPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v26, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v26

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1527
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v15, v14, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1534
    .end local v14    # "sprMobileIDPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "sprMobileIDPkg":Landroid/content/pm/PackageParser$Package;
    :cond_2
    :goto_2
    :try_start_3
    const-string v26, "com.sprint.ms.smf.services"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    .line 1535
    .local v20, "sprSMFPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v20, :cond_3

    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 1536
    new-instance v19, Landroid/util/ArraySet;

    invoke-direct/range {v19 .. v19}, Landroid/util/ArraySet;-><init>()V

    .line 1537
    .local v19, "sprSMFPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v26, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1538
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1544
    .end local v19    # "sprSMFPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "sprSMFPkg":Landroid/content/pm/PackageParser$Package;
    :cond_3
    :goto_3
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v26, 0x0

    const-string v27, "com.locationlabs.sparkle.yellow.pre"

    aput-object v27, v18, v26

    const/16 v26, 0x1

    const-string v27, "com.locationlabs.v3client"

    aput-object v27, v18, v26

    .line 1548
    .local v18, "sprSDMPkgList":[Ljava/lang/String;
    move-object/from16 v6, v18

    .local v6, "arr$":[Ljava/lang/String;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_4
    if-ge v8, v9, :cond_5

    aget-object v21, v6, v8

    .line 1550
    .local v21, "sprSdm":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 1551
    .local v17, "sprSDMPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v17, :cond_4

    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 1552
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    .line 1553
    .local v16, "sprSDMPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v26, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1554
    const-string v26, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1555
    const-string v26, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1556
    const-string v26, "android.permission.CALL_PHONE"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1557
    const-string v26, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1558
    const-string v26, "android.permission.READ_SMS"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1559
    const-string v26, "android.permission.SEND_SMS"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1560
    const-string v26, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1561
    const-string v26, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1562
    const-string v26, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1563
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1548
    .end local v16    # "sprSDMPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "sprSDMPkg":Landroid/content/pm/PackageParser$Package;
    :cond_4
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1507
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v18    # "sprSDMPkgList":[Ljava/lang/String;
    .end local v21    # "sprSdm":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1508
    .local v7, "e":Ljava/lang/Exception;
    const-string v26, "DefaultPermGrantPolicy"

    const-string v27, "DSS not found"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1518
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 1519
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v26, "DefaultPermGrantPolicy"

    const-string v27, "MobileInstaller not found"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1529
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 1530
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v26, "DefaultPermGrantPolicy"

    const-string v27, "MobileID not found"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1540
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 1541
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v26, "DefaultPermGrantPolicy"

    const-string v27, "SMF not found"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1565
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    .restart local v18    # "sprSDMPkgList":[Ljava/lang/String;
    .restart local v21    # "sprSdm":Ljava/lang/String;
    :catch_4
    move-exception v7

    .line 1566
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v26, "DefaultPermGrantPolicy"

    const-string/jumbo v27, "sprSDM is not found"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1571
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v21    # "sprSdm":Ljava/lang/String;
    :cond_5
    :try_start_5
    const-string v26, "com.coremobility.app.vnotes"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    .line 1572
    .local v23, "sprVVMPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v23, :cond_6

    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 1573
    new-instance v22, Landroid/util/ArraySet;

    invoke-direct/range {v22 .. v22}, Landroid/util/ArraySet;-><init>()V

    .line 1574
    .local v22, "sprVVMPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v26, "android.permission.CALL_PHONE"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1575
    const-string v26, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1576
    const-string v26, "android.permission.READ_SMS"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1577
    const-string v26, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1578
    const-string v26, "android.permission.SEND_SMS"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1579
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1586
    .end local v22    # "sprVVMPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v23    # "sprVVMPkg":Landroid/content/pm/PackageParser$Package;
    :cond_6
    :goto_6
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v5, v0, [Ljava/lang/String;

    const/16 v26, 0x0

    const-string v27, "com.itsoninc.android.uid"

    aput-object v27, v5, v26

    const/16 v26, 0x1

    const-string v27, "com.itsoninc.android.itsonclient"

    aput-object v27, v5, v26

    const/16 v26, 0x2

    const-string v27, "com.itsoninc.android.itsonservice"

    aput-object v27, v5, v26

    const/16 v26, 0x3

    const-string v27, "com.itsoninc.android.sprintproxy"

    aput-object v27, v5, v26

    .line 1590
    .local v5, "ItsonPkgList":[Ljava/lang/String;
    move-object v6, v5

    array-length v9, v6

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v9, :cond_8

    aget-object v4, v6, v8

    .line 1592
    .local v4, "ItsonPkg":Ljava/lang/String;
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    .line 1593
    .local v13, "sprItsonPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v13, :cond_7

    invoke-static {v13}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 1594
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 1595
    .local v12, "sprItsonPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v26, "android.permission.CALL_PHONE"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1596
    const-string v26, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1597
    const-string v26, "android.permission.READ_SMS"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1598
    const-string v26, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1599
    const-string v26, "android.permission.SEND_SMS"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1600
    const-string v26, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1601
    const-string v26, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1602
    const-string v26, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1603
    const-string v26, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v26

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1604
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v12, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1590
    .end local v12    # "sprItsonPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "sprItsonPkg":Landroid/content/pm/PackageParser$Package;
    :cond_7
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1581
    .end local v4    # "ItsonPkg":Ljava/lang/String;
    .end local v5    # "ItsonPkgList":[Ljava/lang/String;
    :catch_5
    move-exception v7

    .line 1582
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v26, "DefaultPermGrantPolicy"

    const-string v27, "VVM is not found"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 1606
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "ItsonPkg":Ljava/lang/String;
    .restart local v5    # "ItsonPkgList":[Ljava/lang/String;
    :catch_6
    move-exception v7

    .line 1607
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v26, "DefaultPermGrantPolicy"

    const-string v27, "Itson is not found"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1610
    .end local v4    # "ItsonPkg":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_8
    return-void
.end method

.method private grantDefaultPermissionsToTmoApp(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 1973
    const-string v6, "com.whitepages.nameid.tmobile"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1974
    .local v5, "whitepagesPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1975
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 1976
    .local v4, "whitePagesPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1977
    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1978
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1979
    const-string v6, "android.permission.CALL_PHONE"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1980
    const-string v6, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1981
    const-string v6, "android.permission.READ_CALL_LOG"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1982
    const-string v6, "android.permission.READ_SMS"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1983
    const-string v6, "android.permission.RECEIVE_MMS"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1984
    const-string v6, "android.permission.RECEIVE_SMS"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1985
    invoke-direct {p0, v5, v4, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1989
    .end local v4    # "whitePagesPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string v6, "com.cequint.ecid"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1990
    .local v0, "ecidPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1991
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1992
    .local v1, "ecidPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1993
    const-string v6, "android.permission.RECEIVE_SMS"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1994
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1998
    .end local v1    # "ecidPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string v6, "com.tmobile.pr.mytmobile"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 1999
    .local v2, "myAccountPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2000
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2001
    .local v3, "myAccountPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2002
    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2003
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2004
    const-string v6, "android.permission.READ_SMS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2005
    const-string v6, "android.permission.RECEIVE_MMS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2006
    const-string v6, "android.permission.RECEIVE_SMS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2007
    const-string v6, "android.permission.CALL_PHONE"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2008
    const-string v6, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2009
    const-string v6, "android.permission.READ_CALL_LOG"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2010
    const-string v6, "android.permission.USE_SIP"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2011
    const-string v6, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2012
    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2014
    .end local v3    # "myAccountPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private grantDefaultPermissionsToUsccApps(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1953
    const-string v2, "com.LogiaGroup.LogiaDeck"

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 1954
    .local v1, "UscIgnitePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1955
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1959
    :cond_0
    const-string v2, "com.cequint.ecid"

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1960
    .local v0, "UscCityIDPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1961
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v0, v2, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1963
    :cond_1
    return-void
.end method

.method private grantDefaultPermissionsToVerizonApp(I)V
    .locals 37
    .param p1, "userId"    # I

    .prologue
    .line 1656
    const-string v36, "com.vcast.mediamanager"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    .line 1657
    .local v20, "vzCloudPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v20, :cond_0

    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v36

    if-eqz v36, :cond_0

    .line 1658
    new-instance v34, Landroid/util/ArraySet;

    invoke-direct/range {v34 .. v34}, Landroid/util/ArraySet;-><init>()V

    .line 1659
    .local v34, "vzcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v36, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1660
    const-string v36, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1661
    const-string v36, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1662
    const-string v36, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1663
    const-string v36, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1664
    const-string v36, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1665
    const-string v36, "android.permission.CALL_PHONE"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1666
    const-string v36, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1667
    const-string v36, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1668
    const-string v36, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1669
    const-string v36, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1670
    const-string v36, "android.permission.SEND_SMS"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1671
    const-string v36, "android.permission.READ_SMS"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1672
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v34

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1676
    .end local v34    # "vzcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const-string v36, "com.motricity.verizon.ssodownloadable"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v31

    .line 1677
    .local v31, "vzSsoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v31, :cond_1

    invoke-static/range {v31 .. v31}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v36

    if-eqz v36, :cond_1

    .line 1678
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    .line 1679
    .local v15, "ssoPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v36, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v36

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1680
    const-string v36, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v36

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1681
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p1

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1685
    .end local v15    # "ssoPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string v36, "com.verizon.vzwavs"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .line 1686
    .local v18, "vzAvsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v18, :cond_2

    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v36

    if-eqz v36, :cond_2

    .line 1687
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 1688
    .local v4, "avsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v36, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v36

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1689
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1693
    .end local v4    # "avsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v36, "com.vzw.hss.myverizon"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v28

    .line 1694
    .local v28, "vzMyVerizonPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v28, :cond_3

    invoke-static/range {v28 .. v28}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v36

    if-eqz v36, :cond_3

    .line 1695
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 1696
    .local v12, "mvPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v36, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1697
    const-string v36, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1698
    const-string v36, "android.permission.CALL_PHONE"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1699
    const-string v36, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1700
    const-string v36, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1701
    const-string v36, "android.permission.SEND_SMS"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1702
    const-string v36, "android.permission.READ_SMS"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1703
    const-string v36, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1704
    const-string v36, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1705
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p1

    invoke-direct {v0, v1, v12, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1709
    .end local v12    # "mvPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const-string v36, "com.LogiaGroup.LogiaDeck"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    .line 1710
    .local v23, "vzDtIgnitePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v23, :cond_4

    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v36

    if-eqz v36, :cond_4

    .line 1711
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 1712
    .local v7, "dtiPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v36, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v36

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1713
    const-string v36, "android.permission.SEND_SMS"

    move-object/from16 v0, v36

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1714
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1718
    .end local v7    # "dtiPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const-string v36, "com.cequint.ecid"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    .line 1719
    .local v19, "vzCallerNameIdPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v19, :cond_5

    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 1720
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 1721
    .local v5, "canIdPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v36, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v36

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1722
    const-string v36, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v36

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1723
    const-string v36, "android.permission.CALL_PHONE"

    move-object/from16 v0, v36

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1724
    const-string v36, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v36

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1725
    const-string v36, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v36

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1726
    const-string v36, "android.permission.SEND_SMS"

    move-object/from16 v0, v36

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1727
    const-string v36, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v36

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1728
    const-string v36, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v36

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1729
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1733
    .end local v5    # "canIdPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    const-string v36, "com.telecomsys.directedsms.android.SCG"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v32

    .line 1734
    .local v32, "vzVlaPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v32, :cond_6

    invoke-static/range {v32 .. v32}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v36

    if-eqz v36, :cond_6

    .line 1735
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    .line 1736
    .local v16, "vlaPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v36, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1737
    const-string v36, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1738
    const-string v36, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1739
    const-string v36, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1740
    const-string v36, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1741
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v16

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1745
    .end local v16    # "vlaPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    const-string v36, "com.vzw.hss.widgets.infozone"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v27

    .line 1746
    .local v27, "vzMyInfozonePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v27, :cond_7

    invoke-static/range {v27 .. v27}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v36

    if-eqz v36, :cond_7

    .line 1747
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 1748
    .local v11, "mizPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v36, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v36

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1749
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, p1

    invoke-direct {v0, v1, v11, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1753
    .end local v11    # "mizPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    const-string v36, "com.vzw.hss.widgets.infozone.large"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v26

    .line 1754
    .local v26, "vzMyInfozoneLargePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v26, :cond_8

    invoke-static/range {v26 .. v26}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v36

    if-eqz v36, :cond_8

    .line 1755
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 1756
    .local v10, "mizLargePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v36, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v36

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1757
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p1

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1761
    .end local v10    # "mizLargePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    const-string v36, "com.vzw.hss.widgets.infozone.ellipsis"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    .line 1762
    .local v25, "vzMyInfozoneEllipsisPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v25, :cond_9

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v36

    if-eqz v36, :cond_9

    .line 1763
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 1764
    .local v9, "mizEllipsisPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v36, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1765
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, p1

    invoke-direct {v0, v1, v9, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1769
    .end local v9    # "mizEllipsisPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    const-string v36, "com.sec.android.app.cmas"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v22

    .line 1770
    .local v22, "vzCmasPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v22, :cond_a

    invoke-static/range {v22 .. v22}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v36

    if-eqz v36, :cond_a

    .line 1771
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 1772
    .local v6, "cmasPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v36, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v36

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1773
    const-string v36, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v36

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1774
    const-string v36, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v36

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1775
    const/16 v36, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v36

    move/from16 v3, p1

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1779
    .end local v6    # "cmasPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a
    const-string v36, "com.samsung.vvm"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v33

    .line 1780
    .local v33, "vzVvmPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v33, :cond_b

    invoke-static/range {v33 .. v33}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v36

    if-eqz v36, :cond_b

    .line 1781
    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    .line 1782
    .local v17, "vvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v36, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1783
    const-string v36, "android.permission.CALL_PHONE"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1784
    const-string v36, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1785
    const-string v36, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1786
    const-string v36, "android.permission.SEND_SMS"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1787
    const-string v36, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1788
    const-string v36, "android.permission.READ_SMS"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1789
    const-string v36, "android.permission.RECEIVE_WAP_PUSH"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1790
    const-string v36, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1791
    const-string v36, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1792
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v17

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1796
    .end local v17    # "vvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b
    const-string v36, "com.qualcomm.ltebc_vzw"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v30

    .line 1797
    .local v30, "vzQcomMwPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v30, :cond_c

    invoke-static/range {v30 .. v30}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v36

    if-eqz v36, :cond_c

    .line 1798
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 1799
    .local v14, "qcomMwPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v36, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v36

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1800
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, p1

    invoke-direct {v0, v1, v14, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1804
    .end local v14    # "qcomMwPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c
    const-string v36, "com.expway.embmsserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v24

    .line 1805
    .local v24, "vzExpwayMwPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v24, :cond_d

    invoke-static/range {v24 .. v24}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v36

    if-eqz v36, :cond_d

    .line 1806
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 1807
    .local v8, "expwayMwPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v36, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v36

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1808
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, p1

    invoke-direct {v0, v1, v8, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1812
    .end local v8    # "expwayMwPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    const-string v36, "com.vzw.hss.myverizontabletlte"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v29

    .line 1813
    .local v29, "vzMyVerizonTabletPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v29, :cond_e

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v36

    if-eqz v36, :cond_e

    .line 1814
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 1815
    .local v13, "mvTabletPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v36, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v36

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1816
    const-string v36, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v36

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1817
    const-string v36, "android.permission.CALL_PHONE"

    move-object/from16 v0, v36

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1818
    const-string v36, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v36

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1819
    const-string v36, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v36

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1820
    const-string v36, "android.permission.SEND_SMS"

    move-object/from16 v0, v36

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1821
    const-string v36, "android.permission.READ_SMS"

    move-object/from16 v0, v36

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1822
    const-string v36, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v36

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1823
    const-string v36, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v36

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1824
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p1

    invoke-direct {v0, v1, v13, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1828
    .end local v13    # "mvTabletPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_e
    const-string v36, "com.androidhub"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v21

    .line 1829
    .local v21, "vzCloudTabletPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v21, :cond_f

    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v36

    if-eqz v36, :cond_f

    .line 1830
    new-instance v35, Landroid/util/ArraySet;

    invoke-direct/range {v35 .. v35}, Landroid/util/ArraySet;-><init>()V

    .line 1831
    .local v35, "vzcTabletPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v36, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface/range {v35 .. v36}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1832
    const-string v36, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface/range {v35 .. v36}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1833
    const-string v36, "android.permission.READ_CONTACTS"

    invoke-interface/range {v35 .. v36}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1834
    const-string v36, "android.permission.WRITE_CONTACTS"

    invoke-interface/range {v35 .. v36}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1835
    const-string v36, "android.permission.GET_ACCOUNTS"

    invoke-interface/range {v35 .. v36}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1836
    const-string v36, "android.permission.READ_PHONE_STATE"

    invoke-interface/range {v35 .. v36}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1837
    const-string v36, "android.permission.CALL_PHONE"

    invoke-interface/range {v35 .. v36}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1838
    const-string v36, "android.permission.WRITE_CALL_LOG"

    invoke-interface/range {v35 .. v36}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1839
    const-string v36, "android.permission.READ_CALL_LOG"

    invoke-interface/range {v35 .. v36}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1840
    const-string v36, "android.permission.RECEIVE_SMS"

    invoke-interface/range {v35 .. v36}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1841
    const-string v36, "android.permission.RECEIVE_MMS"

    invoke-interface/range {v35 .. v36}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1842
    const-string v36, "android.permission.SEND_SMS"

    invoke-interface/range {v35 .. v36}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1843
    const-string v36, "android.permission.READ_SMS"

    invoke-interface/range {v35 .. v36}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1844
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v35

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1846
    .end local v35    # "vzcTabletPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    return-void
.end method

.method private grantDefaultSystemHandlerPermissions(I)V
    .locals 186
    .param p1, "userId"    # I

    .prologue
    .line 202
    const-string v183, "DefaultPermGrantPolicy"

    new-instance v184, Ljava/lang/StringBuilder;

    invoke-direct/range {v184 .. v184}, Ljava/lang/StringBuilder;-><init>()V

    const-string v185, "Granting permissions to default platform handlers for user "

    invoke-virtual/range {v184 .. v185}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v184

    move-object/from16 v0, v184

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v184

    invoke-virtual/range {v184 .. v184}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v184

    invoke-static/range {v183 .. v184}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v183, v0

    sget-object v184, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v184

    .line 213
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mImePackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v98, v0

    .line 214
    .local v98, "imePackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v103, v0

    .line 215
    .local v103, "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v174, v0

    .line 216
    .local v174, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v150, v0

    .line 217
    .local v150, "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v76, v0

    .line 218
    .local v76, "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v148, v0

    .line 219
    .local v148, "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    move-object/from16 v158, v0

    .line 220
    .local v158, "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    monitor-exit v184
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 222
    if-eqz v98, :cond_2

    move-object/from16 v0, v98

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v97

    .line 224
    .local v97, "imePackageNames":[Ljava/lang/String;
    :goto_0
    if-eqz v174, :cond_3

    move-object/from16 v0, v174

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v173

    .line 226
    .local v173, "voiceInteractPackageNames":[Ljava/lang/String;
    :goto_1
    if-eqz v103, :cond_4

    move-object/from16 v0, v103

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v102

    .line 228
    .local v102, "locationPackageNames":[Ljava/lang/String;
    :goto_2
    if-eqz v150, :cond_5

    move-object/from16 v0, v150

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v149

    .line 230
    .local v149, "smsAppPackageNames":[Ljava/lang/String;
    :goto_3
    if-eqz v76, :cond_6

    move-object/from16 v0, v76

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v75

    .line 232
    .local v75, "dialerAppPackageNames":[Ljava/lang/String;
    :goto_4
    if-eqz v148, :cond_7

    move-object/from16 v0, v148

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v147

    .line 234
    .local v147, "simCallManagerPackageNames":[Ljava/lang/String;
    :goto_5
    if-eqz v158, :cond_8

    const-string v183, "com.android.contacts"

    move-object/from16 v0, v158

    move-object/from16 v1, v183

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v69

    .line 236
    .local v69, "contactsSyncAdapterPackages":[Ljava/lang/String;
    :goto_6
    if-eqz v158, :cond_9

    const-string v183, "com.android.calendar"

    move-object/from16 v0, v158

    move-object/from16 v1, v183

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v53

    .line 239
    .local v53, "calendarSyncAdapterPackages":[Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v183, v0

    sget-object v184, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v184

    .line 241
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v183, v0

    move-object/from16 v0, v183

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    move-object/from16 v183, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v99

    .line 243
    .local v99, "installerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v99, :cond_0

    invoke-static/range {v99 .. v99}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_0

    .line 245
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 249
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v183, v0

    move-object/from16 v0, v183

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getRequiredVerifiers(I)Ljava/util/ArrayList;

    move-result-object v131

    .line 250
    .local v131, "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v131 .. v131}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v94

    .local v94, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_8
    invoke-interface/range {v94 .. v94}, Ljava/util/Iterator;->hasNext()Z

    move-result v183

    if-eqz v183, :cond_a

    invoke-interface/range {v94 .. v94}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v167

    check-cast v167, Ljava/lang/String;

    .line 251
    .local v167, "verifier":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v168

    .line 252
    .local v168, "verifierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v168, :cond_1

    invoke-static/range {v168 .. v168}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_1

    .line 254
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v168

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 255
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v168

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 256
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v168

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_8

    .line 1194
    .end local v94    # "i$":Ljava/util/Iterator;
    .end local v99    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v131    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v167    # "verifier":Ljava/lang/String;
    .end local v168    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v183

    monitor-exit v184
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v183

    .line 220
    .end local v53    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .end local v69    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .end local v75    # "dialerAppPackageNames":[Ljava/lang/String;
    .end local v76    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v97    # "imePackageNames":[Ljava/lang/String;
    .end local v98    # "imePackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v102    # "locationPackageNames":[Ljava/lang/String;
    .end local v103    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v147    # "simCallManagerPackageNames":[Ljava/lang/String;
    .end local v148    # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v149    # "smsAppPackageNames":[Ljava/lang/String;
    .end local v150    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v158    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .end local v173    # "voiceInteractPackageNames":[Ljava/lang/String;
    .end local v174    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :catchall_1
    move-exception v183

    :try_start_2
    monitor-exit v184
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v183

    .line 222
    .restart local v76    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v98    # "imePackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v103    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v148    # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v150    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v158    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .restart local v174    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :cond_2
    const/16 v97, 0x0

    goto/16 :goto_0

    .line 224
    .restart local v97    # "imePackageNames":[Ljava/lang/String;
    :cond_3
    const/16 v173, 0x0

    goto/16 :goto_1

    .line 226
    .restart local v173    # "voiceInteractPackageNames":[Ljava/lang/String;
    :cond_4
    const/16 v102, 0x0

    goto/16 :goto_2

    .line 228
    .restart local v102    # "locationPackageNames":[Ljava/lang/String;
    :cond_5
    const/16 v149, 0x0

    goto/16 :goto_3

    .line 230
    .restart local v149    # "smsAppPackageNames":[Ljava/lang/String;
    :cond_6
    const/16 v75, 0x0

    goto/16 :goto_4

    .line 232
    .restart local v75    # "dialerAppPackageNames":[Ljava/lang/String;
    :cond_7
    const/16 v147, 0x0

    goto/16 :goto_5

    .line 234
    .restart local v147    # "simCallManagerPackageNames":[Ljava/lang/String;
    :cond_8
    const/16 v69, 0x0

    goto/16 :goto_6

    .line 236
    .restart local v69    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    :cond_9
    const/16 v53, 0x0

    goto/16 :goto_7

    .line 261
    .restart local v53    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .restart local v94    # "i$":Ljava/util/Iterator;
    .restart local v99    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v131    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    :try_start_3
    new-instance v141, Landroid/content/Intent;

    const-string v183, "android.intent.action.MAIN"

    move-object/from16 v0, v141

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v141, "setupIntent":Landroid/content/Intent;
    const-string v183, "android.intent.category.SETUP_WIZARD"

    move-object/from16 v0, v141

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    move-object/from16 v0, p0

    move-object/from16 v1, v141

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v142

    .line 265
    .local v142, "setupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v142, :cond_b

    invoke-static/range {v142 .. v142}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_b

    .line 267
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v142

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 268
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v142

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 272
    :cond_b
    const-string v183, "com.skt.skaf.A000Z00040"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v159

    .line 273
    .local v159, "tStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v159, :cond_c

    invoke-static/range {v159 .. v159}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_c

    .line 274
    new-instance v160, Landroid/util/ArraySet;

    invoke-direct/range {v160 .. v160}, Landroid/util/ArraySet;-><init>()V

    .line 275
    .local v160, "tStorePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v160

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    const-string v183, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v160

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    const-string v183, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v160

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    const/16 v183, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v159

    move-object/from16 v2, v160

    move/from16 v3, v183

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 282
    .end local v160    # "tStorePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c
    const-string v183, "com.skt.skaf.Z0000TSEED"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v163

    .line 283
    .local v163, "tStoreUtilityPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v163, :cond_d

    invoke-static/range {v163 .. v163}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_d

    .line 284
    new-instance v164, Landroid/util/ArraySet;

    invoke-direct/range {v164 .. v164}, Landroid/util/ArraySet;-><init>()V

    .line 285
    .local v164, "tStoreUtilityPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v164

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    const-string v183, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v164

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    const/16 v183, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v163

    move-object/from16 v2, v164

    move/from16 v3, v183

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 291
    .end local v164    # "tStoreUtilityPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    const-string v183, "com.skp.tstore.startup"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v161

    .line 292
    .local v161, "tStoreStartupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v161, :cond_e

    invoke-static/range {v161 .. v161}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_e

    .line 293
    new-instance v162, Landroid/util/ArraySet;

    invoke-direct/range {v162 .. v162}, Landroid/util/ArraySet;-><init>()V

    .line 294
    .local v162, "tStoreStartupPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v162

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    const/16 v183, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v161

    move-object/from16 v2, v162

    move/from16 v3, v183

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 299
    .end local v162    # "tStoreStartupPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_e
    const-string v183, "com.skt.skaf.OA00018282"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v119

    .line 300
    .local v119, "oneStoreARMPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v119, :cond_f

    invoke-static/range {v119 .. v119}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_f

    .line 301
    new-instance v120, Landroid/util/ArraySet;

    invoke-direct/range {v120 .. v120}, Landroid/util/ArraySet;-><init>()V

    .line 302
    .local v120, "oneStoreARMPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v120

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 303
    const/16 v183, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v119

    move-object/from16 v2, v120

    move/from16 v3, v183

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 307
    .end local v120    # "oneStoreARMPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    const-string v183, "com.kt.olleh.storefront"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    .line 308
    .local v23, "OllehMarketPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v23, :cond_10

    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_10

    .line 309
    new-instance v24, Landroid/util/ArraySet;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    .line 310
    .local v24, "OllehMarketPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v24

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    const-string v183, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v24

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 312
    const-string v183, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v24

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    const/16 v183, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v183

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 318
    .end local v24    # "OllehMarketPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_10
    const-string v183, "com.kt.serviceagent"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v21

    .line 319
    .local v21, "OSAPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v21, :cond_11

    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_11

    .line 320
    new-instance v22, Landroid/util/ArraySet;

    invoke-direct/range {v22 .. v22}, Landroid/util/ArraySet;-><init>()V

    .line 321
    .local v22, "OSAPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v22

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v22

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 323
    const-string v183, "android.permission.CALL_PHONE"

    move-object/from16 v0, v22

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    const-string v183, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v22

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 325
    const-string v183, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v22

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 327
    const/16 v183, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v183

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 331
    .end local v22    # "OSAPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_11
    const-string v183, "com.kt.om.ktpackageinstaller"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 332
    .local v7, "KTPackageInstallerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_12

    invoke-static {v7}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_12

    .line 333
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 334
    .local v8, "KTPackageInstallerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v183

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 335
    const-string v183, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v183

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 336
    const-string v183, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v183

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    const/16 v183, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v183

    move/from16 v2, p1

    invoke-direct {v0, v7, v8, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 342
    .end local v8    # "KTPackageInstallerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_12
    const-string v183, "com.lguplus.appstore"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 343
    .local v17, "LGUPlusStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v17, :cond_13

    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_13

    .line 344
    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    .line 345
    .local v18, "LGUPlusStorePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v18

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 346
    const-string v183, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v18

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    const-string v183, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v18

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 349
    const/16 v183, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v183

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 353
    .end local v18    # "LGUPlusStorePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_13
    const-string v183, "com.lguplus.downloader"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v14

    .line 354
    .local v14, "LGUPlusDownloaderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v14, :cond_14

    invoke-static {v14}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_14

    .line 355
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 356
    .local v9, "LGUDownLoaderPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v183

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    const-string v183, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v183

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 358
    const-string v183, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v183

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 360
    const/16 v183, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v183

    move/from16 v2, p1

    invoke-direct {v0, v14, v9, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 364
    .end local v9    # "LGUDownLoaderPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_14
    const-string v183, "com.lguplus.pushagent"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v15

    .line 365
    .local v15, "LGUPlusPushPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v15, :cond_15

    invoke-static {v15}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_15

    .line 366
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    .line 367
    .local v16, "LGUPlusPushPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 369
    const/16 v183, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 373
    .end local v16    # "LGUPlusPushPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_15
    const-string v183, "com.lguplus.common"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    .line 374
    .local v12, "LGUPlusCommonServicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v12, :cond_16

    invoke-static {v12}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_16

    .line 375
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 376
    .local v13, "LGUPlusCommonServicePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v183

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 377
    const-string v183, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v183

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 378
    const-string v183, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v183

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 380
    const/16 v183, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v183

    move/from16 v2, p1

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 384
    .end local v13    # "LGUPlusCommonServicePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_16
    const-string v183, "com.lgt.arm"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v10

    .line 385
    .local v10, "LGUPlusArmServicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v10, :cond_17

    invoke-static {v10}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_17

    .line 386
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 387
    .local v11, "LGUPlusArmServicePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v183

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 389
    const/16 v183, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v183

    move/from16 v2, p1

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 393
    .end local v11    # "LGUPlusArmServicePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_17
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToCricketApp(I)V

    .line 396
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDocomoApp(I)V

    .line 399
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToKddiApp(I)V

    .line 402
    new-instance v55, Landroid/content/Intent;

    const-string v183, "android.media.action.IMAGE_CAPTURE"

    move-object/from16 v0, v55

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v55, "cameraIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v56

    .line 405
    .local v56, "cameraPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v56, :cond_18

    invoke-static/range {v56 .. v56}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_18

    .line 407
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 408
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 409
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 410
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 414
    :cond_18
    const-string v183, "com.sec.android.app.magnifier"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    .line 415
    .local v20, "MagnifierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v20, :cond_19

    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_19

    .line 416
    new-instance v104, Landroid/util/ArraySet;

    invoke-direct/range {v104 .. v104}, Landroid/util/ArraySet;-><init>()V

    .line 417
    .local v104, "magnifierPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.CAMERA"

    move-object/from16 v0, v104

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 418
    const-string v183, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v104

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 419
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v104

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 423
    .end local v104    # "magnifierPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_19
    const-string v183, "com.sec.android.app.camera.plb"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    .line 424
    .local v19, "LiveBroadcastPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v19, :cond_1a

    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_1a

    .line 425
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 426
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 427
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 428
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 429
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 433
    :cond_1a
    const-string v183, "com.samsung.android.spay"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v136

    .line 434
    .local v136, "samsungPayPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v136, :cond_1b

    invoke-static/range {v136 .. v136}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_1b

    .line 435
    new-instance v137, Landroid/util/ArraySet;

    invoke-direct/range {v137 .. v137}, Landroid/util/ArraySet;-><init>()V

    .line 436
    .local v137, "samsungPayPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "US"

    const-string/jumbo v185, "ro.csc.countryiso_code"

    invoke-static/range {v185 .. v185}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v185

    move-object/from16 v0, v183

    move-object/from16 v1, v185

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v183

    if-eqz v183, :cond_24

    .line 437
    const-string v183, "android.permission.CAMERA"

    move-object/from16 v0, v137

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 438
    const-string v183, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v137

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 448
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v136

    move-object/from16 v2, v137

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 452
    .end local v137    # "samsungPayPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1b
    const-string v183, "com.sec.android.app.shealth"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v143

    .line 453
    .local v143, "shealthPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v143, :cond_1c

    invoke-static/range {v143 .. v143}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_1c

    .line 454
    new-instance v144, Landroid/util/ArraySet;

    invoke-direct/range {v144 .. v144}, Landroid/util/ArraySet;-><init>()V

    .line 456
    .local v144, "shealthPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.BODY_SENSORS"

    move-object/from16 v0, v144

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 457
    const-string v183, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v144

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 458
    const-string v183, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v144

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 459
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v144

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 460
    const-string v183, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v144

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move-object/from16 v2, v144

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 466
    .end local v144    # "shealthPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1c
    const-string/jumbo v183, "media"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v107

    .line 468
    .local v107, "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v107, :cond_1d

    .line 469
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v107

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 473
    :cond_1d
    const-string/jumbo v183, "downloads"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v79

    .line 475
    .local v79, "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v79, :cond_1e

    .line 476
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 480
    :cond_1e
    new-instance v80, Landroid/content/Intent;

    const-string v183, "android.intent.action.VIEW_DOWNLOADS"

    move-object/from16 v0, v80

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    .local v80, "downloadsUiIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v81

    .line 483
    .local v81, "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v81, :cond_1f

    invoke-static/range {v81 .. v81}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_1f

    .line 485
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v81

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 489
    :cond_1f
    const-string v183, "com.android.externalstorage.documents"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v155

    .line 491
    .local v155, "storagePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v155, :cond_20

    .line 492
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v155

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 496
    :cond_20
    new-instance v61, Landroid/content/Intent;

    const-string v183, "android.credentials.INSTALL"

    move-object/from16 v0, v61

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .local v61, "certInstallerIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v62

    .line 499
    .local v62, "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v62, :cond_21

    invoke-static/range {v62 .. v62}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_21

    .line 501
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 505
    :cond_21
    if-nez v75, :cond_25

    .line 506
    new-instance v77, Landroid/content/Intent;

    const-string v183, "android.intent.action.DIAL"

    move-object/from16 v0, v77

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v77, "dialerIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v78

    .line 509
    .local v78, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v78, :cond_22

    .line 510
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 522
    .end local v77    # "dialerIntent":Landroid/content/Intent;
    .end local v78    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v94    # "i$":Ljava/util/Iterator;
    :cond_22
    if-eqz v147, :cond_27

    .line 523
    move-object/from16 v45, v147

    .local v45, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v100, v0

    .local v100, "len$":I
    const/16 v94, 0x0

    .local v94, "i$":I
    :goto_a
    move/from16 v0, v94

    move/from16 v1, v100

    if-ge v0, v1, :cond_27

    aget-object v146, v45, v94

    .line 524
    .local v146, "simCallManagerPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v146

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v145

    .line 526
    .local v145, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v145, :cond_23

    .line 527
    move-object/from16 v0, p0

    move-object/from16 v1, v145

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 523
    :cond_23
    add-int/lit8 v94, v94, 0x1

    goto :goto_a

    .line 440
    .end local v45    # "arr$":[Ljava/lang/String;
    .end local v61    # "certInstallerIntent":Landroid/content/Intent;
    .end local v62    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v79    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v80    # "downloadsUiIntent":Landroid/content/Intent;
    .end local v81    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .end local v100    # "len$":I
    .end local v107    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .end local v143    # "shealthPackage":Landroid/content/pm/PackageParser$Package;
    .end local v145    # "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v146    # "simCallManagerPackageName":Ljava/lang/String;
    .end local v155    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .local v94, "i$":Ljava/util/Iterator;
    .restart local v137    # "samsungPayPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_24
    const-string v183, "android.permission.CAMERA"

    move-object/from16 v0, v137

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 441
    const-string v183, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v137

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 442
    const-string v183, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v137

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 443
    const-string v183, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v137

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 444
    const-string v183, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v137

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 445
    const-string v183, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v137

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 446
    const-string v183, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v137

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 513
    .end local v137    # "samsungPayPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v61    # "certInstallerIntent":Landroid/content/Intent;
    .restart local v62    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v79    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v80    # "downloadsUiIntent":Landroid/content/Intent;
    .restart local v81    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v107    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .restart local v143    # "shealthPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v155    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    :cond_25
    move-object/from16 v45, v75

    .restart local v45    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v100, v0

    .restart local v100    # "len$":I
    const/16 v94, 0x0

    .local v94, "i$":I
    :goto_b
    move/from16 v0, v94

    move/from16 v1, v100

    if-ge v0, v1, :cond_22

    aget-object v74, v45, v94

    .line 514
    .local v74, "dialerAppPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v78

    .line 515
    .restart local v78    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v78, :cond_26

    .line 516
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 513
    :cond_26
    add-int/lit8 v94, v94, 0x1

    goto :goto_b

    .line 534
    .end local v45    # "arr$":[Ljava/lang/String;
    .end local v74    # "dialerAppPackageName":Ljava/lang/String;
    .end local v78    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v94    # "i$":I
    .end local v100    # "len$":I
    :cond_27
    if-nez v149, :cond_2e

    .line 535
    new-instance v151, Landroid/content/Intent;

    const-string v183, "android.intent.action.MAIN"

    move-object/from16 v0, v151

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 536
    .local v151, "smsIntent":Landroid/content/Intent;
    const-string v183, "android.intent.category.APP_MESSAGING"

    move-object/from16 v0, v151

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    move-object/from16 v0, p0

    move-object/from16 v1, v151

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v152

    .line 539
    .local v152, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v152, :cond_28

    .line 540
    move-object/from16 v0, p0

    move-object/from16 v1, v152

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 552
    .end local v151    # "smsIntent":Landroid/content/Intent;
    .end local v152    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    :cond_28
    new-instance v59, Landroid/content/Intent;

    const-string v183, "android.provider.Telephony.SMS_CB_RECEIVED"

    move-object/from16 v0, v59

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 553
    .local v59, "cbrIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v60

    .line 555
    .local v60, "cbrPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v60, :cond_29

    invoke-static/range {v60 .. v60}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_29

    .line 556
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 560
    :cond_29
    new-instance v57, Landroid/content/Intent;

    const-string v183, "android.provider.Telephony.SMS_CARRIER_PROVISION"

    move-object/from16 v0, v57

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    .local v57, "carrierProvIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v58

    .line 563
    .local v58, "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v58, :cond_2a

    invoke-static/range {v58 .. v58}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_2a

    .line 564
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 568
    :cond_2a
    new-instance v48, Landroid/content/Intent;

    const-string v183, "android.intent.action.MAIN"

    move-object/from16 v0, v48

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 569
    .local v48, "calendarIntent":Landroid/content/Intent;
    const-string v183, "android.intent.category.APP_CALENDAR"

    move-object/from16 v0, v48

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v49

    .line 572
    .local v49, "calendarPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v49, :cond_2b

    invoke-static/range {v49 .. v49}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_2b

    .line 574
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 575
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 579
    :cond_2b
    const-string v183, "com.android.calendar"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v50

    .line 581
    .local v50, "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v50, :cond_2c

    .line 582
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 583
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 585
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 589
    :cond_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v54

    .line 591
    .local v54, "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface/range {v54 .. v54}, Ljava/util/List;->size()I

    move-result v52

    .line 592
    .local v52, "calendarSyncAdapterCount":I
    const/16 v93, 0x0

    .local v93, "i":I
    :goto_c
    move/from16 v0, v93

    move/from16 v1, v52

    if-ge v0, v1, :cond_30

    .line 593
    move-object/from16 v0, v54

    move/from16 v1, v93

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/content/pm/PackageParser$Package;

    .line 594
    .local v51, "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v51 .. v51}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_2d

    .line 595
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 592
    :cond_2d
    add-int/lit8 v93, v93, 0x1

    goto :goto_c

    .line 543
    .end local v48    # "calendarIntent":Landroid/content/Intent;
    .end local v49    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .end local v50    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v51    # "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    .end local v52    # "calendarSyncAdapterCount":I
    .end local v54    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v57    # "carrierProvIntent":Landroid/content/Intent;
    .end local v58    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .end local v59    # "cbrIntent":Landroid/content/Intent;
    .end local v60    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .end local v93    # "i":I
    :cond_2e
    move-object/from16 v45, v149

    .restart local v45    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v100, v0

    .restart local v100    # "len$":I
    const/16 v94, 0x0

    .restart local v94    # "i$":I
    :goto_d
    move/from16 v0, v94

    move/from16 v1, v100

    if-ge v0, v1, :cond_28

    aget-object v153, v45, v94

    .line 544
    .local v153, "smsPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v153

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v152

    .line 545
    .restart local v152    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v152, :cond_2f

    .line 546
    move-object/from16 v0, p0

    move-object/from16 v1, v152

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 543
    :cond_2f
    add-int/lit8 v94, v94, 0x1

    goto :goto_d

    .line 600
    .end local v45    # "arr$":[Ljava/lang/String;
    .end local v94    # "i$":I
    .end local v100    # "len$":I
    .end local v152    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v153    # "smsPackageName":Ljava/lang/String;
    .restart local v48    # "calendarIntent":Landroid/content/Intent;
    .restart local v49    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v50    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v52    # "calendarSyncAdapterCount":I
    .restart local v54    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v57    # "carrierProvIntent":Landroid/content/Intent;
    .restart local v58    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v59    # "cbrIntent":Landroid/content/Intent;
    .restart local v60    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v93    # "i":I
    :cond_30
    new-instance v64, Landroid/content/Intent;

    const-string v183, "android.intent.action.MAIN"

    move-object/from16 v0, v64

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    .local v64, "contactsIntent":Landroid/content/Intent;
    const-string v183, "android.intent.category.APP_CONTACTS"

    move-object/from16 v0, v64

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v65

    .line 604
    .local v65, "contactsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v65, :cond_31

    invoke-static/range {v65 .. v65}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_31

    .line 606
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 607
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 608
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 612
    :cond_31
    const-string v183, "com.samsung.contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v28

    .line 613
    .local v28, "SamsungContacts":Landroid/content/pm/PackageParser$Package;
    if-eqz v28, :cond_32

    .line 614
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 615
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 616
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 620
    :cond_32
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v70

    .line 622
    .local v70, "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface/range {v70 .. v70}, Ljava/util/List;->size()I

    move-result v68

    .line 623
    .local v68, "contactsSyncAdapterCount":I
    const/16 v93, 0x0

    :goto_e
    move/from16 v0, v93

    move/from16 v1, v68

    if-ge v0, v1, :cond_34

    .line 624
    move-object/from16 v0, v70

    move/from16 v1, v93

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/content/pm/PackageParser$Package;

    .line 625
    .local v67, "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v67 .. v67}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_33

    .line 626
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 623
    :cond_33
    add-int/lit8 v93, v93, 0x1

    goto :goto_e

    .line 631
    .end local v67    # "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    :cond_34
    const-string v183, "com.android.contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v66

    .line 633
    .local v66, "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v66, :cond_35

    .line 634
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 636
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 638
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 642
    :cond_35
    new-instance v72, Landroid/content/Intent;

    const-string v183, "android.app.action.PROVISION_MANAGED_DEVICE"

    move-object/from16 v0, v72

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 644
    .local v72, "deviceProvisionIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v73

    .line 646
    .local v73, "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v73, :cond_36

    invoke-static/range {v73 .. v73}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_36

    .line 648
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 652
    :cond_36
    new-instance v105, Landroid/content/Intent;

    const-string v183, "android.intent.action.MAIN"

    move-object/from16 v0, v105

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    .local v105, "mapsIntent":Landroid/content/Intent;
    const-string v183, "android.intent.category.APP_MAPS"

    move-object/from16 v0, v105

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    move-object/from16 v0, p0

    move-object/from16 v1, v105

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v106

    .line 656
    .local v106, "mapsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v106, :cond_37

    invoke-static/range {v106 .. v106}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_37

    .line 658
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 662
    :cond_37
    new-instance v88, Landroid/content/Intent;

    const-string v183, "android.intent.action.MAIN"

    move-object/from16 v0, v88

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 663
    .local v88, "galleryIntent":Landroid/content/Intent;
    const-string v183, "android.intent.category.APP_GALLERY"

    move-object/from16 v0, v88

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    move-object/from16 v0, p0

    move-object/from16 v1, v88

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v89

    .line 666
    .local v89, "galleryPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v89, :cond_38

    invoke-static/range {v89 .. v89}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_38

    .line 668
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v89

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 672
    :cond_38
    new-instance v83, Landroid/content/Intent;

    const-string v183, "android.intent.action.MAIN"

    move-object/from16 v0, v83

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    .local v83, "emailIntent":Landroid/content/Intent;
    const-string v183, "android.intent.category.APP_EMAIL"

    move-object/from16 v0, v83

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v84

    .line 676
    .local v84, "emailPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v84, :cond_39

    invoke-static/range {v84 .. v84}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_39

    .line 678
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 682
    :cond_39
    const/16 v47, 0x0

    .line 683
    .local v47, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v183, v0

    move-object/from16 v0, v183

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v71

    .line 684
    .local v71, "defaultBrowserPackage":Ljava/lang/String;
    if-eqz v71, :cond_3a

    .line 685
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v47

    .line 687
    :cond_3a
    if-nez v47, :cond_3b

    .line 688
    new-instance v46, Landroid/content/Intent;

    const-string v183, "android.intent.action.MAIN"

    move-object/from16 v0, v46

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    .local v46, "browserIntent":Landroid/content/Intent;
    const-string v183, "android.intent.category.APP_BROWSER"

    move-object/from16 v0, v46

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v47

    .line 693
    .end local v46    # "browserIntent":Landroid/content/Intent;
    :cond_3b
    if-eqz v47, :cond_3c

    invoke-static/range {v47 .. v47}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_3c

    .line 695
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 699
    :cond_3c
    const-string v183, "com.sec.android.app.sbrowser"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v139

    .line 700
    .local v139, "sbrowserPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v139, :cond_3d

    invoke-static/range {v139 .. v139}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_3d

    .line 701
    new-instance v140, Landroid/util/ArraySet;

    invoke-direct/range {v140 .. v140}, Landroid/util/ArraySet;-><init>()V

    .line 702
    .local v140, "sbrowserPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v140

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 703
    const-string v183, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v140

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 704
    const-string v183, "android.permission.CAMERA"

    move-object/from16 v0, v140

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 706
    move-object/from16 v0, p0

    move-object/from16 v1, v139

    move-object/from16 v2, v140

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 710
    .end local v140    # "sbrowserPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3d
    if-eqz v97, :cond_3f

    .line 711
    move-object/from16 v45, v97

    .restart local v45    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v100, v0

    .restart local v100    # "len$":I
    const/16 v94, 0x0

    .restart local v94    # "i$":I
    :goto_f
    move/from16 v0, v94

    move/from16 v1, v100

    if-ge v0, v1, :cond_3f

    aget-object v96, v45, v94

    .line 712
    .local v96, "imePackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v95

    .line 713
    .local v95, "imePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v95, :cond_3e

    invoke-static/range {v95 .. v95}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_3e

    .line 715
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 711
    :cond_3e
    add-int/lit8 v94, v94, 0x1

    goto :goto_f

    .line 719
    .end local v45    # "arr$":[Ljava/lang/String;
    .end local v94    # "i$":I
    .end local v95    # "imePackage":Landroid/content/pm/PackageParser$Package;
    .end local v96    # "imePackageName":Ljava/lang/String;
    .end local v100    # "len$":I
    :cond_3f
    const-string v183, "com.sec.android.inputmethod"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v133

    .line 720
    .local v133, "samsungIME":Landroid/content/pm/PackageParser$Package;
    if-eqz v133, :cond_40

    invoke-static/range {v133 .. v133}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_40

    .line 721
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 725
    :cond_40
    if-eqz v173, :cond_42

    .line 726
    move-object/from16 v45, v173

    .restart local v45    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v100, v0

    .restart local v100    # "len$":I
    const/16 v94, 0x0

    .restart local v94    # "i$":I
    :goto_10
    move/from16 v0, v94

    move/from16 v1, v100

    if-ge v0, v1, :cond_42

    aget-object v172, v45, v94

    .line 727
    .local v172, "voiceInteractPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v172

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v171

    .line 729
    .local v171, "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v171, :cond_41

    invoke-static/range {v171 .. v171}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_41

    .line 731
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v171

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 733
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v171

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 735
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v171

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 737
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v171

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 739
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v171

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 741
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v171

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 726
    :cond_41
    add-int/lit8 v94, v94, 0x1

    goto :goto_10

    .line 748
    .end local v45    # "arr$":[Ljava/lang/String;
    .end local v94    # "i$":I
    .end local v100    # "len$":I
    .end local v171    # "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    .end local v172    # "voiceInteractPackageName":Ljava/lang/String;
    :cond_42
    new-instance v175, Landroid/content/Intent;

    const-string v183, "android.speech.RecognitionService"

    move-object/from16 v0, v175

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 749
    .local v175, "voiceRecoIntent":Landroid/content/Intent;
    const-string v183, "android.intent.category.DEFAULT"

    move-object/from16 v0, v175

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v176

    .line 752
    .local v176, "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v176, :cond_43

    invoke-static/range {v176 .. v176}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_43

    .line 754
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v176

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 758
    :cond_43
    if-eqz v102, :cond_45

    .line 759
    move-object/from16 v45, v102

    .restart local v45    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v100, v0

    .restart local v100    # "len$":I
    const/16 v94, 0x0

    .restart local v94    # "i$":I
    :goto_11
    move/from16 v0, v94

    move/from16 v1, v100

    if-ge v0, v1, :cond_45

    aget-object v121, v45, v94

    .line 760
    .local v121, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v121

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v101

    .line 761
    .local v101, "locationPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v101, :cond_44

    invoke-static/range {v101 .. v101}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_44

    .line 763
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 764
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 765
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 766
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 767
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 768
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 770
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 771
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 772
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 759
    :cond_44
    add-int/lit8 v94, v94, 0x1

    goto/16 :goto_11

    .line 778
    .end local v45    # "arr$":[Ljava/lang/String;
    .end local v94    # "i$":I
    .end local v100    # "len$":I
    .end local v101    # "locationPackage":Landroid/content/pm/PackageParser$Package;
    .end local v121    # "packageName":Ljava/lang/String;
    :cond_45
    new-instance v112, Landroid/content/Intent;

    const-string v183, "android.intent.action.VIEW"

    move-object/from16 v0, v112

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 779
    .local v112, "musicIntent":Landroid/content/Intent;
    const-string v183, "android.intent.category.DEFAULT"

    move-object/from16 v0, v112

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    new-instance v183, Ljava/io/File;

    const-string/jumbo v185, "foo.mp3"

    move-object/from16 v0, v183

    move-object/from16 v1, v185

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v183 .. v183}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v183

    const-string v185, "audio/mpeg"

    move-object/from16 v0, v112

    move-object/from16 v1, v183

    move-object/from16 v2, v185

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    move-object/from16 v0, p0

    move-object/from16 v1, v112

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultMusicHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v113

    .line 784
    .local v113, "musicPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v113, :cond_46

    invoke-static/range {v113 .. v113}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_46

    .line 786
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v113

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 791
    :cond_46
    const-string v183, "com.samsung.mdl.radio"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v134

    .line 792
    .local v134, "samsungMilkMusicPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v134, :cond_47

    invoke-static/range {v134 .. v134}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_47

    .line 793
    new-instance v135, Landroid/util/ArraySet;

    invoke-direct/range {v135 .. v135}, Landroid/util/ArraySet;-><init>()V

    .line 794
    .local v135, "samsungMilkMusicPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v135

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 795
    const-string v183, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v135

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 796
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v135

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 797
    const-string v183, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v135

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 798
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    move-object/from16 v2, v135

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 802
    .end local v135    # "samsungMilkMusicPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_47
    const-string/jumbo v183, "de.telekom.tsc"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v32

    .line 803
    .local v32, "TelekomTscPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v32, :cond_48

    invoke-static/range {v32 .. v32}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_48

    .line 804
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 808
    :cond_48
    const-string/jumbo v183, "de.telekom.mds.mbp"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v31

    .line 809
    .local v31, "TelekomMbpPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v31, :cond_49

    invoke-static/range {v31 .. v31}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_49

    .line 810
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 811
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 815
    :cond_49
    const-string v183, "at.tmobile.android.myt"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v34

    .line 816
    .local v34, "TmobileMytPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v34, :cond_4a

    invoke-static/range {v34 .. v34}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_4a

    .line 817
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 821
    :cond_4a
    const-string/jumbo v183, "pl.tmobile.miboa"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v33

    .line 822
    .local v33, "TmobileMiboaPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v33, :cond_4b

    invoke-static/range {v33 .. v33}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_4b

    .line 823
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 824
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 828
    :cond_4b
    const-string/jumbo v183, "pl.tmobile.panel"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v35

    .line 829
    .local v35, "TmobilePanelPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v35, :cond_4c

    invoke-static/range {v35 .. v35}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_4c

    .line 830
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 831
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 835
    :cond_4c
    const-string v183, "com.wsomacp"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v118

    .line 836
    .local v118, "omacpPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v118, :cond_4d

    invoke-static/range {v118 .. v118}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_4d

    .line 837
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v118

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 838
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v118

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 842
    :cond_4d
    const-string v183, "com.att.mobiletransfer"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v110

    .line 843
    .local v110, "mobileTransferPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v110, :cond_4e

    invoke-static/range {v110 .. v110}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_4e

    .line 844
    new-instance v111, Landroid/util/ArraySet;

    invoke-direct/range {v111 .. v111}, Landroid/util/ArraySet;-><init>()V

    .line 845
    .local v111, "mobileTransferPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.CAMERA"

    move-object/from16 v0, v111

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 846
    const-string v183, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v111

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 847
    const-string v183, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v111

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 848
    const-string v183, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v111

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 849
    const-string v183, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v111

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 850
    const-string v183, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v111

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 851
    const-string v183, "android.permission.SEND_SMS"

    move-object/from16 v0, v111

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 852
    const-string v183, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v111

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 853
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move-object/from16 v2, v111

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 857
    .end local v111    # "mobileTransferPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4e
    const-string/jumbo v183, "net.aetherpal.device"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v129

    .line 858
    .local v129, "remoteSupprotPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v129, :cond_4f

    invoke-static/range {v129 .. v129}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_4f

    .line 859
    new-instance v130, Landroid/util/ArraySet;

    invoke-direct/range {v130 .. v130}, Landroid/util/ArraySet;-><init>()V

    .line 860
    .local v130, "remoteSupprotPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.CALL_PHONE"

    move-object/from16 v0, v130

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 861
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v130

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 862
    const-string v183, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v130

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 863
    const-string v183, "android.permission.READ_SMS"

    move-object/from16 v0, v130

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 864
    move-object/from16 v0, p0

    move-object/from16 v1, v129

    move-object/from16 v2, v130

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 868
    .end local v130    # "remoteSupprotPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4f
    const-string v183, "com.locationlabs.sparkle.blue"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v85

    .line 869
    .local v85, "familyUtilityPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v85, :cond_50

    invoke-static/range {v85 .. v85}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_50

    .line 870
    new-instance v86, Landroid/util/ArraySet;

    invoke-direct/range {v86 .. v86}, Landroid/util/ArraySet;-><init>()V

    .line 871
    .local v86, "familyUtilityPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v86

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 872
    const-string v183, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v86

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 873
    const-string v183, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v86

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 874
    const-string v183, "android.permission.SEND_SMS"

    move-object/from16 v0, v86

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 875
    const-string v183, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v86

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 876
    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v86

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 880
    .end local v86    # "familyUtilityPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_50
    const-string v183, "com.asurion.android.mobilerecovery.att"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v124

    .line 881
    .local v124, "protectionPlusPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v124, :cond_51

    invoke-static/range {v124 .. v124}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_51

    .line 882
    new-instance v125, Landroid/util/ArraySet;

    invoke-direct/range {v125 .. v125}, Landroid/util/ArraySet;-><init>()V

    .line 883
    .local v125, "protectionPlusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v125

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 884
    const-string v183, "android.permission.CALL_PHONE"

    move-object/from16 v0, v125

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 885
    move-object/from16 v0, p0

    move-object/from16 v1, v124

    move-object/from16 v2, v125

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 886
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v124

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 887
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v124

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 888
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v124

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 892
    .end local v125    # "protectionPlusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_51
    const-string v183, "com.matchboxmobile.wisp"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v91

    .line 893
    .local v91, "hotSpotPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v91, :cond_52

    invoke-static/range {v91 .. v91}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_52

    .line 894
    new-instance v92, Landroid/util/ArraySet;

    invoke-direct/range {v92 .. v92}, Landroid/util/ArraySet;-><init>()V

    .line 895
    .local v92, "hotSpotPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v92

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 896
    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object/from16 v2, v92

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 900
    .end local v92    # "hotSpotPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_52
    const-string v183, "com.att.myWireless"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v114

    .line 901
    .local v114, "myATTPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v114, :cond_53

    invoke-static/range {v114 .. v114}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_53

    .line 902
    new-instance v115, Landroid/util/ArraySet;

    invoke-direct/range {v115 .. v115}, Landroid/util/ArraySet;-><init>()V

    .line 903
    .local v115, "myATTPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v115

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 904
    move-object/from16 v0, p0

    move-object/from16 v1, v114

    move-object/from16 v2, v115

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 908
    .end local v115    # "myATTPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_53
    const-string v183, "com.tmobile.pr.adapt"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v43

    .line 909
    .local v43, "adaptPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v43, :cond_54

    invoke-static/range {v43 .. v43}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_54

    .line 910
    new-instance v44, Landroid/util/ArraySet;

    invoke-direct/range {v44 .. v44}, Landroid/util/ArraySet;-><init>()V

    .line 911
    .local v44, "adaptPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v44

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 912
    const-string v183, "android.permission.CALL_PHONE"

    move-object/from16 v0, v44

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 913
    const-string v183, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v44

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 914
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 918
    .end local v44    # "adaptPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_54
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v183

    const-string v185, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v183

    move-object/from16 v1, v185

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 919
    .local v37, "VZW":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v183

    if-nez v183, :cond_55

    const-string v183, "VZW"

    move-object/from16 v0, v183

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v183

    if-eqz v183, :cond_55

    .line 920
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToVerizonApp(I)V

    .line 924
    :cond_55
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v183

    const-string v185, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v183

    move-object/from16 v1, v185

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 925
    .local v5, "ATT":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v183

    if-nez v183, :cond_56

    const-string v183, "ATT"

    move-object/from16 v0, v183

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v183

    if-eqz v183, :cond_56

    .line 926
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToAttApp(I)V

    .line 930
    :cond_56
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v183

    const-string v185, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v183

    move-object/from16 v1, v185

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 931
    .local v30, "TMO":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v183

    if-nez v183, :cond_57

    const-string v183, "TMO"

    move-object/from16 v0, v183

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v183

    if-eqz v183, :cond_57

    .line 932
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToTmoApp(I)V

    .line 936
    :cond_57
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v183

    const-string v185, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v183

    move-object/from16 v1, v185

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 937
    .local v26, "SIN":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v183

    if-nez v183, :cond_58

    const-string v183, "SIN"

    move-object/from16 v0, v183

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v183

    if-eqz v183, :cond_58

    .line 938
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToSingtelApp(I)V

    .line 943
    :cond_58
    const-string v183, "com.sec.android.daemonapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v180

    .line 944
    .local v180, "weatherDaemonPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v180, :cond_59

    invoke-static/range {v180 .. v180}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_59

    .line 945
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v180

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 946
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v180

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 950
    :cond_59
    const-string v183, "com.sec.android.widgetapp.ap.hero.accuweather"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v178

    .line 951
    .local v178, "weatherAccuPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v178, :cond_5a

    invoke-static/range {v178 .. v178}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_5a

    .line 952
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v178

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 953
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v178

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 957
    :cond_5a
    const-string v183, "com.sec.android.widgetapp.ap.hero.cmaweather"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v179

    .line 958
    .local v179, "weatherCMAPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v179, :cond_5b

    invoke-static/range {v179 .. v179}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_5b

    .line 959
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v179

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 960
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v179

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 964
    :cond_5b
    const-string v183, "com.sec.android.widgetapp.ap.hero.kweather"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v182

    .line 965
    .local v182, "weatherNewsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v182, :cond_5c

    invoke-static/range {v182 .. v182}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_5c

    .line 966
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v182

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 967
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v182

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 971
    :cond_5c
    const-string v183, "com.sec.android.widgetapp.ap.hero.weathernewsjp"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v181

    .line 972
    .local v181, "weatherNewsJPPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v181, :cond_5d

    invoke-static/range {v181 .. v181}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_5d

    .line 973
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v181

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 974
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v181

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 978
    :cond_5d
    const-string v183, "com.osp.app.signin"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v27

    .line 979
    .local v27, "SamsungAccountPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v27, :cond_5e

    invoke-static/range {v27 .. v27}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_5e

    .line 980
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 984
    :cond_5e
    const-string v183, "com.samsung.android.app.galaxyfinder"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v132

    .line 985
    .local v132, "sFinderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v132, :cond_5f

    invoke-static/range {v132 .. v132}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_5f

    .line 986
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v132

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 987
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v132

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 988
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v132

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 989
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v132

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 990
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v132

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 994
    :cond_5f
    const-string v183, "com.samsung.voiceserviceplatform"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v157

    .line 995
    .local v157, "svoicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v157, :cond_60

    invoke-static/range {v157 .. v157}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_60

    .line 996
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v157

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 997
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v157

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 998
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v157

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 999
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v157

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1000
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v157

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1001
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v157

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1002
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v157

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1006
    :cond_60
    const-string v183, "com.samsung.android.svoiceime"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v156

    .line 1007
    .local v156, "svoiceImePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v156, :cond_61

    invoke-static/range {v156 .. v156}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_61

    .line 1008
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v156

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1012
    :cond_61
    const-string v183, "com.samsung.android.video"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v138

    .line 1013
    .local v138, "samsungVideoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v138, :cond_62

    invoke-static/range {v138 .. v138}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_62

    .line 1014
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v138

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1018
    :cond_62
    const-string v183, "com.samsung.everglades.video"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v169

    .line 1019
    .local v169, "videoListMPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v169, :cond_63

    invoke-static/range {v169 .. v169}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_63

    .line 1020
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v169

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1024
    :cond_63
    const-string v183, "com.sec.android.app.videoplayer"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v170

    .line 1025
    .local v170, "videoPlayerMPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v170, :cond_64

    invoke-static/range {v170 .. v170}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_64

    .line 1026
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v170

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1030
    :cond_64
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v183

    const-string v185, "CscFeature_Common_EnableSprintExtension"

    move-object/from16 v0, v183

    move-object/from16 v1, v185

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v183

    if-eqz v183, :cond_65

    .line 1031
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToSprintApps(I)V

    .line 1035
    :cond_65
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v183

    const-string v185, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v183

    move-object/from16 v1, v185

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1036
    .local v36, "USC_pregrant":Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v183

    if-nez v183, :cond_66

    const-string v183, "USC"

    move-object/from16 v0, v183

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v183

    if-eqz v183, :cond_66

    .line 1037
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToUsccApps(I)V

    .line 1040
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v183, v0

    move-object/from16 v0, v183

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v183, v0

    move-object/from16 v0, v183

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->onDefaultRuntimePermissionsGrantedLPr(I)V

    .line 1043
    const-string v183, "com.sec.android.app.voicenote"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v42

    .line 1044
    .local v42, "VoiceRecorderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v42, :cond_67

    invoke-static/range {v42 .. v42}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_67

    .line 1045
    new-instance v177, Landroid/util/ArraySet;

    invoke-direct/range {v177 .. v177}, Landroid/util/ArraySet;-><init>()V

    .line 1046
    .local v177, "voicenotePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v177

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1047
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v177

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1048
    const-string v183, "android.permission.CALL_PHONE"

    move-object/from16 v0, v177

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1049
    const-string v183, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v177

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1050
    const-string v183, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v177

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1052
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v177

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1056
    .end local v177    # "voicenotePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_67
    const-string v183, "com.samsung.android.app.memo"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v108

    .line 1057
    .local v108, "memoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v108, :cond_68

    invoke-static/range {v108 .. v108}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_68

    .line 1058
    new-instance v109, Landroid/util/ArraySet;

    invoke-direct/range {v109 .. v109}, Landroid/util/ArraySet;-><init>()V

    .line 1059
    .local v109, "memoPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v109

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1060
    const-string v183, "android.permission.CAMERA"

    move-object/from16 v0, v109

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1061
    const-string v183, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v109

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1062
    const-string v183, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v109

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1063
    const-string v183, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v109

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1065
    move-object/from16 v0, p0

    move-object/from16 v1, v108

    move-object/from16 v2, v109

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1069
    .end local v109    # "memoPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_68
    const-string v183, "com.samsung.android.game.gametools"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v90

    .line 1070
    .local v90, "gameToolsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v90, :cond_69

    invoke-static/range {v90 .. v90}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_69

    .line 1071
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1072
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1073
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1074
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1078
    :cond_69
    const-string v183, "com.samsung.android.service.peoplestripe"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v122

    .line 1079
    .local v122, "peopleEdgePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v122, :cond_6a

    invoke-static/range {v122 .. v122}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_6a

    .line 1081
    new-instance v123, Landroid/util/ArraySet;

    invoke-direct/range {v123 .. v123}, Landroid/util/ArraySet;-><init>()V

    .line 1082
    .local v123, "peoplePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v123

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1083
    const-string v183, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v123

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1084
    const-string v183, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v123

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1085
    const-string v183, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v123

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1086
    const-string v183, "android.permission.CAMERA"

    move-object/from16 v0, v123

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1087
    const-string v183, "android.permission.SEND_SMS"

    move-object/from16 v0, v123

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1088
    const-string v183, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v123

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1089
    const-string v183, "android.permission.READ_SMS"

    move-object/from16 v0, v123

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1090
    move-object/from16 v0, p0

    move-object/from16 v1, v122

    move-object/from16 v2, v123

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1094
    .end local v123    # "peoplePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6a
    const-string v183, "com.sec.android.widgetapp.locationwidget"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v116

    .line 1095
    .local v116, "myPlacesPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v116, :cond_6b

    invoke-static/range {v116 .. v116}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_6b

    .line 1097
    new-instance v117, Landroid/util/ArraySet;

    invoke-direct/range {v117 .. v117}, Landroid/util/ArraySet;-><init>()V

    .line 1098
    .local v117, "myPlacesPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v117

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1099
    const-string v183, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v117

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1100
    const-string v183, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v117

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1101
    const-string v183, "android.permission.CALL_PHONE"

    move-object/from16 v0, v117

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1102
    const-string v183, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v117

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1103
    const-string v183, "android.permission.SEND_SMS"

    move-object/from16 v0, v117

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1104
    const-string v183, "android.permission.READ_CALENDAR"

    move-object/from16 v0, v117

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1105
    move-object/from16 v0, p0

    move-object/from16 v1, v116

    move-object/from16 v2, v117

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1109
    .end local v117    # "myPlacesPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6b
    const-string v183, "com.samsung.android.email.provider"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v82

    .line 1110
    .local v82, "emailAppPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v82, :cond_6c

    invoke-static/range {v82 .. v82}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_6c

    .line 1112
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1113
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1115
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1117
    new-instance v154, Landroid/util/ArraySet;

    invoke-direct/range {v154 .. v154}, Landroid/util/ArraySet;-><init>()V

    .line 1118
    .local v154, "smsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v154

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1119
    const-string v183, "android.permission.SEND_SMS"

    move-object/from16 v0, v154

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1120
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v154

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1125
    .end local v154    # "smsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6c
    const-string v183, "com.sec.android.app.samsungapps"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v87

    .line 1126
    .local v87, "galaxyAppsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v87, :cond_6d

    invoke-static/range {v87 .. v87}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_6d

    .line 1127
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1128
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1129
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1130
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1134
    :cond_6d
    const-string v183, "com.vodafone.callplushybrid"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v40

    .line 1135
    .local v40, "VodafoneCallPlus":Landroid/content/pm/PackageParser$Package;
    if-eqz v40, :cond_6e

    invoke-static/range {v40 .. v40}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_6e

    .line 1136
    new-instance v41, Landroid/util/ArraySet;

    invoke-direct/range {v41 .. v41}, Landroid/util/ArraySet;-><init>()V

    .line 1137
    .local v41, "VodafoneCallPlusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v41

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1138
    const-string v183, "android.permission.CALL_PHONE"

    move-object/from16 v0, v41

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1139
    const-string v183, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v41

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1140
    const-string v183, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v41

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1141
    const-string v183, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v41

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1142
    const-string v183, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v41

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1143
    const-string v183, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v41

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1144
    const-string v183, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    move-object/from16 v0, v41

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1145
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1149
    .end local v41    # "VodafoneCallPlusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6e
    const-string v183, "com.samsung.android.themestore"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v165

    .line 1150
    .local v165, "themeStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v165, :cond_6f

    invoke-static/range {v165 .. v165}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_6f

    .line 1151
    new-instance v166, Landroid/util/ArraySet;

    invoke-direct/range {v166 .. v166}, Landroid/util/ArraySet;-><init>()V

    .line 1152
    .local v166, "themeStorePermission":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v166

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1153
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v165

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1154
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v165

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1155
    move-object/from16 v0, p0

    move-object/from16 v1, v165

    move-object/from16 v2, v166

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1159
    .end local v166    # "themeStorePermission":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6f
    const-string v183, "com.sec.android.app.clockpackage"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v63

    .line 1160
    .local v63, "clockPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v63, :cond_70

    invoke-static/range {v63 .. v63}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_70

    .line 1161
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1162
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v183

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1166
    :cond_70
    const-string v183, "com.sec.android.mimage.photoretouching"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    .line 1167
    .local v25, "PhotoEditorPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v25, :cond_71

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_71

    .line 1168
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1172
    :cond_71
    const-string v183, "com.sec.android.app.vepreload"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v39

    .line 1173
    .local v39, "VideoEditorPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v39, :cond_72

    invoke-static/range {v39 .. v39}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_72

    .line 1174
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1178
    :cond_72
    const-string v183, "com.samsung.app.slowmotion"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v29

    .line 1179
    .local v29, "SlowMotionPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v29, :cond_73

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_73

    .line 1180
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1184
    :cond_73
    const-string v183, "com.samsung.app.highlightplayer"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 1185
    .local v6, "HighlightPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_74

    invoke-static {v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_74

    .line 1186
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    move/from16 v2, v185

    move/from16 v3, p1

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1190
    :cond_74
    const-string v183, "com.sec.android.app.clipvideo"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v38

    .line 1191
    .local v38, "VideoCollagePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v38, :cond_75

    invoke-static/range {v38 .. v38}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_75

    .line 1192
    sget-object v183, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v185, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v183

    move/from16 v3, v185

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1194
    :cond_75
    monitor-exit v184
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1197
    const-string v183, "com.samsung.android.qconnect"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v126

    .line 1198
    .local v126, "qcHeroPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v126, :cond_76

    invoke-static/range {v126 .. v126}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_76

    .line 1199
    new-instance v128, Landroid/util/ArraySet;

    invoke-direct/range {v128 .. v128}, Landroid/util/ArraySet;-><init>()V

    .line 1200
    .local v128, "qcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v128

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1201
    const-string v183, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v128

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1202
    const-string v183, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v128

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1203
    move-object/from16 v0, p0

    move-object/from16 v1, v126

    move-object/from16 v2, v128

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1206
    .end local v128    # "qcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_76
    const-string v183, "com.samsung.android.sconnect"

    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v127

    .line 1207
    .local v127, "qcPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v127, :cond_77

    invoke-static/range {v127 .. v127}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v183

    if-eqz v183, :cond_77

    .line 1208
    new-instance v128, Landroid/util/ArraySet;

    invoke-direct/range {v128 .. v128}, Landroid/util/ArraySet;-><init>()V

    .line 1209
    .restart local v128    # "qcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v183, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v128

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1210
    const-string v183, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v128

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1211
    const-string v183, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v128

    move-object/from16 v1, v183

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1212
    move-object/from16 v0, p0

    move-object/from16 v1, v127

    move-object/from16 v2, v128

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1214
    .end local v128    # "qcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_77
    return-void
.end method

.method private grantPermissionsToSysComponentsAndPrivApps(I)V
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 176
    const-string v7, "DefaultPermGrantPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Granting permissions to platform components for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    sget-object v8, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 179
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    sget-object v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 180
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 185
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 186
    .local v5, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 187
    .local v4, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 188
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 189
    .local v3, "permission":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 190
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/pm/BasePermission;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 191
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 194
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v3    # "permission":Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 195
    const/4 v7, 0x1

    invoke-direct {p0, v6, v5, v7, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_0

    .line 198
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "permissionCount":I
    .end local v5    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 2239
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2240
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 2244
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2245
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V
    .locals 14
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "overrideUserChoice"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZI)V"
        }
    .end annotation

    .prologue
    .line 2249
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2312
    :cond_0
    return-void

    .line 2253
    :cond_1
    iget-object v12, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 2254
    .local v12, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 2256
    .local v10, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2257
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 2258
    .local v13, "sysPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_2

    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_2

    .line 2259
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2262
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-interface {v12, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2263
    new-instance v10, Landroid/util/ArraySet;

    .end local v10    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v10, v12}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 2264
    .restart local v10    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v12, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 2269
    .end local v13    # "sysPs":Lcom/android/server/pm/PackageSetting;
    :cond_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    .line 2270
    .local v9, "grantablePermissionCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_0

    .line 2271
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2275
    .local v2, "permission":Ljava/lang/String;
    if-eqz v10, :cond_4

    invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2270
    :cond_3
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2279
    :cond_4
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2280
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, p5

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 2288
    .local v8, "flags":I
    if-eqz v8, :cond_5

    if-eqz p4, :cond_3

    .line 2290
    :cond_5
    const/16 v7, 0x14

    .line 2292
    .local v7, "fixedFlags":I
    and-int/lit8 v1, v8, 0x14

    if-nez v1, :cond_3

    .line 2296
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, p5

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2302
    const/16 v4, 0x20

    .line 2303
    .local v4, "newFlags":I
    if-eqz p3, :cond_6

    .line 2304
    or-int/lit8 v4, v4, 0x10

    .line 2307
    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move v5, v4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_1
.end method

.method private isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2315
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_1

    move v2, v1

    .line 2329
    :cond_0
    :goto_0
    return v2

    .line 2318
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isPrivilegedApp()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2321
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 2322
    .local v0, "sysPkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_3

    .line 2323
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    .line 2329
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    move v2, v1

    goto :goto_0

    .line 2326
    :cond_3
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_2

    goto :goto_0

    :cond_4
    move v1, v2

    .line 2329
    goto :goto_1
.end method


# virtual methods
.method public grantDefaultPermissions(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantPermissionsToSysComponentsAndPrivApps(I)V

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultSystemHandlerPermissions(I)V

    .line 173
    return-void
.end method

.method public grantDefaultPermissionsToDefaultBrowserLPr(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2131
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Granting permissions to default browser for user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    if-nez p1, :cond_1

    .line 2140
    :cond_0
    :goto_0
    return-void

    .line 2135
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 2136
    .local v1, "browserPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2138
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v4, v3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    goto :goto_0
.end method

.method public grantDefaultPermissionsToDefaultDialerAppLPr(Ljava/lang/String;I)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2057
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Granting permissions to default dialer app for user:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    if-nez p1, :cond_1

    .line 2093
    :cond_0
    :goto_0
    return-void

    .line 2061
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 2062
    .local v1, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2064
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2065
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2066
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2067
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2068
    const-string v0, "com.skt.prod.dialer"

    invoke-direct {p0, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    .line 2069
    .local v11, "tDialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v11, :cond_0

    if-ne v1, v11, :cond_0

    .line 2070
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 2071
    .local v2, "tDialerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2072
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move v5, p2

    .line 2073
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2074
    const-string v0, "com.skt.prod.phone"

    invoke-direct {p0, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 2075
    .local v6, "tPhonePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_0

    invoke-static {v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2076
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 2077
    .local v7, "tPhonePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2078
    const-string v0, "android.permission.WRITE_CONTACTS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2079
    const-string v0, "android.permission.READ_CALL_LOG"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2080
    const-string v0, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2081
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2082
    const-string v0, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2083
    const-string v0, "android.permission.CALL_PHONE"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2084
    const-string v0, "android.permission.READ_SMS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2085
    const-string v0, "android.permission.SEND_SMS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2086
    const-string v0, "android.permission.RECEIVE_SMS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2087
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2088
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v5, p0

    move v8, v3

    move v9, v4

    move v10, p2

    .line 2089
    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    goto/16 :goto_0
.end method

.method public grantDefaultPermissionsToDefaultSimCallManagerLPr(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2105
    if-nez p1, :cond_1

    .line 2112
    :cond_0
    :goto_0
    return-void

    .line 2108
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 2109
    .local v0, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    .line 2110
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V

    goto :goto_0
.end method

.method public grantDefaultPermissionsToDefaultSmsAppLPr(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2044
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Granting permissions to default sms app for user:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    if-nez p1, :cond_1

    .line 2054
    :cond_0
    :goto_0
    return-void

    .line 2048
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 2049
    .local v1, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2050
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2051
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 2052
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    goto :goto_0
.end method

.method public grantDefaultPermissionsToEnabledCarrierAppsLPr([Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2115
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Granting permissions to enabled carrier apps for user:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    if-nez p1, :cond_1

    .line 2128
    :cond_0
    return-void

    .line 2119
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 2120
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 2121
    .local v1, "carrierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2123
    sget-object v5, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v1, v5, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2124
    sget-object v5, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v1, v5, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2125
    sget-object v5, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v1, v5, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 2119
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setDialerAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 160
    return-void
.end method

.method public setImePackagesProviderLPr(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mImePackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 144
    return-void
.end method

.method public setLocationPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 148
    return-void
.end method

.method public setSimCallManagerPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 164
    return-void
.end method

.method public setSmsAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 156
    return-void
.end method

.method public setSyncAdapterPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .line 168
    return-void
.end method

.method public setVoiceInteractionPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 152
    return-void
.end method
