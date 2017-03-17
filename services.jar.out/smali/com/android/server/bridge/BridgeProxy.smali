.class public Lcom/android/server/bridge/BridgeProxy;
.super Ljava/lang/Object;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/bridge/BridgeProxy$BridgeLog;,
        Lcom/android/server/bridge/BridgeProxy$PolicyChanged;,
        Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;,
        Lcom/android/server/bridge/BridgeProxy$AccountsChangedReceiver;,
        Lcom/android/server/bridge/BridgeProxy$RunnableCallback;,
        Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;,
        Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;,
        Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;,
        Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;,
        Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;,
        Lcom/android/server/bridge/BridgeProxy$IBridgeCommandExecutor;,
        Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;,
        Lcom/android/server/bridge/BridgeProxy$IncomingHandler;,
        Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;,
        Lcom/android/server/bridge/BridgeProxy$PackageReceiver;,
        Lcom/android/server/bridge/BridgeProxy$Apps;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:J = 0x1b58L

.field private static final DIR_FILEPATH:Ljava/lang/String; = "/data/misc/BridgeProxy"

.field private static final DST_FILENAME:Ljava/lang/String; = "dstCreateFile"

.field private static final FILE_EXPORT_POLICY_TYPE:I = 0x1

.field private static final FILE_IMPORT_POLICY_TYPE:I = 0x2

.field private static final KNOX_DEBUG:Z

.field private static final MAX_INIT_COUNT:I = 0xa

.field private static final PATH_MNT_EXTSD:Ljava/lang/String; = "/mnt/extSdCard"

.field private static final PATH_MNT_INTERNALSD:Ljava/lang/String; = "/mnt/sdcard"

.field private static final PATH_STORAGE_EXTSD:Ljava/lang/String; = "/storage/extSdCard"

.field private static final PATH_STORAGE_USB:Ljava/lang/String; = "/storage/"

.field private static final RCP_POLICY_CHANGED:Ljava/lang/String; = "samsung.knox.intent.action.RCP_POLICY_CHANGED"

.field private static final SRC_FILENAME:Ljava/lang/String; = "srcCreateFile"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ACTION_SHORTUCT_MIGRATION:Ljava/lang/String;

.field private badgeCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final cb:Landroid/os/IRunnableCallback;

.field private dbObserver:Lcom/android/server/bridge/operations/DbObserver;

.field private mAccountChanged:Z

.field private mBridgeContext:Landroid/content/Context;

.field private mBridgePackage:Ljava/lang/String;

.field private final mBridgeProviderList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/IProviderCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mCallerInfoResult:Landroid/content/CustomCursor;

.field private mContext:Landroid/content/Context;

.field private mCurrentInvalidKnoxName:Ljava/lang/String;

.field private mDelegateUserHandle:Landroid/os/UserHandle;

.field private mDelegateUserId:I

.field private mFirstTimePrefName:Ljava/lang/String;

.field private final mHandlerDoSync:Landroid/os/Handler;

.field private mHandlerPolicyChanged:Landroid/os/Handler;

.field private final mIBridgeBinder:Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

.field private final mIBridgeCommandExe:Landroid/content/ICommandExeCallBack;

.field private final mIBridgeProvider:Landroid/content/IProviderCallBack;

.field private final mIBridgeSync:Landroid/content/ISyncCallBack;

.field private final mIRCPGlobalContactsDirectoryService:Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;

.field private final mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

.field private final mListPolicyChanged:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/bridge/BridgeProxy$PolicyChanged;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessenger:Landroid/os/Messenger;

.field private mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

.field private mPm:Landroid/os/PersonaManager;

.field private mProviderPrefName:Ljava/lang/String;

.field private mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

.field private mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

.field private mSyncerPrefName:Ljava/lang/String;

.field private final mThreadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private mbridge:Landroid/os/RCPManager;

.field private policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

.field private preInstalledAppsMinusEmail:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

.field private result:Landroid/content/CustomCursor;

.field private final resultLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 111
    const-class v0, Lcom/android/server/bridge/BridgeProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/bridge/BridgeProxy;->KNOX_DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/android/server/bridge/operations/SimplePersonaInfos;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "bridgePackage"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, "com.sec.knox.action.SHORTCUT_MIGRATION_FOR_2_3_0"

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->ACTION_SHORTUCT_MIGRATION:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    .line 116
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;

    .line 117
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mCallerInfoResult:Landroid/content/CustomCursor;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->resultLock:Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeBinder:Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

    .line 121
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeProvider:Landroid/content/IProviderCallBack;

    .line 122
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeSync:Landroid/content/ISyncCallBack;

    .line 123
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IBridgeCommandExecutor;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IBridgeCommandExecutor;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeCommandExe:Landroid/content/ICommandExeCallBack;

    .line 124
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIRCPGlobalContactsDirectoryService:Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;

    .line 125
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    .line 127
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeProviderList:Ljava/util/HashMap;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mThreadMap:Ljava/util/HashMap;

    .line 132
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;

    .line 140
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    .line 141
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mListPolicyChanged:Ljava/util/List;

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerDoSync:Landroid/os/Handler;

    .line 145
    iput-boolean v1, p0, Lcom/android/server/bridge/BridgeProxy;->mAccountChanged:Z

    .line 146
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;

    .line 155
    iput v1, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 156
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    .line 157
    const-string v0, "com.samsung.knox.rcp.components"

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    .line 159
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    .line 160
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    .line 161
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .line 162
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mFirstTimePrefName:Ljava/lang/String;

    .line 163
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerPrefName:Ljava/lang/String;

    .line 164
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mProviderPrefName:Ljava/lang/String;

    .line 166
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    .line 1300
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mMessenger:Landroid/os/Messenger;

    .line 2244
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->cb:Landroid/os/IRunnableCallback;

    .line 200
    iput p1, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 201
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    .line 202
    iput-object p2, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    .line 203
    iput-object p3, p0, Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FIRST_TIME_PREF_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mFirstTimePrefName:Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SYNCER_PREFS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerPrefName:Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PROVIDER_PREFS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mProviderPrefName:Ljava/lang/String;

    .line 208
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/bridge/BridgeProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/bridge/BridgeProxy;->doSyncForAllSyncers()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/bridge/BridgeProxy;->getBridgeContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/bridge/BridgeProxy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->initBadgeDataAndObserver(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerPrefName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mProviderPrefName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/BridgeProxy;->policyChanged(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->resultLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;)Landroid/content/CustomCursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Landroid/content/CustomCursor;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mCallerInfoResult:Landroid/content/CustomCursor;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;)Landroid/content/CustomCursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Landroid/content/CustomCursor;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mCallerInfoResult:Landroid/content/CustomCursor;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/bridge/BridgeProxy;->doSyncForSyncer(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerDoSync:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeBinder:Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/bridge/BridgeProxy;->getSyncPolicy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeProviderList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/bridge/BridgeProxy;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/bridge/BridgeProxy;->getFilesPolicy(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/bridge/BridgeProxy;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/bridge/BridgeProxy;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;Landroid/content/CustomCursor;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Landroid/content/CustomCursor;
    .param p2, "x2"    # Landroid/content/CustomCursor;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/bridge/BridgeProxy;->insertContact(Landroid/content/CustomCursor;Landroid/content/CustomCursor;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/SimplePersonaInfos;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    return-object v0
.end method

.method static synthetic access$4200(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p0}, Lcom/android/server/bridge/BridgeProxy;->isBridgeCmd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p0}, Lcom/android/server/bridge/BridgeProxy;->isAllowedPackagesForBridgeCmd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/bridge/BridgeProxy;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->bridgeCmd(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/ProcessBadgeData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/server/bridge/BridgeProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/server/bridge/BridgeProxy;->mAccountChanged:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/IProviderCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeProvider:Landroid/content/IProviderCallBack;

    return-object v0
.end method

.method static synthetic access$4900()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/android/server/bridge/BridgeProxy;->KNOX_DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/bridge/BridgeProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method private bridgeCmd(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 18
    .param p1, "bdl"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2392
    const-string v1, "cmd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2393
    .local v7, "cmd":Ljava/lang/String;
    sget-object v1, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "bridgeCmd() , cmd :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    if-eqz v1, :cond_7

    .line 2395
    const-string v1, "contactsquery"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2396
    const-string/jumbo v1, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2397
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "projection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2398
    .local v3, "projection":[Ljava/lang/String;
    const-string/jumbo v1, "selection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2399
    .local v4, "selection":Ljava/lang/String;
    const-string/jumbo v1, "selectionArgs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2400
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v1, "sortOrder"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2402
    .local v6, "sortOrder":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2404
    .local v11, "mCursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/bridge/BridgeProxy;->getProxyResponse(Landroid/database/Cursor;)Landroid/os/Bundle;

    move-result-object v13

    .line 2477
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "sortOrder":Ljava/lang/String;
    .end local v11    # "mCursor":Landroid/database/Cursor;
    :goto_0
    return-object v13

    .line 2406
    :cond_0
    const-string v1, "contactsinsert"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2407
    const-string/jumbo v1, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2408
    .restart local v2    # "uri":Landroid/net/Uri;
    const-string/jumbo v1, "values"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .line 2410
    .local v15, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 2411
    .local v14, "result":Landroid/net/Uri;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2412
    .local v13, "resp":Landroid/os/Bundle;
    const-string/jumbo v1, "result"

    invoke-virtual {v13, v1, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 2415
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v13    # "resp":Landroid/os/Bundle;
    .end local v14    # "result":Landroid/net/Uri;
    .end local v15    # "values":Landroid/content/ContentValues;
    :cond_1
    const-string v1, "contactsdelete"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2416
    const-string/jumbo v1, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2417
    .restart local v2    # "uri":Landroid/net/Uri;
    const-string/jumbo v1, "selection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2418
    .restart local v4    # "selection":Ljava/lang/String;
    const-string/jumbo v1, "selectionArgs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2420
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2423
    .local v14, "result":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2424
    .restart local v13    # "resp":Landroid/os/Bundle;
    const-string/jumbo v1, "result"

    invoke-virtual {v13, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2427
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "resp":Landroid/os/Bundle;
    .end local v14    # "result":I
    :cond_2
    const-string v1, "contactsupdate"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2428
    const-string/jumbo v1, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2429
    .restart local v2    # "uri":Landroid/net/Uri;
    const-string/jumbo v1, "values"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .line 2430
    .restart local v15    # "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "selection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2431
    .restart local v4    # "selection":Ljava/lang/String;
    const-string/jumbo v1, "selectionArgs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2433
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v15, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 2436
    .restart local v14    # "result":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2437
    .restart local v13    # "resp":Landroid/os/Bundle;
    const-string/jumbo v1, "result"

    invoke-virtual {v13, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2440
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "resp":Landroid/os/Bundle;
    .end local v14    # "result":I
    .end local v15    # "values":Landroid/content/ContentValues;
    :cond_3
    const-string v1, "contactsbulkInsert"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2441
    const-string/jumbo v1, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2442
    .restart local v2    # "uri":Landroid/net/Uri;
    const-string/jumbo v1, "values"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v15

    .line 2444
    .local v15, "values":[Landroid/os/Parcelable;
    const/4 v8, 0x0

    .line 2445
    .local v8, "content":[Landroid/content/ContentValues;
    if-eqz v15, :cond_4

    .line 2446
    array-length v1, v15

    new-array v8, v1, [Landroid/content/ContentValues;

    .line 2447
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v1, v15

    if-ge v10, v1, :cond_4

    .line 2448
    aget-object v1, v15, v10

    check-cast v1, Landroid/content/ContentValues;

    aput-object v1, v8, v10

    .line 2447
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2451
    .end local v10    # "i":I
    :cond_4
    if-eqz v8, :cond_5

    .line 2452
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v8}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v14

    .line 2453
    .restart local v14    # "result":I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2454
    .restart local v13    # "resp":Landroid/os/Bundle;
    const-string/jumbo v1, "result"

    invoke-virtual {v13, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2457
    .end local v13    # "resp":Landroid/os/Bundle;
    .end local v14    # "result":I
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2459
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v8    # "content":[Landroid/content/ContentValues;
    .end local v15    # "values":[Landroid/os/Parcelable;
    :cond_6
    const-string v1, "contactsapplyBatch"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2460
    const-string/jumbo v1, "operations"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 2463
    .local v12, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v14, 0x0

    .line 2465
    .local v14, "result":[Landroid/content/ContentProviderResult;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v16, "com.android.contacts"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v12}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 2471
    :goto_2
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2472
    .restart local v13    # "resp":Landroid/os/Bundle;
    const-string/jumbo v1, "result"

    invoke-virtual {v13, v1, v14}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 2467
    .end local v13    # "resp":Landroid/os/Bundle;
    :catch_0
    move-exception v9

    .line 2468
    .local v9, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v9}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_2

    .line 2477
    .end local v9    # "e":Landroid/content/OperationApplicationException;
    .end local v12    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v14    # "result":[Landroid/content/ContentProviderResult;
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method private checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string v1, "Proxy"

    .line 185
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCallerPermissionFor, ServiceName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , MethodName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1, p1}, Lcom/sec/enterprise/knox/seams/SEAMS;->forceAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 194
    throw v0

    .line 196
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private checkHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 780
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerPolicyChanged:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 781
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v1, " onReceive RCP_POLICY_CHANGED removeCallbacksAndMessages "

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerPolicyChanged:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 783
    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerPolicyChanged:Landroid/os/Handler;

    .line 785
    :cond_0
    return-void
.end method

.method private doSyncForAllSyncers()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 1117
    iget v10, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    if-eqz v10, :cond_6

    .line 1118
    sget-object v10, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "doSyncForAllSyncers , currentUserID :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerPrefName:Ljava/lang/String;

    invoke-virtual {v10, v11, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1121
    .local v9, "syncerPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 1122
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1124
    .local v1, "isRequiredToSyncMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1125
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1126
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    iget v11, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v10, v11}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->getExtraInfo(I)Landroid/os/Bundle;

    move-result-object v5

    .line 1129
    .local v5, "persona_info":Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1131
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1132
    .local v4, "pairs":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1133
    .local v8, "syncerName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1135
    .local v7, "serviceName":Ljava/lang/String;
    if-eqz v8, :cond_1

    if-nez v7, :cond_2

    .line 1136
    :cond_1
    sget-object v10, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Issue doSyncForAllSyncers(); skipping null values: syncerName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; serviceName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1142
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1143
    .local v0, "intent":Landroid/content/Intent;
    const/4 v6, 0x0

    .line 1144
    .local v6, "policyValue":Ljava/lang/String;
    sget-object v10, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Sync during switch package+service == "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " syncerName is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    const-string v10, "Contacts"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "Calendar"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1150
    :cond_3
    const-string/jumbo v10, "knox-import-data"

    invoke-direct {p0, v8, v10}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1152
    sget-object v10, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "doSyncForAllSyncers , IMPORT_DATA policyValue  :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    if-eqz v6, :cond_4

    const-string/jumbo v10, "false"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1154
    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;

    invoke-virtual {v10, v8, v13}, Landroid/os/RCPManager;->unRegisterObserver(Ljava/lang/String;I)V

    .line 1158
    :goto_1
    invoke-direct {p0, v8, v13}, Lcom/android/server/bridge/BridgeProxy;->doSyncForSyncer(Ljava/lang/String;I)V

    .line 1160
    const-string/jumbo v10, "knox-export-data"

    invoke-direct {p0, v8, v10}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1162
    sget-object v10, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "doSyncForAllSyncers , EXPORT_DATA policyValue  :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    if-eqz v6, :cond_5

    const-string/jumbo v10, "false"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1164
    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    invoke-virtual {v10, v8}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterObserver(Ljava/lang/String;)V

    .line 1168
    :goto_2
    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;

    iget v11, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v10, v8, v11}, Landroid/os/RCPManager;->doSyncForSyncer(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1156
    :cond_4
    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;

    invoke-virtual {v10, v8, v13}, Landroid/os/RCPManager;->registerObserver(Ljava/lang/String;I)V

    goto :goto_1

    .line 1166
    :cond_5
    iget-object v10, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    invoke-virtual {v10, v8}, Lcom/android/server/bridge/operations/DbObserver;->registerObserver(Ljava/lang/String;)V

    goto :goto_2

    .line 1174
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isRequiredToSyncMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "pairs":Ljava/util/Map$Entry;
    .end local v5    # "persona_info":Landroid/os/Bundle;
    .end local v6    # "policyValue":Ljava/lang/String;
    .end local v7    # "serviceName":Ljava/lang/String;
    .end local v8    # "syncerName":Ljava/lang/String;
    .end local v9    # "syncerPreferences":Landroid/content/SharedPreferences;
    :cond_6
    return-void
.end method

.method private doSyncForSyncer(Ljava/lang/String;I)V
    .locals 18
    .param p1, "syncerName"    # Ljava/lang/String;
    .param p2, "mUserID"    # I

    .prologue
    .line 1044
    sget-object v15, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " doSyncForSyncer, syncerName :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " , mUserID :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mSyncerPrefName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 1047
    .local v14, "syncerPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    .line 1048
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 1050
    .local v12, "serviceName":Ljava/lang/String;
    if-eqz v8, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 1051
    move-object/from16 v0, p1

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "serviceName":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 1056
    .restart local v12    # "serviceName":Ljava/lang/String;
    sget-object v15, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " Sync during switch package+service == "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " syncerName is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",Provider ID : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1060
    .local v6, "intent":Landroid/content/Intent;
    const/4 v10, 0x0

    .line 1061
    .local v10, "policyValue":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 1062
    const-string/jumbo v15, "knox-import-data"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1076
    :goto_0
    if-eqz v10, :cond_2

    const-string/jumbo v15, "false"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1078
    const-string/jumbo v15, "dowhat"

    const-string v16, "DELETE"

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1079
    const-string/jumbo v15, "delete_synced_data_of_user"

    move/from16 v0, p2

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1080
    sget-object v15, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " delete synced data policyName = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " providerID = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " SyncerID = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " syncerName = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :goto_1
    new-instance v13, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12}, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;-><init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 1094
    .local v13, "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    iget-object v5, v13, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->serviceName:Ljava/lang/String;

    .line 1095
    .local v5, "fullServiceName":Ljava/lang/String;
    iget-object v9, v13, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->packageName:Ljava/lang/String;

    .line 1096
    .local v9, "packageName":Ljava/lang/String;
    sget-object v15, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "startRCPComponentsService = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->serviceName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " for syncer "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v9, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    .local v3, "cn":Landroid/content/ComponentName;
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1102
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1103
    .local v2, "bundle":Landroid/os/Bundle;
    new-instance v7, Landroid/os/Messenger;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeBinder:Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

    invoke-direct {v7, v15}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 1104
    .local v7, "mProxyMessenger":Landroid/os/Messenger;
    const-string/jumbo v15, "proxy"

    invoke-virtual {v2, v15, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1105
    const-string v15, "binderBundle"

    invoke-virtual {v6, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1107
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1113
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v5    # "fullServiceName":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "mProxyMessenger":Landroid/os/Messenger;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "policyValue":Ljava/lang/String;
    .end local v13    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    :cond_0
    :goto_2
    return-void

    .line 1066
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v10    # "policyValue":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1067
    .local v11, "req":Landroid/os/Bundle;
    const-string/jumbo v15, "syncerName"

    move-object/from16 v0, p1

    invoke-virtual {v11, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const-string v15, "action"

    const-string v16, "GetExportPolicy"

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v15, v0, v1, v11}, Landroid/os/RCPManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 1070
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v15, "policyValue"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto/16 :goto_0

    .line 1071
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v11    # "req":Landroid/os/Bundle;
    :catch_0
    move-exception v4

    .line 1072
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1087
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-object v15, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " start syncing for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "for policy name ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " from provider"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const-string/jumbo v15, "syncing_from_user"

    move/from16 v0, p2

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1108
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "cn":Landroid/content/ComponentName;
    .restart local v5    # "fullServiceName":Ljava/lang/String;
    .restart local v7    # "mProxyMessenger":Landroid/os/Messenger;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v13    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    :catch_1
    move-exception v4

    .line 1109
    .local v4, "e":Ljava/lang/Exception;
    sget-object v15, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v16, "Unable to start service"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private enableComponent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "compName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 584
    :try_start_0
    const-string/jumbo v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 586
    .local v3, "iPM":Landroid/content/pm/IPackageManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .local v0, "componentName":Landroid/content/ComponentName;
    iget v5, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-interface {v3, v0, v5}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v4

    .line 588
    .local v4, "setting":I
    if-eq v4, v6, :cond_0

    .line 589
    const/4 v5, 0x1

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-interface {v3, v0, v5, v6, v7}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 598
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "iPM":Landroid/content/pm/IPackageManager;
    .end local v4    # "setting":I
    :cond_0
    :goto_0
    return-void

    .line 593
    :catch_0
    move-exception v1

    .line 594
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkg :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", component :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not installed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 595
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 596
    .local v2, "e1":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private fillPreInstalledAppsMap()V
    .locals 2

    .prologue
    .line 408
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "fill preinstalled apps start"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.android.app.memo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.infraware.polarisviewer5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.browser.provider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.marvin.talkback"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.gm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.chrome"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.apps.maps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.gms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.gsf"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.setupwizard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.gsf.login"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.feedback"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.partnersetup"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.vending"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.street"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.backuptransport"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.configupdater"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.syncadapters.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.syncadapters.calendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.tts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.gd.mobicore.pa"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.baidu.map.location"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.amap.android.location"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.locationhistory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.calendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.camera"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.widgetapp.SPlannerAppWidget"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.widgetapp.digitalclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.soundalive"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.myfiles"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.samsungapps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.osp.app.signin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.billing"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.sbrowser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.sprextension"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 484
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.browser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.gallery3d"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.android.mdm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.android.fingerprint.service"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.externalstorage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.everglades.video"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.videoplayer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.SamsungContentsAgent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.android.app.pinboard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.enterprise.mdm.vpn"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 504
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.helphub"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "fill preinstall apps end"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method private getBridgeContext()Landroid/content/Context;
    .locals 6

    .prologue
    .line 2722
    :try_start_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2727
    :goto_0
    return-object v0

    .line 2725
    :catch_0
    move-exception v1

    .line 2726
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v3, "bridge package not found: "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBridgeStringResource(I)Ljava/lang/String;
    .locals 5
    .param p1, "resId"    # I

    .prologue
    .line 2745
    :try_start_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 2747
    .local v1, "packageResources":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2750
    .end local v1    # "packageResources":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 2748
    :catch_0
    move-exception v0

    .line 2749
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v3, "bridge package not found: "

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getBridgeStringResource(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "resId"    # I
    .param p2, "mCurrentInvalidKnoxName"    # Ljava/lang/String;

    .prologue
    .line 2756
    :try_start_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 2758
    .local v1, "packageResources":Landroid/content/res/Resources;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2761
    .end local v1    # "packageResources":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 2759
    :catch_0
    move-exception v0

    .line 2760
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v3, "bridge package not found: "

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2761
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getBridgeStringResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "resIdString"    # Ljava/lang/String;

    .prologue
    .line 2733
    :try_start_0
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 2735
    .local v1, "packageResources":Landroid/content/res/Resources;
    const-string/jumbo v3, "string"

    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2736
    .local v2, "resId":I
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2739
    .end local v1    # "packageResources":Landroid/content/res/Resources;
    .end local v2    # "resId":I
    :goto_0
    return-object v3

    .line 2737
    :catch_0
    move-exception v0

    .line 2738
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v4, "bridge package not found: "

    invoke-static {v3, v4}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getBridgeStringResourceId(Ljava/lang/String;)I
    .locals 5
    .param p1, "resIdString"    # Ljava/lang/String;

    .prologue
    .line 2767
    :try_start_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 2769
    .local v1, "packageResources":Landroid/content/res/Resources;
    const-string/jumbo v2, "string"

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2772
    .end local v1    # "packageResources":Landroid/content/res/Resources;
    :goto_0
    return v2

    .line 2770
    :catch_0
    move-exception v0

    .line 2771
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v3, "bridge package not found: "

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2772
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getFilesPolicy(II)I
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "policyType"    # I

    .prologue
    .line 1040
    const/4 v0, 0x0

    return v0
.end method

.method private getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 979
    const/4 v4, 0x0

    .line 982
    .local v4, "policy":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 985
    .local v2, "ident":J
    :try_start_0
    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: appName(syncer) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ; policyProperty = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;

    const-string/jumbo v6, "persona_policy"

    invoke-virtual {v5, v6}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaPolicyManager;

    .line 989
    .local v1, "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    iget v5, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v1, v5, p1, p2}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 995
    .end local v1    # "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 996
    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: policy value returned = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    return-object v4

    .line 991
    :catch_0
    move-exception v0

    .line 992
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: threw an exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "mUserID"    # I

    .prologue
    .line 1001
    const/4 v4, 0x0

    .line 1002
    .local v4, "policy":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1005
    .local v2, "ident":J
    :try_start_0
    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: appName(syncer) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ; policyProperty = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , mUserID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;

    const-string/jumbo v6, "persona_policy"

    invoke-virtual {v5, v6}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaPolicyManager;

    .line 1009
    .local v1, "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    invoke-virtual {v1, p3, p1, p2}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1015
    .end local v1    # "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1016
    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: policy value returned = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    return-object v4

    .line 1011
    :catch_0
    move-exception v0

    .line 1012
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPolicy: threw an exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getProxyResponse(Landroid/database/Cursor;)Landroid/os/Bundle;
    .locals 5
    .param p1, "mCursor"    # Landroid/database/Cursor;

    .prologue
    .line 2371
    const/4 v1, 0x0

    .line 2372
    .local v1, "remoteCursor":Landroid/content/CustomCursor;
    if-eqz p1, :cond_0

    .line 2373
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2374
    new-instance v3, Landroid/database/CursorWindow;

    const-string v4, "contactsquery"

    invoke-direct {v3, v4}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 2376
    .local v3, "window":Landroid/database/CursorWindow;
    new-instance v0, Landroid/database/CrossProcessCursorWrapper;

    invoke-direct {v0, p1}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 2377
    .local v0, "crossProcessCursor":Landroid/database/CrossProcessCursorWrapper;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/database/CrossProcessCursorWrapper;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 2379
    new-instance v1, Landroid/content/CustomCursor;

    .end local v1    # "remoteCursor":Landroid/content/CustomCursor;
    invoke-direct {v1, v3}, Landroid/content/CustomCursor;-><init>(Landroid/database/CursorWindow;)V

    .line 2380
    .restart local v1    # "remoteCursor":Landroid/content/CustomCursor;
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/CustomCursor;->setColumnNames([Ljava/lang/String;)V

    .line 2381
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/CustomCursor;->setAutoClose(Z)V

    .line 2383
    invoke-virtual {v0}, Landroid/database/CrossProcessCursorWrapper;->close()V

    .line 2386
    .end local v0    # "crossProcessCursor":Landroid/database/CrossProcessCursorWrapper;
    .end local v3    # "window":Landroid/database/CursorWindow;
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2387
    .local v2, "resp":Landroid/os/Bundle;
    const-string/jumbo v4, "result"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2388
    return-object v2
.end method

.method private getSyncPolicy()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1021
    const/4 v2, 0x0

    .line 1023
    .local v2, "policy":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getSyncPolicy() called"

    invoke-static {v3, v4}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;

    const-string/jumbo v4, "persona_policy"

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaPolicyManager;

    .line 1026
    .local v1, "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    const-string v3, "Contacts"

    invoke-virtual {v1, v3}, Landroid/os/PersonaPolicyManager;->getSyncPolicy(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1031
    .end local v1    # "personaPolicyMgr":Landroid/os/PersonaPolicyManager;
    :goto_0
    sget-object v3, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSyncPolicy(): policy value returned = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    return-object v2

    .line 1027
    :catch_0
    move-exception v0

    .line 1028
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSyncPolicy(): threw an exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initBadgeDataAndObserver(I)V
    .locals 7
    .param p1, "initCount"    # I

    .prologue
    .line 378
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initBadgeDataAndObserver  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 380
    new-instance v0, Lcom/android/server/bridge/operations/ProcessBadgeData;

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/bridge/operations/ProcessBadgeData;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/server/bridge/BridgeProxy;ILcom/android/server/bridge/operations/SimplePersonaInfos;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    .line 381
    new-instance v0, Lcom/android/server/bridge/operations/DbObserver;

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/DbObserver;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    .line 383
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "intitalize the badge count hash map"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, Lcom/android/server/bridge/BridgeProxy;->initializeShortcutBadgeCountMap()V

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    iget v1, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/bridge/operations/ProcessBadgeData;->requestTrySync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v6

    .line 391
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 394
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    .line 395
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initBadgeDataAndObserver postDelayed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerDoSync:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/bridge/BridgeProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/bridge/BridgeProxy$2;-><init>(Lcom/android/server/bridge/BridgeProxy;I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private initializeShortcutBadgeCountMap()V
    .locals 11

    .prologue
    .line 509
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v2, "Initializing hash map"

    invoke-static {v0, v2}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const/4 v7, 0x0

    .line 511
    .local v7, "badgeCursor":Landroid/database/Cursor;
    const-string v6, "content://com.sec.badge/apps"

    .line 512
    .local v6, "BADGE_PROVIDER_URI":Ljava/lang/String;
    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 513
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->badgeCountMap:Ljava/util/Map;

    .line 514
    const-string/jumbo v10, "|"

    .line 517
    .local v10, "separator":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/bridge/BridgeProxy;->getBridgeContext()Landroid/content/Context;

    move-result-object v8

    .line 520
    .local v8, "mBridgeCtx":Landroid/content/Context;
    if-eqz v8, :cond_1

    .line 521
    :try_start_0
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "badgecount"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "class"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "package"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 525
    iget v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    if-eqz v0, :cond_1

    .line 526
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USER IS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 529
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "class name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "class"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "badgecount"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and package name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "package"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "class"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 545
    .local v9, "packageClassAppended":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->badgeCountMap:Ljava/util/Map;

    const-string v2, "badgecount"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 552
    .end local v9    # "packageClassAppended":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_0

    .line 553
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 552
    :cond_1
    if-eqz v7, :cond_2

    .line 553
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 556
    :cond_2
    return-void
.end method

.method private insertContact(Landroid/content/CustomCursor;Landroid/content/CustomCursor;)Landroid/os/Bundle;
    .locals 19
    .param p1, "raw_contact"    # Landroid/content/CustomCursor;
    .param p2, "contact_data"    # Landroid/content/CustomCursor;

    .prologue
    .line 2591
    const-string/jumbo v3, "vnd.sec.contact.phone"

    .line 2592
    .local v3, "ACCOUNT_TYPE":Ljava/lang/String;
    const-string/jumbo v2, "vnd.sec.contact.phone"

    .line 2593
    .local v2, "ACCOUNT_NAME_STR":Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 2594
    .local v5, "CON_RAW_CONTACTS_URI":Landroid/net/Uri;
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 2596
    .local v4, "CON_DATA_URI":Landroid/net/Uri;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2597
    .local v7, "bundle":Landroid/os/Bundle;
    sget-object v16, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "insertContact() START"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    .line 2600
    :cond_0
    sget-object v16, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "raw_contact OR contact_data is null. Do nothing"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    if-eqz p1, :cond_1

    .line 2602
    invoke-virtual/range {p1 .. p1}, Landroid/content/CustomCursor;->close()V

    .line 2604
    :cond_1
    if-eqz p2, :cond_2

    .line 2605
    invoke-virtual/range {p2 .. p2}, Landroid/content/CustomCursor;->close()V

    .line 2608
    :cond_2
    :try_start_0
    const-string/jumbo v16, "result"

    const-string/jumbo v17, "false"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2717
    :goto_0
    return-object v7

    .line 2610
    :catch_0
    move-exception v10

    .line 2611
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 2616
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/CustomCursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 2623
    const-string v16, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getLong(I)J

    move-result-wide v14

    .line 2625
    .local v14, "s_id":J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2626
    .local v13, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    const-string v17, "account_type"

    const-string/jumbo v18, "vnd.sec.contact.phone"

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    const-string v17, "account_name"

    const-string/jumbo v18, "vnd.sec.contact.phone"

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    const-string/jumbo v17, "starred"

    const-string/jumbo v18, "starred"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    const-string/jumbo v17, "display_name_source"

    const-string/jumbo v18, "display_name_source"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    const-string/jumbo v17, "raw_contact_is_read_only"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2645
    if-eqz p2, :cond_9

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/CustomCursor;->getCount()I

    move-result v16

    if-eqz v16, :cond_9

    .line 2646
    invoke-virtual/range {p2 .. p2}, Landroid/content/CustomCursor;->moveToFirst()Z

    .line 2649
    :cond_4
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 2652
    .local v6, "builder_data":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v16, "mimetype"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2655
    .local v12, "mimetype":Ljava/lang/String;
    const-string/jumbo v16, "mimetype"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2657
    const-string/jumbo v16, "is_primary"

    const-string/jumbo v17, "is_primary"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2660
    const-string/jumbo v16, "is_super_primary"

    const-string/jumbo v17, "is_super_primary"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2666
    const-string/jumbo v16, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 2668
    const-string/jumbo v16, "data14"

    const-string/jumbo v17, "data14"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2672
    const-string/jumbo v16, "data15"

    const-string/jumbo v17, "data15"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->getBlob(I)[B

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2692
    :cond_5
    const-string/jumbo v16, "is_read_only"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2693
    const-string/jumbo v16, "raw_contact_id"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 2695
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2697
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/CustomCursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v16

    if-nez v16, :cond_4

    .line 2706
    .end local v6    # "builder_data":Landroid/content/ContentProviderOperation$Builder;
    .end local v12    # "mimetype":Ljava/lang/String;
    :goto_1
    :try_start_2
    sget-object v16, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "InsertContacts , mDelegateUserHandle : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ,UserHandle.myUserId() :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "com.android.contacts"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v9

    .line 2709
    .local v9, "cpr":[Landroid/content/ContentProviderResult;
    const-string/jumbo v16, "result"

    const-string/jumbo v17, "true"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2710
    sget-object v16, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v17, "Contact inserted successfully"

    invoke-static/range {v16 .. v17}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2715
    .end local v9    # "cpr":[Landroid/content/ContentProviderResult;
    .end local v13    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v14    # "s_id":J
    :cond_7
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/CustomCursor;->close()V

    .line 2716
    invoke-virtual/range {p2 .. p2}, Landroid/content/CustomCursor;->close()V

    goto/16 :goto_0

    .line 2676
    .restart local v6    # "builder_data":Landroid/content/ContentProviderOperation$Builder;
    .restart local v12    # "mimetype":Ljava/lang/String;
    .restart local v13    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v14    # "s_id":J
    :cond_8
    :try_start_3
    const-string/jumbo v16, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 2680
    invoke-virtual/range {p2 .. p2}, Landroid/content/CustomCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v8

    .line 2682
    .local v8, "column_names":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_3
    array-length v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v11, v0, :cond_5

    .line 2683
    aget-object v16, v8, v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/CustomCursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2682
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2699
    .end local v6    # "builder_data":Landroid/content/ContentProviderOperation$Builder;
    .end local v8    # "column_names":[Ljava/lang/String;
    .end local v11    # "k":I
    .end local v12    # "mimetype":Ljava/lang/String;
    :cond_9
    sget-object v16, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v17, "contact data is null"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 2701
    :catch_1
    move-exception v10

    .line 2702
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 2703
    invoke-virtual/range {p1 .. p1}, Landroid/content/CustomCursor;->moveToNext()Z

    goto/16 :goto_1

    .line 2711
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    .line 2712
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static isAllowedPackagesForBridgeCmd(Ljava/lang/String;)Z
    .locals 10
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2501
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/String;

    const-string v7, "com.android.providers.contacts"

    aput-object v7, v0, v5

    const-string v7, "com.android.systemui"

    aput-object v7, v0, v6

    .line 2505
    .local v0, "allowedPackages":[Ljava/lang/String;
    sget-object v7, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isAllowedPackagesForBridgeCmd : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2507
    if-nez p0, :cond_1

    .line 2517
    :cond_0
    :goto_0
    return v5

    .line 2511
    :cond_1
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 2512
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 2513
    goto :goto_0

    .line 2511
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static isBridgeCmd(Ljava/lang/String;)Z
    .locals 9
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2481
    const/4 v7, 0x6

    new-array v1, v7, [Ljava/lang/String;

    const-string v7, "contactsquery"

    aput-object v7, v1, v5

    const-string v7, "contactsinsert"

    aput-object v7, v1, v6

    const/4 v7, 0x2

    const-string v8, "contactsdelete"

    aput-object v8, v1, v7

    const/4 v7, 0x3

    const-string v8, "contactsupdate"

    aput-object v8, v1, v7

    const/4 v7, 0x4

    const-string v8, "contactsbulkInsert"

    aput-object v8, v1, v7

    const/4 v7, 0x5

    const-string v8, "contactsapplyBatch"

    aput-object v8, v1, v7

    .line 2486
    .local v1, "cmdList":[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 2497
    :goto_0
    return v5

    .line 2490
    :cond_0
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 2491
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v6

    .line 2492
    goto :goto_0

    .line 2490
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2496
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isBridgeCmd : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private kioskSetup()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 566
    new-array v2, v9, [[Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "com.android.settings"

    aput-object v6, v5, v7

    const-string v6, "com.android.settings.TetherSettings"

    aput-object v6, v5, v8

    aput-object v5, v2, v7

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "com.android.settings"

    aput-object v6, v5, v7

    const-string v6, "com.android.settings.Settings$TetherSettingsActivity"

    aput-object v6, v5, v8

    aput-object v5, v2, v8

    .line 576
    .local v2, "enableComponents_com":[[Ljava/lang/String;
    move-object v1, v2

    .local v1, "arr$":[[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 577
    .local v0, "anEnableComponents_com":[Ljava/lang/String;
    aget-object v5, v0, v7

    aget-object v6, v0, v8

    invoke-direct {p0, v5, v6}, Lcom/android/server/bridge/BridgeProxy;->enableComponent(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 580
    .end local v0    # "anEnableComponents_com":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private policyChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 29
    .param p1, "syncerName"    # Ljava/lang/String;
    .param p2, "policyName"    # Ljava/lang/String;
    .param p3, "policyChangedForUser"    # I

    .prologue
    .line 789
    sget-object v25, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "policyChanged , syncerName = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " , policyname :"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " , policyChangedForUser : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " ,mDelegateUserId : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 792
    .local v7, "currentUser":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mSyncerPrefName:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 794
    .local v24, "syncerPreferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v19

    .line 796
    .local v19, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v21

    .line 798
    .local v21, "parent":I
    move/from16 v0, v21

    move/from16 v1, p3

    if-ne v0, v1, :cond_1

    .line 799
    sget-object v25, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v26, "parent == policyChangedForUser so retur"

    invoke-static/range {v25 .. v26}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 804
    new-instance v23, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;-><init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 805
    .local v23, "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->serviceName:Ljava/lang/String;

    .line 806
    .local v9, "fullServiceName":Ljava/lang/String;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 808
    .local v20, "packageName":Ljava/lang/String;
    sget-object v25, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " policyChanged, package == "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "; service == "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v20

    invoke-direct {v6, v0, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    .local v6, "cn":Landroid/content/ComponentName;
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 812
    .local v14, "mIntent":Landroid/content/Intent;
    invoke-virtual {v14, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 814
    const/16 v22, 0x0

    .line 816
    .local v22, "policyValue":Ljava/lang/String;
    const-string/jumbo v25, "knox-import-data"

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 818
    const-string/jumbo v25, "knox-import-data"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    .line 821
    if-eqz v22, :cond_7

    const-string/jumbo v25, "false"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 823
    const-string/jumbo v25, "dowhat"

    const-string v26, "DELETE"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    const-string/jumbo v25, "delete_synced_data_of_user"

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 825
    sget-object v25, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " delete synced data policyName = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " userId = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " parent = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " syncerName = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v15

    .line 831
    .local v15, "mPersonaIds":[I
    const/16 v18, 0x1

    .line 832
    .local v18, "mUnRegisterFlag":Z
    if-eqz v15, :cond_4

    .line 833
    move-object v4, v15

    .local v4, "arr$":[I
    array-length v12, v4

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v12, :cond_4

    aget v11, v4, v10

    .line 834
    .local v11, "id":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v11, :cond_3

    .line 835
    const-string/jumbo v25, "knox-import-data"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v11}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 837
    .local v13, "mImportPolicy":Ljava/lang/String;
    const-string/jumbo v25, "true"

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 838
    const/16 v18, 0x0

    .line 833
    .end local v13    # "mImportPolicy":Ljava/lang/String;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 842
    .end local v4    # "arr$":[I
    .end local v10    # "i$":I
    .end local v11    # "id":I
    .end local v12    # "len$":I
    :cond_4
    sget-object v25, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " mUnRegisterFlag : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " , syncerName : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    if-eqz v18, :cond_5

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/RCPManager;->unRegisterObserver(Ljava/lang/String;I)V

    .line 856
    .end local v15    # "mPersonaIds":[I
    .end local v18    # "mUnRegisterFlag":Z
    :cond_5
    :goto_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 857
    .local v5, "bundle":Landroid/os/Bundle;
    new-instance v17, Landroid/os/Messenger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeBinder:Lcom/android/server/bridge/BridgeProxy$IBridgeBinder;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 858
    .local v17, "mProxyMessenger":Landroid/os/Messenger;
    const-string/jumbo v25, "proxy"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 859
    const-string v25, "binderBundle"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 862
    if-eqz p3, :cond_6

    .line 863
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v16

    .line 864
    .local v16, "mPersonaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v16, :cond_0

    .line 867
    .end local v16    # "mPersonaInfo":Landroid/content/pm/PersonaInfo;
    :cond_6
    sget-object v25, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " RCP_POLICY_CHANGED started for sync/delete ComponentName = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    new-instance v28, Landroid/os/UserHandle;

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 871
    :catch_0
    move-exception v8

    .line 872
    .local v8, "e":Ljava/lang/Exception;
    sget-object v25, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v26, "Unable to start service"

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 847
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v17    # "mProxyMessenger":Landroid/os/Messenger;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 848
    sget-object v25, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " start syncing provider "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "for policy name ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " for syncer"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const-string/jumbo v25, "syncing_from_user"

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 853
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/RCPManager;->registerObserver(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 876
    :cond_9
    const-string/jumbo v25, "knox-export-data"

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 878
    const-string/jumbo v25, "knox-export-data"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    .line 880
    if-eqz v22, :cond_a

    const-string/jumbo v25, "false"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterObserver(Ljava/lang/String;)V

    .line 886
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/RCPManager;->doSyncForSyncer(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 883
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/bridge/operations/DbObserver;->registerObserver(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public getBadgeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->badgeCountMap:Ljava/util/Map;

    return-object v0
.end method

.method public registerObserver(Ljava/lang/String;)V
    .locals 1
    .param p1, "mSyncer"    # Ljava/lang/String;

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/bridge/operations/DbObserver;->registerObserver(Ljava/lang/String;)V

    .line 604
    :cond_0
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    .line 212
    invoke-direct/range {p0 .. p0}, Lcom/android/server/bridge/BridgeProxy;->getBridgeContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    .line 213
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    move/from16 v25, v0

    .line 214
    .local v25, "uid":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 215
    .local v8, "UserId":I
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate BridgeProxy is starting for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mFirstTimePrefName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 219
    .local v13, "firstTimePreferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;

    .line 221
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate BridgeProxy user id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/bridge/BridgeProxy;->initBadgeDataAndObserver(I)V

    .line 225
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/android/server/bridge/BridgeProxy;->fillPreInstalledAppsMap()V

    .line 228
    const-string v2, "FIRST_TIME"

    const/4 v3, 0x0

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 231
    const/16 v14, 0x80

    .line 232
    .local v14, "flags":I
    :try_start_0
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v17

    .line 234
    .local v17, "iPM":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    move-object/from16 v0, v17

    invoke-interface {v0, v14, v2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v22

    .line 236
    .local v22, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v10

    .line 238
    .local v10, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mProviderPrefName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 240
    .local v20, "providerPreferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mSyncerPrefName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 243
    .local v24, "syncerPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 244
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v11, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 246
    .local v11, "bundle":Landroid/os/Bundle;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 250
    .local v18, "key":Ljava/lang/String;
    if-eqz v18, :cond_1

    .line 253
    const-string v2, "RCPSyncerName_"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 255
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 256
    .local v21, "serviceName":Ljava/lang/String;
    const-string v2, "RCPSyncerName_"

    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    .line 257
    .local v23, "syncerName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate(): serviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; syncerName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; UserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    if-eqz v21, :cond_1

    .line 260
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate(): Adding syncer for UserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 263
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 285
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v11    # "bundle":Landroid/os/Bundle;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "iPM":Landroid/content/pm/IPackageManager;
    .end local v18    # "key":Ljava/lang/String;
    .end local v20    # "providerPreferences":Landroid/content/SharedPreferences;
    .end local v21    # "serviceName":Ljava/lang/String;
    .end local v22    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .end local v23    # "syncerName":Ljava/lang/String;
    .end local v24    # "syncerPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v12

    .line 286
    .local v12, "e":Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    .line 290
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v14    # "flags":I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RCPManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;

    .line 292
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v3, " BridgeProxy onCreate"

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;

    const-string v3, "ALL_PROVIDERS"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeProvider:Landroid/content/IProviderCallBack;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/os/RCPManager;->registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeSync:Landroid/content/ISyncCallBack;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/os/RCPManager;->registerSync(Landroid/content/ISyncCallBack;I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeCommandExe:Landroid/content/ICommandExeCallBack;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/os/RCPManager;->registerCommandExe(Landroid/content/ICommandExeCallBack;I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mIRCPGlobalContactsDirectoryService:Lcom/android/server/bridge/BridgeProxy$IRCPGlobalContactsDirectoryService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/os/RCPManager;->registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/os/RCPManager;->registerRCPInterface(Landroid/content/IRCPInterface;I)V

    .line 301
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/BridgeProxy;->cb:Landroid/os/IRunnableCallback;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/os/RCPManager;->registerExchangeData(Landroid/content/Context;Landroid/os/IRunnableCallback;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    :goto_2
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 308
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    new-instance v2, Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 313
    new-instance v5, Landroid/content/IntentFilter;

    .end local v5    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 314
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/bridge/BridgeProxy$AccountsChangedReceiver;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/bridge/BridgeProxy$AccountsChangedReceiver;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 318
    new-instance v5, Landroid/content/IntentFilter;

    .end local v5    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 319
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    const-string v2, "com.sec.knox.action.SHORTCUT_MIGRATION_FOR_2_3_0"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    new-instance v2, Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 324
    new-instance v5, Landroid/content/IntentFilter;

    .end local v5    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string/jumbo v2, "package"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 329
    new-instance v2, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/bridge/BridgeProxy$PackageReceiver;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/BridgeProxy;->mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v2}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_3

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/android/server/bridge/BridgeProxy;->kioskSetup()V

    .line 337
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/bridge/BridgeProxy;->mHandlerDoSync:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/bridge/BridgeProxy$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/bridge/BridgeProxy$1;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    const-wide/16 v6, 0x2710

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    return-void

    .line 266
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .restart local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v11    # "bundle":Landroid/os/Bundle;
    .restart local v14    # "flags":I
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v17    # "iPM":Landroid/content/pm/IPackageManager;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v20    # "providerPreferences":Landroid/content/SharedPreferences;
    .restart local v22    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v24    # "syncerPreferences":Landroid/content/SharedPreferences;
    :cond_4
    :try_start_2
    const-string v2, "RCPProviderName_"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 269
    .restart local v21    # "serviceName":Ljava/lang/String;
    const-string v2, "RCPProviderName_"

    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 270
    .local v19, "providerName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate(): serviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; providerName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; UserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    if-eqz v21, :cond_1

    .line 273
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate(): Adding provider for UserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 277
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 283
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "bundle":Landroid/os/Bundle;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "providerName":Ljava/lang/String;
    .end local v21    # "serviceName":Ljava/lang/String;
    :cond_5
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "FIRST_TIME"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 302
    .end local v10    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v14    # "flags":I
    .end local v17    # "iPM":Landroid/content/pm/IPackageManager;
    .end local v20    # "providerPreferences":Landroid/content/SharedPreferences;
    .end local v22    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .end local v24    # "syncerPreferences":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v12

    .line 303
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public stop()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 894
    sget-object v4, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v5, "----- stop called -----"

    invoke-static {v4, v5}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :try_start_0
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    if-eqz v4, :cond_0

    .line 898
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 900
    :cond_0
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    if-eqz v4, :cond_1

    .line 901
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mShortcutMigration:Lcom/android/server/bridge/BridgeProxy$ShortcutMigration;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 902
    :cond_1
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    if-eqz v4, :cond_2

    .line 903
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mPackageReceiver:Lcom/android/server/bridge/BridgeProxy$PackageReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    if-eqz v4, :cond_3

    .line 910
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterObserver(Ljava/lang/String;)V

    .line 912
    :cond_3
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->processBadgeData:Lcom/android/server/bridge/operations/ProcessBadgeData;

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/server/bridge/operations/ProcessBadgeData;->clear(Landroid/content/Context;)V

    .line 914
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mFirstTimePrefName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 915
    .local v1, "firstPrefs":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 916
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mFirstTimePrefName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 918
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 921
    :cond_4
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerPrefName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 922
    .local v3, "syncerPrefs":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 923
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerPrefName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 925
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 928
    :cond_5
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mProviderPrefName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 929
    .local v2, "providerPrefs":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 930
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mProviderPrefName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 932
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 934
    :cond_6
    return-void

    .line 905
    .end local v1    # "firstPrefs":Ljava/io/File;
    .end local v2    # "providerPrefs":Ljava/io/File;
    .end local v3    # "syncerPrefs":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 906
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public unRegisterObserver(Ljava/lang/String;)V
    .locals 1
    .param p1, "mSyncer"    # Ljava/lang/String;

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterObserver(Ljava/lang/String;)V

    .line 610
    :cond_0
    return-void
.end method
