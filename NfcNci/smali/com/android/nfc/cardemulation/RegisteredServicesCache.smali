.class public Lcom/android/nfc/cardemulation/RegisteredServicesCache;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;,
        Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;,
        Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;,
        Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "RegisteredServicesCache"

.field static final XML_INDENT_OUTPUT_FEATURE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"


# instance fields
.field OTHER_SUPPORT:Z

.field isInit:Z

.field final mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

.field mChangedPackage:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field final mDynamicAidsFile:Landroid/util/AtomicFile;

.field private mDynamicOtherComponent:Landroid/content/ComponentName;

.field final mDynamicServiceManager:Lcom/android/nfc/cardemulation/DynamicServiceManager;

.field final mDynamicServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mGsmaLock:Ljava/lang/Object;

.field final mLock:Ljava/lang/Object;

.field final mOthersFile:Landroid/util/AtomicFile;

.field mPriorityOffHostSeId:I

.field final mReceiver:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field final mUserServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    .prologue
    .line 169
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    .line 93
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicServices:Ljava/util/ArrayList;

    .line 106
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mGsmaLock:Ljava/lang/Object;

    .line 109
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->isInit:Z

    .line 170
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 171
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    .line 173
    invoke-static {}, Lcom/android/nfc/NfcFeatureUtil;->getInstance()Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcFeatureUtil;->supportOtherCategory()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->OTHER_SUPPORT:Z

    .line 176
    new-instance v2, Lcom/android/nfc/cardemulation/DynamicServiceManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Lcom/android/nfc/cardemulation/DynamicServiceManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicServiceManager:Lcom/android/nfc/cardemulation/DynamicServiceManager;

    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->loadDynamicServices()V

    .line 180
    new-instance v21, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;

    invoke-direct/range {v21 .. v22}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;-><init>(Lcom/android/nfc/cardemulation/RegisteredServicesCache;)V

    .line 240
    .local v21, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 242
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 243
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v2, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v2, "package"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 253
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 254
    .local v9, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 260
    sget-object v2, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v2}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 263
    .local v13, "knoxFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 269
    new-instance v17, Landroid/content/IntentFilter;

    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    .line 270
    .local v17, "knoxPolicyFilter":Landroid/content/IntentFilter;
    const-string v2, "com.sec.knox.container.action.nfc.policy"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/BroadcastReceiver;

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v18, "com.sec.knox.container.peripheral.POLICY_UPDATE"

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 277
    .end local v13    # "knoxFilter":Landroid/content/IntentFilter;
    .end local v17    # "knoxPolicyFilter":Landroid/content/IntentFilter;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v20

    .line 278
    .local v20, "dataDir":Ljava/io/File;
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string v4, "dynamic_aids.xml"

    move-object/from16 v0, v20

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    .line 280
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string v4, "other_status.xml"

    move-object/from16 v0, v20

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mOthersFile:Landroid/util/AtomicFile;

    .line 282
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->OTHER_SUPPORT:Z

    if-nez v2, :cond_1

    .line 283
    const-string v2, "RegisteredServicesCache"

    const-string v3, "This is not supported other category yet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/android/nfc/cardemulation/RegisteredServicesCache;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/cardemulation/RegisteredServicesCache;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->deleteDynamicServices(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/nfc/cardemulation/RegisteredServicesCache;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/cardemulation/RegisteredServicesCache;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCacheForKnox(I)V

    return-void
.end method

.method private deleteDynamicServices(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1283
    if-nez p1, :cond_0

    .line 1296
    :goto_0
    return-void

    .line 1284
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mGsmaLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1285
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1286
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const/4 v1, 0x0

    .line 1287
    .local v1, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1288
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 1290
    .restart local v1    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1291
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1293
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .end local v1    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .restart local v1    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1295
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicServiceManager:Lcom/android/nfc/cardemulation/DynamicServiceManager;

    invoke-virtual {v2, p1}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->deleteDynamicServices(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    .line 162
    .local v0, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    .end local v0    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;-><init>(Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;)V

    .line 164
    .restart local v0    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    :cond_0
    return-object v0
.end method

.method private invalidateCacheForKnox(I)V
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    .line 290
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {p1}, Lcom/android/nfc/NfcService;->isContainerId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 297
    :cond_0
    return-void
.end method

.method private loadDynamicServices()V
    .locals 3

    .prologue
    .line 1302
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicServiceManager:Lcom/android/nfc/cardemulation/DynamicServiceManager;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->loadAllDynamicServices()Ljava/util/ArrayList;

    move-result-object v0

    .line 1304
    .local v0, "dynamicServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mGsmaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1305
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1306
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1307
    :cond_0
    monitor-exit v2

    .line 1308
    return-void

    .line 1307
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readDynamicAidsLocked()V
    .locals 20

    .prologue
    .line 693
    const/4 v9, 0x0

    .line 695
    .local v9, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_1

    .line 696
    const-string v18, "RegisteredServicesCache"

    const-string v19, "Dynamic AIDs file does not exist."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    if-eqz v9, :cond_0

    .line 767
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v9

    .line 700
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 701
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-interface {v13, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 702
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    .line 703
    .local v8, "eventType":I
    :goto_1
    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v8, v0, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v8, v0, :cond_2

    .line 705
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    goto :goto_1

    .line 707
    :cond_2
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 708
    .local v15, "tagName":Ljava/lang/String;
    const-string v18, "services"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 709
    const/4 v12, 0x0

    .line 710
    .local v12, "inService":Z
    const/4 v3, 0x0

    .line 711
    .local v3, "currentComponent":Landroid/content/ComponentName;
    const/4 v5, -0x1

    .line 712
    .local v5, "currentUid":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v4, "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v8, v0, :cond_c

    .line 714
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 715
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v8, v0, :cond_9

    .line 716
    const-string v18, "service"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 717
    const/16 v18, 0x0

    const-string v19, "component"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, "compString":Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "uid"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 719
    .local v16, "uidString":Ljava/lang/String;
    if-eqz v2, :cond_3

    if-nez v16, :cond_6

    .line 720
    :cond_3
    const-string v18, "RegisteredServicesCache"

    const-string v19, "Invalid service attributes"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .end local v2    # "compString":Ljava/lang/String;
    .end local v16    # "uidString":Ljava/lang/String;
    :cond_4
    :goto_3
    const-string v18, "aid-group"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    if-eqz v12, :cond_5

    .line 732
    invoke-static {v13}, Landroid/nfc/cardemulation/AidGroup;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v10

    .line 733
    .local v10, "group":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v10, :cond_7

    .line 734
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    .end local v10    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_5
    :goto_4
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    goto :goto_2

    .line 723
    .restart local v2    # "compString":Ljava/lang/String;
    .restart local v16    # "uidString":Ljava/lang/String;
    :cond_6
    :try_start_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 724
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 725
    const/4 v12, 0x1

    goto :goto_3

    .line 726
    :catch_0
    move-exception v7

    .line 727
    .local v7, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v18, "RegisteredServicesCache"

    const-string v19, "Could not parse service uid"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 761
    .end local v2    # "compString":Ljava/lang/String;
    .end local v3    # "currentComponent":Landroid/content/ComponentName;
    .end local v4    # "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v5    # "currentUid":I
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "eventType":I
    .end local v12    # "inService":Z
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "tagName":Ljava/lang/String;
    .end local v16    # "uidString":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 762
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v18, "RegisteredServicesCache"

    const-string v19, "Could not parse dynamic AIDs file, trashing."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/AtomicFile;->delete()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 765
    if-eqz v9, :cond_0

    .line 767
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 768
    :catch_2
    move-exception v18

    goto/16 :goto_0

    .line 736
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "currentComponent":Landroid/content/ComponentName;
    .restart local v4    # "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .restart local v5    # "currentUid":I
    .restart local v8    # "eventType":I
    .restart local v10    # "group":Landroid/nfc/cardemulation/AidGroup;
    .restart local v12    # "inService":Z
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "tagName":Ljava/lang/String;
    :cond_7
    :try_start_7
    const-string v18, "RegisteredServicesCache"

    const-string v19, "Could not parse AID group."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 765
    .end local v3    # "currentComponent":Landroid/content/ComponentName;
    .end local v4    # "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v5    # "currentUid":I
    .end local v8    # "eventType":I
    .end local v10    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v12    # "inService":Z
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "tagName":Ljava/lang/String;
    :catchall_0
    move-exception v18

    if-eqz v9, :cond_8

    .line 767
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 769
    :cond_8
    :goto_5
    throw v18

    .line 739
    .restart local v3    # "currentComponent":Landroid/content/ComponentName;
    .restart local v4    # "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .restart local v5    # "currentUid":I
    .restart local v8    # "eventType":I
    .restart local v12    # "inService":Z
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "tagName":Ljava/lang/String;
    :cond_9
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v8, v0, :cond_5

    .line 740
    :try_start_9
    const-string v18, "service"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 742
    if-eqz v3, :cond_b

    if-ltz v5, :cond_b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_b

    .line 744
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    .line 745
    .local v17, "userId":I
    new-instance v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    invoke-direct {v6, v5}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;-><init>(I)V

    .line 746
    .local v6, "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/AidGroup;

    .line 747
    .restart local v10    # "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v0, v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v10}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 749
    .end local v10    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v14

    .line 750
    .local v14, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v0, v14, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    .end local v6    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v17    # "userId":I
    :cond_b
    const/4 v5, -0x1

    .line 753
    const/4 v3, 0x0

    .line 754
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 755
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 765
    .end local v3    # "currentComponent":Landroid/content/ComponentName;
    .end local v4    # "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v5    # "currentUid":I
    .end local v12    # "inService":Z
    :cond_c
    if-eqz v9, :cond_0

    .line 767
    :try_start_a
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    .line 768
    :catch_3
    move-exception v18

    goto/16 :goto_0

    .end local v8    # "eventType":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "tagName":Ljava/lang/String;
    :catch_4
    move-exception v18

    goto/16 :goto_0

    :catch_5
    move-exception v19

    goto :goto_5
.end method

.method private readOthersLocked()V
    .locals 18

    .prologue
    .line 810
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->OTHER_SUPPORT:Z

    if-nez v15, :cond_1

    .line 811
    const-string v15, "RegisteredServicesCache"

    const-string v16, "Other is not supported"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    const-string v15, "RegisteredServicesCache"

    const-string v16, "read others locked"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/4 v8, 0x0

    .line 819
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mOthersFile:Landroid/util/AtomicFile;

    invoke-virtual {v15}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_2

    .line 820
    const-string v15, "RegisteredServicesCache"

    const-string v16, "Dynamic AIDs file does not exist."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    if-eqz v8, :cond_0

    .line 881
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 882
    :catch_0
    move-exception v15

    goto :goto_0

    .line 823
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mOthersFile:Landroid/util/AtomicFile;

    invoke-virtual {v15}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v8

    .line 824
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 825
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v15, 0x0

    invoke-interface {v9, v8, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 826
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 827
    .local v7, "eventType":I
    :goto_1
    const/4 v15, 0x2

    if-eq v7, v15, :cond_3

    const/4 v15, 0x1

    if-eq v7, v15, :cond_3

    .line 829
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_1

    .line 831
    :cond_3
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 832
    .local v12, "tagName":Ljava/lang/String;
    const-string v15, "services"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 833
    const/4 v1, 0x0

    .line 834
    .local v1, "checked":Z
    const/4 v4, 0x0

    .line 835
    .local v4, "currentComponent":Landroid/content/ComponentName;
    const/4 v5, -0x1

    .line 837
    .local v5, "currentUid":I
    :goto_2
    const/4 v15, 0x1

    if-eq v7, v15, :cond_a

    .line 838
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 839
    const/4 v15, 0x2

    if-ne v7, v15, :cond_8

    .line 840
    const-string v15, "service"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 841
    const/4 v15, 0x0

    const-string v16, "component"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 842
    .local v3, "compString":Ljava/lang/String;
    const/4 v15, 0x0

    const-string v16, "uid"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 843
    .local v13, "uidString":Ljava/lang/String;
    const/4 v15, 0x0

    const-string v16, "checked"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 844
    .local v2, "checkedString":Ljava/lang/String;
    if-eqz v3, :cond_4

    if-eqz v13, :cond_4

    if-nez v2, :cond_6

    .line 845
    :cond_4
    const-string v15, "RegisteredServicesCache"

    const-string v16, "Invalid service attributes"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    .end local v2    # "checkedString":Ljava/lang/String;
    .end local v3    # "compString":Ljava/lang/String;
    .end local v13    # "uidString":Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    goto :goto_2

    .line 848
    .restart local v2    # "checkedString":Ljava/lang/String;
    .restart local v3    # "compString":Ljava/lang/String;
    .restart local v13    # "uidString":Ljava/lang/String;
    :cond_6
    :try_start_3
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 849
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 850
    const-string v15, "true"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v15

    if-eqz v15, :cond_7

    const/4 v1, 0x1

    :goto_4
    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    .line 851
    :catch_1
    move-exception v6

    .line 852
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v15, "RegisteredServicesCache"

    const-string v16, "Could not parse service uid"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 875
    .end local v1    # "checked":Z
    .end local v2    # "checkedString":Ljava/lang/String;
    .end local v3    # "compString":Ljava/lang/String;
    .end local v4    # "currentComponent":Landroid/content/ComponentName;
    .end local v5    # "currentUid":I
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "eventType":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "uidString":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 876
    .local v6, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v15, "RegisteredServicesCache"

    const-string v16, "Could not parse others AIDs file, trashing."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mOthersFile:Landroid/util/AtomicFile;

    invoke-virtual {v15}, Landroid/util/AtomicFile;->delete()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 879
    if-eqz v8, :cond_0

    .line 881
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 882
    :catch_3
    move-exception v15

    goto/16 :goto_0

    .line 856
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v1    # "checked":Z
    .restart local v4    # "currentComponent":Landroid/content/ComponentName;
    .restart local v5    # "currentUid":I
    .restart local v7    # "eventType":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "tagName":Ljava/lang/String;
    :cond_8
    const/4 v15, 0x3

    if-ne v7, v15, :cond_5

    .line 857
    :try_start_7
    const-string v15, "service"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 859
    if-eqz v4, :cond_9

    if-ltz v5, :cond_9

    .line 860
    const-string v15, "RegisteredServicesCache"

    const-string v16, " end of service tag"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 862
    .local v14, "userId":I
    new-instance v11, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;

    invoke-direct {v11, v5, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;-><init>(IZ)V

    .line 863
    .local v11, "status":Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;
    const-string v15, "RegisteredServicesCache"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " ## user id - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v10

    .line 865
    .local v10, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v15, v10, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->others:Ljava/util/HashMap;

    invoke-virtual {v15, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 867
    .end local v10    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v11    # "status":Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;
    .end local v14    # "userId":I
    :cond_9
    const/4 v5, -0x1

    .line 868
    const/4 v4, 0x0

    .line 869
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 879
    .end local v1    # "checked":Z
    .end local v4    # "currentComponent":Landroid/content/ComponentName;
    .end local v5    # "currentUid":I
    :cond_a
    if-eqz v8, :cond_0

    .line 881
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 882
    :catch_4
    move-exception v15

    goto/16 :goto_0

    .line 879
    .end local v7    # "eventType":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    :catchall_0
    move-exception v15

    if-eqz v8, :cond_b

    .line 881
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 883
    :cond_b
    :goto_5
    throw v15

    .line 882
    :catch_5
    move-exception v16

    goto :goto_5
.end method

.method private registerDynamicServices(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1317
    .local p1, "staticServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1318
    .local v4, "updatedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1320
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 1321
    .local v3, "staticService":Landroid/nfc/cardemulation/ApduServiceInfo;
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 1322
    .local v0, "dynamicService":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1324
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1330
    .end local v0    # "dynamicService":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "staticService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_2
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1331
    return-object v4
.end method

.method private writeDynamicAidsLocked()Z
    .locals 13

    .prologue
    const/4 v10, 0x1

    .line 775
    const/4 v1, 0x0

    .line 777
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 778
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 779
    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v9, "utf-8"

    invoke-interface {v6, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 780
    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 781
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v11, 0x1

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 782
    const/4 v9, 0x0

    const-string v11, "services"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 783
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 784
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    .line 785
    .local v8, "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v9, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 786
    .local v7, "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    const/4 v9, 0x0

    const-string v11, "service"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 787
    const/4 v11, 0x0

    const-string v12, "component"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v11, v12, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 788
    const/4 v11, 0x0

    const-string v12, "uid"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    iget v9, v9, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v11, v12, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 789
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    iget-object v9, v9, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 790
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v2, v6}, Landroid/nfc/cardemulation/AidGroup;->writeAsXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 799
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v3    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    .end local v8    # "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catch_0
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "RegisteredServicesCache"

    const-string v10, "Error writing dynamic AIDs"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    if-eqz v1, :cond_0

    .line 802
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v9, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 804
    :cond_0
    const/4 v9, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return v9

    .line 792
    .restart local v3    # "i":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v7    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    .restart local v8    # "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_1
    const/4 v9, 0x0

    :try_start_1
    const-string v11, "service"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 783
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 795
    .end local v8    # "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_3
    const/4 v9, 0x0

    const-string v11, "services"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 796
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 797
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v9, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v9, v10

    .line 798
    goto :goto_3
.end method

.method private writeOthersLocked()Z
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 890
    iget-boolean v8, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->OTHER_SUPPORT:Z

    if-nez v8, :cond_0

    .line 891
    const-string v8, "RegisteredServicesCache"

    const-string v10, "Other is not supported"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 932
    :goto_0
    return v8

    .line 895
    :cond_0
    const-string v8, "RegisteredServicesCache"

    const-string v11, "write Others Locked()"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const/4 v1, 0x0

    .line 899
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v8, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mOthersFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 900
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 901
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v8, "utf-8"

    invoke-interface {v4, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 902
    const/4 v8, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v4, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 903
    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v11, 0x1

    invoke-interface {v4, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 904
    const/4 v8, 0x0

    const-string v11, "services"

    invoke-interface {v4, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 906
    const-string v8, "RegisteredServicesCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "userServices.size "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 908
    iget-object v8, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    .line 909
    .local v6, "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v8, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 911
    .local v7, "userId":I
    const-string v8, "RegisteredServicesCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "userId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const-string v8, "RegisteredServicesCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "others size : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->others:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v8, v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->others:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 914
    .local v5, "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;>;"
    const-string v11, "RegisteredServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " component name - "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " checked: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;

    iget-boolean v8, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;->checked:Z

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/4 v8, 0x0

    const-string v11, "service"

    invoke-interface {v4, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 917
    const/4 v11, 0x0

    const-string v12, "component"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v11, v12, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 918
    const/4 v11, 0x0

    const-string v12, "uid"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;

    iget v8, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v11, v12, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 919
    const/4 v11, 0x0

    const-string v12, "checked"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;

    iget-boolean v8, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;->checked:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v11, v12, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 920
    const/4 v8, 0x0

    const-string v11, "service"

    invoke-interface {v4, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 927
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;>;"
    .end local v6    # "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v7    # "userId":I
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "RegisteredServicesCache"

    const-string v10, "Error writing dynamic AIDs"

    invoke-static {v8, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 929
    if-eqz v1, :cond_1

    .line 930
    iget-object v8, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mOthersFile:Landroid/util/AtomicFile;

    invoke-virtual {v8, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_1
    move v8, v9

    .line 932
    goto/16 :goto_0

    .line 907
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .restart local v7    # "userId":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 923
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v7    # "userId":I
    :cond_3
    const/4 v8, 0x0

    :try_start_1
    const-string v11, "services"

    invoke-interface {v4, v8, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 924
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 925
    iget-object v8, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mOthersFile:Landroid/util/AtomicFile;

    invoke-virtual {v8, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v10

    .line 926
    goto/16 :goto_0
.end method


# virtual methods
.method addOrUpdateDynamicService(ILandroid/nfc/cardemulation/ApduServiceInfo;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 1235
    if-nez p2, :cond_0

    .line 1252
    :goto_0
    return-void

    .line 1236
    :cond_0
    invoke-virtual {p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1237
    .local v1, "component":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mGsmaLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1238
    if-eqz v1, :cond_2

    .line 1239
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1240
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const/4 v0, 0x0

    .line 1241
    .local v0, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1242
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 1243
    .restart local v0    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1244
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1249
    .end local v0    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicServices:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    goto :goto_0

    .line 1250
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public clearAndSetSelectedServices(ILjava/util/List;Ljava/lang/String;)Z
    .locals 15
    .param p1, "userId"    # I
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1002
    .local p2, "selectedService":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const-string v11, "other"

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1003
    sget-boolean v11, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "RegisteredServicesCache"

    const-string v12, "clearAndSetSelectedServices - Payment is not support this function"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_0
    const/4 v9, 0x1

    .line 1063
    :cond_1
    :goto_0
    return v9

    .line 1007
    :cond_2
    const/4 v3, 0x0

    .line 1008
    .local v3, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const/4 v9, 0x0

    .line 1010
    .local v9, "success":Z
    iget-object v12, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1011
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v10

    .line 1014
    .local v10, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v11, v10, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1015
    .local v5, "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1016
    .local v1, "component":Landroid/content/ComponentName;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 1018
    .local v7, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string v11, "other"

    invoke-virtual {v7, v11}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1019
    sget-boolean v11, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v11, :cond_4

    const-string v13, "RegisteredServicesCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[OTHER_CATEGORY] component name - "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_4
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1021
    sget-boolean v11, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v11, :cond_5

    const-string v11, "RegisteredServicesCache"

    const-string v13, "setOtherService"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_5
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/nfc/cardemulation/ApduServiceInfo;->setOtherServiceState(Z)V

    goto :goto_1

    .line 1055
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .end local v7    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v10    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 1025
    .restart local v1    # "component":Landroid/content/ComponentName;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .restart local v7    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v10    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_6
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v7, v11}, Landroid/nfc/cardemulation/ApduServiceInfo;->setOtherServiceState(Z)V

    goto :goto_1

    .line 1029
    :cond_7
    sget-boolean v11, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v11, :cond_3

    const-string v11, "RegisteredServicesCache"

    const-string v13, "No other category"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1034
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v5    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .end local v7    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_8
    iget-object v11, v10, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->others:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1035
    .local v6, "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;>;"
    sget-boolean v11, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v11, :cond_9

    const-string v13, "RegisteredServicesCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[OTHER_CATEGORY] component name - "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " checked: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;

    iget-boolean v11, v11, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;->checked:Z

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_9
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1037
    .restart local v1    # "component":Landroid/content/ComponentName;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;

    .line 1038
    .local v8, "status":Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1039
    sget-boolean v11, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v11, :cond_a

    const-string v11, "RegisteredServicesCache"

    const-string v13, "checked"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_a
    const/4 v11, 0x1

    iput-boolean v11, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;->checked:Z

    goto :goto_2

    .line 1043
    :cond_b
    const/4 v11, 0x0

    iput-boolean v11, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;->checked:Z

    goto :goto_2

    .line 1047
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v6    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;>;"
    .end local v8    # "status":Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;
    :cond_c
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeOthersLocked()Z

    move-result v9

    .line 1049
    if-eqz v9, :cond_e

    .line 1050
    new-instance v4, Ljava/util/ArrayList;

    iget-object v11, v10, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .local v4, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    move-object v3, v4

    .line 1055
    .end local v4    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .restart local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :goto_3
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1057
    if-eqz v9, :cond_1

    .line 1058
    sget-boolean v11, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v11, :cond_d

    const-string v11, "RegisteredServicesCache"

    const-string v12, "onPreferredOtherServiceUpdated due to Routig changed"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_d
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    move/from16 v0, p1

    invoke-interface {v11, v0, v3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onPreferredOtherServiceUpdated(ILjava/util/List;)V

    goto/16 :goto_0

    .line 1053
    :cond_e
    :try_start_2
    const-string v11, "RegisteredServicesCache"

    const-string v13, "Fail to other checked"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method containsServiceLocked(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z
    .locals 3
    .param p2, "serviceName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 343
    .local v1, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 345
    .end local v1    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method deleteDynamicService(ILandroid/content/ComponentName;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 1262
    if-nez p2, :cond_0

    .line 1275
    :goto_0
    return-void

    .line 1263
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mGsmaLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1264
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1265
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const/4 v1, 0x0

    .line 1266
    .local v1, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1267
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 1268
    .restart local v1    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1269
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1273
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1274
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    goto :goto_0

    .line 1273
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .end local v1    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1188
    const-string v3, "Registered HCE services for current user: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1189
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 1190
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 1191
    .local v1, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v1, p1, p2, p3}, Landroid/nfc/cardemulation/ApduServiceInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1192
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1194
    .end local v1    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_0
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1197
    const-string v3, "Registered dynamic services by GSMA API:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1198
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 1199
    .restart local v1    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v1, p1, p2, p3}, Landroid/nfc/cardemulation/ApduServiceInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1200
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1202
    .end local v1    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_1
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1203
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicServiceManager:Lcom/android/nfc/cardemulation/DynamicServiceManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1205
    return-void
.end method

.method dump(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 337
    .local v1, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    sget-boolean v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "RegisteredServicesCache"

    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    .end local v1    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_1
    return-void
.end method

.method public getAidGroupForService(IILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "category"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1127
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    .line 1128
    .local v0, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v0, :cond_1

    .line 1129
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 1130
    const-string v2, "RegisteredServicesCache"

    const-string v3, "UID mismatch"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :goto_0
    return-object v1

    .line 1133
    :cond_0
    invoke-virtual {v0, p4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDynamicAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v1

    goto :goto_0

    .line 1135
    :cond_1
    const-string v2, "RegisteredServicesCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getDynamicServiceManagerInstance()Lcom/android/nfc/cardemulation/DynamicServiceManager;
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicServiceManager:Lcom/android/nfc/cardemulation/DynamicServiceManager;

    return-object v0
.end method

.method getInstalledServices(I)Ljava/util/ArrayList;
    .locals 24
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    sget-object v20, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static/range {v20 .. v20}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 385
    invoke-static/range {p1 .. p1}, Lcom/android/nfc/NfcService;->isContainerId(I)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 386
    const/16 p1, 0x0

    .line 392
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "android"

    const/16 v22, 0x0

    new-instance v23, Landroid/os/UserHandle;

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual/range {v20 .. v23}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 399
    .local v9, "pm":Landroid/content/pm/PackageManager;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v19, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x80

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, p1

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v14

    .line 405
    .local v14, "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.nfc.cardemulation.action.OFF_HOST_APDU_SERVICE"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x80

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, p1

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    .line 408
    .local v11, "resolvedOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v14, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 413
    sget-object v20, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static/range {v20 .. v20}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "persona"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PersonaManager;

    .line 417
    .local v8, "personaMgr":Landroid/os/PersonaManager;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 418
    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 420
    :cond_1
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v20

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/nfc/NfcService;->getProfiles(I)Ljava/util/List;

    move-result-object v10

    .line 422
    .local v10, "profilesIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 423
    .local v5, "i":Ljava/lang/Integer;
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x80

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v15

    .line 426
    .local v15, "resolvedServicesFromKnox":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v14, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 428
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.nfc.cardemulation.action.OFF_HOST_APDU_SERVICE"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x80

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    .line 431
    .local v12, "resolvedOffHostServicesFromKnox":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v14, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 394
    .end local v5    # "i":Ljava/lang/Integer;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "personaMgr":Landroid/os/PersonaManager;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "profilesIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "resolvedOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "resolvedOffHostServicesFromKnox":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15    # "resolvedServicesFromKnox":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v19    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :catch_0
    move-exception v4

    .line 395
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v20, "RegisteredServicesCache"

    const-string v21, "Could not create user package context"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/16 v19, 0x0

    .line 492
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :goto_1
    return-object v19

    .line 437
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "resolvedOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v14    # "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v19    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_3
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 439
    .local v13, "resolvedService":Landroid/content/pm/ResolveInfo;
    :try_start_1
    invoke-interface {v11, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    const/4 v7, 0x1

    .line 440
    .local v7, "onHost":Z
    :goto_3
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v18, v0

    .line 441
    .local v18, "si":Landroid/content/pm/ServiceInfo;
    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .local v3, "componentName":Landroid/content/ComponentName;
    const-string v20, "android.permission.NFC"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_6

    .line 445
    const-string v20, "RegisteredServicesCache"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Skipping application component "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": it must request the permission "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "android.permission.NFC"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 480
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "onHost":Z
    .end local v18    # "si":Landroid/content/pm/ServiceInfo;
    :catch_1
    move-exception v4

    .line 481
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v20, "RegisteredServicesCache"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unable to load component info "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v13}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 439
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 450
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    .restart local v7    # "onHost":Z
    .restart local v18    # "si":Landroid/content/pm/ServiceInfo;
    :cond_6
    :try_start_2
    const-string v20, "android.permission.BIND_NFC_SERVICE"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 452
    const-string v20, "RegisteredServicesCache"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Skipping APDU service "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": it does not require the permission "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "android.permission.BIND_NFC_SERVICE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 482
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "onHost":Z
    .end local v18    # "si":Landroid/content/pm/ServiceInfo;
    :catch_2
    move-exception v4

    .line 483
    .local v4, "e":Ljava/io/IOException;
    const-string v20, "RegisteredServicesCache"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unable to load component info "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v13}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 458
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    .restart local v7    # "onHost":Z
    .restart local v18    # "si":Landroid/content/pm/ServiceInfo;
    :cond_7
    :try_start_3
    new-instance v16, Landroid/nfc/cardemulation/ApduServiceInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mPriorityOffHostSeId:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-direct {v0, v9, v13, v7, v1}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;ZI)V

    .line 459
    .local v16, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v16, :cond_4

    .line 460
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mChangedPackage:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 466
    const-string v17, "DH"

    .line 467
    .local v17, "serviceType":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;->getSeId()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 468
    const-string v17, "ESE"

    .line 474
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServiceInstalled(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 470
    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;->getSeId()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 471
    const-string v17, "UICC"
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 488
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "onHost":Z
    .end local v13    # "resolvedService":Landroid/content/pm/ResolveInfo;
    .end local v16    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v17    # "serviceType":Ljava/lang/String;
    .end local v18    # "si":Landroid/content/pm/ServiceInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicServices:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_2

    .line 489
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->registerDynamicServices(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v19

    goto/16 :goto_1
.end method

.method public getPackageList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1208
    sget-boolean v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "RegisteredServicesCache"

    const-string v5, "getPackageList for current user: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1210
    .local v1, "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v3

    .line 1211
    .local v3, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v4, v3, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 1212
    .local v2, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    sget-boolean v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "RegisteredServicesCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_1
    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1215
    .end local v2    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_2
    return-object v1
.end method

.method public getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 353
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 354
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v0

    .line 355
    .local v0, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    monitor-exit v2

    return-object v1

    .line 356
    .end local v0    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServices(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 362
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 363
    .local v1, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 364
    monitor-exit v3

    .line 365
    return-object v0

    .line 364
    .end local v1    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getServicesForCategory(ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v2, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 371
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v3

    .line 372
    .local v3, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v4, v3, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 373
    .local v1, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v1, p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v3    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    return-object v2
.end method

.method public hasService(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 349
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initialize()V
    .locals 2

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 302
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->readDynamicAidsLocked()V

    .line 303
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->readOthersLocked()V

    .line 304
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->setPrioritySeid()V

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->isInit:Z

    .line 309
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->isInit:Z

    .line 311
    return-void

    .line 304
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateCache(I)V
    .locals 26
    .param p1, "userId"    # I

    .prologue
    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 510
    sget-boolean v22, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v22, :cond_0

    const-string v22, "RegisteredServicesCache"

    const-string v23, "Skip to invalidateCache during EM"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getInstalledServices(I)Ljava/util/ArrayList;

    move-result-object v21

    .line 515
    .local v21, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-eqz v21, :cond_0

    .line 519
    const/4 v12, 0x0

    .line 520
    .local v12, "needToWrite":Z
    const/4 v5, 0x0

    .line 522
    .local v5, "dynamicOthers":Z
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v14, "newOtherServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 526
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v20

    .line 529
    .local v20, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 531
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 532
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 534
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->containsServiceLocked(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 535
    const-string v22, "RegisteredServicesCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Service removed: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->OTHER_SUPPORT:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->others:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 540
    const-string v22, "RegisteredServicesCache"

    const-string v24, "Service need to be removed in other list"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->others:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const/4 v12, 0x1

    .line 546
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 642
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;>;"
    .end local v20    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    .line 549
    .restart local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;>;"
    .restart local v20    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_4
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 550
    .local v15, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    sget-boolean v22, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v22, :cond_6

    const-string v22, "RegisteredServicesCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Adding service: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v15}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " AIDs: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v15}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/List;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_6
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual {v15}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->OTHER_SUPPORT:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    const-string v22, "other"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 557
    sget-boolean v22, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v22, :cond_7

    const-string v22, "RegisteredServicesCache"

    const-string v24, "service has other category"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_7
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->others:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual {v15}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 559
    sget-boolean v22, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v22, :cond_8

    const-string v22, "RegisteredServicesCache"

    const-string v24, "service is already added in other list"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_8
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->others:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual {v15}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;

    .line 561
    .local v17, "status":Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;->checked:Z

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->setOtherServiceState(Z)V

    goto/16 :goto_2

    .line 564
    .end local v17    # "status":Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;
    :cond_9
    sget-boolean v22, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v22, :cond_a

    const-string v22, "RegisteredServicesCache"

    const-string v24, "Service need to be added in other list due to new service"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_a
    new-instance v17, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;

    invoke-virtual {v15}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v22

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;-><init>(IZ)V

    .line 566
    .restart local v17    # "status":Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;->checked:Z

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->setOtherServiceState(Z)V

    .line 567
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->others:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual {v15}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const/4 v12, 0x1

    .line 569
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->isInit:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 577
    .end local v15    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v17    # "status":Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;
    :cond_b
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v19, "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_c
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 581
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 582
    .local v3, "component":Landroid/content/ComponentName;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    .line 583
    .local v4, "dynamicAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 584
    .local v16, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v22

    iget v0, v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->uid:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_e

    .line 585
    :cond_d
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 588
    :cond_e
    iget-object v0, v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const-string v24, "other"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-nez v22, :cond_f

    .line 589
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->others:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const/4 v12, 0x1

    .line 593
    :cond_f
    iget-object v0, v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/nfc/cardemulation/AidGroup;

    .line 594
    .local v8, "group":Landroid/nfc/cardemulation/AidGroup;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->setOrReplaceDynamicAidGroup(Landroid/nfc/cardemulation/AidGroup;)V

    .line 596
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->OTHER_SUPPORT:Z

    move/from16 v22, v0

    if-eqz v22, :cond_10

    const-string v22, "other"

    invoke-virtual {v8}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 597
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->others:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v16 .. v16}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 598
    sget-boolean v22, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v22, :cond_11

    const-string v22, "RegisteredServicesCache"

    const-string v24, "Dynamic service is already added in other list"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_11
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->others:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v16 .. v16}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;

    .line 600
    .restart local v17    # "status":Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;->checked:Z

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->setOtherServiceState(Z)V

    .line 602
    invoke-virtual/range {v16 .. v16}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicOtherComponent:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 603
    const-string v22, "RegisteredServicesCache"

    const-string v24, "exsiting other service is changed, it is possible to change service"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 608
    .end local v17    # "status":Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;
    :cond_12
    const/4 v5, 0x1

    .line 609
    sget-boolean v22, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v22, :cond_13

    const-string v22, "RegisteredServicesCache"

    const-string v24, "Dynamic Service need to be added in other list due to new service"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_13
    new-instance v17, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;

    invoke-virtual/range {v16 .. v16}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v22

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;-><init>(IZ)V

    .line 611
    .restart local v17    # "status":Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;->checked:Z

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->setOtherServiceState(Z)V

    .line 612
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->others:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v16 .. v16}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const/4 v12, 0x1

    .line 614
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->isInit:Z

    move/from16 v22, v0

    if-eqz v22, :cond_10

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 622
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v4    # "dynamicAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    .end local v8    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v16    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v17    # "status":Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;
    :cond_14
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_18

    .line 623
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_15
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 624
    .restart local v3    # "component":Landroid/content/ComponentName;
    const-string v22, "RegisteredServicesCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Removing dynamic AIDs registered by "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->OTHER_SUPPORT:Z

    move/from16 v22, v0

    if-eqz v22, :cond_15

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->others:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 629
    sget-boolean v22, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v22, :cond_16

    const-string v22, "RegisteredServicesCache"

    const-string v24, "Dynamic Service need to be removed in other list"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_16
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->others:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const/4 v12, 0x1

    goto :goto_5

    .line 636
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicAidsLocked()Z

    .line 639
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_18
    if-eqz v12, :cond_19

    .line 640
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeOthersLocked()Z

    .line 642
    :cond_19
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v21}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v22

    move/from16 v1, p1

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;)V

    .line 647
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->OTHER_SUPPORT:Z

    move/from16 v22, v0

    if-eqz v22, :cond_22

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onResultUpdated()Z

    move-result v18

    .line 649
    .local v18, "success":Z
    if-nez v18, :cond_22

    .line 650
    sget-boolean v22, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v22, :cond_1a

    const-string v22, "RegisteredServicesCache"

    const-string v23, "Routing Update is fail due to LMRT is full"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_1a
    const/4 v13, 0x0

    .line 652
    .local v13, "needToupdate":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 653
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v20

    .line 655
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 656
    .restart local v15    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->OTHER_SUPPORT:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1b

    const-string v22, "other"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 657
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 658
    sget-boolean v22, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v22, :cond_1c

    const-string v22, "RegisteredServicesCache"

    const-string v24, "Make new enabled other services to uncked state"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_1c
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->others:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual {v15}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;

    .line 660
    .restart local v17    # "status":Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;->checked:Z

    .line 661
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->others:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual {v15}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->setOtherServiceState(Z)V

    .line 663
    const/4 v13, 0x1

    goto :goto_6

    .line 668
    .end local v15    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v17    # "status":Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;
    :cond_1d
    if-eqz v13, :cond_1f

    .line 669
    sget-boolean v22, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v22, :cond_1e

    const-string v22, "RegisteredServicesCache"

    const-string v24, "Write Other Status again on XML"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeOthersLocked()Z

    .line 672
    :cond_1f
    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 674
    if-eqz v13, :cond_23

    .line 675
    sget-boolean v22, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v22, :cond_20

    const-string v22, "RegisteredServicesCache"

    const-string v23, "Call the service update again after status of Others are changed"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_20
    if-eqz v5, :cond_21

    const-string v22, "RegisteredServicesCache"

    const-string v23, "Dynamic Others is added"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v21}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v22

    move/from16 v1, p1

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onPreferredOtherServiceUpdated(ILjava/util/List;)V

    .line 689
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "needToupdate":Z
    .end local v18    # "success":Z
    :cond_22
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->dump(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 672
    .restart local v13    # "needToupdate":Z
    .restart local v18    # "success":Z
    :catchall_1
    move-exception v22

    :try_start_3
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v22

    .line 682
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_23
    sget-boolean v22, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v22, :cond_22

    const-string v22, "RegisteredServicesCache"

    const-string v23, "LMRT FULL is due to payment service(package change or dynamic)"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public invalidateCache(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 499
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mChangedPackage:Ljava/lang/String;

    .line 502
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mChangedPackage:Ljava/lang/String;

    .line 504
    return-void
.end method

.method public registerAidGroupForService(IILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z
    .locals 14
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "aidGroup"    # Landroid/nfc/cardemulation/AidGroup;

    .prologue
    .line 938
    const/4 v5, 0x0

    .line 940
    .local v5, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 941
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v8

    .line 943
    .local v8, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    move-object/from16 v0, p3

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v7

    .line 944
    .local v7, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-nez v7, :cond_0

    .line 945
    const-string v10, "RegisteredServicesCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Service "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " does not exist."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const/4 v9, 0x0

    monitor-exit v11

    .line 997
    .end local p3    # "componentName":Landroid/content/ComponentName;
    :goto_0
    return v9

    .line 948
    .restart local p3    # "componentName":Landroid/content/ComponentName;
    :cond_0
    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v10

    move/from16 v0, p2

    if-eq v10, v0, :cond_1

    .line 953
    const-string v10, "RegisteredServicesCache"

    const-string v12, "UID mismatch."

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v9, 0x0

    monitor-exit v11

    goto :goto_0

    .line 980
    .end local v7    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v8    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 958
    .restart local v7    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v8    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_1
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v2

    .line 959
    .local v2, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 960
    .local v1, "aid":Ljava/lang/String;
    invoke-static {v1}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 961
    const-string v10, "RegisteredServicesCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is not a valid AID"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v9, 0x0

    monitor-exit v11

    goto :goto_0

    .line 965
    .end local v1    # "aid":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->setOrReplaceDynamicAidGroup(Landroid/nfc/cardemulation/AidGroup;)V

    .line 966
    iget-object v10, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    .line 967
    .local v3, "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    if-nez v3, :cond_4

    .line 968
    new-instance v3, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    .end local v3    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    move/from16 v0, p2

    invoke-direct {v3, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;-><init>(I)V

    .line 969
    .restart local v3    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    iget-object v10, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    :cond_4
    iget-object v10, v3, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual/range {p4 .. p4}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v10, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicAidsLocked()Z

    move-result v9

    .line 973
    .local v9, "success":Z
    if-eqz v9, :cond_6

    .line 974
    new-instance v6, Ljava/util/ArrayList;

    iget-object v10, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v5    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .local v6, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    move-object v5, v6

    .line 980
    .end local v6    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .restart local v5    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 981
    if-eqz v9, :cond_5

    .line 984
    iget-boolean v10, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->OTHER_SUPPORT:Z

    if-eqz v10, :cond_8

    .line 986
    const-string v10, "other"

    invoke-virtual/range {p4 .. p4}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .end local p3    # "componentName":Landroid/content/ComponentName;
    :goto_2
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicOtherComponent:Landroid/content/ComponentName;

    .line 987
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 995
    :cond_5
    :goto_3
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicOtherComponent:Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 976
    .restart local p3    # "componentName":Landroid/content/ComponentName;
    :cond_6
    :try_start_2
    const-string v10, "RegisteredServicesCache"

    const-string v12, "Failed to persist AID group."

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object v10, v3, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual/range {p4 .. p4}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 986
    :cond_7
    const/16 p3, 0x0

    goto :goto_2

    .line 990
    :cond_8
    iget-object v10, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    invoke-interface {v10, p1, v5}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;)V

    goto :goto_3
.end method

.method public registerOtherForService(ILandroid/content/ComponentName;Z)Z
    .locals 12
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "checked"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1070
    iget-boolean v8, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->OTHER_SUPPORT:Z

    if-nez v8, :cond_1

    .line 1071
    const-string v8, "RegisteredServicesCache"

    const-string v9, "This is not support other category"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1121
    :cond_0
    :goto_0
    return v6

    .line 1075
    :cond_1
    const/4 v1, 0x0

    .line 1076
    .local v1, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const/4 v6, 0x0

    .line 1078
    .local v6, "success":Z
    iget-object v8, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1079
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v4

    .line 1081
    .local v4, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    const-string v9, "RegisteredServicesCache"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "registerOtherForService / ComponentName"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v3

    .line 1084
    .local v3, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-nez v3, :cond_2

    .line 1085
    const-string v9, "RegisteredServicesCache"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "does not exist"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    monitor-exit v8

    move v6, v7

    goto :goto_0

    .line 1089
    :cond_2
    const-string v9, "other"

    invoke-virtual {v3, v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1090
    const-string v9, "RegisteredServicesCache"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "does not have others"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    monitor-exit v8

    move v6, v7

    goto :goto_0

    .line 1094
    :cond_3
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->isSelectedOtherService()Z

    move-result v0

    .line 1096
    .local v0, "isSelected":Z
    if-ne v0, p3, :cond_4

    .line 1097
    const-string v9, "RegisteredServicesCache"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is already state : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    monitor-exit v8

    move v6, v7

    goto/16 :goto_0

    .line 1101
    :cond_4
    invoke-virtual {v3, p3}, Landroid/nfc/cardemulation/ApduServiceInfo;->setOtherServiceState(Z)V

    .line 1102
    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->others:Ljava/util/HashMap;

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;

    .line 1103
    .local v5, "status":Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;
    iput-boolean p3, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;->checked:Z

    .line 1105
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeOthersLocked()Z

    move-result v6

    .line 1107
    if-eqz v6, :cond_6

    .line 1108
    new-instance v2, Ljava/util/ArrayList;

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v1    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .local v2, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    move-object v1, v2

    .line 1114
    .end local v2    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .restart local v1    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1116
    if-eqz v6, :cond_0

    .line 1117
    sget-boolean v7, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "RegisteredServicesCache"

    const-string v8, "onPreferredOtherServiceUpdate due to User Select"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_5
    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    invoke-interface {v7, p1, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onPreferredOtherServiceUpdated(ILjava/util/List;)V

    goto/16 :goto_0

    .line 1111
    :cond_6
    :try_start_1
    const-string v7, "RegisteredServicesCache"

    const-string v9, "Fail to other checked"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1114
    .end local v0    # "isSelected":Z
    .end local v3    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v4    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v5    # "status":Lcom/android/nfc/cardemulation/RegisteredServicesCache$OtherServiceStatus;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public removeAidGroupForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 11
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "category"    # Ljava/lang/String;

    .prologue
    .line 1142
    const/4 v6, 0x0

    .line 1143
    .local v6, "success":Z
    const/4 v2, 0x0

    .line 1144
    .local v2, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v8, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1145
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v5

    .line 1146
    .local v5, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v4

    .line 1147
    .local v4, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v4, :cond_5

    .line 1148
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v7

    if-eq v7, p2, :cond_0

    .line 1150
    const-string v7, "RegisteredServicesCache"

    const-string v9, "UID mismatch"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    const/4 v7, 0x0

    monitor-exit v8

    .line 1184
    :goto_0
    return v7

    .line 1153
    :cond_0
    invoke-virtual {v4, p4}, Landroid/nfc/cardemulation/ApduServiceInfo;->removeDynamicAidGroupForCategory(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1154
    const-string v7, "RegisteredServicesCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Could not find dynamic AIDs for category "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_0

    .line 1175
    .end local v4    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v5    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1158
    .restart local v4    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v5    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_1
    :try_start_1
    iget-object v7, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    invoke-virtual {v7, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    .line 1159
    .local v1, "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    if-eqz v1, :cond_4

    .line 1160
    iget-object v7, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v7, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 1161
    .local v0, "deletedGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicAidsLocked()Z

    move-result v6

    .line 1162
    if-eqz v6, :cond_3

    .line 1163
    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v2    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .local v3, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    move-object v2, v3

    .line 1175
    .end local v0    # "deletedGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v1    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    .end local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .restart local v2    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :goto_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1176
    if-eqz v6, :cond_2

    .line 1178
    iget-boolean v7, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->OTHER_SUPPORT:Z

    if-eqz v7, :cond_6

    .line 1179
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    :cond_2
    :goto_2
    move v7, v6

    .line 1184
    goto :goto_0

    .line 1165
    .restart local v0    # "deletedGroup":Landroid/nfc/cardemulation/AidGroup;
    .restart local v1    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    :cond_3
    :try_start_2
    const-string v7, "RegisteredServicesCache"

    const-string v9, "Could not persist deleted AID group."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v7, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v7, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_0

    .line 1170
    .end local v0    # "deletedGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_4
    const-string v7, "RegisteredServicesCache"

    const-string v9, "Could not find aid group in local cache."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1173
    .end local v1    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    :cond_5
    const-string v7, "RegisteredServicesCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not exist."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1181
    :cond_6
    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    invoke-interface {v7, p1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;)V

    goto :goto_2
.end method

.method setPrioritySeid()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 314
    iput v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mPriorityOffHostSeId:I

    .line 316
    invoke-static {}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getInstance()Lcom/android/nfc/cardemulation/NfcEeObjectUtil;

    move-result-object v0

    .line 319
    .local v0, "eeObjectUtil":Lcom/android/nfc/cardemulation/NfcEeObjectUtil;
    const-string v1, "ESE"

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObject(Ljava/lang/String;)Lcom/android/nfc/cardemulation/NfcEeObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 320
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mPriorityOffHostSeId:I

    .line 324
    :cond_0
    const-string v1, "UICC"

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/NfcEeObjectUtil;->getObject(Ljava/lang/String;)Lcom/android/nfc/cardemulation/NfcEeObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 326
    iget v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mPriorityOffHostSeId:I

    if-nez v1, :cond_2

    .line 327
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mPriorityOffHostSeId:I

    .line 332
    :cond_1
    :goto_0
    const-string v1, "RegisteredServicesCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "priorityseid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mPriorityOffHostSeId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void

    .line 329
    :cond_2
    iput v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mPriorityOffHostSeId:I

    goto :goto_0
.end method
