.class public Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.super Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    }
.end annotation


# static fields
.field private static final ALIASACCESSIBLE:I = 0x1

.field private static final ALIASINACCESSIBLE:I = 0x0

.field private static final ALIASUNKNOWN:I = 0x2

.field private static final BOOT_PLUGIN_PACKAGE:Ljava/lang/String; = "com.samsung.ucs.agent.boot"

.field private static final CMC_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.cmc"

.field private static final CMP_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.cmp"

.field private static final CREDENTIAL_AGENT_INTENT:Ljava/lang/String; = "com.samsung.ucm.agent"

.field private static final CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

.field private static final CREDENTIAL_AGENT_PERMISSION:Ljava/lang/String; = "com.samsung.ucm.permission.agent"

.field private static final DECRYPT_CHECK_PROPERTY:Ljava/lang/String; = "vold.decrypt"

.field private static final ESE_PLUGIN_PACKAGE:Ljava/lang/String; = "com.samsung.ucs.agent.ese"

.field private static final EVENT_LICENSE_ACTIVATE:I = 0x1

.field private static final EVENT_LICENSE_EXPIRED:I = 0x2

.field private static final KNOX_UCSM_PLUGIN_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

.field private static final MSG_CREDENTIAL_STORAGE_AVAILABLE:I = 0x3

.field private static final MSG_CREDENTIAL_STORAGE_CHANGED:I = 0x2

.field private static final MSG_PACKAGE_LICENSE_UPDATE:I = 0x4

.field private static final MSG_REFRESH_ACTIVE_AGENTS:I = 0x1

.field private static final MSG_REFRESH_APPLET_INFO:I = 0x5

.field private static final ODE_CONFIG_PATH:Ljava/lang/String; = "/efs/sec_efs"

.field private static final SCEP_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.scep"

.field private static final STORAGE_CONFIG_PATH:Ljava/lang/String; = "/data/system"

.field private static final TAG:Ljava/lang/String; = "UcmService"

.field private static final UCS_ODE_CHECK_PROPERTY:Ljava/lang/String; = "persist.security.ucs"

.field private static final UNCRYPT_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.state"

.field private static sContext:Landroid/content/Context;


# instance fields
.field private activeAgentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public bUseBlockingQueue:Z

.field private certEnrollSystemApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final interfaceQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppletsInfoLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPersistentAppletInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentAppletInfoFile:Landroid/util/AtomicFile;

.field private final mPersistentServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentServicesFile:Landroid/util/AtomicFile;

.field private mPersistentServicesFileDidNotExist:Z

.field private mPm:Landroid/content/pm/IPackageManager;

.field private mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

.field private final mServicesLock:Ljava/lang/Object;

.field private mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

.field private mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

.field private mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

.field private pinpadConn:Landroid/content/ServiceConnection;

.field private pinpadService:Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

.field private test_status_for_ode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.ucm.agent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

    .line 132
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 231
    invoke-direct {p0}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;-><init>()V

    .line 121
    iput-boolean v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    .line 136
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->bUseBlockingQueue:Z

    .line 140
    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    .line 141
    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 142
    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    .line 147
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    .line 148
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    .line 149
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    .line 150
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    .line 151
    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->pinpadService:Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

    .line 152
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mServicesLock:Ljava/lang/Object;

    .line 153
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    .line 155
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    .line 159
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v4, v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->interfaceQueue:Ljava/util/concurrent/BlockingQueue;

    .line 175
    new-instance v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;

    invoke-direct {v4, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    .line 392
    new-instance v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;

    invoke-direct {v4, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->pinpadConn:Landroid/content/ServiceConnection;

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    .line 234
    new-instance v4, Lcom/samsung/ucm/ucmservice/PolicyManager;

    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    .line 235
    new-instance v4, Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-direct {v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    .line 237
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 238
    .local v0, "dataDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "system"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    .local v3, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "registered_ucm_services"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 240
    .local v2, "syncDir":Ljava/io/File;
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "com.samsung.ucm.agent.xml"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    .line 241
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system"

    const-string v7, "appletsConfig.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    .line 243
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentServicesLocked()V

    .line 245
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 246
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string/jumbo v4, "package"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 252
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;

    invoke-direct {v5, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 267
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 268
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    monitor-enter v5

    .line 269
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentAppletsInfoLocked()V

    .line 270
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    iget-boolean v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->bUseBlockingQueue:Z

    if-nez v4, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->bindUCSPinpadService()V

    .line 274
    :cond_0
    const-string/jumbo v4, "ro.crypto.state"

    const-string/jumbo v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "unencrypted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "vold.decrypt"

    const-string/jumbo v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "trigger_restart_framework"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "vold.decrypt"

    const-string/jumbo v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "trigger_reset_main"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 277
    :cond_1
    const-string/jumbo v4, "persist.security.ucs"

    const-string/jumbo v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "ro.boot.ucs_mode"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 278
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteODEConfigInFileIfExist()V

    .line 282
    :cond_2
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateKeyguardConfig()V

    .line 285
    :cond_3
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    const-string v5, "com.samsung.android.certenrollservice.scep"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    const-string v5, "com.samsung.android.certenrollservice.cmp"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    const-string v5, "com.samsung.android.certenrollservice.cmc"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    return-void

    .line 270
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method static synthetic access$000(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->writePersistentAppletsInfoLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentAppletsInfoLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgentList(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;)Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->pinpadService:Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

    return-object p1
.end method

.method private bindUCSPinpadService()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 368
    const-string v2, "UcmService"

    const-string v3, "bindUCSPinpadService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->pinpadService:Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

    if-eqz v2, :cond_0

    .line 370
    const-string v2, "UcmService"

    const-string v3, "UCS pinpad service is already bound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_0
    return-void

    .line 373
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 374
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.ucs.ucspinpad"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v2, "com.samsung.ucs.ucspinpad.BIND_UCS_PINPAD_SERVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->pinpadConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 377
    iget-boolean v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->bUseBlockingQueue:Z

    if-ne v2, v4, :cond_1

    .line 379
    :try_start_0
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->interfaceQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->pinpadService:Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_1
    :goto_1
    const-string v2, "UcmService"

    const-string v3, "bindUCSPinpadService() - bindService true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "UcmService"

    const-string v3, "InterruptedException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->interfaceQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 383
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 388
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const-string v2, "UcmService"

    const-string v3, "bindUCSPinpadService() - bindService false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkCaller(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "expectedPackage"    # Ljava/lang/String;

    .prologue
    .line 3936
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 3937
    .local v0, "actualPackage":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "actualPackage":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "actualPackage":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 6
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 352
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCallerPermissionFor is called for method-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v1, "CredentialManagerService"

    .line 354
    .local v1, "serviceName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-nez v2, :cond_1

    .line 364
    :cond_0
    return v5

    .line 357
    :cond_1
    sget-object v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 358
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

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 361
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 362
    throw v0
.end method

.method private checkIfNotify(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z
    .locals 11
    .param p1, "activeAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 913
    new-instance v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 914
    .local v0, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v8, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v8, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 915
    iget-object v8, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 916
    iget-object v8, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 917
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkIfNotify for cs Name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Package name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object v8, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v1, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    .line 924
    .local v1, "enforceManagement":Z
    if-eqz v1, :cond_3

    .line 925
    const-string v8, "UcmService"

    const-string/jumbo v9, "notifying to managed plugin"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 927
    .local v3, "mUm":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 929
    .local v7, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v4, 0x0

    .line 930
    .local v4, "notify":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 931
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v5, v6, Landroid/content/pm/UserInfo;->id:I

    .line 932
    .local v5, "userId":I
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkIfNotify: Valid userid - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8, v5, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isStorageEnabled(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v4

    .line 934
    if-eqz v4, :cond_0

    .line 940
    .end local v1    # "enforceManagement":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mUm":Landroid/os/UserManager;
    .end local v4    # "notify":Z
    .end local v5    # "userId":I
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v7    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    :goto_0
    return v4

    .line 919
    :cond_2
    const-string v8, "UcmService"

    const-string v9, "Package name for CS found NULL. Cannot notify."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v4, 0x0

    goto :goto_0

    .line 939
    .restart local v1    # "enforceManagement":Z
    :cond_3
    const-string v8, "UcmService"

    const-string/jumbo v9, "notifying to unmanaged plugin"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private checkPluginUsed(Ljava/lang/String;)Z
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2933
    const-string/jumbo v4, "persist.keyguard.ucs.csname"

    const-string v5, "None"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2934
    .local v1, "keyguardCSName":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2935
    .local v2, "source":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 2936
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 2937
    const-string v4, "UcmService"

    const-string v5, "This plugin is already used in keyguard"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    :goto_0
    return v3

    .line 2943
    :cond_0
    const-string/jumbo v4, "persist.security.ucs.csname"

    const-string v5, "None"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2944
    .local v0, "ODECSName":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2945
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_1

    .line 2946
    const-string v4, "UcmService"

    const-string v5, "This plugin is already used in ODE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2950
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkSystemCaller()V
    .locals 2

    .prologue
    .line 3929
    const-string v1, "android.uid.system:1000"

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCaller(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3930
    .local v0, "actual":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3931
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3933
    :cond_0
    return-void
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 9
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v6, 0x0

    .line 325
    if-nez p0, :cond_0

    .line 326
    const-string v7, "UcmService"

    const-string v8, "Signature s1 is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :goto_0
    return v6

    .line 329
    :cond_0
    if-nez p1, :cond_1

    .line 330
    const-string v7, "UcmService"

    const-string v8, "Signature s2 is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 335
    .local v3, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 336
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 338
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 339
    .local v4, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 340
    .restart local v5    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 343
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 344
    const-string v6, "UcmService"

    const-string v7, "  Signature match"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v6, 0x1

    goto :goto_0

    .line 347
    :cond_4
    const-string v7, "UcmService"

    const-string v8, "  Signature doesn\'t match"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private convertByteToString([B)Ljava/lang/String;
    .locals 10
    .param p1, "data"    # [B

    .prologue
    .line 680
    const-string v2, ""

    .line 681
    .local v2, "byteString":Ljava/lang/String;
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    .line 682
    .local v1, "b":B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02X"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 681
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 684
    .end local v1    # "b":B
    :cond_0
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertByteToString result - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return-object v2
.end method

.method private deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;
    .locals 18
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "ismdmcaller"    # Z
    .param p3, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2271
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2273
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2274
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2275
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteInternal : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2277
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2330
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    :goto_0
    return-object v10

    .line 2282
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2283
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2284
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .line 2285
    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    move/from16 v5, v16

    .line 2286
    :cond_1
    if-eqz p2, :cond_3

    move/from16 v4, p3

    .line 2287
    .local v4, "user_id":I
    :goto_1
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v13

    .line 2288
    .local v13, "uriresource":I
    const/4 v2, -0x1

    if-ne v13, v2, :cond_2

    const/4 v13, 0x1

    .line 2291
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2292
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 2293
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! deleteInternal is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2295
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2286
    .end local v4    # "user_id":I
    .end local v13    # "uriresource":I
    .end local v14    # "id":J
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    goto :goto_1

    .line 2298
    .restart local v4    # "user_id":I
    .restart local v13    # "uriresource":I
    .restart local v14    # "id":J
    :cond_4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2301
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2302
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v17

    .line 2303
    .local v17, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_7

    .line 2304
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    .line 2305
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    .end local v17    # "userId":I
    :cond_5
    :goto_2
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2312
    .local v12, "argBundle":Landroid/os/Bundle;
    if-eqz p2, :cond_6

    const-string/jumbo v2, "ismdm"

    move/from16 v0, p2

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2313
    :cond_6
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2314
    const-string/jumbo v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2315
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2316
    const-string/jumbo v2, "resource"

    invoke-virtual {v12, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2318
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .line 2324
    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_8

    .line 2325
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2327
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2307
    .end local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v12    # "argBundle":Landroid/os/Bundle;
    .restart local v17    # "userId":I
    :cond_7
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete. Keeping same userid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2330
    .end local v17    # "userId":I
    .restart local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .restart local v12    # "argBundle":Landroid/os/Bundle;
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    goto/16 :goto_0
.end method

.method private deleteODEConfigInFileIfExist()V
    .locals 4

    .prologue
    .line 3569
    const-string v2, "UcmService"

    const-string/jumbo v3, "deleteODEConfigInFile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string/jumbo v3, "odeConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3571
    .local v1, "odeConfigFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 3572
    .local v0, "existFile":Z
    if-nez v0, :cond_0

    .line 3573
    const-string v2, "UcmService"

    const-string v3, "ODE config file does not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3579
    :goto_0
    return-void

    .line 3575
    :cond_0
    const-string v2, "UcmService"

    const-string v3, "ODE config file exist so delete it"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 18
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySize"    # I
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "isSystem"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2372
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateKeyPairMain "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2374
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2375
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2376
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateKeyPairMain : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2378
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2432
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    :goto_0
    return-object v10

    .line 2383
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2384
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2385
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .line 2386
    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    move/from16 v5, v16

    .line 2387
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2388
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v13

    .line 2389
    .local v13, "uriresource":I
    const/4 v2, -0x1

    if-ne v13, v2, :cond_2

    const/4 v13, 0x1

    .line 2391
    :cond_2
    if-nez p5, :cond_4

    .line 2393
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2394
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 2395
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! generateKeyPairMain is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2397
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2400
    :cond_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2405
    .end local v14    # "id":J
    :cond_4
    if-eqz p5, :cond_5

    .line 2406
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v17

    .line 2407
    .local v17, "userId":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateKeyPairMain system provided userId"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_5

    .line 2409
    move/from16 v4, v17

    .line 2413
    .end local v17    # "userId":I
    :cond_5
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2414
    .local v12, "argBundle":Landroid/os/Bundle;
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2415
    const-string/jumbo v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2416
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2417
    const-string/jumbo v2, "resource"

    invoke-virtual {v12, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2418
    const-string/jumbo v2, "extraArgs"

    move-object/from16 v0, p4

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2420
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateKeyPair KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateKeyPair KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateKeyPair KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .line 2426
    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_6

    .line 2427
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2429
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2432
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v11, v2, v0, v1, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    goto/16 :goto_0
.end method

.method private getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;
    .locals 4
    .param p1, "credAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2053
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2054
    .local v0, "agentInfoBundle":Landroid/os/Bundle;
    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    .line 2055
    .local v1, "credAgentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    if-eqz v1, :cond_5

    .line 2056
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "uniqueId"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    :cond_0
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "id"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    :cond_1
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->summary:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "summary"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    :cond_2
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string/jumbo v2, "title"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    :cond_3
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->vendorId:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "vendorId"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->vendorId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    :cond_4
    const-string/jumbo v2, "isDetachable"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isDetachable:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2062
    const-string/jumbo v2, "reqUserVerification"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->reqUserVerification:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2063
    const-string/jumbo v2, "isHardwareBacked"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isHardwareBacked:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2064
    const-string/jumbo v2, "isReadOnly"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2065
    const-string/jumbo v2, "isManageable"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isManageable:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2066
    const-string/jumbo v2, "enforceManagement"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2067
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->configuratorList:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v2, "configuratorList"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->configuratorList:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    :cond_5
    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_6

    .line 2070
    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2071
    const-string/jumbo v2, "packageName"

    iget-object v3, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    :cond_6
    return-object v0
.end method

.method private getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .locals 4
    .param p1, "pluginName"    # Ljava/lang/String;

    .prologue
    .line 607
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAppletInfo is called for pluginName-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 609
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    .line 610
    .local v0, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    if-eqz v0, :cond_1

    .line 611
    const-string v1, "UcmService"

    const-string/jumbo v2, "getAppletInfo pluginName entry found.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAppletInfo appletLocation-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAppletInfo pluginName-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAppletInfo adminId-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAppletInfo aid-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v1, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    if-eqz v1, :cond_0

    .line 617
    iget-object v1, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->convertByteToString([B)Ljava/lang/String;

    .line 622
    .end local v0    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 3
    .param p1, "agentResponse"    # Landroid/os/Bundle;

    .prologue
    .line 2436
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2437
    .local v1, "errorcode":I
    const-string v2, "bytearrayresponse"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 2438
    .local v0, "data":[B
    new-instance v2, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    invoke-direct {v2, v1, v0}, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;-><init>(I[B)V

    return-object v2
.end method

.method private declared-synchronized getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .locals 1

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    if-nez v0, :cond_0

    .line 170
    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    if-nez v0, :cond_0

    .line 163
    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getuseridforuid(I)I
    .locals 1
    .param p1, "callingUid"    # I

    .prologue
    .line 1571
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1572
    .local v0, "callerUserId":I
    return v0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 689
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 690
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 691
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 692
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 694
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 696
    :cond_0
    return-object v0
.end method

.method private importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "certChain"    # [B
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "ismdmcaller"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2177
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "importKeyPair "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2180
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2181
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2182
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "importKeyPair : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2184
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2243
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    :goto_0
    return-object v10

    .line 2187
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "agent= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2191
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2192
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .line 2193
    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    move/from16 v5, v16

    .line 2194
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2195
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v13

    .line 2196
    .local v13, "uriresource":I
    const/4 v2, -0x1

    if-ne v13, v2, :cond_2

    const/4 v13, 0x1

    .line 2198
    :cond_2
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2199
    .local v12, "argBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "ismdm"

    move/from16 v0, p5

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2201
    if-eqz p5, :cond_4

    if-eqz p4, :cond_4

    .line 2202
    const-string v2, "callerUid"

    const-string v3, "admin_id"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2203
    const-string/jumbo v2, "ownerUid"

    const-string v3, "admin_id"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2204
    const-string/jumbo v2, "renew"

    const-string/jumbo v3, "renew"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2206
    const-string v2, "allow_wifi"

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2207
    const-string/jumbo v2, "resource"

    const/4 v3, 0x3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2211
    :goto_1
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "userd id from MDM = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    const-string/jumbo v2, "user_id"

    const-string/jumbo v3, "user_id"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2213
    const-string/jumbo v2, "extraArgs"

    move-object/from16 v0, p4

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2221
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2222
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    move/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 2223
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! importKeyPairInternal is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2225
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2209
    .end local v14    # "id":J
    :cond_3
    const-string/jumbo v2, "resource"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2215
    :cond_4
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2216
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2217
    const-string/jumbo v2, "resource"

    invoke-virtual {v12, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2218
    const-string/jumbo v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 2228
    .restart local v14    # "id":J
    :cond_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2231
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "importKeyPairInternal KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "importKeyPairInternal KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "importKeyPairInternal KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .line 2237
    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_6

    .line 2238
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2240
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2243
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v11, v2, v0, v1, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    goto/16 :goto_0
.end method

.method private isCallFromSystem(I)Z
    .locals 10
    .param p1, "adminUid"    # I

    .prologue
    .line 3952
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isCallFromSystem adminUid-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    const/4 v6, 0x0

    .line 3955
    .local v6, "status":Z
    :try_start_0
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 3956
    .local v5, "pkgs":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 3957
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 3958
    .local v4, "pkgName":Ljava/lang/String;
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isCallFromSystem pkgName-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3959
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3960
    const-string v7, "UcmService"

    const-string/jumbo v8, "isCallFromSystem match found...."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3961
    const/4 v6, 0x1

    .line 3969
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgs":[Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isCallFromSystem status-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3970
    return v6

    .line 3957
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v5    # "pkgs":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3966
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3967
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isCallFromSystem e-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 310
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 312
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x40

    invoke-virtual {v1, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 315
    .local v3, "targetPkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android"

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 318
    .local v2, "sys":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v5, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .line 320
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "sys":Landroid/content/pm/PackageInfo;
    .end local v3    # "targetPkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v4

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private isSystemStorage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 292
    const-string v0, "com.samsung.ucs.agent.ese"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.ucs.agent.boot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    :cond_0
    const/4 v0, 0x1

    .line 295
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidFormFactor(Ljava/lang/String;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, "status":Z
    if-eqz p1, :cond_1

    .line 586
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 598
    const/4 v0, 0x0

    .line 601
    :cond_1
    :goto_1
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidFormFactor type-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return v0

    .line 586
    :sswitch_0
    const-string/jumbo v2, "eSE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "eSE1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "SIM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "SIM1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "SIM2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "SD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "SD1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v2, "reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    .line 595
    :pswitch_0
    const/4 v0, 0x1

    .line 596
    goto :goto_1

    .line 586
    :sswitch_data_0
    .sparse-switch
        0xa51 -> :sswitch_5
        0x14000 -> :sswitch_6
        0x140b7 -> :sswitch_2
        0x18577 -> :sswitch_0
        0x26d65a -> :sswitch_3
        0x26d65b -> :sswitch_4
        0x2f299a -> :sswitch_1
        0x6761d4f -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidMsgType(I)Z
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 1198
    const/4 v0, 0x0

    .line 1199
    .local v0, "status":Z
    packed-switch p1, :pswitch_data_0

    .line 1206
    const/4 v0, 0x0

    .line 1208
    :goto_0
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidMsgType type-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    return v0

    .line 1203
    :pswitch_0
    const/4 v0, 0x1

    .line 1204
    goto :goto_0

    .line 1199
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidSCPProtocol(I)Z
    .locals 4
    .param p1, "protocolType"    # I

    .prologue
    .line 1182
    const/4 v0, 0x0

    .line 1183
    .local v0, "status":Z
    packed-switch p1, :pswitch_data_0

    .line 1191
    const/4 v0, 0x0

    .line 1193
    :goto_0
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidSCPProtocol protocolType-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    return v0

    .line 1188
    :pswitch_0
    const/4 v0, 0x1

    .line 1189
    goto :goto_0

    .line 1183
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private listExposedProvidersInternal(Z)[Landroid/os/Bundle;
    .locals 8
    .param p1, "ismdmcaller"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2534
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2535
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2537
    .local v3, "finalagents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 2538
    .local v0, "agent":Landroid/os/Bundle;
    const-string/jumbo v5, "uniqueId"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2539
    .local v2, "cs_id":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2540
    :cond_0
    const-string v5, "UcmService"

    const-string v6, "WARNING!!!! null/empty ID returned for agent bundle. Skipping agent."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2543
    :cond_1
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2544
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING!!!! Obscure CS agent bundle. Skipping agent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2547
    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2549
    .end local v0    # "agent":Landroid/os/Bundle;
    .end local v2    # "cs_id":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/os/Bundle;

    return-object v5
.end method

.method private listProvidersInternal(Z)[Landroid/os/Bundle;
    .locals 12
    .param p1, "ismdmcaller"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2553
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2554
    .local v3, "uid":I
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    .line 2555
    .local v2, "user_id":I
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2578
    :goto_0
    return-object v5

    .line 2558
    :cond_0
    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "listProviders "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " and ismdmcaller-"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2560
    .local v6, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 2561
    .local v1, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v1, :cond_1

    .line 2565
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2566
    .local v10, "id":J
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2567
    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WARNING!!!! access NOT allowed for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v9, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2572
    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;

    move-result-object v7

    .line 2573
    .local v7, "cs":Landroid/os/Bundle;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2575
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 2577
    .end local v1    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v7    # "cs":Landroid/os/Bundle;
    .end local v10    # "id":J
    :cond_3
    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listProviders filtered "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    move-object v5, v0

    goto/16 :goto_0
.end method

.method private processAdminConfigRequest(ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "adminId"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 625
    const-string v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processAdminConfigRequest is called...adminId-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", uri-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v7, 0x1

    .line 628
    .local v7, "status":Z
    if-eqz p3, :cond_1

    .line 629
    :try_start_0
    invoke-static {p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 630
    .local v4, "pluginName":Ljava/lang/String;
    const-string v1, "applet_location"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 631
    .local v2, "appletLocation":Ljava/lang/String;
    const-string v1, "applet_id"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 632
    .local v3, "aid":[B
    const-string v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processAdminConfigRequest is called...appletLocation-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", pluginName-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-direct {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidFormFactor(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 635
    const-string/jumbo v1, "reset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 636
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const-string v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processAdminConfigRequest removed pluginName-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 661
    .end local v2    # "appletLocation":Ljava/lang/String;
    .end local v3    # "aid":[B
    .end local v4    # "pluginName":Ljava/lang/String;
    :cond_1
    :goto_1
    return v7

    .line 641
    .restart local v2    # "appletLocation":Ljava/lang/String;
    .restart local v3    # "aid":[B
    .restart local v4    # "pluginName":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 642
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    :cond_3
    new-instance v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLjava/lang/String;I)V

    .line 645
    .local v0, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 646
    const-string v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processAdminConfigRequest added pluginName-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 658
    .end local v0    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v2    # "appletLocation":Ljava/lang/String;
    .end local v3    # "aid":[B
    .end local v4    # "pluginName":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 659
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processAdminConfigRequest Exception"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 652
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "appletLocation":Ljava/lang/String;
    .restart local v3    # "aid":[B
    .restart local v4    # "pluginName":Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_1

    .line 653
    const/4 v7, 0x0

    .line 654
    :try_start_1
    const-string v1, "UcmService"

    const-string/jumbo v5, "processAdminConfigRequest not valid form factor"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private readPersistentAppletsInfoLocked()V
    .locals 20

    .prologue
    .line 739
    const-string v2, "UcmService"

    const-string/jumbo v18, "readPersistentAppletsInfoLocked is called..."

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v12, 0x0

    .line 744
    .local v12, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v12

    .line 746
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 747
    .local v15, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    invoke-interface {v15, v12, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 748
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    .line 750
    .local v11, "eventType":I
    :goto_0
    const/4 v2, 0x2

    if-eq v11, v2, :cond_0

    const/4 v2, 0x1

    if-eq v11, v2, :cond_0

    .line 751
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    goto :goto_0

    .line 753
    :cond_0
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 754
    .local v16, "tagName":Ljava/lang/String;
    const-string v2, "applets"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 755
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 757
    :cond_1
    const/4 v2, 0x2

    if-ne v11, v2, :cond_3

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v2, v0, :cond_3

    .line 758
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 759
    const-string v2, "applet"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 761
    const/4 v2, 0x0

    const-string/jumbo v18, "pluginName"

    move-object/from16 v0, v18

    invoke-interface {v15, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 762
    .local v5, "pluginName":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v18, "appletLocation"

    move-object/from16 v0, v18

    invoke-interface {v15, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 763
    .local v3, "appletLocation":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v18, "adminId"

    move-object/from16 v0, v18

    invoke-interface {v15, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 764
    .local v7, "adminId":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v18, "aid"

    move-object/from16 v0, v18

    invoke-interface {v15, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 766
    .local v8, "aid":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 767
    .local v6, "admin":I
    const/4 v4, 0x0

    .line 768
    .local v4, "aidByte":[B
    if-eqz v8, :cond_2

    .line 769
    invoke-static {v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 771
    :cond_2
    new-instance v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLjava/lang/String;I)V

    .line 772
    .local v1, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    .end local v1    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v3    # "appletLocation":Ljava/lang/String;
    .end local v4    # "aidByte":[B
    .end local v5    # "pluginName":Ljava/lang/String;
    .end local v6    # "admin":I
    .end local v7    # "adminId":Ljava/lang/String;
    .end local v8    # "aid":Ljava/lang/String;
    :cond_3
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    .line 778
    const/4 v2, 0x1

    if-ne v11, v2, :cond_1

    .line 783
    :cond_4
    if-eqz v12, :cond_5

    .line 785
    :try_start_1
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 791
    .end local v11    # "eventType":I
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "tagName":Ljava/lang/String;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 792
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 793
    .local v14, "key":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    .line 794
    .local v17, "value":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    const-string v2, "UcmService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PersistentApplet  key-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const-string v2, "UcmService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PersistentApplet  pluginName-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const-string v2, "UcmService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PersistentApplet  AID-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const-string v2, "UcmService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PersistentApplet  appletLocation-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v2, "UcmService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PersistentApplet  adminId-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 780
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "value":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    :catch_0
    move-exception v9

    .line 781
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "UcmService"

    const-string v18, "Error reading persistent applet info, starting from scratch"

    move-object/from16 v0, v18

    invoke-static {v2, v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 783
    if-eqz v12, :cond_5

    .line 785
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 786
    :catch_1
    move-exception v2

    goto/16 :goto_1

    .line 783
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_6

    .line 785
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 787
    :cond_6
    :goto_3
    throw v2

    .line 786
    .restart local v11    # "eventType":I
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "tagName":Ljava/lang/String;
    :catch_2
    move-exception v2

    goto/16 :goto_1

    .end local v11    # "eventType":I
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "tagName":Ljava/lang/String;
    :catch_3
    move-exception v18

    goto :goto_3

    .line 801
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_7
    return-void
.end method

.method private readPersistentServicesLocked()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v12, 0x1

    .line 835
    const-string v11, "UcmService"

    const-string/jumbo v13, "readPersistentServicesLocked is called..."

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v3, 0x0

    .line 839
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    move v11, v12

    :goto_0
    iput-boolean v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFileDidNotExist:Z

    .line 840
    iget-boolean v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFileDidNotExist:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_2

    .line 874
    if-eqz v3, :cond_0

    .line 876
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 888
    :cond_0
    :goto_1
    return-void

    .line 839
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 843
    :cond_2
    :try_start_2
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    if-nez v11, :cond_3

    .line 844
    const-string v11, "UcmService"

    const-string/jumbo v12, "persistent service list is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 874
    if-eqz v3, :cond_0

    .line 876
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 877
    :catch_0
    move-exception v11

    goto :goto_1

    .line 847
    :cond_3
    :try_start_4
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 848
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 849
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 850
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v6, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 851
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 853
    .local v2, "eventType":I
    :goto_2
    if-eq v2, v14, :cond_4

    if-eq v2, v12, :cond_4

    .line 854
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_2

    .line 856
    :cond_4
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 857
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v11, "services"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 858
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 860
    :cond_5
    if-ne v2, v14, :cond_6

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-ne v11, v14, :cond_6

    .line 861
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 862
    const-string/jumbo v11, "service"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 863
    const/4 v11, 0x0

    const-string/jumbo v13, "uid"

    invoke-interface {v6, v11, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 864
    .local v8, "uidString":Ljava/lang/String;
    const/4 v11, 0x0

    const-string/jumbo v13, "uniqueId"

    invoke-interface {v6, v11, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 865
    .local v9, "uniqueString":Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    .end local v8    # "uidString":Ljava/lang/String;
    .end local v9    # "uniqueString":Ljava/lang/String;
    :cond_6
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    .line 869
    if-ne v2, v12, :cond_5

    .line 874
    :cond_7
    if-eqz v3, :cond_8

    .line 876
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 882
    .end local v2    # "eventType":I
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_8
    :goto_3
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 883
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 884
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 885
    .local v10, "value":Ljava/lang/Integer;
    const-string v11, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PersistentServices  key-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const-string v11, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PersistentServices  value-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 871
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/Integer;
    :catch_1
    move-exception v0

    .line 872
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v11, "UcmService"

    const-string v12, "Error reading persistent services, starting from scratch"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 874
    if-eqz v3, :cond_8

    .line 876
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 877
    :catch_2
    move-exception v11

    goto :goto_3

    .line 874
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    if-eqz v3, :cond_9

    .line 876
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 878
    :cond_9
    :goto_5
    throw v11

    .line 877
    :catch_3
    move-exception v11

    goto/16 :goto_1

    .restart local v2    # "eventType":I
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "tagName":Ljava/lang/String;
    :catch_4
    move-exception v11

    goto :goto_3

    .end local v2    # "eventType":I
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    :catch_5
    move-exception v12

    goto :goto_5
.end method

.method private refreshAgentList(ILandroid/os/Bundle;)V
    .locals 23
    .param p1, "userId"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 437
    :try_start_0
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "*****refreshAgentList userId-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is called***"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 439
    .local v14, "pm":Landroid/content/pm/PackageManager;
    move/from16 v0, p1

    invoke-static {v14, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->resolveAllowedAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v16

    .line 440
    .local v16, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 441
    .local v12, "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 442
    const/4 v2, 0x0

    .line 443
    .local v2, "activatedPackage":Ljava/lang/String;
    const/4 v7, 0x0

    .line 445
    .local v7, "expiredPackage":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 446
    const-string/jumbo v20, "event"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 447
    .local v6, "event":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_3

    .line 448
    const-string/jumbo v20, "packageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 452
    :cond_0
    :goto_0
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "event "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", activatedPackage-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",expiredPackage-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v6    # "event":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 455
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "mPersistentServices size is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 458
    .local v15, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {v15}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v11

    .line 459
    .local v11, "name":Landroid/content/ComponentName;
    if-nez v11, :cond_4

    .line 460
    const-string v20, "UcmService"

    const-string/jumbo v21, "name is empty"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 578
    .end local v2    # "activatedPackage":Ljava/lang/String;
    .end local v7    # "expiredPackage":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "name":Landroid/content/ComponentName;
    .end local v12    # "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;>;"
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v16    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v5

    .line 579
    .local v5, "e":Ljava/lang/Exception;
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exceptioon in refreshAgentList main- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 449
    .restart local v2    # "activatedPackage":Ljava/lang/String;
    .restart local v6    # "event":I
    .restart local v7    # "expiredPackage":Ljava/lang/String;
    .restart local v12    # "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;>;"
    .restart local v14    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v6, v0, :cond_0

    .line 450
    :try_start_1
    const-string/jumbo v20, "packageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 463
    .end local v6    # "event":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "name":Landroid/content/ComponentName;
    .restart local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    new-instance v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;-><init>(Landroid/content/Context;Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/content/ComponentName;)V

    .line 464
    .local v3, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v10, 0x0

    .line 465
    .local v10, "isValidAgent":Z
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 469
    .local v4, "agentPackageName":Ljava/lang/String;
    :try_start_2
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-------Processing started for agentPackageName----- -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    if-eqz v7, :cond_5

    .line 471
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 472
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "agentPackageName -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is not an active plugin. Its license is expired. Ignoring it..."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 554
    :catch_1
    move-exception v5

    .line 555
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exceptioon in refreshAgentList loop - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 477
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_4
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  agentPackageName -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is an active plugin"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v20, "UcmService"

    const-string v21, "  Check if caller has UCS Plugin permission..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 480
    :try_start_5
    const-string v20, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_9

    .line 481
    const-string v20, "UcmService"

    const-string v21, "  Agent has UCS PLUGIN permission. Processing further..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemStorage(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 483
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  agentPackageName "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is system storage. Checking system signature"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 485
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  system storage found - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is not valid. Ignoring it..."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 495
    :catch_2
    move-exception v17

    .line 496
    .local v17, "se":Ljava/lang/Exception;
    :try_start_6
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  Exception se-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 488
    .end local v17    # "se":Ljava/lang/Exception;
    :cond_6
    :try_start_7
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  Valid system storage found is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 500
    :cond_7
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_12

    .line 501
    if-eqz v15, :cond_8

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v20, v0

    if-nez v20, :cond_a

    .line 503
    :cond_8
    const-string v20, "UcmService"

    const-string/jumbo v21, "resolveInfo null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    .line 492
    :cond_9
    :try_start_9
    const-string v20, "UcmService"

    const-string v21, "  Agent don\'t has UCS PLUGIN permission. Ignoring it..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 506
    :cond_a
    :try_start_a
    new-instance v20, Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v20

    invoke-virtual {v3, v15, v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->initialize(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->size()I

    move-result v20

    if-lez v20, :cond_10

    .line 509
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 510
    .local v19, "uniqueId":Ljava/lang/String;
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    move/from16 v18, v0

    .line 511
    .local v18, "serviceUid":I
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  Agent uniqueId-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " and serviceUid-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 514
    .local v13, "persistUid":I
    move/from16 v0, v18

    if-ne v13, v0, :cond_c

    .line 515
    const-string v20, "UcmService"

    const-string v21, "  Matched found in mPersistentServices map"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/4 v10, 0x1

    .line 543
    .end local v13    # "persistUid":I
    .end local v18    # "serviceUid":I
    .end local v19    # "uniqueId":Ljava/lang/String;
    :cond_b
    :goto_3
    if-eqz v10, :cond_11

    .line 544
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  Adding new agent -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 518
    .restart local v13    # "persistUid":I
    .restart local v18    # "serviceUid":I
    .restart local v19    # "uniqueId":Ljava/lang/String;
    :cond_c
    const-string v20, "UcmService"

    const-string v21, "  UID comparision failed for agent. Ignoring it.."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 521
    .end local v13    # "persistUid":I
    :cond_d
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 522
    const-string v20, "UcmService"

    const-string v21, "  Agent entry is not in PersistentServices but its system signed agent. Ading it.."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v10, 0x1

    goto :goto_3

    .line 525
    :cond_e
    if-eqz v2, :cond_f

    .line 526
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 527
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  agentPackageName -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is an active plugin"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v10, 0x1

    goto :goto_3

    .line 530
    :cond_f
    if-nez v2, :cond_b

    .line 531
    const-string v20, "UcmService"

    const-string v21, "  Agent entry is not in PersistentServices and it\'s not system signed agent. Ignoring it.."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 536
    .end local v18    # "serviceUid":I
    .end local v19    # "uniqueId":Ljava/lang/String;
    :cond_10
    const-string v20, "UcmService"

    const-string v21, "  mPersistentServices size is 0. Trying to add new agent "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 538
    const-string v20, "UcmService"

    const-string v21, "  Adding system signed agent"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 547
    :cond_11
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " Unbind agent -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->unbind()V

    goto/16 :goto_1

    .line 552
    :cond_12
    invoke-virtual {v12, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    .line 559
    .end local v3    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v4    # "agentPackageName":Ljava/lang/String;
    .end local v10    # "isValidAgent":Z
    .end local v11    # "name":Landroid/content/ComponentName;
    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_13
    const/4 v2, 0x0

    .line 560
    const/4 v7, 0x0

    .line 563
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    :try_start_b
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_15

    .line 564
    invoke-virtual {v12, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 565
    .restart local v3    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14

    .line 566
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  Removing unwanted agent- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_14
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->unbind()V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 563
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 572
    .end local v3    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mServicesLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 573
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->writePersistentServicesLocked()V

    .line 575
    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentServicesLocked()V

    .line 576
    monitor-exit v21

    goto/16 :goto_2

    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v20
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
.end method

.method public static resolveAllowedAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 895
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resolveAllowedAgents for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    sget-object v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

    const/16 v6, 0x80

    invoke-virtual {p0, v5, v6, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 898
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 899
    .local v0, "allowedAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 900
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_0

    .line 902
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    .line 904
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 905
    .local v2, "packageName":Ljava/lang/String;
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 909
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v0
.end method

.method private sendStateChangeBroadcast(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 3018
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.ucs.ucsservice.stateblocked"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3019
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3020
    .local v0, "csname":Ljava/lang/String;
    const-string v2, "UCS_STATE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3021
    const-string v2, "UCS_CSNAME"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3022
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast CSNAME "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3024
    return-void
.end method

.method private setODEConfigInFile(I)V
    .locals 9
    .param p1, "config"    # I

    .prologue
    .line 3543
    const-string v7, "UcmService"

    const-string/jumbo v8, "setODEConfigInFile"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    new-instance v6, Ljava/io/File;

    const-string v7, "/efs/sec_efs"

    const-string/jumbo v8, "odeConfig"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3545
    .local v6, "odeConfigFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    .line 3546
    .local v3, "existFile":Z
    const/4 v4, 0x0

    .line 3548
    .local v4, "fis":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3549
    .end local v4    # "fis":Ljava/io/FileOutputStream;
    .local v5, "fis":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v5, p1}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v5

    .line 3558
    .end local v5    # "fis":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v4, :cond_0

    .line 3560
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3566
    :cond_0
    :goto_1
    return-void

    .line 3550
    :catch_0
    move-exception v1

    .line 3551
    .local v1, "e1":Ljava/io/FileNotFoundException;
    :goto_2
    const-string v7, "UcmService"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3552
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3553
    .end local v1    # "e1":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 3554
    .local v2, "e2":Ljava/io/IOException;
    :goto_3
    const-string v7, "UcmService"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3561
    .end local v2    # "e2":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 3562
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "UcmService"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3553
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileOutputStream;
    .restart local v5    # "fis":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 3550
    .end local v4    # "fis":Ljava/io/FileOutputStream;
    .restart local v5    # "fis":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private updateKeyguardConfig()V
    .locals 6

    .prologue
    .line 3974
    const-string v4, "UcmService"

    const-string/jumbo v5, "updateKeyguardConfig"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3976
    :try_start_0
    const-string/jumbo v4, "persist.keyguard.ucs"

    const-string v5, "None"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3977
    .local v3, "keyguardUsed":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string/jumbo v4, "yes"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3978
    const-string v4, "UcmService"

    const-string/jumbo v5, "remove useless keyguard config file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3979
    new-instance v2, Ljava/io/File;

    const-string v4, "/efs/sec_efs"

    const-string/jumbo v5, "keyguardConfig"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3980
    .local v2, "keyguardConfigFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 3981
    .local v1, "existFile":Z
    if-nez v1, :cond_1

    .line 3982
    const-string v4, "UcmService"

    const-string/jumbo v5, "keyguard config file does not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3991
    .end local v1    # "existFile":Z
    .end local v2    # "keyguardConfigFile":Ljava/io/File;
    .end local v3    # "keyguardUsed":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3984
    .restart local v1    # "existFile":Z
    .restart local v2    # "keyguardConfigFile":Ljava/io/File;
    .restart local v3    # "keyguardUsed":Ljava/lang/String;
    :cond_1
    const-string v4, "UcmService"

    const-string/jumbo v5, "keyguard config file exist so delete it"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3985
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3988
    .end local v1    # "existFile":Z
    .end local v2    # "keyguardConfigFile":Ljava/io/File;
    .end local v3    # "keyguardUsed":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3989
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private verifyPassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v0, -0x1

    .line 3583
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyPassword : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v4, v1, :cond_1

    .line 3585
    :cond_0
    const-string v1, "UcmService"

    const-string/jumbo v2, "uri is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    :goto_0
    return v0

    .line 3589
    :cond_1
    if-eqz p2, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v4, v1, :cond_3

    .line 3590
    :cond_2
    const-string v1, "UcmService"

    const-string/jumbo v2, "password is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3596
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writePersistentAppletsInfoLocked()V
    .locals 10

    .prologue
    .line 703
    const-string v7, "UcmService"

    const-string/jumbo v8, "writePersistentAppletsInfoLocked is called..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v3, 0x0

    .line 707
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 708
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 709
    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v6, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 710
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 711
    const-string/jumbo v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 712
    const/4 v7, 0x0

    const-string v8, "applets"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 713
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 714
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 715
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    .line 716
    .local v0, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persistent  key-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/4 v7, 0x0

    const-string v8, "applet"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 718
    const/4 v7, 0x0

    const-string v8, "appletLocation"

    iget-object v9, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 719
    const/4 v7, 0x0

    const-string/jumbo v8, "pluginName"

    iget-object v9, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 720
    const/4 v7, 0x0

    const-string v8, "adminId"

    iget v9, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 721
    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    if-eqz v7, :cond_0

    .line 722
    const/4 v7, 0x0

    const-string v8, "aid"

    iget-object v9, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    invoke-direct {p0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->convertByteToString([B)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 724
    :cond_0
    const/4 v7, 0x0

    const-string v8, "applet"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 729
    .end local v0    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .line 730
    .local v1, "e1":Ljava/io/IOException;
    const-string v7, "UcmService"

    const-string v8, "Error writing accounts"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    if-eqz v3, :cond_1

    .line 732
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 735
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    .line 726
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    const/4 v7, 0x0

    :try_start_1
    const-string v8, "applets"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 727
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 728
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private writePersistentServicesLocked()V
    .locals 8

    .prologue
    .line 808
    const/4 v2, 0x0

    .line 810
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 811
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 812
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v5, "utf-8"

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 813
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 814
    const-string/jumbo v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 815
    const/4 v5, 0x0

    const-string/jumbo v6, "services"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 816
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 817
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v5, 0x0

    const-string/jumbo v6, "service"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 818
    const/4 v5, 0x0

    const-string/jumbo v6, "uid"

    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 819
    const/4 v5, 0x0

    const-string/jumbo v6, "uniqueId"

    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 820
    const/4 v5, 0x0

    const-string/jumbo v6, "service"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 825
    .end local v0    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .line 826
    .local v1, "e1":Ljava/io/IOException;
    const-string v5, "UcmService"

    const-string v6, "Error writing accounts"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 827
    if-eqz v2, :cond_0

    .line 828
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 831
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-void

    .line 822
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    const-string/jumbo v6, "services"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 823
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 824
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public APDUCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "apdu"    # [B
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x10

    const/16 v9, 0xe

    const/4 v8, 0x1

    .line 3246
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "APDUCommand : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3249
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 3250
    :cond_0
    const-string v5, "UcmService"

    const-string/jumbo v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3295
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3255
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    if-nez p2, :cond_2

    .line 3256
    const-string v5, "UcmService"

    const-string v6, "apdu is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3258
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3261
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    .line 3262
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_3

    .line 3263
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3268
    :goto_1
    if-nez v0, :cond_4

    .line 3269
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3271
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3265
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_3
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 3274
    :cond_4
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 3275
    new-instance v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 3276
    .local v4, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 3277
    iget-object v5, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 3278
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 3281
    .end local v4    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 3282
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_6

    .line 3283
    const-string v5, "UcmService"

    const-string/jumbo v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3285
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3288
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3289
    if-nez v1, :cond_7

    .line 3290
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3292
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3293
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_7
    move-object v2, v1

    .line 3295
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public authenticatePin(Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3013
    const-string v0, "UcmService"

    const-string/jumbo v1, "need to check authenticatePin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    const/4 v0, 0x0

    return v0
.end method

.method public changePin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "oldPin"    # Ljava/lang/String;
    .param p3, "newPin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xe

    const/16 v9, 0x10

    const/4 v8, 0x1

    .line 3142
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changePin : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3143
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3145
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 3146
    :cond_0
    const-string v5, "UcmService"

    const-string/jumbo v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3198
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3151
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    if-eqz p2, :cond_2

    const-string v5, ""

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_3

    .line 3152
    :cond_2
    const-string v5, "UcmService"

    const-string/jumbo v6, "oldPin is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3154
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3157
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_3
    if-eqz p3, :cond_4

    const-string v5, ""

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_5

    .line 3158
    :cond_4
    const-string v5, "UcmService"

    const-string/jumbo v6, "newPin is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3160
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3163
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_5
    const/4 v0, 0x0

    .line 3164
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_6

    .line 3165
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3170
    :goto_1
    if-nez v0, :cond_7

    .line 3171
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3173
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3167
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 3176
    :cond_7
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 3177
    new-instance v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 3178
    .local v4, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 3179
    iget-object v5, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 3180
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 3183
    .end local v4    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_8
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 3184
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_9

    .line 3185
    const-string v5, "UcmService"

    const-string/jumbo v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3187
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3190
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_9
    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3191
    if-nez v1, :cond_a

    .line 3192
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3194
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3195
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_a
    move-object v2, v1

    .line 3198
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public configureKeyguardSettings(Ljava/lang/String;)Z
    .locals 18
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 3347
    if-nez p1, :cond_0

    .line 3348
    const-string v3, "UcmService"

    const-string/jumbo v16, "disable keyguard in UCS"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    const-string/jumbo v3, "persist.keyguard.ucs"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3350
    const-string/jumbo v3, "persist.keyguard.ucs.csname"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3351
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteKeyguardConfig()Z

    move-result v3

    .line 3398
    :goto_0
    return v3

    .line 3354
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_1

    .line 3355
    const-string v3, "UcmService"

    const-string/jumbo v16, "uri is empty"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    const/4 v3, 0x0

    goto :goto_0

    .line 3359
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 3360
    .local v10, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    iget-object v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3362
    iget-object v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    if-eqz v3, :cond_2

    .line 3363
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3364
    .local v11, "csName":Ljava/lang/String;
    const-string/jumbo v3, "persist.keyguard.ucs"

    const-string/jumbo v16, "yes"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3365
    const-string/jumbo v3, "persist.keyguard.ucs.csname"

    invoke-static {v3, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3367
    iget-object v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 3369
    .local v2, "csNameForProp":[B
    iget-object v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v15, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    .line 3370
    .local v15, "storageType":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-result-object v14

    .line 3371
    .local v14, "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    if-eqz v14, :cond_3

    iget-object v3, v14, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 3372
    iget-object v15, v14, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    .line 3375
    :cond_3
    invoke-static {v15}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getStorageTypeIndex(Ljava/lang/String;)I

    move-result v4

    .line 3376
    .local v4, "storageTypeIndex":I
    if-gez v4, :cond_4

    .line 3377
    const-string v3, "UcmService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "UCM does not support this storage type for KG : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3381
    :cond_4
    iget-object v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v12, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledSCP:Ljava/lang/String;

    .line 3382
    .local v12, "enabledSCP":Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getSCPTypeIndex(Ljava/lang/String;)I

    move-result v5

    .line 3383
    .local v5, "scpIndex":I
    if-gez v5, :cond_5

    .line 3384
    const-string v3, "UcmService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "UCM does not support this SCP type : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3388
    :cond_5
    iget-object v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v6, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    .line 3389
    .local v6, "pinMinLength":I
    iget-object v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    .line 3390
    .local v7, "pinMaxLength":I
    iget-object v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v8, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    .line 3391
    .local v8, "pukMinLength":I
    iget-object v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v9, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    .line 3393
    .local v9, "pukMaxLength":I
    new-instance v1, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    iget-object v3, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    invoke-direct/range {v1 .. v9}, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;-><init>([B[BIIIIII)V

    .line 3394
    .local v1, "keyProp":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveKeyguardConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z

    move-result v3

    goto/16 :goto_0

    .line 3398
    .end local v1    # "keyProp":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .end local v2    # "csNameForProp":[B
    .end local v4    # "storageTypeIndex":I
    .end local v5    # "scpIndex":I
    .end local v6    # "pinMinLength":I
    .end local v7    # "pinMaxLength":I
    .end local v8    # "pukMinLength":I
    .end local v9    # "pukMaxLength":I
    .end local v10    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v11    # "csName":Ljava/lang/String;
    .end local v12    # "enabledSCP":Ljava/lang/String;
    .end local v14    # "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v15    # "storageType":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public configureODESettings(Ljava/lang/String;)I
    .locals 28
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 3403
    const-string v25, "UcmService"

    const-string v26, "configureODESettings"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    const-string/jumbo v25, "ro.crypto.state"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3405
    .local v6, "crypto_state":Ljava/lang/String;
    const-string/jumbo v25, "ro.vold.forceencryption"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3406
    .local v11, "force_crypto_state":Ljava/lang/String;
    const-string/jumbo v25, "ro.boot.ucs_mode"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3407
    .local v24, "ucs_flag":Ljava/lang/String;
    const-string/jumbo v25, "encrypted"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    const-string v25, "1"

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 3408
    const-string v25, "UcmService"

    const-string/jumbo v26, "device is encrypted state in non-default encryption device."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3409
    const v25, 0xc000200

    .line 3519
    :goto_0
    return v25

    .line 3411
    :cond_0
    const-string v25, "2"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 3412
    const-string v25, "UcmService"

    const-string/jumbo v26, "device is encrypted with UCS so cannot change configuration"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    const v25, 0xc000200

    goto :goto_0

    .line 3415
    :cond_1
    if-nez p1, :cond_3

    .line 3416
    const-string v25, "UcmService"

    const-string/jumbo v26, "disable configureODESettings in UCS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3417
    const-string/jumbo v25, "persist.security.ucs"

    const-string v26, ""

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3418
    const-string/jumbo v25, "persist.security.ucs.csname"

    const-string v26, ""

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3419
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteODEConfig()Z

    move-result v8

    .line 3420
    .local v8, "delete":Z
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v0, v8, :cond_2

    .line 3421
    const/16 v25, 0x0

    goto :goto_0

    .line 3423
    :cond_2
    const/16 v25, 0x10d

    goto :goto_0

    .line 3426
    .end local v8    # "delete":Z
    :cond_3
    const/16 v25, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 3427
    const-string v25, "UcmService"

    const-string/jumbo v26, "uri is empty"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    const/16 v25, 0x10

    goto :goto_0

    .line 3431
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    if-nez v25, :cond_6

    .line 3432
    :cond_5
    const/16 v25, 0xe

    goto :goto_0

    .line 3435
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3436
    .local v16, "pluginName":Ljava/lang/String;
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 3437
    :cond_7
    const/16 v25, 0xe

    goto/16 :goto_0

    .line 3440
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 3441
    .local v3, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v3, :cond_9

    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    .line 3444
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 3445
    const-string v25, "UcmService"

    const-string v26, "Find UcmAgentWrapper"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isODESupport:Z

    move/from16 v25, v0

    if-nez v25, :cond_a

    .line 3448
    const-string v25, "UcmService"

    const-string v26, "This agent dose not support ODE"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    const/16 v25, 0x3

    goto/16 :goto_0

    .line 3452
    :cond_a
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    .line 3453
    .local v2, "AID":[B
    if-eqz v2, :cond_b

    array-length v0, v2

    move/from16 v25, v0

    if-nez v25, :cond_c

    .line 3454
    :cond_b
    const-string v25, "UcmService"

    const-string v26, "AID is empty"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3455
    const/16 v25, 0x4

    goto/16 :goto_0

    .line 3456
    :cond_c
    array-length v0, v2

    move/from16 v25, v0

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_d

    array-length v0, v2

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_e

    .line 3457
    :cond_d
    const-string v25, "UcmService"

    const-string v26, "AID range is not proper"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    const/16 v25, 0x4

    goto/16 :goto_0

    .line 3461
    :cond_e
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3462
    .local v22, "storageType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-result-object v17

    .line 3463
    .local v17, "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    if-eqz v17, :cond_f

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f

    .line 3464
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3466
    :cond_f
    invoke-static/range {v22 .. v22}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getStorageTypeIndex(Ljava/lang/String;)I

    move-result v23

    .line 3467
    .local v23, "storageTypeIndex":I
    if-gez v23, :cond_10

    .line 3468
    const-string v25, "UcmService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "UCM does not support this storage type : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    const/16 v25, 0x4

    goto/16 :goto_0

    .line 3472
    :cond_10
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledSCP:Ljava/lang/String;

    .line 3473
    .local v9, "enabledSCP":Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getSCPTypeIndex(Ljava/lang/String;)I

    move-result v21

    .line 3474
    .local v21, "scpIndex":I
    if-gez v21, :cond_11

    .line 3475
    const-string v25, "UcmService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "UCM does not support this SCP type : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3476
    const/16 v25, 0x4

    goto/16 :goto_0

    .line 3479
    :cond_11
    const-string/jumbo v25, "persist.security.ucs"

    const-string v26, "1"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3480
    const-string/jumbo v25, "persist.security.ucs.csname"

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3482
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledWrap:I

    .line 3484
    .local v10, "enabledWrap":I
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v15, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    .line 3485
    .local v15, "pinMinLength":I
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v14, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    .line 3486
    .local v14, "pinMaxLength":I
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v5, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    .line 3487
    .local v5, "authMode":I
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    .line 3488
    .local v4, "authMaxCnt":I
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    move/from16 v19, v0

    .line 3489
    .local v19, "pukMinLength":I
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    move/from16 v18, v0

    .line 3490
    .local v18, "pukMaxLength":I
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 3491
    .local v7, "csName":[B
    if-eqz v7, :cond_12

    array-length v0, v7

    move/from16 v25, v0

    if-nez v25, :cond_13

    .line 3492
    :cond_12
    const-string v25, "UcmService"

    const-string/jumbo v26, "csName is empty"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3493
    const/16 v25, 0x4

    goto/16 :goto_0

    .line 3496
    :cond_13
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v13

    .line 3498
    .local v13, "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    const/16 v25, 0x1

    move/from16 v0, v25

    iput v0, v13, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 3499
    iput-object v2, v13, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    .line 3500
    move/from16 v0, v23

    iput v0, v13, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    .line 3501
    move/from16 v0, v21

    iput v0, v13, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    .line 3502
    iput v10, v13, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    .line 3503
    iput v15, v13, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    .line 3504
    iput v14, v13, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 3505
    iput v5, v13, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    .line 3506
    iput v4, v13, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 3507
    move/from16 v0, v19

    iput v0, v13, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    .line 3508
    move/from16 v0, v18

    iput v0, v13, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 3509
    iput-object v7, v13, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    .line 3511
    invoke-static {v13}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z

    move-result v20

    .line 3512
    .local v20, "save":Z
    const/16 v25, 0x1

    move/from16 v0, v25

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 3513
    const-string/jumbo v25, "security.knox_ucs_mode"

    const-string/jumbo v26, "true"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3514
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 3516
    :cond_14
    const/16 v25, 0x10d

    goto/16 :goto_0

    .line 3519
    .end local v2    # "AID":[B
    .end local v3    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v4    # "authMaxCnt":I
    .end local v5    # "authMode":I
    .end local v7    # "csName":[B
    .end local v9    # "enabledSCP":Ljava/lang/String;
    .end local v10    # "enabledWrap":I
    .end local v13    # "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v14    # "pinMaxLength":I
    .end local v15    # "pinMinLength":I
    .end local v17    # "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v18    # "pukMaxLength":I
    .end local v19    # "pukMinLength":I
    .end local v20    # "save":Z
    .end local v21    # "scpIndex":I
    .end local v22    # "storageType":Ljava/lang/String;
    .end local v23    # "storageTypeIndex":I
    :cond_15
    const/16 v25, 0xe

    goto/16 :goto_0
.end method

.method public containsAlias(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 18
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3863
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 3864
    .local v13, "callerUid":I
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3866
    .local v10, "agentResponse":Landroid/os/Bundle;
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containsAlias "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3867
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 3868
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 3869
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3870
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3906
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 3875
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3876
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v5

    .line 3877
    .local v5, "uriuid":I
    const/4 v2, -0x1

    if-ne v5, v2, :cond_1

    move v5, v13

    .line 3878
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 3879
    .local v4, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3880
    .local v16, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 3881
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! containsAlias is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3882
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3883
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3884
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3886
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3889
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 3890
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_3

    .line 3891
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3892
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3893
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3894
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3896
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p2

    invoke-interface {v12, v2, v0, v13}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->containsAlias(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v10

    .line 3897
    if-nez v10, :cond_4

    .line 3898
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3899
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3900
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3901
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3902
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3904
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 3905
    .local v14, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containsAlias Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .line 3906
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public createSecureChannel(ILandroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    .locals 8
    .param p1, "protocolType"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1214
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createSecureChannel protocolType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1216
    .local v4, "uid":I
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    const-string v6, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-interface {v5, v6, v4}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1217
    const-string v5, "UcmService"

    const-string v6, "  Agent don\'t UCS PLUGIN permission. Returning..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    new-instance v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>()V

    .line 1219
    .local v1, "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    const/4 v5, 0x1

    iput v5, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->status:I

    .line 1220
    const/16 v5, 0x41

    iput v5, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->errorCode:I

    .line 1235
    .end local v1    # "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    :goto_0
    return-object v1

    .line 1223
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidSCPProtocol(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1224
    const-string v5, "UcmService"

    const-string v6, "Invalid protocolType..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1227
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1229
    .local v2, "id":J
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v5, v4, p1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->createSecureChannel(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1233
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1230
    :catch_0
    move-exception v0

    .line 1231
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in createSecureChannel -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1233
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public decrypt(Ljava/lang/String;[BLjava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 20
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "algo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1657
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decrypt "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1660
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 1661
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 1662
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1663
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    .line 1729
    :goto_0
    return-object v2

    .line 1667
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 1668
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1669
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v18

    .line 1670
    .local v18, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_1

    move/from16 v5, v18

    .line 1671
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 1672
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v17

    .line 1673
    .local v17, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    const/16 v17, 0x1

    .line 1675
    :cond_2
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 1678
    .local v12, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1679
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 1680
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! decrypt is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1682
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto :goto_0

    .line 1684
    :cond_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1687
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1688
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v19

    .line 1689
    .local v19, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    .line 1690
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    .line 1691
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decrypt new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    .end local v19    # "userId":I
    :cond_4
    :goto_1
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1698
    const-string/jumbo v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1699
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1700
    const-string/jumbo v2, "resource"

    move/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1702
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decrypt KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decrypt KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decrypt KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .line 1708
    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_6

    .line 1709
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1711
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 1693
    .end local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .restart local v19    # "userId":I
    :cond_5
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decrypt. Keeping same userid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1714
    .end local v19    # "userId":I
    .restart local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    :cond_6
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v11, v2, v0, v1, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 1715
    if-nez v10, :cond_7

    .line 1716
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1718
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1719
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 1721
    :cond_7
    const-string v2, "bytearrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 1722
    .local v16, "response":[B
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 1723
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decrypt Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    if-nez v16, :cond_8

    .line 1725
    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for decrypt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1727
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 1729
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected deletAndRefreshAgents(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V
    .locals 3
    .param p1, "agent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 424
    const-string v0, "UcmService"

    const-string/jumbo v1, "deletAndRefreshAgents()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    if-eqz p1, :cond_0

    .line 426
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deletAndRefreshAgents() remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgents()V

    .line 430
    return-void
.end method

.method public delete(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2248
    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object v0

    .line 2249
    .local v0, "pluginResponse":Landroid/os/Bundle;
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UCMERRORTESTING: @CredentialManagerService delete Response from plugin with error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "errorresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    return-object v0
.end method

.method public deleteCertificate(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2255
    const-string/jumbo v4, "deleteCertificate"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2256
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object v0

    .line 2257
    .local v0, "agentResponse":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 2258
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2259
    .restart local v0    # "agentResponse":Landroid/os/Bundle;
    const-string v4, "booleanresponse"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2260
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v1, v0

    .line 2267
    .end local v0    # "agentResponse":Landroid/os/Bundle;
    .local v1, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 2263
    .end local v1    # "agentResponse":Ljava/lang/Object;
    .restart local v0    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const-string v4, "booleanresponse"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 2264
    .local v3, "response":Z
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2265
    .local v2, "errorcode":I
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteCertificate Response:  error code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UCMERRORTESTING: @CredentialManagerService deleteCertificate Response from plugin with error code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 2267
    .restart local v1    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public destroySecureChannel()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1279
    const-string v4, "UcmService"

    const-string/jumbo v5, "destroySecureChannel ..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1281
    .local v1, "uid":I
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    const-string v5, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-interface {v4, v5, v1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1282
    const-string v4, "UcmService"

    const-string v5, "  Agent don\'t UCM PLUGIN permission. Returning..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const/16 v4, 0x41

    .line 1295
    :goto_0
    return v4

    .line 1286
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1288
    .local v2, "id":J
    :try_start_0
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v4, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->destroySecureChannel(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1292
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1289
    :catch_0
    move-exception v0

    .line 1290
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in destroySecureChannel -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1292
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1295
    const/4 v4, 0x1

    goto :goto_0

    .line 1292
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public generateDek(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    .line 1300
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "generateDek "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1305
    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v5, "generateDek"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 1313
    :cond_0
    const-string v5, "UcmService"

    const-string/jumbo v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1315
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    .line 1346
    :goto_0
    return-object v5

    .line 1306
    :catch_0
    move-exception v3

    .line 1307
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1308
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1309
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1318
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    .line 1319
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    .line 1320
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 1325
    :goto_1
    if-nez v0, :cond_3

    .line 1326
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1328
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1322
    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 1330
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v2

    .line 1332
    .local v2, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v2, :cond_4

    .line 1333
    const-string v5, "UcmService"

    const-string/jumbo v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1335
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1337
    :cond_4
    invoke-interface {v2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateDek()Landroid/os/Bundle;

    move-result-object v1

    .line 1338
    if-nez v1, :cond_5

    .line 1339
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1341
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1342
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0

    .line 1344
    :cond_5
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1345
    .local v4, "errorcode":I
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "generateDek response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySize"    # I
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2355
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "generateKeyPair "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 2358
    .local v6, "agentResponse":Landroid/os/Bundle;
    if-nez v6, :cond_0

    .line 2359
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2360
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    const-string v0, "bytearrayresponse"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2361
    const-string/jumbo v0, "errorresponse"

    const/16 v1, 0xd

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v7, v6

    .line 2367
    .end local v6    # "agentResponse":Landroid/os/Bundle;
    .local v7, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 2364
    .end local v7    # "agentResponse":Ljava/lang/Object;
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const-string v0, "bytearrayresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 2365
    .local v9, "response":[B
    const-string/jumbo v0, "errorresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 2366
    .local v8, "errorcode":I
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "generateKeyPair Response:  error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 2367
    .restart local v7    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public generateKeyPairInternal(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySize"    # I
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2336
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "generateKeyPairInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    const-string/jumbo v0, "generateKeyPairInternal"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2339
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 2340
    .local v6, "agentResponse":Landroid/os/Bundle;
    if-nez v6, :cond_0

    .line 2341
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2342
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    const-string v0, "bytearrayresponse"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2343
    const-string/jumbo v0, "errorresponse"

    const/16 v1, 0xd

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v7, v6

    .line 2349
    .end local v6    # "agentResponse":Landroid/os/Bundle;
    .local v7, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 2346
    .end local v7    # "agentResponse":Ljava/lang/Object;
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const-string v0, "bytearrayresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 2347
    .local v9, "response":[B
    const-string/jumbo v0, "errorresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 2348
    .local v8, "errorcode":I
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "generateKeyPairInternal Response:  error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 2349
    .restart local v7    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public generateKeyguardPassword(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xe

    const/4 v11, 0x1

    const/16 v10, 0xd

    .line 1512
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "generateKeyguardPassword "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1515
    .local v1, "agentResponse":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 1516
    .local v5, "password":[B
    if-eqz p1, :cond_0

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v11, v7, :cond_1

    .line 1517
    :cond_0
    const-string v7, "UcmService"

    const-string/jumbo v8, "uri is empty"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    const-string/jumbo v7, "errorresponse"

    const/16 v8, 0x10

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 1566
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 1522
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    const/4 v0, 0x0

    .line 1523
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v7, "boot_test"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v11, v7, :cond_2

    .line 1524
    const-string v7, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 1529
    :goto_1
    if-nez v0, :cond_3

    .line 1530
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "no agent found for Source = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    const-string/jumbo v7, "errorresponse"

    invoke-virtual {v1, v7, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 1532
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 1526
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 1534
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 1536
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_4

    .line 1537
    const-string v7, "UcmService"

    const-string/jumbo v8, "no agentService found"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    const-string/jumbo v7, "errorresponse"

    invoke-virtual {v1, v7, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 1539
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 1542
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_4
    invoke-interface {v3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateKeyguardPassword()Landroid/os/Bundle;

    move-result-object v1

    .line 1543
    if-nez v1, :cond_5

    .line 1544
    const-string v7, "UcmService"

    const-string v8, "ERROR: Null Response received from agentService"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1546
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v7, "errorresponse"

    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 1547
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 1549
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_5
    const-string v7, "bytearrayresponse"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 1550
    const-string/jumbo v7, "errorresponse"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1551
    .local v4, "errorcode":I
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "generateKeyguardPassword Response from plugin:  error code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    if-nez v5, :cond_6

    .line 1554
    const-string v7, "UcmService"

    const-string/jumbo v8, "password is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    const-string/jumbo v7, "errorresponse"

    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_2
    move-object v2, v1

    .line 1566
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 1556
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    array-length v7, v5

    if-nez v7, :cond_7

    .line 1557
    const-string v7, "UcmService"

    const-string/jumbo v8, "password length is 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    const-string/jumbo v7, "errorresponse"

    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 1560
    :cond_7
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "password length is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 1563
    .local v6, "strAscii":Ljava/lang/String;
    const-string/jumbo v7, "stringresponse"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 1564
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public generateSecureRandom(Ljava/lang/String;I[B)Landroid/os/Bundle;
    .locals 20
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "numBytes"    # I
    .param p3, "seed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2646
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateSecureRandom "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2648
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2649
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2650
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateSecureRandom : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2652
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2712
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 2657
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2658
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2659
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v19

    .line 2660
    .local v19, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_1

    move/from16 v5, v19

    .line 2661
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2662
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v18

    .line 2663
    .local v18, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_2

    const/16 v18, 0x1

    .line 2666
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2667
    .local v16, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 2668
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! generateSecureRandom is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2670
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2671
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 2673
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2676
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2677
    .local v13, "argBundle":Landroid/os/Bundle;
    const-string v2, "callerUid"

    invoke-virtual {v13, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2678
    const-string/jumbo v2, "user_id"

    invoke-virtual {v13, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2679
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v13, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2680
    const-string/jumbo v2, "resource"

    move/from16 v0, v18

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2682
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateSecureRandom KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateSecureRandom KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateSecureRandom KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 2688
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_4

    .line 2689
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2691
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2692
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2694
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_4
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v12, v0, v1, v13}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateSecureRandom(I[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 2695
    if-nez v10, :cond_5

    .line 2696
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2698
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2699
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2701
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_5
    const-string v2, "bytearrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 2702
    .local v15, "response":[B
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 2703
    .local v14, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateSecureRandom Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    if-nez v15, :cond_6

    .line 2706
    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for generateSecureRandom"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2708
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2709
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2710
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_6
    move-object v11, v10

    .line 2712
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public generateWrappedDek(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    .line 1351
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "generateDek "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1356
    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v5, "generateWrappedDek"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 1364
    :cond_0
    const-string v5, "UcmService"

    const-string/jumbo v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1366
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    .line 1397
    :goto_0
    return-object v5

    .line 1357
    :catch_0
    move-exception v3

    .line 1358
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1359
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1360
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1369
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    .line 1370
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    .line 1371
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 1376
    :goto_1
    if-nez v0, :cond_3

    .line 1377
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1379
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1373
    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 1381
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v2

    .line 1383
    .local v2, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v2, :cond_4

    .line 1384
    const-string v5, "UcmService"

    const-string/jumbo v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1386
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1388
    :cond_4
    invoke-interface {v2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateWrappedDek()Landroid/os/Bundle;

    move-result-object v1

    .line 1389
    if-nez v1, :cond_5

    .line 1390
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1392
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1393
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0

    .line 1395
    :cond_5
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1396
    .local v4, "errorcode":I
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "generateWrappedDek response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .locals 6
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3915
    if-nez p1, :cond_0

    move-object v0, v2

    .line 3925
    :goto_0
    return-object v0

    .line 3918
    :cond_0
    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "finding active agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3919
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 3920
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3921
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "found active agent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_2
    move-object v0, v2

    .line 3925
    goto :goto_0
.end method

.method public getAdminConfigureBundleFromCs(IILjava/lang/String;)Landroid/os/Bundle;
    .locals 16
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2964
    const-string/jumbo v2, "getAdminConfigureBundleFromCs"

    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2965
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2967
    .local v10, "agentResponse":Landroid/os/Bundle;
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAdminConfigureBundleFromCs "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    invoke-static/range {p3 .. p3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2969
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2970
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no agent found for Source = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    const-string v2, "bundleresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2972
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3007
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 2977
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2978
    .local v14, "id":J
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2979
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v5

    .line 2980
    .local v5, "uriuid":I
    move/from16 v4, p2

    .line 2981
    .local v4, "user_id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 2982
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! getAdminConfigureBundleFromCs is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    const-string v2, "bundleresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2984
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2985
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 2987
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2990
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 2991
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_2

    .line 2992
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    const-string v2, "bundleresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2994
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2995
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 2997
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_2
    move/from16 v0, p1

    invoke-interface {v12, v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;

    move-result-object v10

    .line 2998
    if-nez v10, :cond_3

    .line 2999
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3001
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "bundleresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3002
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3003
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3005
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 3006
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPackageSetting Response from plugin: error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .line 3007
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 2027
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2028
    .local v7, "agentInfoBundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v8

    .line 2031
    .local v8, "credAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    new-instance v6, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v6, p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2032
    .local v6, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2033
    .local v3, "uid":I
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v12

    .line 2034
    .local v12, "uriuid":I
    if-eq v12, v1, :cond_0

    move v3, v12

    .line 2035
    :cond_0
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    .line 2036
    .local v2, "user_id":I
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v9

    .line 2037
    .local v9, "uriresource":I
    if-ne v9, v1, :cond_1

    const/4 v9, 0x1

    .line 2040
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2041
    .local v10, "id":J
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2042
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING!!!! getAgentInfo is NOT allowed for URI = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    :goto_0
    return-object v5

    .line 2045
    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2048
    invoke-direct {p0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;

    move-result-object v7

    move-object v5, v7

    .line 2049
    goto :goto_0
.end method

.method public getAgentService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3677
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3678
    .local v3, "uid":I
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBinder "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", uid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v7

    .line 3680
    .local v7, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v7, :cond_0

    .line 3700
    :goto_0
    return-object v5

    .line 3685
    :cond_0
    new-instance v6, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v6, p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3686
    .local v6, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v12

    .line 3687
    .local v12, "uriuid":I
    const/4 v0, -0x1

    if-eq v12, v0, :cond_1

    move v3, v12

    .line 3688
    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    .line 3690
    .local v2, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3691
    .local v10, "id":J
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 3692
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING!!!! getAgentService is NOT allowed for URI = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3695
    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3698
    invoke-virtual {v7}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v8

    .line 3699
    .local v8, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .local v9, "binderService":Landroid/os/IBinder;
    :goto_1
    move-object v5, v9

    .line 3700
    goto :goto_0

    .end local v9    # "binderService":Landroid/os/IBinder;
    :cond_3
    move-object v9, v5

    .line 3699
    goto :goto_1
.end method

.method public getCertificateChain(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 20
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1577
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateChain "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1581
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 1582
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 1583
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no agent found for Source = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1585
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    .line 1651
    :goto_0
    return-object v2

    .line 1589
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 1590
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1591
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v18

    .line 1592
    .local v18, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_1

    move/from16 v5, v18

    .line 1593
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 1594
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v17

    .line 1595
    .local v17, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    const/16 v17, 0x1

    .line 1597
    :cond_2
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 1600
    .local v12, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1601
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 1602
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! getCertificateChain is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1604
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto :goto_0

    .line 1606
    :cond_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1609
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1610
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v19

    .line 1611
    .local v19, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    .line 1612
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    .line 1613
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateChain new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    .end local v19    # "userId":I
    :cond_4
    :goto_1
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1620
    const-string/jumbo v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1621
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1622
    const-string/jumbo v2, "resource"

    move/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1624
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateChain KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateChain KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateChain KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .line 1630
    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_6

    .line 1631
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1633
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 1615
    .end local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .restart local v19    # "userId":I
    :cond_5
    const-string v2, "UcmService"

    const-string/jumbo v3, "getCertificateChain user id id not valid. Keeping same userid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1635
    .end local v19    # "userId":I
    .restart local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    :cond_6
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 1636
    if-nez v10, :cond_7

    .line 1637
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1639
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1640
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 1642
    :cond_7
    const-string v2, "bytearrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 1643
    .local v16, "response":[B
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 1644
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateChain Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    if-nez v16, :cond_8

    .line 1647
    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for getCertificateChain"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1649
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 1651
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getConfigureBundleFromCs(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2956
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2957
    .local v0, "agentResponse":Landroid/os/Bundle;
    const-string v1, "bundleresponse"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2958
    const-string/jumbo v1, "errorresponse"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2959
    return-object v0
.end method

.method public getDek(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    .line 1402
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getDek "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1407
    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v5, "getDek"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 1415
    :cond_0
    const-string v5, "UcmService"

    const-string/jumbo v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1417
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    .line 1451
    :goto_0
    return-object v5

    .line 1408
    :catch_0
    move-exception v3

    .line 1409
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1410
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1411
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1419
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking uri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    const/4 v0, 0x0

    .line 1423
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    .line 1424
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 1429
    :goto_1
    if-nez v0, :cond_3

    .line 1430
    const-string v5, "UcmService"

    const-string/jumbo v6, "no agent found for Source = com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1432
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1426
    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 1435
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v2

    .line 1436
    .local v2, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v2, :cond_4

    .line 1437
    const-string v5, "UcmService"

    const-string/jumbo v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1439
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1440
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1443
    :cond_4
    invoke-interface {v2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getDek()Landroid/os/Bundle;

    move-result-object v1

    .line 1444
    if-nez v1, :cond_5

    .line 1445
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1447
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0

    .line 1449
    :cond_5
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1450
    .local v4, "errorcode":I
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getDek Response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    .line 3300
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3303
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 3304
    :cond_0
    const-string v5, "UcmService"

    const-string/jumbo v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3343
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3309
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    const/4 v0, 0x0

    .line 3310
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    .line 3311
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3316
    :goto_1
    if-nez v0, :cond_3

    .line 3317
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3319
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3313
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 3322
    :cond_3
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 3323
    new-instance v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 3324
    .local v4, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 3325
    iget-object v5, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 3326
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 3329
    .end local v4    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 3330
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_5

    .line 3331
    const-string v5, "UcmService"

    const-string/jumbo v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3333
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3336
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_5
    invoke-interface {v3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 3337
    if-nez v1, :cond_6

    .line 3338
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3340
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3341
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    move-object v2, v1

    .line 3343
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public getODESettingsConfiguration()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 3524
    const-string v2, "UcmService"

    const-string/jumbo v3, "getODESettingsConfiguration"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v0

    .line 3528
    .local v0, "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    if-nez v0, :cond_0

    .line 3529
    const/4 v1, 0x0

    .line 3539
    :goto_0
    return-object v1

    .line 3532
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3534
    .local v1, "responseBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "supportsode"

    iget v3, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3535
    const-string v2, "aid"

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3536
    const-string/jumbo v2, "storagetype"

    sget-object v3, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    iget v4, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3537
    const-string/jumbo v2, "scptype"

    sget-object v3, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    iget v4, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPackageSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 20
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2781
    const-string/jumbo v4, "getPackageSetting"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2783
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2784
    .local v12, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p2 .. p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v11

    .line 2785
    .local v11, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v11, :cond_0

    .line 2786
    const-string v4, "bundleresponse"

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2787
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2836
    .end local v12    # "agentResponse":Landroid/os/Bundle;
    .local v13, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v13

    .line 2792
    .end local v13    # "agentResponse":Ljava/lang/Object;
    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v10, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2793
    .local v10, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2794
    .local v7, "uid":I
    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v17

    .line 2795
    .local v17, "uriuid":I
    const/4 v4, -0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_1

    move/from16 v7, v17

    .line 2796
    :cond_1
    move/from16 v6, p5

    .line 2799
    .local v6, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 2800
    .local v18, "id":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 2801
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING!!!! getPackageSetting is NOT allowed for URI = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    const-string v4, "bundleresponse"

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2803
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2804
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 2806
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2809
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 2810
    .local v15, "argBundle":Landroid/os/Bundle;
    const-string v4, "callerUid"

    invoke-virtual {v15, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2811
    const-string/jumbo v4, "user_id"

    invoke-virtual {v15, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2812
    const-string/jumbo v4, "ownerUid"

    invoke-virtual {v15, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2814
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPackageSetting KEY_RESOURCE_ID= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "resource"

    const/4 v9, -0x2

    invoke-virtual {v15, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPackageSetting KEY_USER_ID= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "user_id"

    const/4 v9, -0x2

    invoke-virtual {v15, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPackageSetting KEY_CALLER_UID= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "callerUid"

    const/4 v9, -0x2

    invoke-virtual {v15, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    invoke-virtual {v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v14

    .line 2820
    .local v14, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v14, :cond_3

    .line 2821
    const-string v4, "UcmService"

    const-string/jumbo v5, "no agentService found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    const-string v4, "bundleresponse"

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2823
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2824
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2826
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_3
    move/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v14, v0, v1, v2, v15}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getPackageSetting(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v12

    .line 2827
    if-nez v12, :cond_4

    .line 2828
    const-string v4, "UcmService"

    const-string v5, "ERROR: Null Response received from agentService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    new-instance v12, Landroid/os/Bundle;

    .end local v12    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2830
    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    const-string v4, "bundleresponse"

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2831
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2832
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2834
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 2835
    .local v16, "errorcode":I
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPackageSetting Response from plugin:  error code = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v12

    .line 2836
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public getStatus(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 16
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3601
    const-string v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getStatus : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3602
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3603
    .local v2, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const/4 v13, 0x1

    const-string v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-ne v13, v14, :cond_1

    .line 3604
    :cond_0
    const-string v13, "UcmService"

    const-string/jumbo v14, "csName is empty"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3605
    const-string/jumbo v13, "errorresponse"

    const/16 v14, 0x10

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 3671
    .end local v2    # "agentResponse":Landroid/os/Bundle;
    .local v3, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 3609
    .end local v3    # "agentResponse":Ljava/lang/Object;
    .restart local v2    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    const/4 v12, -0x1

    .line 3610
    .local v12, "state":I
    const/4 v11, -0x1

    .line 3611
    .local v11, "remainCnt":I
    const/4 v6, -0x1

    .line 3612
    .local v6, "maxCnt":I
    const/4 v8, -0x1

    .line 3613
    .local v8, "pinMinLength":I
    const/4 v7, -0x1

    .line 3614
    .local v7, "pinMaxLength":I
    const/4 v5, 0x0

    .line 3615
    .local v5, "authMode":I
    const/4 v10, -0x1

    .line 3616
    .local v10, "pukMinLength":I
    const/4 v9, -0x1

    .line 3618
    .local v9, "pukMaxLength":I
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    .line 3619
    .local v1, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v13, 0x1

    const-string v14, "boot_test"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-ne v13, v14, :cond_2

    .line 3620
    const-string v13, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    .line 3625
    :goto_1
    if-nez v1, :cond_3

    .line 3626
    const-string v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "no agent found for Source = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3627
    const-string/jumbo v13, "errorresponse"

    const/16 v14, 0xe

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 3628
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3622
    .end local v3    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    goto :goto_1

    .line 3630
    :cond_3
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-nez v13, :cond_4

    .line 3631
    const-string v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "no agent info found for Source = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    const-string/jumbo v13, "errorresponse"

    const/16 v14, 0xe

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 3633
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3635
    .end local v3    # "agentResponse":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v4

    .line 3636
    .local v4, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v4, :cond_5

    .line 3637
    const-string v13, "UcmService"

    const-string/jumbo v14, "no agentService found"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3639
    .restart local v2    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v13, "errorresponse"

    const/16 v14, 0xe

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 3640
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3643
    .end local v3    # "agentResponse":Ljava/lang/Object;
    :cond_5
    invoke-interface {v4}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getStatus()Landroid/os/Bundle;

    move-result-object v2

    .line 3644
    if-nez v2, :cond_6

    .line 3645
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3646
    .restart local v2    # "agentResponse":Landroid/os/Bundle;
    const-string v13, "UcmService"

    const-string v14, "ERROR: Null Response received from agentService"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    const-string/jumbo v13, "errorresponse"

    const/16 v14, 0xd

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 3648
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3651
    .end local v3    # "agentResponse":Ljava/lang/Object;
    :cond_6
    const-string v13, "UcmService"

    const-string/jumbo v14, "getStatus success"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3652
    const-string/jumbo v13, "state"

    const/4 v14, -0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 3653
    const-string/jumbo v13, "remainCnt"

    const/4 v14, -0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 3654
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v6, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    .line 3655
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v8, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    .line 3656
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v7, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    .line 3657
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v5, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    .line 3658
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v10, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    .line 3659
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v9, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    .line 3661
    const-string v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "values get from agent : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    const-string/jumbo v13, "maxAuthCnt"

    invoke-virtual {v2, v13, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3665
    const-string/jumbo v13, "maxPinLength"

    invoke-virtual {v2, v13, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3666
    const-string/jumbo v13, "minPinLength"

    invoke-virtual {v2, v13, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3667
    const-string v13, "authMode"

    invoke-virtual {v2, v13, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3668
    const-string/jumbo v13, "minPukLength"

    invoke-virtual {v2, v13, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3669
    const-string/jumbo v13, "maxPukLength"

    invoke-virtual {v2, v13, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 3671
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public grantKeyChainAccess(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2630
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "grantKeyChainAccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkSystemCaller()V

    .line 2632
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->isKeyChainUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2633
    const-string v0, "UcmService"

    const-string v1, "Not Keychain URI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    const/4 v0, 0x0

    .line 2636
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "certChain"    # [B
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2153
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 2154
    .local v6, "pluginResponse":Landroid/os/Bundle;
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UCMERRORTESTING: @CredentialManagerService importKeyPair Response from plugin with error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    return-object v6
.end method

.method public installCertificate(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "certChain"    # [B
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2160
    const-string/jumbo v0, "installCertificate"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2162
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 2163
    .local v6, "agentResponse":Landroid/os/Bundle;
    if-nez v6, :cond_0

    .line 2164
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2165
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    const-string v0, "booleanresponse"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2166
    const-string/jumbo v0, "errorresponse"

    const/16 v1, 0xd

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v7, v6

    .line 2173
    .end local v6    # "agentResponse":Landroid/os/Bundle;
    .local v7, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 2169
    .end local v7    # "agentResponse":Ljava/lang/Object;
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const-string v0, "booleanresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 2170
    .local v9, "response":Z
    const-string/jumbo v0, "errorresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 2171
    .local v8, "errorcode":I
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "installCertificate Response:  error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UCMERRORTESTING: @CredentialManagerService installCertificate Response from plugin with error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 2173
    .restart local v7    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public isCredentialStorageLock(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1507
    const-string v0, "UcmService"

    const-string v1, "UCS ODE isCredentialStorageLock in UCS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    return v0
.end method

.method public isKeyChainGranted(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2641
    const/4 v0, 0x1

    return v0
.end method

.method public isUserCertificatesExistInUCS()Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1093
    const-string v17, "UcmService"

    const-string/jumbo v18, "isUserCertificatesExistInUCS called"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const-string/jumbo v17, "isUserCertificatesExistInUCS"

    invoke-static/range {v17 .. v17}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1096
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1097
    .local v7, "agentResponse":Landroid/os/Bundle;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1098
    .local v9, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v16

    .line 1100
    .local v16, "user_id":I
    const-string v17, "callerUid"

    const/16 v18, 0x3e8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1101
    const-string/jumbo v17, "user_id"

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1102
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 1103
    .local v15, "newParamBundle":Landroid/os/Bundle;
    const-string/jumbo v17, "removable_user_certificates_list"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1104
    const-string/jumbo v17, "extraArgs"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 1107
    .local v2, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v8

    .line 1108
    .local v8, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    const-string v17, "UcmService"

    const-string v18, "Iteration has started...."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1111
    :cond_1
    const-string v17, "UcmService"

    const-string v18, "agentService == null... continue"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1116
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1117
    .local v12, "id1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v14

    .line 1118
    .local v14, "mdmAliases":[Ljava/lang/String;
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1121
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    .local v4, "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v17, "resource"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1123
    invoke-interface {v8, v9}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 1124
    const-string/jumbo v17, "stringarrayresponse"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1126
    .local v3, "agentAliasesKeyChain":[Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1127
    invoke-static {v4, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1130
    :cond_3
    if-eqz v14, :cond_5

    .line 1131
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_5

    .line 1132
    aget-object v17, v14, v10

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1133
    aget-object v17, v14, v10

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1131
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1139
    .end local v10    # "i":I
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_6

    .line 1140
    const/16 v17, 0x1

    .line 1164
    .end local v2    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "agentAliasesKeyChain":[Ljava/lang/String;
    .end local v4    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v12    # "id1":J
    .end local v14    # "mdmAliases":[Ljava/lang/String;
    :goto_2
    return v17

    .line 1144
    .restart local v2    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v3    # "agentAliasesKeyChain":[Ljava/lang/String;
    .restart local v4    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .restart local v12    # "id1":J
    .restart local v14    # "mdmAliases":[Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    .local v5, "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v17, "resource"

    const/16 v18, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1146
    invoke-interface {v8, v9}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 1147
    const-string/jumbo v17, "stringarrayresponse"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1148
    .local v6, "agentAliasesWiFi":[Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 1149
    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1152
    :cond_7
    if-eqz v14, :cond_9

    .line 1153
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_9

    .line 1154
    aget-object v17, v14, v10

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1155
    aget-object v17, v14, v10

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1153
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1160
    .end local v10    # "i":I
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1161
    const/16 v17, 0x1

    goto :goto_2

    .line 1164
    .end local v2    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "agentAliasesKeyChain":[Ljava/lang/String;
    .end local v4    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "agentAliasesWiFi":[Ljava/lang/String;
    .end local v8    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v12    # "id1":J
    .end local v14    # "mdmAliases":[Ljava/lang/String;
    :cond_a
    const/16 v17, 0x0

    goto :goto_2
.end method

.method public listAllProviders()[Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2529
    const-string/jumbo v0, "listAllProviders"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2530
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listExposedProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public listPasswordSupportedProviders()[Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2603
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2604
    .local v3, "uid":I
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    .line 2605
    .local v2, "user_id":I
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2625
    :goto_0
    return-object v5

    .line 2608
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2609
    .local v6, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 2610
    .local v1, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2612
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2613
    .local v8, "id":J
    const/4 v10, 0x1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-ne v10, v0, :cond_3

    .line 2614
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2615
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    if-eqz v0, :cond_2

    .line 2616
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2617
    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "password support provider : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v10, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    :cond_2
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 2621
    :cond_3
    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WARNING!!!! access NOT allowed for "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v10, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2625
    .end local v1    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v8    # "id":J
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    goto/16 :goto_0
.end method

.method public listProviders()[Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2525
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listExposedProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 945
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notifyChangeToPlugin event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const-string/jumbo v8, "notifyChangeToPlugin"

    invoke-static {v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 947
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 949
    .local v2, "agentResponse":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 950
    .local v4, "error":Z
    if-nez p1, :cond_5

    .line 951
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 952
    .local v0, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 953
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-eqz v3, :cond_2

    .line 954
    const/4 v7, 0x0

    .line 955
    .local v7, "status":I
    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkIfNotify(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v6

    .line 956
    .local v6, "notify":Z
    if-eqz v6, :cond_1

    .line 957
    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->notifyChange(ILandroid/os/Bundle;)I

    move-result v7

    .line 958
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agentService "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " notify status - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :goto_1
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agentService status-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v8, 0x1

    if-eq v4, v8, :cond_0

    .line 965
    if-eqz v7, :cond_0

    .line 966
    const-string/jumbo v8, "errorresponse"

    const/16 v9, 0x12

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 967
    const/4 v4, 0x1

    goto :goto_0

    .line 960
    :cond_1
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agentService "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not notified"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 970
    .end local v6    # "notify":Z
    .end local v7    # "status":I
    :cond_2
    const-string/jumbo v8, "errorresponse"

    const/16 v9, 0xe

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 971
    const-string v8, "UcmService"

    const-string v9, "agentService is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 975
    .end local v0    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    :cond_3
    if-nez v4, :cond_4

    .line 976
    const-string/jumbo v8, "errorresponse"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 978
    :cond_4
    const-string v8, "booleanresponse"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1003
    .end local v5    # "i$":Ljava/util/Iterator;
    :goto_2
    return-object v2

    .line 981
    :cond_5
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    .line 982
    .local v1, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v1, :cond_6

    .line 983
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "no agent found for Source = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const-string v8, "booleanresponse"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 985
    const-string/jumbo v8, "errorresponse"

    const/16 v9, 0xe

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 988
    :cond_6
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 989
    .restart local v3    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-eqz v3, :cond_8

    .line 990
    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->notifyChange(ILandroid/os/Bundle;)I

    move-result v7

    .line 991
    .restart local v7    # "status":I
    if-nez v7, :cond_7

    .line 992
    const-string v8, "booleanresponse"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 993
    const-string/jumbo v8, "errorresponse"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 996
    :cond_7
    const-string/jumbo v8, "errorresponse"

    const/16 v9, 0x12

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1002
    .end local v7    # "status":I
    :goto_3
    const-string v8, "booleanresponse"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 999
    :cond_8
    const-string/jumbo v8, "errorresponse"

    const/16 v9, 0xe

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1000
    const-string v8, "UcmService"

    const-string v9, "agentService is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .prologue
    .line 1169
    const-string/jumbo v2, "notifyLicenseStatus"

    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1170
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyLicenseStatus packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",status-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", errorCode-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1172
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1173
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    const-string/jumbo v2, "errorCode"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1176
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1177
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1178
    const/4 v2, 0x1

    return v2
.end method

.method public processCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "command"    # [B
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3812
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processCommand "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3814
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 3815
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 3816
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3817
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3855
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 3822
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3823
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3824
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .line 3825
    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    move/from16 v5, v16

    .line 3826
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 3828
    .local v4, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 3829
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 3830
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! processCommand is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3831
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3832
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3833
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3835
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3838
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 3839
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_3

    .line 3840
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3842
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3843
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3845
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v12, v0, v1, v5}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->processCommand([BLandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v10

    .line 3846
    if-nez v10, :cond_4

    .line 3847
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3848
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3849
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3850
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3851
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3853
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 3854
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processCommand Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .line 3855
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public processMessage(I[B)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    .locals 9
    .param p1, "type"    # I
    .param p2, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1240
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processMessage type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1242
    .local v4, "uid":I
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    const-string v6, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-interface {v5, v6, v4}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1243
    const-string v5, "UcmService"

    const-string v6, "  Agent don\'t UCS PLUGIN permission. Returning..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    new-instance v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>()V

    .line 1245
    .local v1, "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    iput v8, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->status:I

    .line 1246
    const/16 v5, 0x41

    iput v5, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->errorCode:I

    .line 1274
    .end local v1    # "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    :goto_0
    return-object v1

    .line 1250
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidMsgType(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1251
    const-string v5, "UcmService"

    const-string v6, "Invalid message Type..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    new-instance v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>()V

    .line 1253
    .restart local v1    # "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    iput v8, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->status:I

    .line 1254
    const/16 v5, 0x40

    iput v5, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->errorCode:I

    goto :goto_0

    .line 1258
    .end local v1    # "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    :cond_1
    if-nez p2, :cond_2

    .line 1259
    const-string v5, "UcmService"

    const-string/jumbo v6, "message byte is null.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    new-instance v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>()V

    .line 1261
    .restart local v1    # "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    iput v8, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->status:I

    .line 1262
    const/16 v5, 0x32

    iput v5, v1, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->errorCode:I

    goto :goto_0

    .line 1265
    .end local v1    # "message":Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1267
    .local v2, "id":J
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v5, v4, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->processMsg(II[B)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1271
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1268
    :catch_0
    move-exception v0

    .line 1269
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in processMessage -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1271
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1274
    const/4 v1, 0x0

    goto :goto_0

    .line 1271
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public declared-synchronized publishService()V
    .locals 2

    .prologue
    .line 3945
    monitor-enter p0

    :try_start_0
    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3946
    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3947
    const-string v0, "UcmService"

    const-string/jumbo v1, "publishedService com.samsung.ucs.ucsservice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3949
    :cond_0
    monitor-exit p0

    return-void

    .line 3945
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected refreshAgents()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 420
    return-void
.end method

.method public resetNonMdmCertificates()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1013
    const-string v18, "UcmService"

    const-string/jumbo v19, "resetNonMdmCertificates called"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const-string/jumbo v18, "resetNonMdmCertificates"

    invoke-static/range {v18 .. v18}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1016
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1017
    .local v7, "agentResponse":Landroid/os/Bundle;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1018
    .local v10, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v17

    .line 1020
    .local v17, "user_id":I
    const-string v18, "callerUid"

    const/16 v19, 0x3e8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1021
    const-string/jumbo v18, "user_id"

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 1024
    .local v2, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v8

    .line 1025
    .local v8, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    const-string v18, "UcmService"

    const-string v19, "Iteration has started...."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1028
    :cond_1
    const-string v18, "UcmService"

    const-string v19, "agentService == null... continue"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1032
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1033
    .local v4, "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1036
    .local v5, "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v18, "resource"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1037
    invoke-interface {v8, v10}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 1038
    const-string/jumbo v18, "stringarrayresponse"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1039
    .local v3, "agentAliasesKeyChain":[Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1040
    invoke-static {v4, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1044
    :cond_3
    const-string/jumbo v18, "resource"

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1045
    invoke-interface {v8, v10}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 1046
    const-string/jumbo v18, "stringarrayresponse"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1047
    .local v6, "agentAliasesWiFi":[Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 1048
    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1051
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1052
    const-string v18, "UcmService"

    const-string v19, "agentAliasesListKeychain.isEmpty() && agentAliasesListWiFi.isEmpty() .... continue"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1057
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1058
    .local v14, "id1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v16

    .line 1059
    .local v16, "mdmAliases":[Ljava/lang/String;
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1062
    if-eqz v16, :cond_8

    .line 1063
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_8

    .line 1064
    aget-object v18, v16, v11

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1065
    aget-object v18, v16, v11

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1063
    :cond_6
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1066
    :cond_7
    aget-object v18, v16, v11

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1067
    aget-object v18, v16, v11

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1073
    .end local v11    # "i":I
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1074
    .local v9, "alias":Ljava/lang/String;
    const-string v18, "UcmService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "request to delete KEYCHAIN for alias: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const-string/jumbo v18, "resource"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1076
    invoke-interface {v8, v9, v10}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_3

    .line 1080
    .end local v9    # "alias":Ljava/lang/String;
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1081
    .restart local v9    # "alias":Ljava/lang/String;
    const-string v18, "UcmService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "request to delete WIFI for alias: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const-string/jumbo v18, "resource"

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1083
    invoke-interface {v8, v9, v10}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_4

    .line 1086
    .end local v2    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "agentAliasesKeyChain":[Ljava/lang/String;
    .end local v4    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "agentAliasesWiFi":[Ljava/lang/String;
    .end local v8    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v9    # "alias":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "id1":J
    .end local v16    # "mdmAliases":[Ljava/lang/String;
    :cond_a
    return-void
.end method

.method public resetUid(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "rstuid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3760
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetUid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3761
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3762
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 3763
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 3764
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3765
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3803
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 3770
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3771
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3772
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .line 3773
    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    move/from16 v5, v16

    .line 3774
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 3776
    .local v4, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 3777
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 3778
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! resetUid is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3780
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3781
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3783
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3786
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 3787
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_3

    .line 3788
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3789
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3790
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3791
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3793
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    move/from16 v0, p2

    invoke-interface {v12, v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->resetUid(I)Landroid/os/Bundle;

    move-result-object v10

    .line 3794
    if-nez v10, :cond_4

    .line 3795
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3796
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3797
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3798
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3799
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3801
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 3802
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetUid Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .line 3803
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public resetUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3708
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetUser "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3710
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 3711
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 3712
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3713
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3751
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 3718
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3719
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3720
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .line 3721
    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    move/from16 v5, v16

    .line 3722
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 3724
    .local v4, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 3725
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 3726
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! resetUser is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3727
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3728
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3729
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3731
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3734
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 3735
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_3

    .line 3736
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3737
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3738
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3739
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3741
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    move/from16 v0, p2

    invoke-interface {v12, v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->resetUser(I)Landroid/os/Bundle;

    move-result-object v10

    .line 3742
    if-nez v10, :cond_4

    .line 3743
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3745
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3746
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3747
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3749
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 3750
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetUser Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .line 3751
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public saw(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 38
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1734
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    const/16 v19, 0x0

    .line 1736
    .local v19, "error":Z
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1739
    .local v10, "agentResponse":Landroid/os/Bundle;
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 1740
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1741
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v36

    .line 1742
    .local v36, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v36

    if-eq v0, v2, :cond_0

    move/from16 v5, v36

    .line 1743
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 1744
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v35

    .line 1745
    .local v35, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_1

    const/16 v35, 0x1

    .line 1747
    :cond_1
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 1749
    .local v15, "argBundle":Landroid/os/Bundle;
    const-string v2, "callerUid"

    invoke-virtual {v15, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1750
    const-string/jumbo v2, "user_id"

    invoke-virtual {v15, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1751
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v15, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1752
    const-string/jumbo v2, "resource"

    move/from16 v0, v35

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1753
    const-string/jumbo v2, "entryType"

    move/from16 v0, p2

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1755
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw KEY_RESOURCE_ID= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "resource"

    const/16 v37, -0x2

    move/from16 v0, v37

    invoke-virtual {v15, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw KEY_USER_ID= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "user_id"

    const/16 v37, -0x2

    move/from16 v0, v37

    invoke-virtual {v15, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw KEY_CALLER_UID= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "callerUid"

    const/16 v37, -0x2

    move/from16 v0, v37

    invoke-virtual {v15, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->isKeyChainUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v2

    const-string v6, "KNOX"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1762
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1763
    .local v22, "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_2
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 1764
    .local v3, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 1765
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Iteration has started.... uid-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 1769
    .local v26, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 1770
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING!!!! saw access NOT allowed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1772
    const/16 v19, 0x1

    .line 1773
    goto :goto_0

    .line 1775
    :cond_3
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1778
    if-nez v12, :cond_4

    .line 1779
    const-string v2, "UcmService"

    const-string/jumbo v6, "no agentService found"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xe

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1781
    const/16 v19, 0x1

    .line 1782
    goto :goto_0

    .line 1785
    :cond_4
    invoke-interface {v12, v15}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 1786
    if-nez v10, :cond_5

    .line 1787
    const-string v2, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1789
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1790
    const/16 v19, 0x1

    .line 1791
    goto/16 :goto_0

    .line 1794
    :cond_5
    const-string/jumbo v2, "stringarrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1795
    .local v13, "agentaliases":[Ljava/lang/String;
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 1796
    .local v20, "errorcode":I
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UCMERRORTESTING: @CredentialManagerService saw Response from plugin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Iteration has started.... agentaliases-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    if-eqz v13, :cond_2

    .line 1802
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Agent alias size -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    move-object/from16 v16, v13

    .local v16, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v30, v0

    .local v30, "len$":I
    const/16 v25, 0x0

    .local v25, "i$":I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_6

    aget-object v14, v16, v25

    .line 1804
    .local v14, "alias":Ljava/lang/String;
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Agent alias-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 1807
    .end local v14    # "alias":Ljava/lang/String;
    :cond_6
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1808
    .local v21, "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1809
    .local v33, "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 1812
    .local v34, "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1813
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 1814
    .local v28, "id1":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v5, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v32

    .line 1815
    .local v32, "mdmallowedaliases":[Ljava/lang/String;
    if-nez v32, :cond_a

    .line 1816
    const/16 v33, 0x0

    .line 1817
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : mdmallowedaliasesList for uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v31

    .line 1825
    .local v31, "mdmaliases":[Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1828
    if-eqz v31, :cond_7

    move-object/from16 v0, v31

    array-length v2, v0

    if-nez v2, :cond_b

    .line 1829
    :cond_7
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : mdmunauthorizedaliasesList for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is = null "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    const/16 v34, 0x0

    .line 1846
    :cond_8
    :goto_3
    new-instance v21, Ljava/util/ArrayList;

    .end local v21    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1847
    .restart local v21    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : Initial agent alias list for agent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    if-eqz v34, :cond_f

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_f

    .line 1849
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_4
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_f

    .line 1850
    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1851
    .restart local v14    # "alias":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1852
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1853
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : Removing from agent alias list : alias name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    :cond_9
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 1819
    .end local v14    # "alias":Ljava/lang/String;
    .end local v23    # "i":I
    .end local v31    # "mdmaliases":[Ljava/lang/String;
    :cond_a
    invoke-static/range {v32 .. v32}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v33

    .line 1820
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : mdmallowedaliasesList for uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1831
    .restart local v31    # "mdmaliases":[Ljava/lang/String;
    :cond_b
    if-eqz v32, :cond_c

    move-object/from16 v0, v32

    array-length v2, v0

    if-nez v2, :cond_d

    .line 1832
    :cond_c
    invoke-static/range {v31 .. v31}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v34

    .line 1833
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : mdmunauthorizedaliasesList for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1835
    :cond_d
    move-object/from16 v16, v31

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v30, v0

    const/16 v25, 0x0

    :goto_5
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_8

    aget-object v14, v16, v25

    .line 1836
    .restart local v14    # "alias":Ljava/lang/String;
    move-object/from16 v0, v33

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1837
    move-object/from16 v0, v34

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1838
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : new alias added to mdmunauthorizedaliasesList : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    :goto_6
    add-int/lit8 v25, v25, 0x1

    goto :goto_5

    .line 1840
    :cond_e
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : mdmunauthorizedaliasesList unchanged, access allowed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1858
    .end local v14    # "alias":Ljava/lang/String;
    :cond_f
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1859
    .restart local v14    # "alias":Ljava/lang/String;
    new-instance v9, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v2, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-direct {v9, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 1860
    .local v9, "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v18

    .line 1861
    .local v18, "csUri":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1862
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : Adding alias uri to finalaliasesList : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1867
    .end local v3    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v9    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .end local v12    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v13    # "agentaliases":[Ljava/lang/String;
    .end local v14    # "alias":Ljava/lang/String;
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v18    # "csUri":Ljava/lang/String;
    .end local v20    # "errorcode":I
    .end local v21    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "id":J
    .end local v28    # "id1":J
    .end local v30    # "len$":I
    .end local v31    # "mdmaliases":[Ljava/lang/String;
    .end local v32    # "mdmallowedaliases":[Ljava/lang/String;
    .end local v33    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    .line 1868
    .local v17, "array":[Ljava/lang/String;
    const-string/jumbo v2, "stringarrayresponse"

    move-object/from16 v0, v17

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1869
    if-nez v19, :cond_11

    const-string/jumbo v2, "errorresponse"

    const/4 v6, 0x0

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_11
    move-object v11, v10

    .line 1978
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .end local v17    # "array":[Ljava/lang/String;
    .end local v22    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_8
    return-object v11

    .line 1874
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_12
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    .line 1875
    .restart local v3    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v3, :cond_13

    .line 1876
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xe

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 1877
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_8

    .line 1879
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_13
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 1880
    .restart local v12    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_14

    .line 1881
    const-string v2, "UcmService"

    const-string/jumbo v6, "no agentService found"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xe

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 1883
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_8

    .line 1886
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_14
    invoke-interface {v12, v15}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 1887
    if-nez v10, :cond_15

    .line 1888
    const-string v2, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 1890
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_8

    .line 1892
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_15
    const-string/jumbo v2, "stringarrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1893
    .restart local v13    # "agentaliases":[Ljava/lang/String;
    const-string/jumbo v2, "errorresponse"

    const/4 v6, 0x0

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 1894
    .restart local v20    # "errorcode":I
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw Response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UCMERRORTESTING: @CredentialManagerService saw Response from plugin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    const/4 v2, 0x2

    move/from16 v0, v35

    if-ne v0, v2, :cond_16

    .line 1899
    const-string/jumbo v2, "stringarrayresponse"

    invoke-virtual {v10, v2, v13}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1900
    const-string/jumbo v2, "errorresponse"

    move/from16 v0, v20

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 1901
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_8

    .line 1904
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_16
    const/4 v2, 0x3

    move/from16 v0, v35

    if-eq v0, v2, :cond_17

    .line 1906
    const-string/jumbo v2, "errorresponse"

    move/from16 v0, v20

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 1907
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_8

    .line 1911
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1912
    const-string/jumbo v2, "stringarrayresponse"

    invoke-virtual {v10, v2, v13}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1913
    const-string/jumbo v2, "errorresponse"

    move/from16 v0, v20

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 1914
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_8

    .line 1918
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 1919
    .restart local v26    # "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_19

    .line 1920
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING!!!! saw access NOT allowed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 1922
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_8

    .line 1925
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_19
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1926
    .restart local v21    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1927
    .restart local v33    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 1929
    .restart local v34    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v13, :cond_1a

    .line 1930
    const-string/jumbo v2, "errorresponse"

    move/from16 v0, v20

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 1931
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_8

    .line 1934
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v5, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v32

    .line 1935
    .restart local v32    # "mdmallowedaliases":[Ljava/lang/String;
    if-nez v32, :cond_1e

    .line 1936
    const/16 v33, 0x0

    .line 1942
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v31

    .line 1943
    .restart local v31    # "mdmaliases":[Ljava/lang/String;
    if-eqz v31, :cond_1b

    move-object/from16 v0, v31

    array-length v2, v0

    if-nez v2, :cond_1f

    .line 1944
    :cond_1b
    const/16 v34, 0x0

    .line 1955
    :cond_1c
    :goto_a
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1958
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    .line 1959
    if-eqz v34, :cond_23

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_23

    .line 1960
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_b
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_23

    .line 1961
    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1962
    .restart local v14    # "alias":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1963
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1960
    :cond_1d
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .line 1938
    .end local v14    # "alias":Ljava/lang/String;
    .end local v23    # "i":I
    .end local v31    # "mdmaliases":[Ljava/lang/String;
    :cond_1e
    invoke-static/range {v32 .. v32}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v33

    goto :goto_9

    .line 1945
    .restart local v31    # "mdmaliases":[Ljava/lang/String;
    :cond_1f
    if-eqz v32, :cond_20

    move-object/from16 v0, v32

    array-length v2, v0

    if-nez v2, :cond_21

    .line 1946
    :cond_20
    invoke-static/range {v31 .. v31}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v34

    goto :goto_a

    .line 1948
    :cond_21
    move-object/from16 v16, v31

    .restart local v16    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v30, v0

    .restart local v30    # "len$":I
    const/16 v24, 0x0

    .local v24, "i$":I
    :goto_c
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_1c

    aget-object v14, v16, v24

    .line 1949
    .restart local v14    # "alias":Ljava/lang/String;
    move-object/from16 v0, v33

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1950
    move-object/from16 v0, v34

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1948
    :cond_22
    add-int/lit8 v24, v24, 0x1

    goto :goto_c

    .line 1968
    .end local v14    # "alias":Ljava/lang/String;
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v24    # "i$":I
    .end local v30    # "len$":I
    :cond_23
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1969
    .restart local v22    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1970
    .restart local v14    # "alias":Ljava/lang/String;
    new-instance v9, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v2, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-direct {v9, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 1971
    .restart local v9    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v18

    .line 1973
    .restart local v18    # "csUri":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1975
    .end local v9    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .end local v14    # "alias":Ljava/lang/String;
    .end local v18    # "csUri":Ljava/lang/String;
    :cond_24
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    .line 1976
    .restart local v17    # "array":[Ljava/lang/String;
    const-string/jumbo v2, "stringarrayresponse"

    move-object/from16 v0, v17

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1977
    const-string/jumbo v2, "errorresponse"

    move/from16 v0, v20

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 1978
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_8
.end method

.method public sawInternal(Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resourceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    .line 1986
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sawInternal() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; resourceType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1988
    .local v2, "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v6, "sawInternal"

    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1990
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 1991
    .local v0, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v0, :cond_0

    .line 1992
    const-string v6, "UcmService"

    const-string/jumbo v7, "sawInternal(): activeAgent == null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    const-string/jumbo v6, "errorresponse"

    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 2021
    .end local v2    # "agentResponse":Landroid/os/Bundle;
    .local v3, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 1997
    .end local v3    # "agentResponse":Ljava/lang/Object;
    .restart local v2    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v4

    .line 1998
    .local v4, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1999
    :cond_1
    const-string v6, "UcmService"

    const-string v7, "agentService == null || mPolicyManager.isCSobscure() ... continue"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    const-string/jumbo v6, "errorresponse"

    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 2001
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 2004
    .end local v3    # "agentResponse":Ljava/lang/Object;
    :cond_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2005
    .local v5, "argBundle":Landroid/os/Bundle;
    const-string v6, "callerUid"

    const/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2006
    const-string/jumbo v6, "user_id"

    invoke-virtual {v5, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2007
    const-string/jumbo v6, "resource"

    invoke-virtual {v5, v6, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2009
    invoke-interface {v4, v5}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 2010
    if-nez v2, :cond_3

    .line 2011
    const-string v6, "UcmService"

    const-string v7, "ERROR: Null Response received from agentService"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2013
    .restart local v2    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0xd

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 2014
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 2016
    .end local v3    # "agentResponse":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v6, "stringarrayresponse"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2017
    .local v1, "agentAliases":[Ljava/lang/String;
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sawInternal() agentAliases="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    if-eqz v1, :cond_4

    .line 2019
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sawInternal() agentAliases.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v3, v2

    .line 2021
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public setAdminConfigureBundleForCs(IILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 22
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "profile"    # Landroid/os/Bundle;
    .param p5, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2857
    const-string/jumbo v4, "setAdminConfigureBundleForCs"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2859
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2860
    .local v12, "agentResponse":Landroid/os/Bundle;
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAdminConfigureBundleForCs "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    if-nez p4, :cond_0

    .line 2862
    const-string v4, "UcmService"

    const-string/jumbo v5, "setAdminConfigureBundleForCs : Bundle is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2864
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0x10

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2927
    .end local v12    # "agentResponse":Landroid/os/Bundle;
    .local v13, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v13

    .line 2868
    .end local v13    # "agentResponse":Ljava/lang/Object;
    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v11

    .line 2869
    .local v11, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v11, :cond_1

    .line 2870
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no agent found for Source = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2872
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2873
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 2877
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 2878
    .local v18, "id":J
    new-instance v10, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2879
    .local v10, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2880
    .local v7, "uid":I
    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v20

    .line 2881
    .local v20, "uriuid":I
    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_2

    move/from16 v7, v20

    .line 2882
    :cond_2
    move/from16 v6, p2

    .line 2884
    .local v6, "user_id":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 2885
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING!!!! setConfigureBundleForCsInternal is NOT allowed for URI = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2887
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2888
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2890
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_3
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2893
    const-string v4, "applet_location"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2894
    .local v15, "appletLocation":Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 2895
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkPluginUsed(Ljava/lang/String;)Z

    move-result v21

    .line 2896
    .local v21, "usedPlugin":Z
    const/4 v4, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_4

    .line 2897
    const-string v4, "UcmService"

    const-string/jumbo v5, "the plugin already is used"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2899
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0x22

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2900
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2902
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->processAdminConfigRequest(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2903
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2904
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0x19

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2905
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2909
    .end local v13    # "agentResponse":Ljava/lang/Object;
    .end local v21    # "usedPlugin":Z
    :cond_5
    invoke-virtual {v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v14

    .line 2910
    .local v14, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v14, :cond_6

    .line 2911
    const-string v4, "UcmService"

    const-string/jumbo v5, "no agentService found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2913
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2914
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2916
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_6
    move/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-interface {v14, v0, v1, v2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v12

    .line 2917
    if-nez v12, :cond_7

    .line 2918
    const-string v4, "UcmService"

    const-string v5, "ERROR: Null Response received from agentService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    new-instance v12, Landroid/os/Bundle;

    .end local v12    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2920
    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2921
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2922
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2924
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_7
    const-string/jumbo v4, "intresponse"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 2925
    .local v17, "response":I
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 2926
    .local v16, "errorcode":I
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPackageSetting Response from plugin:  error code = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v12

    .line 2927
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 21
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "certChain"    # [B
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2078
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCertificateChain "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2081
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2082
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2083
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2084
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2148
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 2089
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2090
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2091
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v20

    .line 2092
    .local v20, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_1

    move/from16 v5, v20

    .line 2093
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2094
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v19

    .line 2095
    .local v19, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_2

    const/16 v19, 0x1

    .line 2097
    :cond_2
    if-eqz p3, :cond_3

    const-string v2, "admin_id"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v15, 0x0

    .line 2100
    .local v15, "ismdmcaller":Z
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2101
    .local v16, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 2102
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! setCertificateChain is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2104
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2105
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 2097
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .end local v15    # "ismdmcaller":Z
    .end local v16    # "id":J
    :cond_4
    const/4 v15, 0x1

    goto :goto_1

    .line 2107
    .restart local v15    # "ismdmcaller":Z
    .restart local v16    # "id":J
    :cond_5
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2110
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2111
    .local v13, "argBundle":Landroid/os/Bundle;
    const-string v2, "callerUid"

    invoke-virtual {v13, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2112
    const-string/jumbo v2, "user_id"

    invoke-virtual {v13, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2113
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v13, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2114
    const-string/jumbo v2, "resource"

    move/from16 v0, v19

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2115
    const-string/jumbo v2, "extraArgs"

    move-object/from16 v0, p3

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2117
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCertificateChain KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCertificateChain KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCertificateChain KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 2123
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_6

    .line 2124
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2126
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2127
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2130
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v12, v2, v0, v1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 2131
    if-nez v10, :cond_7

    .line 2132
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2134
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2135
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2136
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2138
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_7
    const-string v2, "booleanresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 2139
    .local v18, "response":Z
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 2140
    .local v14, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCertificateChain Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    if-nez v18, :cond_8

    if-nez v14, :cond_8

    .line 2143
    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for setCertificateChain"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2145
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2146
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_8
    move-object v11, v10

    .line 2148
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public setConfigureBundleForCs(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "profile"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 2842
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setConfigureBundleForCs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2844
    .local v0, "agentResponse":Landroid/os/Bundle;
    if-nez p3, :cond_0

    .line 2845
    const-string v1, "UcmService"

    const-string/jumbo v2, "setConfigureBundleForCs : Bundle is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    const-string/jumbo v1, "intresponse"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2847
    const-string/jumbo v1, "errorresponse"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2852
    :goto_0
    return-object v0

    .line 2850
    :cond_0
    const-string/jumbo v1, "intresponse"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2851
    const-string/jumbo v1, "errorresponse"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setPackageSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 21
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "option"    # Landroid/os/Bundle;
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2718
    const-string/jumbo v4, "setPackageSetting"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2720
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2721
    .local v12, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p2 .. p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v11

    .line 2722
    .local v11, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v11, :cond_0

    .line 2723
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2724
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2775
    .end local v12    # "agentResponse":Landroid/os/Bundle;
    .local v13, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v13

    .line 2729
    .end local v13    # "agentResponse":Ljava/lang/Object;
    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v10, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2730
    .local v10, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2731
    .local v7, "uid":I
    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v20

    .line 2732
    .local v20, "uriuid":I
    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_1

    move/from16 v7, v20

    .line 2733
    :cond_1
    move/from16 v6, p6

    .line 2736
    .local v6, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 2737
    .local v18, "id":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 2738
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING!!!! setPackageSetting is NOT allowed for URI = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2740
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2741
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 2743
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2746
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 2747
    .local v15, "argBundle":Landroid/os/Bundle;
    const-string v4, "callerUid"

    invoke-virtual {v15, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2748
    const-string/jumbo v4, "user_id"

    invoke-virtual {v15, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2749
    const-string/jumbo v4, "ownerUid"

    invoke-virtual {v15, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2750
    const-string/jumbo v4, "extraArgs"

    move-object/from16 v0, p5

    invoke-virtual {v15, v4, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2752
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPackageSetting KEY_RESOURCE_ID= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "resource"

    const/4 v9, -0x2

    invoke-virtual {v15, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPackageSetting KEY_USER_ID= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "user_id"

    const/4 v9, -0x2

    invoke-virtual {v15, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPackageSetting KEY_CALLER_UID= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "callerUid"

    const/4 v9, -0x2

    invoke-virtual {v15, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    invoke-virtual {v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v14

    .line 2758
    .local v14, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v14, :cond_3

    .line 2759
    const-string v4, "UcmService"

    const-string/jumbo v5, "no agentService found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2761
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2762
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2764
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_3
    move/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v14, v0, v1, v2, v15}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->setPackageSetting(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v12

    .line 2765
    if-nez v12, :cond_4

    .line 2766
    const-string v4, "UcmService"

    const-string v5, "ERROR: Null Response received from agentService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    new-instance v12, Landroid/os/Bundle;

    .end local v12    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2768
    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2769
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2770
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2772
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v4, "intresponse"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 2773
    .local v17, "response":I
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 2774
    .local v16, "errorcode":I
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPackageSetting Response from plugin:  error code = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v12

    .line 2775
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public setState(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xe

    .line 3203
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    const-string/jumbo v4, "setState"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3205
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3207
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 3208
    const-string v4, "UcmService"

    const-string/jumbo v5, "uri is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0x10

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3241
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3213
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const/4 v0, 0x0

    .line 3214
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v4, 0x1

    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_1

    .line 3215
    const-string v4, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3220
    :goto_1
    if-nez v0, :cond_2

    .line 3221
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no agent found for Source = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3223
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3217
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_1
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 3226
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 3227
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_3

    .line 3228
    const-string v4, "UcmService"

    const-string/jumbo v5, "no agentService found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3230
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3233
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_3
    invoke-interface {v3, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->setState(I)Landroid/os/Bundle;

    move-result-object v1

    .line 3234
    if-nez v1, :cond_4

    .line 3235
    const-string v4, "UcmService"

    const-string v5, "ERROR: Null Response received from agentService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3237
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3238
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_4
    move-object v2, v1

    .line 3241
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public sign(Ljava/lang/String;[BLjava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 20
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "algo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2443
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2445
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2446
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2447
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2449
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2450
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    .line 2519
    :goto_0
    return-object v2

    .line 2454
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2455
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2456
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v18

    .line 2457
    .local v18, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_1

    move/from16 v5, v18

    .line 2458
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2459
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v17

    .line 2460
    .local v17, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    const/16 v17, 0x1

    .line 2463
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2464
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 2465
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! sign is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2467
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2468
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto :goto_0

    .line 2470
    :cond_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2473
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2474
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v19

    .line 2475
    .local v19, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    .line 2476
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    .line 2477
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    .end local v19    # "userId":I
    :cond_4
    :goto_1
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2484
    .local v12, "argBundle":Landroid/os/Bundle;
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2485
    const-string/jumbo v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2486
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2487
    const-string/jumbo v2, "resource"

    move/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2489
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .line 2495
    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_6

    .line 2496
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2498
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2499
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 2479
    .end local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v12    # "argBundle":Landroid/os/Bundle;
    .restart local v19    # "userId":I
    :cond_5
    const-string v2, "UcmService"

    const-string/jumbo v3, "sign user id id not valid. Keeping same userid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2501
    .end local v19    # "userId":I
    .restart local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .restart local v12    # "argBundle":Landroid/os/Bundle;
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v11, v2, v0, v1, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->sign(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 2502
    if-nez v10, :cond_7

    .line 2503
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2505
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2506
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2507
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 2509
    :cond_7
    const-string v2, "bytearrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 2510
    .local v16, "response":[B
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 2511
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    if-nez v16, :cond_8

    .line 2514
    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for sign"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2516
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2517
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 2519
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public unwrapDek(Ljava/lang/String;[B)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "wrappedDek"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    .line 1456
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unwrapDek "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1461
    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v5, "unwrapDek"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1468
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 1469
    :cond_0
    const-string v5, "UcmService"

    const-string/jumbo v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1471
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    .line 1502
    :goto_0
    return-object v5

    .line 1462
    :catch_0
    move-exception v3

    .line 1463
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1464
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1465
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1474
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    .line 1475
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    .line 1476
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 1481
    :goto_1
    if-nez v0, :cond_3

    .line 1482
    const-string v5, "UcmService"

    const-string/jumbo v6, "no agent found for Source = com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1484
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1478
    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 1486
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v2

    .line 1487
    .local v2, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v2, :cond_4

    .line 1488
    const-string v5, "UcmService"

    const-string/jumbo v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1490
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1493
    :cond_4
    invoke-interface {v2, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->unwrapDek([B)Landroid/os/Bundle;

    move-result-object v1

    .line 1494
    if-nez v1, :cond_5

    .line 1495
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1497
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1498
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1500
    :cond_5
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1501
    .local v4, "errorcode":I
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unwrapDek Response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public verifyPin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3029
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "verifyPin : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3032
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const/4 v6, 0x1

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_1

    .line 3033
    :cond_0
    const-string v6, "UcmService"

    const-string/jumbo v7, "uri is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0x10

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3084
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3038
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    if-eqz p2, :cond_2

    const/4 v6, 0x1

    const-string v7, ""

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_3

    .line 3039
    :cond_2
    const-string v6, "UcmService"

    const-string/jumbo v7, "pin is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0x10

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3041
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3044
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    .line 3045
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v6, 0x1

    const-string v7, "boot_test"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_4

    .line 3046
    const-string v6, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3051
    :goto_1
    if-nez v0, :cond_5

    .line 3052
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no agent found for Source = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3053
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0xe

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3054
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3048
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_4
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 3056
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 3057
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_6

    .line 3058
    const-string v6, "UcmService"

    const-string/jumbo v7, "no agentService found"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0xe

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3060
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3063
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    invoke-interface {v3, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->verifyPin(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3064
    if-nez v1, :cond_7

    .line 3065
    const-string v6, "UcmService"

    const-string v7, "ERROR: Null Response received from agentService"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3067
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0xd

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3068
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3071
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_7
    const-string/jumbo v6, "state"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3072
    .local v5, "state":I
    const-string/jumbo v6, "remainCnt"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3073
    .local v4, "remainCnt":I
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LOCK_STATE : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "REMAIN_COUNT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    const/16 v6, 0x83

    if-ne v5, v6, :cond_8

    .line 3076
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    .line 3079
    :cond_8
    const/16 v6, 0x85

    if-ne v5, v6, :cond_9

    .line 3080
    const-string v6, "UcmService"

    const-string/jumbo v7, "state changed to blocked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    const/16 v6, 0x85

    invoke-direct {p0, v6, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendStateChangeBroadcast(ILjava/lang/String;)V

    :cond_9
    move-object v2, v1

    .line 3084
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3089
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "verifyPuk : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3092
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const/4 v6, 0x1

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_1

    .line 3093
    :cond_0
    const-string v6, "UcmService"

    const-string/jumbo v7, "uri is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0x10

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3137
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3098
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    if-eqz p3, :cond_2

    const/4 v6, 0x1

    const-string v7, ""

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_3

    .line 3099
    :cond_2
    const-string v6, "UcmService"

    const-string/jumbo v7, "pin is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0x10

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3101
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3104
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    .line 3105
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v6, 0x1

    const-string v7, "boot_test"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_4

    .line 3106
    const-string v6, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3111
    :goto_1
    if-nez v0, :cond_5

    .line 3112
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no agent found for Source = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0xe

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3114
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3108
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_4
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 3117
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 3118
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_6

    .line 3119
    const-string v6, "UcmService"

    const-string/jumbo v7, "no agentService found"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0xe

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3121
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3124
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3125
    if-nez v1, :cond_7

    .line 3126
    const-string v6, "UcmService"

    const-string v7, "ERROR: Null Response received from agentService"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3128
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0xd

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3129
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3132
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_7
    const-string/jumbo v6, "state"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3133
    .local v5, "state":I
    const-string/jumbo v6, "remainCnt"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3134
    .local v4, "remainCnt":I
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LOCK_STATE : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "REMAIN_COUNT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 3137
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method
