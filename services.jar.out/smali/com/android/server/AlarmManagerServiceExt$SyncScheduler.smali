.class public Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;
    }
.end annotation


# static fields
.field private static final MAX_LIST_SIZE:J = 0x1388L

.field private static final SYNC_COPRIME_VALUE:J = 0xea60L

.field private static final SYNC_MAX_VALUE:J = 0x1b77400L

.field private static final SYNC_MIN_VALUE:J = 0x493e0L

.field private static final SYNC_WATCH_VALUE:J = 0x186a0L


# instance fields
.field private final DEFAULT_INTERVAL_IN_PSM:J

.field private ENABLE_FORCED_ADJUSTMENT:Z

.field private WHITELIST:Z

.field private WHITELIST_PLUS_AUTO_ADD:Z

.field private boot_filter:Landroid/content/IntentFilter;

.field private fileGmsBundlingState:Ljava/io/File;

.field private filter:Landroid/content/IntentFilter;

.field private filter2:Landroid/content/IntentFilter;

.field private gIntervalGcd:Ljava/math/BigInteger;

.field private isGalaxyViewUSBConnected:Z

.field private isUSBConnected:Z

.field private final mAccountsPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;"
        }
    .end annotation
.end field

.field private final mAms:Lcom/android/server/AlarmManagerService;

.field private final mAmsLock:Ljava/lang/Object;

.field private final mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

.field private final mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

.field private final mBlacklistPackagesFromConfig:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlacklistPackagesFromConfig3P:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBootIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mChnAppsBundling:Z

.field private mChnSolDeactivateInScreenOn:Z

.field private mChnSolDeactivateInUSB:Z

.field private mChnSolEnable:Z

.field private final mContext:Landroid/content/Context;

.field private final mCscPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultDeltaFromTriggers:J

.field private mDefaultIntervalInChn:J

.field private mEmailPid:I

.field private mEmailUid:I

.field private final mExtraWhiteListPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGmsLocationBundling:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentReceiver2:Landroid/content/BroadcastReceiver;

.field private mLockExt:Ljava/lang/Object;

.field private mLockFgAct:Ljava/lang/Object;

.field private final mLockUserApps:Ljava/lang/Object;

.field private mNextAlarmWhen:J

.field private mNextSlotInChn:J

.field private mNextSlotInPSM:J

.field private mPMReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

.field private final mPermanentWhitelistPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOffTime:J

.field private final mTargetPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUserAppList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field pm:Landroid/content/pm/PackageManager;

.field preloadedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statOpCount:J

.field private statOpTime:D

.field private statOpTimeMax:D

.field private statOpTimeMaxUid:J

.field private ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

.field final synthetic this$0:Lcom/android/server/AlarmManagerServiceExt;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt;Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V
    .locals 17
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "ams"    # Lcom/android/server/AlarmManagerService;
    .param p4, "lock"    # Ljava/lang/Object;

    .prologue
    .line 513
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 309
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    .line 315
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    .line 321
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ENABLE_FORCED_ADJUSTMENT:Z

    .line 351
    const-wide/32 v14, 0x1b77400

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 355
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    .line 359
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I

    .line 369
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 373
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    .line 377
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    .line 381
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    .line 385
    new-instance v13, Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-direct {v13}, Lcom/android/server/AlarmManagerServiceExt$PackageList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    .line 386
    new-instance v13, Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-direct {v13}, Lcom/android/server/AlarmManagerServiceExt$PackageList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    .line 387
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig:Ljava/util/ArrayList;

    .line 388
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig3P:Ljava/util/ArrayList;

    .line 393
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    .line 397
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mGmsLocationBundling:Z

    .line 398
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    .line 399
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    .line 400
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    .line 401
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInUSB:Z

    .line 403
    const-wide/32 v14, 0xa4cb80

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->DEFAULT_INTERVAL_IN_PSM:J

    .line 404
    const-wide/32 v14, 0x493e0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    .line 405
    const-wide/16 v14, 0x2710

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    .line 406
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    .line 407
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextAlarmWhen:J

    .line 408
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInChn:J

    .line 410
    new-instance v13, Ljava/io/File;

    const-string v14, "/data/system/gms_bundling.data"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;

    .line 418
    new-instance v13, Ljava/lang/Object;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    .line 422
    new-instance v13, Ljava/lang/Object;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;

    .line 425
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    .line 426
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    .line 427
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    .line 428
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    .line 429
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mScreenOffTime:J

    .line 433
    new-instance v13, Ljava/lang/Object;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;

    .line 434
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppList:Ljava/util/Set;

    .line 435
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    .line 436
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    .line 439
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mExtraWhiteListPkgs:Ljava/util/ArrayList;

    .line 441
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z

    .line 442
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter:Landroid/content/IntentFilter;

    .line 443
    new-instance v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 463
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    .line 464
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter2:Landroid/content/IntentFilter;

    .line 465
    new-instance v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$2;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mIntentReceiver2:Landroid/content/BroadcastReceiver;

    .line 476
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->boot_filter:Landroid/content/IntentFilter;

    .line 477
    new-instance v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBootIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 514
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    .line 515
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAms:Lcom/android/server/AlarmManagerService;

    .line 516
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAmsLock:Ljava/lang/Object;

    .line 517
    const/4 v3, 0x0

    .line 518
    .local v3, "cscAppSyncList":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Common_ParamAppSync"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 520
    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 521
    .local v7, "listApps":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v14

    .line 522
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 523
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v13}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->clear()V

    .line 524
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v13}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->clear()V

    .line 525
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 530
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->initializeFromConfigFile()V

    .line 535
    const/4 v13, 0x0

    aget-object v13, v7, v13

    const-string/jumbo v15, "whitelist"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 539
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    array-length v13, v7

    if-ge v5, v13, :cond_2

    .line 540
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    aget-object v15, v7, v5

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 547
    .end local v5    # "i":I
    :cond_0
    const/4 v13, 0x0

    aget-object v13, v7, v13

    const-string v15, "blacklist"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 548
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    .line 549
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    .line 554
    const/4 v5, 0x1

    .restart local v5    # "i":I
    :goto_1
    array-length v13, v7

    if-ge v5, v13, :cond_2

    .line 555
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    aget-object v15, v7, v5

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    aget-object v15, v7, v5

    invoke-virtual {v13, v15}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    .line 554
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 563
    .end local v5    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v15, "com.sec.spp.push"

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v15, "com.sec.chaton"

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v15, "com.facebook.katana"

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v15, "com.twitter.android"

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v15, "com.facebook.orca"

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v15, "com.kakao.talk"

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v15, "com.google.android.apps.plus"

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v15, "com.mobilesrepublic.appygeek"

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string/jumbo v15, "mnn.Android"

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v15, "com.google.android.apps.maps"

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    if-eqz v13, :cond_6

    .line 580
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v13}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->loadAppSyncBlackList()V

    .line 581
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v13}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->loadAppSync3PlusBlackList()V

    .line 584
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 585
    .local v12, "theApp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v13, v12}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 586
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v13, v12}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    goto :goto_2

    .line 656
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v12    # "theApp":Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 589
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig3P:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 590
    .restart local v12    # "theApp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v13, v12}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 591
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v13, v12}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->add(Ljava/lang/String;)V

    goto :goto_3

    .line 599
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v12    # "theApp":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    const-string v15, "com.samsung.location"

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 605
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 606
    .local v9, "pC":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 608
    .end local v9    # "pC":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 609
    .local v10, "pP":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 611
    .end local v10    # "pP":Ljava/lang/String;
    :cond_8
    const/4 v8, 0x0

    .local v8, "nm":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_9

    .line 612
    const-string v15, "AlarmManagerEXT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<TargetPackages> "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, ": "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v15, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 615
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/server/AlarmManagerServiceExt;->isAppSync3PlusTarget(Landroid/content/Context;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    .line 616
    const-string v13, "AlarmManagerEXT"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mChnAppsBundling = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->boot_filter:Landroid/content/IntentFilter;

    const-string v15, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v13, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBootIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->boot_filter:Landroid/content/IntentFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 621
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    if-eqz v13, :cond_d

    .line 622
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInUSB:Z

    if-eqz v13, :cond_a

    .line 623
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter:Landroid/content/IntentFilter;

    const-string v15, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v13, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter:Landroid/content/IntentFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 627
    :cond_a
    sget-boolean v13, Lcom/android/server/AlarmManagerServiceExt;->sIsGalaxyView:Z

    if-eqz v13, :cond_b

    .line 628
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter2:Landroid/content/IntentFilter;

    const-string v15, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v13, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mIntentReceiver2:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->filter2:Landroid/content/IntentFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 632
    :cond_b
    new-instance v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v13, v0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPMReceiver:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;

    .line 633
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    .line 637
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v15, "com.facebook.katana"

    invoke-interface {v13, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 638
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v15, "com.facebook.orca"

    invoke-interface {v13, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 639
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v15, "com.facebook.pages.app"

    invoke-interface {v13, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 640
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v15, "com.facebook.appmanager"

    invoke-interface {v13, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 641
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v15, "com.facebook.system"

    invoke-interface {v13, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 642
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v15, "com.whatsapp"

    invoke-interface {v13, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 643
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v15, "com.instagram.android"

    invoke-interface {v13, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 644
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v15, "com.skype.raider"

    invoke-interface {v13, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 645
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    const-string v15, "com.microsoft.skydrive"

    invoke-interface {v13, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 646
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->preloadedPackages:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    .local v11, "pkgPreloaded":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    const/4 v15, 0x0

    invoke-virtual {v13, v11, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 649
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_c

    .line 650
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppList:Ljava/util/Set;

    iget v15, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 652
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v13

    goto :goto_7

    .line 656
    .end local v11    # "pkgPreloaded":Ljava/lang/String;
    :cond_d
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 662
    :try_start_4
    new-instance v13, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v13, v0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 672
    :goto_8
    const-string v13, "AlarmManagerEXT"

    const-string v14, "SyncScheduler created "

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return-void

    .line 663
    :catch_1
    move-exception v4

    .line 664
    .local v4, "e":Ljava/net/SocketException;
    invoke-virtual {v4}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_8

    .line 665
    .end local v4    # "e":Ljava/net/SocketException;
    :catch_2
    move-exception v4

    .line 666
    .local v4, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v4}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_8

    .line 667
    .end local v4    # "e":Ljava/net/UnknownHostException;
    :catch_3
    move-exception v4

    .line 668
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 669
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 670
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method static synthetic access$002(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p1, "x1"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 303
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateRepeatingAlarmLocked(IJ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 303
    iget v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 303
    iget v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAmsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p1, "x1"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAms:Lcom/android/server/AlarmManagerService;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p1, "x1"    # J

    .prologue
    .line 303
    iput-wide p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mGmsLocationBundling:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p1, "x1"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mGmsLocationBundling:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$PackageList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$PackageList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    return-object v0
.end method

.method private addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V
    .locals 8
    .param p1, "alarmExt"    # Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .prologue
    .line 1894
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 1895
    .local v1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1896
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1912
    :cond_0
    :goto_0
    return-void

    .line 1902
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1903
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1904
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1908
    .local v0, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    iget-object v4, p1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1910
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v6, 0x1388

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private adjustAlarmForFixedPeriodicWakeups(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JJJ)V
    .locals 22
    .param p1, "a"    # Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .param p2, "nextTriggerSlot"    # J
    .param p4, "intervalUnit"    # J
    .param p6, "timeSkew"    # J

    .prologue
    .line 1091
    move-wide/from16 v10, p2

    .line 1092
    .local v10, "nextTrigValue":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1093
    .local v12, "nowElapsed":J
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1094
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    .line 1095
    .local v17, "time":Landroid/text/format/Time;
    add-long v18, v10, p6

    invoke-virtual/range {v17 .. v19}, Landroid/text/format/Time;->set(J)V

    .line 1096
    const-string v18, "AlarmManagerEXT"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "FPW_initialSlot 1= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    .end local v17    # "time":Landroid/text/format/Time;
    :cond_0
    const-wide/16 v18, 0x0

    cmp-long v18, v10, v18

    if-nez v18, :cond_8

    .line 1100
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v18

    const-wide v20, 0x40dd4c0000000000L    # 30000.0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v16, v0

    .line 1101
    .local v16, "randomStartTime":I
    add-long v18, v12, p4

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v10, v18, v20

    .line 1130
    .end local v16    # "randomStartTime":I
    :cond_1
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInChn:J

    .line 1136
    const-wide/16 v8, 0x0

    .line 1137
    .local v8, "extraDistance":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v10

    if-lez v18, :cond_3

    .line 1138
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-wide/from16 v18, v0

    sub-long v18, v18, v10

    div-long v6, v18, p4

    .line 1139
    .local v6, "extraCount":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-wide/from16 v18, v0

    mul-long v20, v6, p4

    add-long v20, v20, v10

    sub-long v4, v18, v20

    .line 1140
    .local v4, "deltaFromNextslots":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    move-wide/from16 v18, v0

    cmp-long v18, v4, v18

    if-lez v18, :cond_2

    const-wide/16 v18, 0x1

    add-long v6, v6, v18

    .line 1141
    :cond_2
    mul-long v8, v6, p4

    .line 1143
    .end local v4    # "deltaFromNextslots":J
    .end local v6    # "extraCount":J
    :cond_3
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1144
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    .line 1145
    .restart local v17    # "time":Landroid/text/format/Time;
    add-long v18, v10, p6

    invoke-virtual/range {v17 .. v19}, Landroid/text/format/Time;->set(J)V

    .line 1146
    const-string v18, "AlarmManagerEXT"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "FPW_changedSlot 2= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", gIntervalGcd: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", numberOfSlot= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    div-long v20, v8, p4

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    .end local v17    # "time":Landroid/text/format/Time;
    :cond_4
    add-long v18, v10, v8

    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    .line 1152
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_9

    move-wide/from16 v18, p6

    :goto_0
    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    .line 1153
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    .line 1158
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_6

    .line 1159
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-lez v18, :cond_5

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    div-long v18, v18, p4

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    mul-long p4, p4, v18

    .end local p4    # "intervalUnit":J
    :cond_5
    move-wide/from16 v0, p4

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 1163
    :cond_6
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1164
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    .line 1165
    .restart local v17    # "time":Landroid/text/format/Time;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-wide/from16 v18, v0

    add-long v18, v18, p6

    invoke-virtual/range {v17 .. v19}, Landroid/text/format/Time;->set(J)V

    .line 1166
    const-string v18, "AlarmManagerEXT"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "--->>> T:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", INT:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    .end local v17    # "time":Landroid/text/format/Time;
    :cond_7
    return-void

    .line 1104
    .end local v8    # "extraDistance":J
    .restart local p4    # "intervalUnit":J
    :cond_8
    move-wide v14, v10

    .line 1106
    .local v14, "prevNextSlot":J
    :goto_1
    cmp-long v18, v10, v12

    if-gez v18, :cond_1

    .line 1107
    add-long v10, v10, p4

    goto :goto_1

    .line 1152
    .end local v14    # "prevNextSlot":J
    .restart local v8    # "extraDistance":J
    :cond_9
    const-wide/16 v18, 0x0

    goto/16 :goto_0
.end method

.method private adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V
    .locals 36
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .param p2, "inputDistance"    # J
    .param p4, "includeItself"    # Z

    .prologue
    .line 1568
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_1

    const/16 v19, 0x1

    .line 1569
    .local v19, "isRtc":Z
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 1570
    .local v26, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    .line 1571
    .local v24, "nowElapsed":J
    sub-long v6, v26, v24

    .line 1572
    .local v6, "TIME_SKEW":J
    if-eqz v19, :cond_2

    move-wide/from16 v28, v6

    .line 1573
    .local v28, "skewToRtc":J
    :goto_1
    const-wide v20, 0x7fffffffffffffffL

    .line 1574
    .local v20, "nextAlarmWhen":J
    const-wide v22, 0x7fffffffffffffffL

    .line 1575
    .local v22, "nextAlarmWhenElapsed":J
    move-wide/from16 v16, p2

    .line 1576
    .local v16, "distance":J
    const/16 v18, 0x0

    .line 1577
    .local v18, "isFlexibleRepeatingAlarm":Z
    const-wide/16 v10, 0x0

    .line 1578
    .local v10, "count":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x3e8

    add-long v12, v32, v34

    .line 1579
    .local v12, "curAlarmWhen":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-lez v31, :cond_3

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v34, v0

    sub-long v14, v32, v34

    .line 1581
    .local v14, "curAlarmWindow":J
    :goto_2
    const/16 v30, 0x0

    .line 1583
    .local v30, "x":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    const-wide/16 v32, 0x0

    cmp-long v31, v16, v32

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v32

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-nez v31, :cond_4

    .line 1711
    .end local v6    # "TIME_SKEW":J
    :cond_0
    :goto_3
    return-void

    .line 1568
    .end local v10    # "count":J
    .end local v12    # "curAlarmWhen":J
    .end local v14    # "curAlarmWindow":J
    .end local v16    # "distance":J
    .end local v18    # "isFlexibleRepeatingAlarm":Z
    .end local v19    # "isRtc":Z
    .end local v20    # "nextAlarmWhen":J
    .end local v22    # "nextAlarmWhenElapsed":J
    .end local v24    # "nowElapsed":J
    .end local v26    # "nowRtc":J
    .end local v28    # "skewToRtc":J
    .end local v30    # "x":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 1572
    .restart local v6    # "TIME_SKEW":J
    .restart local v19    # "isRtc":Z
    .restart local v24    # "nowElapsed":J
    .restart local v26    # "nowRtc":J
    :cond_2
    const-wide/16 v28, 0x0

    goto :goto_1

    .line 1579
    .restart local v10    # "count":J
    .restart local v12    # "curAlarmWhen":J
    .restart local v16    # "distance":J
    .restart local v18    # "isFlexibleRepeatingAlarm":Z
    .restart local v20    # "nextAlarmWhen":J
    .restart local v22    # "nextAlarmWhenElapsed":J
    .restart local v28    # "skewToRtc":J
    :cond_3
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    goto :goto_2

    .line 1587
    .restart local v14    # "curAlarmWindow":J
    .restart local v30    # "x":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ENABLE_FORCED_ADJUSTMENT:Z

    move/from16 v31, v0

    if-nez v31, :cond_5

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v34

    rem-long v32, v32, v34

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-nez v31, :cond_6

    .line 1589
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->timeToNextRepeatingAlarmLocked(Landroid/app/PendingIntent;JZ)Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    move-result-object v30

    .line 1590
    if-eqz v30, :cond_6

    .line 1594
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v31, v0

    const/16 v34, 0x1

    move/from16 v0, v31

    move/from16 v1, v34

    if-gt v0, v1, :cond_c

    .end local v6    # "TIME_SKEW":J
    :goto_4
    sub-long v20, v32, v6

    .line 1595
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextAlarmWhen:J

    .line 1597
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    .line 1598
    .local v9, "bigTemp":Ljava/math/BigInteger;
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 1599
    .local v8, "bigGcd":Ljava/math/BigInteger;
    invoke-virtual {v8}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v32

    const-wide/32 v34, 0x493e0

    rem-long v32, v32, v34

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-nez v31, :cond_6

    invoke-virtual {v8}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v16

    .line 1606
    .end local v8    # "bigGcd":Ljava/math/BigInteger;
    .end local v9    # "bigTemp":Ljava/math/BigInteger;
    :cond_6
    const-wide/16 v32, 0x0

    cmp-long v31, v16, v32

    if-eqz v31, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v32

    rem-long v32, v16, v32

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-nez v31, :cond_7

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    .line 1611
    :cond_7
    const-wide v32, 0x7fffffffffffffffL

    cmp-long v31, v20, v32

    if-eqz v31, :cond_14

    .line 1615
    add-long v20, v20, v28

    .line 1621
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-lez v31, :cond_8

    add-long v32, v24, v28

    sub-long v32, v12, v32

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v34, v0

    cmp-long v31, v32, v34

    if-lez v31, :cond_8

    .line 1623
    const/16 v18, 0x1

    .line 1629
    :cond_8
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1000()Z

    move-result v31

    if-eqz v31, :cond_a

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    move-wide/from16 v34, v0

    cmp-long v31, v32, v34

    if-nez v31, :cond_9

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-lez v31, :cond_a

    .line 1631
    :cond_9
    const/16 v18, 0x1

    .line 1638
    :cond_a
    cmp-long v31, v20, v12

    if-gtz v31, :cond_e

    .line 1642
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ENABLE_FORCED_ADJUSTMENT:Z

    move/from16 v31, v0

    if-eqz v31, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v32

    rem-long v32, p2, v32

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-eqz v31, :cond_b

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v16

    .line 1644
    :cond_b
    sub-long v32, v12, v20

    div-long v10, v32, v16

    .line 1645
    if-eqz v18, :cond_d

    .line 1649
    :goto_5
    const-wide/16 v32, 0x1

    add-long v32, v32, v10

    mul-long v32, v32, v16

    add-long v32, v32, v20

    add-long v34, v12, v14

    cmp-long v31, v32, v34

    if-gtz v31, :cond_d

    const-wide/16 v32, 0x1

    add-long v10, v10, v32

    goto :goto_5

    .line 1594
    .restart local v6    # "TIME_SKEW":J
    :cond_c
    const-wide/16 v6, 0x0

    goto/16 :goto_4

    .line 1651
    .end local v6    # "TIME_SKEW":J
    :cond_d
    mul-long v32, v16, v10

    add-long v32, v32, v20

    move-wide/from16 v0, v32

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    .line 1698
    :goto_6
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v31

    if-eqz v31, :cond_0

    const-string v31, "AlarmManagerEXT"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, " next: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", unit: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", C: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", WL:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1658
    :cond_e
    const-wide/16 v32, 0x0

    cmp-long v31, v16, v32

    if-eqz v31, :cond_f

    .line 1659
    sub-long v32, v20, v12

    div-long v10, v32, v16

    .line 1664
    :cond_f
    sub-long v32, v12, v16

    add-long v34, v24, v28

    cmp-long v31, v32, v34

    if-gez v31, :cond_10

    const-wide/16 v32, 0x1

    add-long v32, v32, v10

    mul-long v32, v32, v16

    sub-long v32, v20, v32

    add-long v34, v24, v28

    cmp-long v31, v32, v34

    if-gez v31, :cond_10

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-gtz v31, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    const-wide/16 v32, 0x2

    div-long v32, v16, v32

    sub-long v32, v12, v32

    add-long v34, v24, v28

    cmp-long v31, v32, v34

    if-gtz v31, :cond_11

    .line 1675
    :cond_10
    const-wide/16 v32, 0x1

    add-long v10, v10, v32

    .line 1676
    mul-long v32, v16, v10

    sub-long v32, v20, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    goto/16 :goto_6

    .line 1686
    :cond_11
    if-eqz v18, :cond_13

    .line 1690
    :goto_7
    mul-long v32, v16, v10

    sub-long v32, v20, v32

    add-long v34, v12, v14

    cmp-long v31, v32, v34

    if-ltz v31, :cond_12

    const-wide/16 v32, 0x1

    add-long v10, v10, v32

    goto :goto_7

    .line 1691
    :cond_12
    mul-long v32, v16, v10

    sub-long v32, v20, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    goto/16 :goto_6

    .line 1694
    :cond_13
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    goto/16 :goto_6

    .line 1701
    :cond_14
    const-string v31, "AlarmManagerEXT"

    const-string v32, " next == MAX_VALUE"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-lez v31, :cond_0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v34

    rem-long v32, v32, v34

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-eqz v31, :cond_0

    .line 1708
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    goto/16 :goto_3
.end method

.method private calculateGcdOfRepeatIntervals(JJ)J
    .locals 9
    .param p1, "interval_old"    # J
    .param p3, "interval_new"    # J

    .prologue
    .line 1521
    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 1522
    .local v1, "newRepeatInterval":Ljava/math/BigInteger;
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 1523
    .local v2, "oldIntervalGcd":Ljava/math/BigInteger;
    move-object v0, v2

    .line 1527
    .local v0, "newIntervalGcd":Ljava/math/BigInteger;
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1532
    .local v3, "tempIntervalGcd":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1537
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1538
    move-object v0, v3

    .line 1541
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method private initializeFromConfigFile()V
    .locals 18

    .prologue
    .line 1174
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "AlarmManagerEXT"

    const-string/jumbo v13, "initializeFromConfigFile "

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_0
    const/4 v3, 0x0

    .line 1177
    .local v3, "mConfig":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;
    :try_start_0
    new-instance v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;

    const-string v12, "/data/misc/lpnet/lpnetConfig"

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v12}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    .end local v3    # "mConfig":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;
    .local v4, "mConfig":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;
    if-eqz v4, :cond_a

    .line 1184
    const/4 v6, 0x0

    .line 1185
    .local v6, "stringBlackList":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1186
    .local v7, "stringBlackList3P":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1187
    .local v8, "stringExtraWhitelist":Ljava/lang/String;
    const-string v12, "APPSYNC_INIT"

    const-string/jumbo v13, "enableChnSolution"

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    invoke-virtual {v4, v12, v13, v14}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    .line 1188
    const-string v12, "APPSYNC_INIT"

    const-string v13, "DeactivateInScreenOn"

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    invoke-virtual {v4, v12, v13, v14}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    .line 1189
    const-string v12, "APPSYNC_INIT"

    const-string v13, "DeactivateInUSB"

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInUSB:Z

    invoke-virtual {v4, v12, v13, v14}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInUSB:Z

    .line 1191
    const-wide/16 v10, 0x0

    .line 1192
    .local v10, "tempValFromConfigFile":J
    const-string v12, "APPSYNC_INIT"

    const-string/jumbo v13, "syncInterval"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    invoke-virtual {v4, v12, v13, v14, v15}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v10

    .line 1194
    const-wide/16 v12, 0x1

    cmp-long v12, v10, v12

    if-ltz v12, :cond_3

    const-wide/16 v12, 0xe10

    cmp-long v12, v10, v12

    if-gtz v12, :cond_3

    .line 1195
    const-wide/16 v12, 0x3e8

    mul-long/2addr v12, v10

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    .line 1200
    :goto_0
    const-wide/16 v10, 0x0

    .line 1201
    const-string v12, "APPSYNC_INIT"

    const-string/jumbo v13, "deltaFromTriggers"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    invoke-virtual {v4, v12, v13, v14, v15}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v10

    .line 1203
    const-wide/16 v12, 0x1

    cmp-long v12, v10, v12

    if-ltz v12, :cond_4

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    const-wide/16 v14, 0x4b

    mul-long/2addr v12, v14

    const-wide/32 v14, 0x186a0

    div-long/2addr v12, v14

    cmp-long v12, v10, v12

    if-gez v12, :cond_4

    .line 1204
    const-wide/16 v12, 0x3e8

    mul-long/2addr v12, v10

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    .line 1209
    :goto_1
    const-string v12, "APPSYNC_INIT"

    const-string v13, "BlackList"

    invoke-virtual {v4, v12, v13, v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1210
    if-eqz v6, :cond_5

    .line 1211
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 1212
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v12, ","

    invoke-direct {v9, v6, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    .local v9, "stringTokenizer":Ljava/util/StringTokenizer;
    :cond_1
    :goto_2
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1215
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1217
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 1218
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1178
    .end local v4    # "mConfig":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "stringBlackList":Ljava/lang/String;
    .end local v7    # "stringBlackList3P":Ljava/lang/String;
    .end local v8    # "stringExtraWhitelist":Ljava/lang/String;
    .end local v9    # "stringTokenizer":Ljava/util/StringTokenizer;
    .end local v10    # "tempValFromConfigFile":J
    .restart local v3    # "mConfig":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;
    :catch_0
    move-exception v2

    .line 1179
    .local v2, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, "AlarmManagerEXT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException on Parsing Config FILE :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    return-void

    .line 1197
    .end local v3    # "mConfig":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;
    .restart local v4    # "mConfig":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;
    .restart local v6    # "stringBlackList":Ljava/lang/String;
    .restart local v7    # "stringBlackList3P":Ljava/lang/String;
    .restart local v8    # "stringExtraWhitelist":Ljava/lang/String;
    .restart local v10    # "tempValFromConfigFile":J
    :cond_3
    const-string v12, "AlarmManagerEXT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Out of bounds, Allowed Values 1s ~ 3600s, Setting syncInterval : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1206
    :cond_4
    const-string v12, "AlarmManagerEXT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Out of bounds, Allowed Values 1s ~ "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    const-wide/16 v16, 0x4b

    mul-long v14, v14, v16

    const-wide/32 v16, 0x186a0

    div-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "s, Setting deltaFromTriggers : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1222
    :cond_5
    const-string v12, "APPSYNC_INIT"

    const-string v13, "BlackList3P"

    invoke-virtual {v4, v12, v13, v7}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1223
    if-eqz v7, :cond_7

    .line 1224
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig3P:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 1225
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v12, ","

    invoke-direct {v9, v7, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    .restart local v9    # "stringTokenizer":Ljava/util/StringTokenizer;
    :cond_6
    :goto_4
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1228
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1230
    .restart local v5    # "pkgName":Ljava/lang/String;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_6

    .line 1231
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackagesFromConfig3P:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1236
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v9    # "stringTokenizer":Ljava/util/StringTokenizer;
    :cond_7
    const-string v12, "APPSYNC_INIT"

    const-string v13, "ExtraWhiteList"

    invoke-virtual {v4, v12, v13, v8}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1237
    if-eqz v8, :cond_9

    .line 1238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mExtraWhiteListPkgs:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 1239
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v12, ","

    invoke-direct {v9, v8, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    .restart local v9    # "stringTokenizer":Ljava/util/StringTokenizer;
    :cond_8
    :goto_5
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1242
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1244
    .restart local v5    # "pkgName":Ljava/lang/String;
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_8

    .line 1245
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mExtraWhiteListPkgs:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1250
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v9    # "stringTokenizer":Ljava/util/StringTokenizer;
    :cond_9
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1251
    const-string v12, "AlarmManagerEXT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mChnSolEnable : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    const-string v12, "AlarmManagerEXT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mChnSolDeactivateInScreenOn : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const-string v12, "AlarmManagerEXT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mDefaultIntervalInChn : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const-string v12, "AlarmManagerEXT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mDefaultDeltaFromTriggers : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultDeltaFromTriggers:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const-string v12, "AlarmManagerEXT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "stringBlackList : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const-string v12, "AlarmManagerEXT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "stringExtraWhitelist : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "stringBlackList":Ljava/lang/String;
    .end local v7    # "stringBlackList3P":Ljava/lang/String;
    .end local v8    # "stringExtraWhitelist":Ljava/lang/String;
    .end local v10    # "tempValFromConfigFile":J
    :cond_a
    move-object v3, v4

    .line 1259
    .end local v4    # "mConfig":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;
    .restart local v3    # "mConfig":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;
    goto/16 :goto_3
.end method

.method private lookForPackageLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z
    .locals 2
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1884
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1885
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v1, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1887
    :goto_1
    return v1

    .line 1884
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1887
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1874
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1875
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v1, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1877
    :goto_1
    return v1

    .line 1874
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1877
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 1
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1863
    .local p1, "targetPackageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1867
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private queryAccounts()V
    .locals 14

    .prologue
    .line 2030
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    const-string v11, "account"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 2031
    .local v1, "am":Landroid/accounts/AccountManager;
    if-nez v1, :cond_0

    .line 2071
    :goto_0
    return-void

    .line 2032
    :cond_0
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 2034
    .local v0, "ads":[Landroid/accounts/AuthenticatorDescription;
    iget-object v11, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v11

    .line 2035
    :try_start_0
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 2036
    move-object v2, v0

    .local v2, "arr$":[Landroid/accounts/AuthenticatorDescription;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v3, v2, v4

    .line 2037
    .local v3, "auth":Landroid/accounts/AuthenticatorDescription;
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    const/4 v12, 0x1

    if-eq v10, v12, :cond_1

    .line 2038
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2036
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2045
    .end local v3    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_2
    iget-boolean v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    if-eqz v10, :cond_7

    .line 2046
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 2047
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2048
    .local v8, "pC":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2070
    .end local v2    # "arr$":[Landroid/accounts/AuthenticatorDescription;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "len$":I
    .end local v8    # "pC":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 2053
    .restart local v2    # "arr$":[Landroid/accounts/AuthenticatorDescription;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "len$":I
    :cond_3
    :try_start_1
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2054
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2055
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2056
    .local v7, "pA":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 2058
    .end local v7    # "pA":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2059
    .restart local v7    # "pA":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2061
    .end local v7    # "pA":Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2062
    .local v9, "pT":Ljava/lang/String;
    const-string v10, "AlarmManagerEXT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<TargetPackages> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2066
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9    # "pT":Ljava/lang/String;
    .local v4, "i$":I
    :cond_7
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2067
    .restart local v7    # "pA":Ljava/lang/String;
    const-string v10, "AlarmManagerEXT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<AccPackages> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2070
    .end local v7    # "pA":Ljava/lang/String;
    :cond_8
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private recalculateGcdOfRepeatIntervalsLocked()V
    .locals 18

    .prologue
    .line 1548
    const-wide/32 v8, 0x1b77400

    .line 1549
    .local v8, "newIntervalGcd":J
    const/4 v5, 0x0

    .line 1550
    .local v5, "i":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1551
    .local v10, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v2, v10, v14

    .line 1552
    .local v2, "TIME_SKEW":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1553
    .local v4, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget v14, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v15, 0x1

    if-gt v14, v15, :cond_1

    const/4 v7, 0x1

    .line 1554
    .local v7, "isRtc":Z
    :goto_1
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v16, v0

    if-eqz v7, :cond_2

    const-wide/16 v14, 0x0

    :goto_2
    add-long v12, v16, v14

    .line 1555
    .local v12, "when":J
    cmp-long v14, v10, v12

    if-gez v14, :cond_0

    iget-wide v14, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_0

    .line 1556
    iget-wide v14, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v14, v15}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v8

    .line 1557
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1553
    .end local v7    # "isRtc":Z
    .end local v12    # "when":J
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .restart local v7    # "isRtc":Z
    :cond_2
    move-wide v14, v2

    .line 1554
    goto :goto_2

    .line 1560
    .end local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v7    # "isRtc":Z
    :cond_3
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1561
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v14, "AlarmManagerEXT"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " GCD_NEW("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "):"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_4
    return-void
.end method

.method private removeLocked(Ljava/util/ArrayList;I)Z
    .locals 5
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 2009
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    const/4 v1, 0x0

    .line 2010
    .local v1, "bRet":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    move v2, v1

    .line 2023
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_0
    return v2

    .line 2015
    .end local v2    # "bRet":I
    .restart local v1    # "bRet":Z
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2016
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2017
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2018
    .local v0, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_1

    .line 2019
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 2020
    const/4 v1, 0x1

    goto :goto_1

    .end local v0    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_2
    move v2, v1

    .line 2023
    .restart local v2    # "bRet":I
    goto :goto_0
.end method

.method private removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z
    .locals 5
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1973
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    const/4 v1, 0x0

    .line 1974
    .local v1, "bRet":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    move v2, v1

    .line 1987
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_0
    return v2

    .line 1979
    .end local v2    # "bRet":I
    .restart local v1    # "bRet":Z
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1980
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1981
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1982
    .local v0, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1983
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1984
    const/4 v1, 0x1

    goto :goto_1

    .end local v0    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_2
    move v2, v1

    .line 1987
    .restart local v2    # "bRet":I
    goto :goto_0
.end method

.method private removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 5
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1991
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    const/4 v1, 0x0

    .line 1992
    .local v1, "bRet":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    move v2, v1

    .line 2005
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_0
    return v2

    .line 1997
    .end local v2    # "bRet":I
    .restart local v1    # "bRet":Z
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1998
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1999
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2000
    .local v0, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2001
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 2002
    const/4 v1, 0x1

    goto :goto_1

    .end local v0    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_2
    move v2, v1

    .line 2005
    .restart local v2    # "bRet":I
    goto :goto_0
.end method

.method private timeToNextRepeatingAlarmLocked(Landroid/app/PendingIntent;JZ)Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .locals 34
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "interval"    # J
    .param p4, "includeItself"    # Z

    .prologue
    .line 1718
    const-wide v18, 0x7fffffffffffffffL

    .line 1719
    .local v18, "nextAlarm":J
    const-wide v24, 0x7fffffffffffffffL

    .line 1720
    .local v24, "nextAlarmWithSameInterval":J
    const-wide v22, 0x7fffffffffffffffL

    .line 1721
    .local v22, "nextAlarmWithMultipleInterval":J
    const-wide v20, 0x7fffffffffffffffL

    .line 1722
    .local v20, "nextAlarmWithDividedInterval":J
    const/4 v5, 0x0

    .line 1723
    .local v5, "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    const/4 v8, 0x0

    .line 1724
    .local v8, "alarmResultWithSameInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    const/4 v7, 0x0

    .line 1725
    .local v7, "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    const/4 v6, 0x0

    .line 1726
    .local v6, "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 1727
    .local v26, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    sub-long v2, v26, v30

    .line 1728
    .local v2, "TIME_SKEW":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v15}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v30

    cmp-long v15, p2, v30

    if-nez v15, :cond_2

    const/4 v13, 0x1

    .line 1729
    .local v13, "isIntSameAsGcd":Z
    :goto_0
    const-wide/16 v10, 0x0

    .line 1731
    .local v10, "biggestGcd":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1736
    .local v4, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v30, v0

    const-wide/32 v32, 0x1b77400

    cmp-long v15, v30, v32

    if-gtz v15, :cond_0

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v30, v0

    const-wide/32 v32, 0x493e0

    cmp-long v15, v30, v32

    if-ltz v15, :cond_0

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v15}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v32

    rem-long v30, v30, v32

    const-wide/16 v32, 0x0

    cmp-long v15, v30, v32

    if-nez v15, :cond_0

    iget-boolean v15, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    if-eqz v15, :cond_0

    .line 1739
    if-nez p4, :cond_1

    iget-object v15, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1741
    :cond_1
    iget v15, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/16 v30, 0x1

    move/from16 v0, v30

    if-gt v15, v0, :cond_3

    const/4 v14, 0x1

    .line 1742
    .local v14, "isRtc":Z
    :goto_2
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v32, v0

    if-eqz v14, :cond_4

    const-wide/16 v30, 0x0

    :goto_3
    add-long v28, v32, v30

    .line 1746
    .local v28, "when":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v15}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v30

    add-long v30, v30, v28

    cmp-long v15, v26, v30

    if-gez v15, :cond_0

    .line 1750
    if-eqz v13, :cond_5

    .line 1751
    cmp-long v15, v28, v18

    if-gez v15, :cond_0

    .line 1752
    move-wide/from16 v18, v28

    .line 1753
    move-object v5, v4

    goto :goto_1

    .line 1728
    .end local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v10    # "biggestGcd":J
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "isIntSameAsGcd":Z
    .end local v14    # "isRtc":Z
    .end local v28    # "when":J
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 1741
    .restart local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v10    # "biggestGcd":J
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "isIntSameAsGcd":Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .restart local v14    # "isRtc":Z
    :cond_4
    move-wide/from16 v30, v2

    .line 1742
    goto :goto_3

    .line 1757
    .restart local v28    # "when":J
    :cond_5
    invoke-static/range {p2 .. p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    .line 1758
    .local v9, "bigTemp":Ljava/math/BigInteger;
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v16

    .line 1762
    .local v16, "longGcd":J
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v30, v0

    cmp-long v15, v30, p2

    if-nez v15, :cond_6

    .line 1763
    cmp-long v15, v28, v24

    if-gez v15, :cond_0

    .line 1764
    move-wide/from16 v24, v28

    .line 1765
    move-object v8, v4

    goto/16 :goto_1

    .line 1771
    :cond_6
    cmp-long v15, v16, p2

    if-nez v15, :cond_7

    .line 1772
    cmp-long v15, v28, v22

    if-gez v15, :cond_0

    .line 1773
    move-wide/from16 v22, v28

    .line 1774
    move-object v7, v4

    goto/16 :goto_1

    .line 1780
    :cond_7
    const-wide/16 v30, 0x0

    cmp-long v15, v16, v30

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v15}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v30

    rem-long v30, v16, v30

    const-wide/16 v32, 0x0

    cmp-long v15, v30, v32

    if-nez v15, :cond_a

    cmp-long v15, v16, v10

    if-ltz v15, :cond_a

    .line 1783
    cmp-long v15, v16, v10

    if-nez v15, :cond_8

    cmp-long v15, v28, v20

    if-gez v15, :cond_9

    .line 1784
    :cond_8
    move-wide/from16 v20, v28

    .line 1785
    move-object v6, v4

    .line 1787
    :cond_9
    move-wide/from16 v10, v16

    goto/16 :goto_1

    .line 1793
    :cond_a
    cmp-long v15, v28, v18

    if-gez v15, :cond_0

    .line 1794
    move-wide/from16 v18, v28

    .line 1795
    move-object v5, v4

    goto/16 :goto_1

    .line 1806
    .end local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v9    # "bigTemp":Ljava/math/BigInteger;
    .end local v14    # "isRtc":Z
    .end local v16    # "longGcd":J
    .end local v28    # "when":J
    :cond_b
    if-eqz v6, :cond_c

    move-object v5, v6

    .line 1810
    :cond_c
    if-eqz v7, :cond_d

    move-object v5, v7

    .line 1814
    :cond_d
    if-eqz v8, :cond_e

    move-object v5, v8

    .line 1818
    :cond_e
    return-object v5
.end method

.method private updateRepeatingAlarmLocked(IJ)V
    .locals 24
    .param p1, "hashCode"    # I
    .param p2, "interval"    # J

    .prologue
    .line 1915
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1919
    .local v21, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->keyId:I

    move/from16 v0, p1

    if-ne v5, v0, :cond_0

    .line 1921
    const/4 v5, 0x1

    move-object/from16 v0, v21

    iput-boolean v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    .line 1922
    move-wide/from16 v0, p2

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 1923
    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    :goto_0
    move-object/from16 v0, v21

    iput-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 1925
    new-instance v4, Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-object/from16 v0, v21

    iget-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->windowLength:J

    move-object/from16 v0, v21

    iget-wide v12, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    move-object/from16 v0, v21

    iget-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->workSource:Landroid/os/WorkSource;

    move-object/from16 v17, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->flags:I

    move/from16 v18, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->uid:I

    move/from16 v20, v0

    invoke-direct/range {v4 .. v20}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;I)V

    .line 1927
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TA] Updating the alarm... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 1932
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v21    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_2
    return-void

    .line 1923
    .restart local v21    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_3
    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    move-object/from16 v0, v21

    iget-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    sub-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v6

    goto :goto_0
.end method


# virtual methods
.method public doDump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 2172
    const/4 v7, 0x0

    .line 2173
    .local v7, "newAddedCount":I
    const-string v11, "  <AppSync3 Whitelist>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2174
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1100()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2175
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v12

    .line 2176
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2177
    .local v8, "pC":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "   (AppSync) "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2180
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "pC":Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 2179
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "   (AppSync) ---------"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2180
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2182
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;

    monitor-enter v12

    .line 2183
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppList:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2184
    .local v9, "pU":I
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "   (AppSync) "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2187
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "pU":I
    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v11

    .line 2186
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "   (AppSync) ---------"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2187
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2189
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v11, :cond_3

    .line 2190
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v11, v12, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->printWhitelist(ZLjava/io/PrintWriter;)V

    .line 2191
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v11}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->getWhitelistCount()I

    move-result v11

    add-int/2addr v7, v11

    .line 2193
    :cond_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  (AppSync) ### "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " added ###"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2194
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1100()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2195
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  (AppSync) Processing time (avg/max) : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%.2f"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "(UID:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") [ms]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2199
    :cond_4
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1100()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v14

    .line 2201
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v2, v12, v16

    .line 2205
    .local v2, "TIME_SKEW":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2206
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2207
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2208
    .local v4, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 2209
    .local v10, "time":Landroid/text/format/Time;
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v16, v0

    iget v11, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v12, 0x1

    if-gt v11, v12, :cond_5

    const-wide/16 v12, 0x0

    :goto_3
    add-long v12, v12, v16

    invoke-virtual {v10, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 2210
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    [AppSync] T:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", INT:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v11, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isExact:Z

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2213
    .end local v2    # "TIME_SKEW":J
    .end local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    .end local v10    # "time":Landroid/text/format/Time;
    :catchall_2
    move-exception v11

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v11

    .restart local v2    # "TIME_SKEW":J
    .restart local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    .restart local v10    # "time":Landroid/text/format/Time;
    :cond_5
    move-wide v12, v2

    .line 2209
    goto :goto_3

    .line 2210
    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    .line 2213
    .end local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v10    # "time":Landroid/text/format/Time;
    :cond_7
    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2214
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " GCD:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2215
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v11, :cond_8

    const-string/jumbo v11, "eng"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2216
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v11, v12, v13, v14, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeUnusedAlarmRecord(JZLjava/io/PrintWriter;)V

    .line 2219
    .end local v2    # "TIME_SKEW":J
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_8
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1100()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2220
    const-string v11, "  <AppSync3 Blacklist>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2221
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v12

    .line 2222
    :try_start_6
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "   (AppSync) "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v13}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2223
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "   (AppSync) ---------"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2224
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2225
    const-string v11, "  <AppSync3p Blacklist>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2226
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v12

    .line 2227
    :try_start_7
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "   (AppSync) "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistAppSync3P:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v13}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2228
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "   (AppSync) ---------"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2229
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2231
    :cond_9
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Fixed Wakeups: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2232
    return-void

    .line 2224
    :catchall_3
    move-exception v11

    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v11

    .line 2229
    :catchall_4
    move-exception v11

    :try_start_9
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v11
.end method

.method public doGarbageCollection(J)V
    .locals 27
    .param p1, "nowRtc"    # J

    .prologue
    .line 2115
    const/4 v12, 0x0

    .line 2116
    .local v12, "newAddedCount":I
    const-string v18, "AlarmManagerEXT"

    const-string v19, "<AppSync3 Whitelist>"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2119
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2120
    .local v13, "pC":Ljava/lang/String;
    const-string v18, "AlarmManagerEXT"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "(AppSync) "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2123
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "pC":Ljava/lang/String;
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 2122
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    const-string v18, "AlarmManagerEXT"

    const-string v20, "(AppSync) ---------"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2125
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 2126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->printWhitelist(ZLjava/io/PrintWriter;)V

    .line 2127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->getWhitelistCount()I

    move-result v18

    add-int v12, v12, v18

    .line 2129
    :cond_2
    const-string v18, "AlarmManagerEXT"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "(AppSync) ### "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " added ###"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 2131
    const-string v18, "AlarmManagerEXT"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "(SyncScheduler) Processing time (avg/max) : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "%.2f"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "(UID:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") [ms]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2136
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v18, v22

    .line 2140
    .local v6, "TIME_SKEW":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2141
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 2142
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2146
    .local v8, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v18, v0

    rem-int/lit8 v18, v18, 0x2

    if-nez v18, :cond_7

    .line 2147
    iget v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_5

    const/4 v10, 0x1

    .line 2148
    .local v10, "isRtc":Z
    :goto_2
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v22, v0

    if-eqz v10, :cond_6

    const-wide/16 v18, 0x0

    :goto_3
    add-long v16, v22, v18

    .line 2152
    .local v16, "when":J
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v18, v0

    const-wide/16 v22, 0x3

    mul-long v18, v18, v22

    add-long v18, v18, v16

    cmp-long v18, v18, p1

    if-gez v18, :cond_7

    .line 2153
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 2167
    .end local v6    # "TIME_SKEW":J
    .end local v8    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v10    # "isRtc":Z
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    .end local v16    # "when":J
    :catchall_1
    move-exception v18

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v18

    .line 2147
    .restart local v6    # "TIME_SKEW":J
    .restart local v8    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .restart local v10    # "isRtc":Z
    :cond_6
    move-wide/from16 v18, v6

    .line 2148
    goto :goto_3

    .line 2157
    .end local v10    # "isRtc":Z
    :cond_7
    :try_start_3
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 2159
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 2160
    .local v14, "time":Landroid/text/format/Time;
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v22, v0

    iget v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_8

    const-wide/16 v18, 0x0

    :goto_4
    add-long v18, v18, v22

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 2161
    invoke-virtual {v14}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v15

    .line 2162
    .local v15, "timeStr":Ljava/lang/String;
    const-string v19, "AlarmManagerEXT"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[AppSync] T:"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v21, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v21, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v21, ", "

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v21, ", INT:"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v21, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v21, "("

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-boolean v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isExact:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v21, ")"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v15    # "timeStr":Ljava/lang/String;
    :cond_8
    move-wide/from16 v18, v6

    .line 2160
    goto/16 :goto_4

    .line 2162
    .restart local v15    # "timeStr":Ljava/lang/String;
    :cond_9
    const/16 v18, 0x0

    goto :goto_5

    .line 2166
    .end local v8    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v14    # "time":Landroid/text/format/Time;
    .end local v15    # "timeStr":Ljava/lang/String;
    :cond_a
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v18

    if-eqz v18, :cond_b

    const-string v18, "AlarmManagerEXT"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " GCD:"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    :cond_b
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeUnusedAlarmRecord(JZLjava/io/PrintWriter;)V

    .line 2169
    :cond_c
    return-void
.end method

.method public lookForNonAdjustableAlarm(Landroid/app/PendingIntent;J)Z
    .locals 10
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "triggerAtTime"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 1825
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v3

    .line 1826
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1830
    .local v0, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenOriginal:J

    cmp-long v2, v4, v8

    if-lez v2, :cond_0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenOriginal:J

    cmp-long v2, v4, p2

    if-eqz v2, :cond_1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenOriginal:J

    sub-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    :cond_1
    iget-wide v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    cmp-long v2, v4, v8

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    iget v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    if-eq v2, v4, :cond_0

    .line 1847
    const-string v2, "AlarmManagerEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OOI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    const/4 v2, 0x1

    monitor-exit v3

    .line 1852
    .end local v0    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :goto_0
    return v2

    .line 1851
    :cond_2
    monitor-exit v3

    .line 1852
    const/4 v2, 0x0

    goto :goto_0

    .line 1851
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 2074
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->queryAccounts()V

    .line 2075
    return-void
.end method

.method public removeRepeatingAlarm(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 1960
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v1

    .line 1965
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1966
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    .line 1968
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1969
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeAlarmRecord(Ljava/lang/String;I)V

    .line 1970
    :cond_1
    return-void

    .line 1968
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeRepeatingAlarm(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1935
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v1

    .line 1940
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1941
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    .line 1943
    :cond_0
    monitor-exit v1

    .line 1944
    return-void

    .line 1943
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeRepeatingAlarm(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1947
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v1

    .line 1952
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1953
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    .line 1955
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1956
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeAlarmRecord(Ljava/lang/String;I)V

    .line 1957
    :cond_1
    return-void

    .line 1955
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public schedulingRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)J
    .locals 61
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 686
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v27

    .line 687
    .local v27, "creatorPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 688
    if-eqz v27, :cond_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 689
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v52, v0

    monitor-exit v6

    .line 1081
    .end local v27    # "creatorPkg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v52

    .line 691
    .restart local v27    # "creatorPkg":Ljava/lang/String;
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    .end local v27    # "creatorPkg":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v0, v6

    move-wide/from16 v54, v0

    .line 703
    .local v54, "sTime":D
    new-instance v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;-><init>(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 704
    .local v5, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-wide v0, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v52, v0

    .line 705
    .local v52, "returnValue":J
    const-wide/16 v38, -0x1

    .line 706
    .local v38, "intervalValue":J
    const-wide/16 v28, 0x0

    .line 707
    .local v28, "distRounded":J
    const-wide/16 v30, 0x0

    .line 708
    .local v30, "distanceToAlarm":J
    const-wide/16 v32, 0x0

    .line 709
    .local v32, "distanceToAlarmOriginal":J
    const-wide/16 v22, 0x0

    .line 710
    .local v22, "SYNC_TOLERANCE_VALUE":J
    iget v4, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v6, 0x1

    if-gt v4, v6, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    .line 711
    .local v42, "now":J
    :goto_2
    const/16 v24, 0x0

    .line 715
    .local v24, "alarmInfoStr":Ljava/lang/String;
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_b

    .line 716
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long v30, v6, v42

    .line 717
    const-wide/16 v6, 0x0

    cmp-long v4, v30, v6

    if-gez v4, :cond_2

    .line 718
    const/4 v4, 0x1

    iput-boolean v4, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    .line 719
    const-wide/16 v6, -0x1

    mul-long v30, v30, v6

    .line 721
    :cond_2
    move-wide/from16 v32, v30

    .line 734
    :goto_3
    const-wide/32 v6, 0x325aa0

    cmp-long v4, v30, v6

    if-ltz v4, :cond_d

    const-wide/32 v22, 0xea60

    .line 736
    :goto_4
    move-wide/from16 v0, v30

    long-to-double v6, v0

    move-wide/from16 v0, v22

    long-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    mul-long v28, v6, v22

    .line 738
    move-wide/from16 v0, v32

    long-to-double v6, v0

    move-wide/from16 v0, v22

    long-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    mul-long v32, v6, v22

    .line 743
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_3

    move-wide/from16 v0, v28

    iput-wide v0, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    .line 745
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    move-object/from16 v60, v0

    monitor-enter v60

    .line 746
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v10, v6, v8

    .line 747
    .local v10, "TIME_SKEW":J
    iget-object v4, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v48

    .line 751
    .local v48, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mGmsLocationBundling:Z

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_13

    .line 752
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 753
    const-string v4, "AlarmManagerEXT"

    const-string v6, "XXX:: bundling on"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v44

    .line 757
    .local v44, "nowElapsed":J
    const/16 v41, 0x0

    .line 758
    .local v41, "isExtendingEnabled":Z
    const/16 v49, 0x0

    .line 760
    .local v49, "strAction":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_e

    .line 761
    const-wide/32 v6, 0xa4cb80

    add-long v6, v6, v44

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v25, v24

    .line 787
    .end local v24    # "alarmInfoStr":Ljava/lang/String;
    .local v25, "alarmInfoStr":Ljava/lang/String;
    :goto_5
    :try_start_3
    const-string v4, "com.google.android.gms"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 788
    if-nez v49, :cond_5

    iget-object v4, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v49

    .line 789
    :cond_5
    if-eqz v49, :cond_11

    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.google.android.gms.nlp.*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 790
    const/16 v41, 0x1

    .line 802
    :cond_6
    :goto_6
    if-eqz v41, :cond_14

    .line 803
    const-wide/16 v36, 0x0

    .line 804
    .local v36, "extraDistance":J
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    cmp-long v4, v6, v8

    if-lez v4, :cond_7

    .line 805
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xa4cb80

    div-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const-wide/32 v8, 0xa4cb80

    mul-long v36, v6, v8

    .line 808
    :cond_7
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    iget v4, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v6, 0x1

    if-gt v4, v6, :cond_12

    move-wide v6, v10

    :goto_7
    add-long/2addr v6, v8

    add-long v6, v6, v36

    iput-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 810
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    add-long v6, v6, v36

    iput-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 811
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_8

    .line 812
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    const-wide/32 v8, 0xa4cb80

    div-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const-wide/32 v8, 0xa4cb80

    mul-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iput-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 815
    :cond_8
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v8, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 816
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 817
    new-instance v58, Landroid/text/format/Time;

    invoke-direct/range {v58 .. v58}, Landroid/text/format/Time;-><init>()V

    .line 818
    .local v58, "time":Landroid/text/format/Time;
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v4, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v8, 0x1

    if-gt v4, v8, :cond_9

    const-wide/16 v10, 0x0

    .end local v10    # "TIME_SKEW":J
    :cond_9
    add-long/2addr v6, v10

    move-object/from16 v0, v58

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 819
    invoke-virtual/range {v58 .. v58}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v59

    .line 820
    .local v59, "timeStr":Ljava/lang/String;
    new-instance v24, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> T:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", INT:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 822
    .end local v25    # "alarmInfoStr":Ljava/lang/String;
    .restart local v24    # "alarmInfoStr":Ljava/lang/String;
    :try_start_4
    const-string v4, "AlarmManagerEXT"

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    .end local v58    # "time":Landroid/text/format/Time;
    .end local v59    # "timeStr":Ljava/lang/String;
    :goto_8
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    monitor-exit v60
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-wide/from16 v52, v6

    goto/16 :goto_0

    .line 691
    .end local v5    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v22    # "SYNC_TOLERANCE_VALUE":J
    .end local v24    # "alarmInfoStr":Ljava/lang/String;
    .end local v28    # "distRounded":J
    .end local v30    # "distanceToAlarm":J
    .end local v32    # "distanceToAlarmOriginal":J
    .end local v36    # "extraDistance":J
    .end local v38    # "intervalValue":J
    .end local v41    # "isExtendingEnabled":Z
    .end local v42    # "now":J
    .end local v44    # "nowElapsed":J
    .end local v48    # "pkgName":Ljava/lang/String;
    .end local v49    # "strAction":Ljava/lang/String;
    .end local v52    # "returnValue":J
    .end local v54    # "sTime":D
    .restart local v27    # "creatorPkg":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    .line 692
    .end local v27    # "creatorPkg":Ljava/lang/String;
    :catch_0
    move-exception v34

    .line 693
    .local v34, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-virtual/range {v34 .. v34}, Ljava/util/regex/PatternSyntaxException;->printStackTrace()V

    goto/16 :goto_1

    .line 694
    .end local v34    # "e":Ljava/util/regex/PatternSyntaxException;
    :catch_1
    move-exception v34

    .line 695
    .local v34, "e":Ljava/lang/NullPointerException;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_1

    .line 710
    .end local v34    # "e":Ljava/lang/NullPointerException;
    .restart local v5    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v22    # "SYNC_TOLERANCE_VALUE":J
    .restart local v28    # "distRounded":J
    .restart local v30    # "distanceToAlarm":J
    .restart local v32    # "distanceToAlarmOriginal":J
    .restart local v38    # "intervalValue":J
    .restart local v52    # "returnValue":J
    .restart local v54    # "sTime":D
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v42

    goto/16 :goto_2

    .line 727
    .restart local v24    # "alarmInfoStr":Ljava/lang/String;
    .restart local v42    # "now":J
    :cond_b
    iget-wide v0, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v30, v0

    .line 728
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    cmp-long v4, v6, v42

    if-gez v4, :cond_c

    iget-wide v0, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v32, v0

    :goto_9
    goto/16 :goto_3

    :cond_c
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long v32, v6, v42

    goto :goto_9

    .line 734
    :cond_d
    const-wide/16 v22, 0x2710

    goto/16 :goto_4

    .line 764
    .restart local v10    # "TIME_SKEW":J
    .restart local v41    # "isExtendingEnabled":Z
    .restart local v44    # "nowElapsed":J
    .restart local v48    # "pkgName":Ljava/lang/String;
    .restart local v49    # "strAction":Ljava/lang/String;
    :cond_e
    :try_start_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    move-wide/from16 v50, v0

    .line 765
    .local v50, "prevNextSlotInPSM":J
    :goto_a
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    cmp-long v4, v6, v44

    if-gez v4, :cond_f

    .line 766
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    const-wide/32 v8, 0xa4cb80

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    goto :goto_a

    .line 1063
    .end local v10    # "TIME_SKEW":J
    .end local v41    # "isExtendingEnabled":Z
    .end local v44    # "nowElapsed":J
    .end local v48    # "pkgName":Ljava/lang/String;
    .end local v49    # "strAction":Ljava/lang/String;
    .end local v50    # "prevNextSlotInPSM":J
    :catchall_1
    move-exception v4

    :goto_b
    monitor-exit v60
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v4

    .line 768
    .restart local v10    # "TIME_SKEW":J
    .restart local v41    # "isExtendingEnabled":Z
    .restart local v44    # "nowElapsed":J
    .restart local v48    # "pkgName":Ljava/lang/String;
    .restart local v49    # "strAction":Ljava/lang/String;
    .restart local v50    # "prevNextSlotInPSM":J
    :cond_f
    :try_start_8
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    cmp-long v4, v50, v6

    if-eqz v4, :cond_3e

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextAlarmWhen:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_3e

    .line 769
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextAlarmWhen:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    cmp-long v4, v6, v8

    if-gtz v4, :cond_10

    .line 770
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextAlarmWhen:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextAlarmWhen:J

    move-wide/from16 v16, v0

    sub-long v8, v8, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v16

    div-long v8, v8, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v16

    mul-long v8, v8, v16

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    .line 777
    :goto_c
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 778
    new-instance v58, Landroid/text/format/Time;

    invoke-direct/range {v58 .. v58}, Landroid/text/format/Time;-><init>()V

    .line 779
    .restart local v58    # "time":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    add-long/2addr v6, v10

    move-object/from16 v0, v58

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 780
    invoke-virtual/range {v58 .. v58}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v59

    .line 781
    .restart local v59    # "timeStr":Ljava/lang/String;
    new-instance v25, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> mNextSlotInPSM: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 782
    .end local v24    # "alarmInfoStr":Ljava/lang/String;
    .restart local v25    # "alarmInfoStr":Ljava/lang/String;
    :try_start_9
    const-string v4, "AlarmManagerEXT"

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_5

    .line 1063
    .end local v10    # "TIME_SKEW":J
    .end local v41    # "isExtendingEnabled":Z
    .end local v44    # "nowElapsed":J
    .end local v49    # "strAction":Ljava/lang/String;
    .end local v50    # "prevNextSlotInPSM":J
    .end local v58    # "time":Landroid/text/format/Time;
    .end local v59    # "timeStr":Ljava/lang/String;
    :catchall_2
    move-exception v4

    move-object/from16 v24, v25

    .end local v25    # "alarmInfoStr":Ljava/lang/String;
    .restart local v24    # "alarmInfoStr":Ljava/lang/String;
    goto/16 :goto_b

    .line 774
    .restart local v10    # "TIME_SKEW":J
    .restart local v41    # "isExtendingEnabled":Z
    .restart local v44    # "nowElapsed":J
    .restart local v49    # "strAction":Ljava/lang/String;
    .restart local v50    # "prevNextSlotInPSM":J
    :cond_10
    :try_start_a
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextAlarmWhen:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextAlarmWhen:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    move-wide/from16 v16, v0

    sub-long v8, v8, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v16

    div-long v8, v8, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v16

    mul-long v8, v8, v16

    sub-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_c

    .line 793
    .end local v24    # "alarmInfoStr":Ljava/lang/String;
    .end local v50    # "prevNextSlotInPSM":J
    .restart local v25    # "alarmInfoStr":Ljava/lang/String;
    :cond_11
    :try_start_b
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 794
    .local v19, "aIntent":Landroid/content/Intent;
    if-eqz v19, :cond_6

    .line 795
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v26

    .line 796
    .local v26, "comp":Landroid/content/ComponentName;
    if-eqz v26, :cond_6

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "uploader"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 797
    const/16 v41, 0x1

    goto/16 :goto_6

    .line 808
    .end local v19    # "aIntent":Landroid/content/Intent;
    .end local v26    # "comp":Landroid/content/ComponentName;
    .restart local v36    # "extraDistance":J
    :cond_12
    const-wide/16 v6, 0x0

    goto/16 :goto_7

    .end local v25    # "alarmInfoStr":Ljava/lang/String;
    .end local v36    # "extraDistance":J
    .end local v41    # "isExtendingEnabled":Z
    .end local v44    # "nowElapsed":J
    .end local v49    # "strAction":Ljava/lang/String;
    .restart local v24    # "alarmInfoStr":Ljava/lang/String;
    :cond_13
    move-object/from16 v25, v24

    .line 831
    .end local v24    # "alarmInfoStr":Ljava/lang/String;
    .restart local v25    # "alarmInfoStr":Ljava/lang/String;
    :cond_14
    const/16 v40, 0x0

    .line 832
    .local v40, "isChnControlEnabled":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z

    if-nez v4, :cond_16

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    if-nez v4, :cond_16

    .line 833
    iget-object v4, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v12

    .line 834
    .local v12, "aExtUid":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;

    monitor-enter v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 835
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppList:Ljava/util/Set;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 836
    const/16 v40, 0x1

    .line 838
    :cond_15
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 841
    .end local v12    # "aExtUid":I
    :cond_16
    if-eqz v40, :cond_1e

    :try_start_d
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/32 v8, 0x1b77400

    cmp-long v4, v6, v8

    if-gtz v4, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolDeactivateInScreenOn:Z

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mScreenOffTime:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_17

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_1e

    .line 843
    :cond_17
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "AlarmManagerEXT"

    const-string v6, "XXX:: Control China Apps on"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_18
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 845
    new-instance v58, Landroid/text/format/Time;

    invoke-direct/range {v58 .. v58}, Landroid/text/format/Time;-><init>()V

    .line 846
    .restart local v58    # "time":Landroid/text/format/Time;
    iget-wide v8, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v4, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v6, 0x1

    if-gt v4, v6, :cond_19

    const-wide/16 v6, 0x0

    :goto_d
    add-long/2addr v6, v8

    move-object/from16 v0, v58

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 847
    invoke-virtual/range {v58 .. v58}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v59

    .line 848
    .restart local v59    # "timeStr":Ljava/lang/String;
    new-instance v24, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mChn_setTime T:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", INT:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 850
    .end local v25    # "alarmInfoStr":Ljava/lang/String;
    .restart local v24    # "alarmInfoStr":Ljava/lang/String;
    :try_start_e
    const-string v4, "AlarmManagerEXT"

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    .end local v58    # "time":Landroid/text/format/Time;
    .end local v59    # "timeStr":Ljava/lang/String;
    :goto_e
    const-wide/16 v6, 0x2710

    cmp-long v4, v32, v6

    if-gtz v4, :cond_1a

    .line 855
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    monitor-exit v60
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-wide/from16 v52, v6

    goto/16 :goto_0

    .line 838
    .end local v24    # "alarmInfoStr":Ljava/lang/String;
    .restart local v12    # "aExtUid":I
    .restart local v25    # "alarmInfoStr":Ljava/lang/String;
    :catchall_3
    move-exception v4

    :try_start_f
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .end local v12    # "aExtUid":I
    .restart local v58    # "time":Landroid/text/format/Time;
    :cond_19
    move-wide v6, v10

    .line 846
    goto/16 :goto_d

    .line 857
    .end local v25    # "alarmInfoStr":Ljava/lang/String;
    .end local v58    # "time":Landroid/text/format/Time;
    .restart local v24    # "alarmInfoStr":Ljava/lang/String;
    :cond_1a
    :try_start_11
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInChn:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmForFixedPeriodicWakeups(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JJJ)V

    .line 859
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 860
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 861
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_1d

    const-wide/16 v6, 0x1

    :goto_f
    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 862
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long/2addr v6, v8

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 863
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->AndroidMBuild:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$900()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 864
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    .line 867
    :cond_1b
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_1c

    .line 868
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 871
    :cond_1c
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    monitor-exit v60
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-wide/from16 v52, v6

    goto/16 :goto_0

    .line 861
    :cond_1d
    const-wide/16 v6, 0x0

    goto :goto_f

    .line 874
    .end local v24    # "alarmInfoStr":Ljava/lang/String;
    .restart local v25    # "alarmInfoStr":Ljava/lang/String;
    :cond_1e
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v4, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    if-ne v4, v6, :cond_2e

    .line 875
    const-wide/16 v56, 0x0

    .line 879
    .local v56, "tempPeriodicity":J
    const-string v4, "com.android.email"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "com.samsung.android.email.sync"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 880
    :cond_1f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    if-nez v4, :cond_20

    iget-object v4, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    .line 881
    :cond_20
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I

    if-nez v4, :cond_21

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I

    .line 882
    :cond_21
    iget-object v4, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v35

    .line 883
    .local v35, "intent":Landroid/content/Intent;
    if-eqz v35, :cond_23

    .line 884
    const-string v4, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v6, -0x2

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 885
    .local v14, "accountId":J
    const-string v4, "com.android.email.intent.extra.ACCOUNT_INFO"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v18

    .line 889
    .local v18, "mailAccountInfos":[J
    const-wide/16 v20, 0x2

    .line 890
    .local v20, "ACCOUNT_INFO_UNIT_LENGTH":J
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v4, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(Email) ID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_22
    const-wide/16 v6, -0x2

    cmp-long v4, v14, v6

    if-nez v4, :cond_28

    const-string v4, "com.android.email.intent.action.ACTION_RESET_IDLE"

    invoke-virtual/range {v35 .. v35}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 897
    move-wide/from16 v0, v28

    long-to-double v6, v0

    const-wide v8, 0x41124f8000000000L    # 300000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    const-wide/32 v8, 0x493e0

    mul-long v56, v6, v8

    move-wide/from16 v0, v56

    iput-wide v0, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 956
    .end local v14    # "accountId":J
    .end local v18    # "mailAccountInfos":[J
    .end local v20    # "ACCOUNT_INFO_UNIT_LENGTH":J
    .end local v35    # "intent":Landroid/content/Intent;
    :cond_23
    :goto_10
    const-wide/16 v6, 0x0

    cmp-long v4, v56, v6

    if-ltz v4, :cond_24

    .line 957
    iget-wide v0, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v38, v0

    .line 972
    .end local v56    # "tempPeriodicity":J
    :cond_24
    :goto_11
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TA] Periodicity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v38

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_25
    const-wide/16 v6, 0x0

    cmp-long v4, v38, v6

    if-nez v4, :cond_31

    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/32 v8, 0x493e0

    cmp-long v4, v6, v8

    if-ltz v4, :cond_31

    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/32 v8, 0x1b77400

    cmp-long v4, v6, v8

    if-gtz v4, :cond_31

    .line 984
    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    iput-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 988
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    move-object/from16 v24, v25

    .line 1062
    .end local v10    # "TIME_SKEW":J
    .end local v25    # "alarmInfoStr":Ljava/lang/String;
    .restart local v24    # "alarmInfoStr":Ljava/lang/String;
    :cond_26
    :goto_12
    :try_start_13
    iget-wide v0, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v52, v0

    .line 1063
    monitor-exit v60
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1067
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    sub-double v46, v6, v54

    .line 1068
    .local v46, "op_period":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    long-to-double v8, v8

    mul-double/2addr v6, v8

    add-double v6, v6, v46

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    const-wide/16 v16, 0x1

    add-long v16, v16, v8

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    const-wide/16 v16, 0x1

    add-long v8, v8, v16

    long-to-double v8, v8

    div-double/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    .line 1069
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    cmpl-double v4, v46, v6

    if-lez v4, :cond_27

    .line 1070
    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    .line 1071
    iget-object v4, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v4

    int-to-long v6, v4

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    .line 1073
    :cond_27
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1074
    const-string v4, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " (SyncScheduler) Processed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v46

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (avg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%.2f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") [ms]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 903
    .end local v24    # "alarmInfoStr":Ljava/lang/String;
    .end local v46    # "op_period":D
    .restart local v10    # "TIME_SKEW":J
    .restart local v14    # "accountId":J
    .restart local v18    # "mailAccountInfos":[J
    .restart local v20    # "ACCOUNT_INFO_UNIT_LENGTH":J
    .restart local v25    # "alarmInfoStr":Ljava/lang/String;
    .restart local v35    # "intent":Landroid/content/Intent;
    .restart local v56    # "tempPeriodicity":J
    :cond_28
    const-wide/16 v6, -0x2

    cmp-long v4, v14, v6

    if-eqz v4, :cond_23

    if-eqz v18, :cond_23

    :try_start_14
    move-object/from16 v0, v18

    array-length v4, v0

    int-to-long v6, v4

    const-wide/16 v8, 0x2

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_23

    .line 905
    iget-wide v0, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v16, v0

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateEmailSyncStatus(JJ[J)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 906
    iget-wide v0, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v56, v0

    .end local v56    # "tempPeriodicity":J
    move-wide/from16 v0, v56

    iput-wide v0, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .restart local v56    # "tempPeriodicity":J
    goto/16 :goto_10

    .line 913
    .end local v14    # "accountId":J
    .end local v18    # "mailAccountInfos":[J
    .end local v20    # "ACCOUNT_INFO_UNIT_LENGTH":J
    .end local v35    # "intent":Landroid/content/Intent;
    :cond_29
    const-wide/32 v6, 0x1b77400

    cmp-long v4, v28, v6

    if-gtz v4, :cond_23

    const-wide/32 v6, 0x493e0

    cmp-long v4, v28, v6

    if-ltz v4, :cond_23

    const-wide/32 v6, 0x186a0

    rem-long v6, v28, v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_23

    .line 918
    const-wide/32 v6, 0x493e0

    rem-long v6, v28, v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_2a

    .line 919
    move-wide/from16 v0, v28

    iput-wide v0, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 920
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_2d

    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    :goto_13
    iput-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 926
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v4, :cond_2b

    .line 927
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-wide/from16 v0, v28

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->queryTrafficPeriodicity(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;J)J

    move-result-wide v56

    .line 932
    :cond_2b
    const-wide/16 v6, 0x0

    cmp-long v4, v56, v6

    if-ltz v4, :cond_2c

    .line 937
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_2c

    .line 938
    move-wide/from16 v0, v28

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v0, v28

    iput-wide v0, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v0, v28

    iput-wide v0, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 946
    :cond_2c
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v4, v32, v6

    if-gez v4, :cond_23

    .line 947
    const-wide/16 v56, 0x0

    .line 948
    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 949
    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 950
    const/4 v4, 0x1

    iput-boolean v4, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    goto/16 :goto_10

    .line 920
    :cond_2d
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-wide v8, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    iget-wide v0, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-wide/from16 v16, v0

    sub-long v8, v8, v16

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v6

    goto :goto_13

    .line 961
    .end local v56    # "tempPeriodicity":J
    :cond_2e
    const-wide/32 v6, 0x1b77400

    cmp-long v4, v28, v6

    if-gtz v4, :cond_24

    const-wide/32 v6, 0x493e0

    cmp-long v4, v28, v6

    if-ltz v4, :cond_24

    const-wide/32 v6, 0x186a0

    rem-long v6, v28, v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_24

    .line 964
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v4, :cond_2f

    const/4 v4, 0x1

    move/from16 v0, v40

    if-eq v0, v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-wide/from16 v0, v28

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->queryTrafficPeriodicity(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;J)J

    move-result-wide v38

    .line 965
    :cond_2f
    const-wide/16 v6, 0x0

    cmp-long v4, v38, v6

    if-lez v4, :cond_24

    .line 966
    move-wide/from16 v0, v28

    iput-wide v0, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 967
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_30

    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    :goto_14
    iput-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    goto/16 :goto_11

    :cond_30
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-wide v8, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    iget-wide v0, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-wide/from16 v16, v0

    sub-long v8, v8, v16

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v6

    goto :goto_14

    .line 993
    :cond_31
    const-wide/16 v6, 0x0

    cmp-long v4, v38, v6

    if-lez v4, :cond_3b

    .line 995
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/32 v8, 0x493e0

    cmp-long v4, v6, v8

    if-ltz v4, :cond_39

    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/32 v8, 0x1b77400

    cmp-long v4, v6, v8

    if-gtz v4, :cond_39

    .line 997
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    iget-wide v8, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1006
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_38

    .line 1007
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    .line 1008
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V

    .line 1034
    :cond_32
    :goto_15
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$1000()Z

    move-result v4

    if-eqz v4, :cond_33

    iget-boolean v4, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    if-eqz v4, :cond_33

    .line 1038
    iget v4, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v6, 0x1

    if-gt v4, v6, :cond_3a

    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long/2addr v6, v10

    :goto_16
    iput-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1043
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v8, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    .line 1047
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1049
    :cond_33
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->AndroidMBuild:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$900()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1050
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    .line 1053
    :cond_34
    const-string/jumbo v4, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    cmp-long v4, v6, v8

    if-nez v4, :cond_36

    :cond_35
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1054
    :cond_36
    new-instance v58, Landroid/text/format/Time;

    invoke-direct/range {v58 .. v58}, Landroid/text/format/Time;-><init>()V

    .line 1055
    .restart local v58    # "time":Landroid/text/format/Time;
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v4, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v8, 0x1

    if-gt v4, v8, :cond_37

    const-wide/16 v10, 0x0

    .end local v10    # "TIME_SKEW":J
    :cond_37
    add-long/2addr v6, v10

    move-object/from16 v0, v58

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 1056
    invoke-virtual/range {v58 .. v58}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v59

    .line 1057
    .restart local v59    # "timeStr":Ljava/lang/String;
    new-instance v24, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---> T:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", INT:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 1059
    .end local v25    # "alarmInfoStr":Ljava/lang/String;
    .restart local v24    # "alarmInfoStr":Ljava/lang/String;
    if-eqz v24, :cond_26

    :try_start_15
    const-string v4, "AlarmManagerEXT"

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_12

    .line 1016
    .end local v24    # "alarmInfoStr":Ljava/lang/String;
    .end local v58    # "time":Landroid/text/format/Time;
    .end local v59    # "timeStr":Ljava/lang/String;
    .restart local v10    # "TIME_SKEW":J
    .restart local v25    # "alarmInfoStr":Ljava/lang/String;
    :cond_38
    :try_start_16
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    goto/16 :goto_15

    .line 1022
    :cond_39
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_32

    .line 1027
    const-wide/32 v6, 0x1b77400

    cmp-long v4, v38, v6

    if-gtz v4, :cond_32

    const-wide/32 v6, 0x493e0

    cmp-long v4, v38, v6

    if-ltz v4, :cond_32

    .line 1028
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1030
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    .line 1031
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V

    goto/16 :goto_15

    .line 1038
    :cond_3a
    iget-wide v6, v5, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto/16 :goto_16

    :cond_3b
    move-object/from16 v24, v25

    .end local v25    # "alarmInfoStr":Ljava/lang/String;
    .restart local v24    # "alarmInfoStr":Ljava/lang/String;
    goto/16 :goto_12

    .end local v24    # "alarmInfoStr":Ljava/lang/String;
    .restart local v25    # "alarmInfoStr":Ljava/lang/String;
    :cond_3c
    move-object/from16 v24, v25

    .end local v25    # "alarmInfoStr":Ljava/lang/String;
    .restart local v24    # "alarmInfoStr":Ljava/lang/String;
    goto/16 :goto_e

    .end local v24    # "alarmInfoStr":Ljava/lang/String;
    .end local v40    # "isChnControlEnabled":Z
    .restart local v25    # "alarmInfoStr":Ljava/lang/String;
    .restart local v36    # "extraDistance":J
    .restart local v41    # "isExtendingEnabled":Z
    .restart local v44    # "nowElapsed":J
    .restart local v49    # "strAction":Ljava/lang/String;
    :cond_3d
    move-object/from16 v24, v25

    .end local v25    # "alarmInfoStr":Ljava/lang/String;
    .restart local v24    # "alarmInfoStr":Ljava/lang/String;
    goto/16 :goto_8

    .end local v36    # "extraDistance":J
    .restart local v50    # "prevNextSlotInPSM":J
    :cond_3e
    move-object/from16 v25, v24

    .end local v24    # "alarmInfoStr":Ljava/lang/String;
    .restart local v25    # "alarmInfoStr":Ljava/lang/String;
    goto/16 :goto_5
.end method

.method public updateAlarmTriggerInfo(Landroid/app/PendingIntent;IJ)V
    .locals 7
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "count"    # I
    .param p3, "nowRtc"    # J

    .prologue
    .line 2083
    if-eqz p1, :cond_2

    .line 2084
    const/4 v1, 0x0

    .line 2085
    .local v1, "aExtUid":I
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    .line 2086
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v4

    .line 2087
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppList:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2091
    :cond_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2092
    .local v0, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2093
    iput p2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->count:I

    .line 2094
    iput-wide p3, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    .line 2098
    iget-boolean v3, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    if-eqz v3, :cond_3

    .line 2099
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    .line 2100
    monitor-exit v4

    .line 2112
    .end local v0    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v1    # "aExtUid":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    return-void

    .line 2108
    .restart local v1    # "aExtUid":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->updateAlarmTriggerInfo(Landroid/app/PendingIntent;IJ)V

    .line 2110
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public updateEmailSyncStatus(JJ[J)J
    .locals 7
    .param p1, "curAccountd"    # J
    .param p3, "alarmTriggerTime"    # J
    .param p5, "emailAccountInfos"    # [J

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->updateEmailSyncStatus(JJ[J)J

    move-result-wide v0

    .line 2079
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public updateExplicitRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 24
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 1371
    const/4 v11, 0x0

    .line 1376
    .local v11, "bRet":Z
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v14

    .line 1377
    .local v14, "creatorPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1378
    if-eqz v14, :cond_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Lcom/android/server/AlarmManagerServiceExt$PackageList;

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1379
    monitor-exit v4

    move v2, v11

    .line 1430
    .end local v14    # "creatorPkg":Ljava/lang/String;
    :goto_0
    return v2

    .line 1381
    .restart local v14    # "creatorPkg":Ljava/lang/String;
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1391
    .end local v14    # "creatorPkg":Ljava/lang/String;
    :goto_1
    const/16 v16, 0x0

    .line 1392
    .local v16, "isChnControlEnabled":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnAppsBundling:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mChnSolEnable:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isGalaxyViewUSBConnected:Z

    if-nez v2, :cond_2

    .line 1393
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v10

    .line 1394
    .local v10, "aExtUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockUserApps:Ljava/lang/Object;

    monitor-enter v4

    .line 1395
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppList:Ljava/util/Set;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1396
    const/16 v16, 0x1

    .line 1398
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1401
    .end local v10    # "aExtUid":I
    :cond_2
    if-eqz v16, :cond_8

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/32 v6, 0x1b77400

    cmp-long v2, v4, v6

    if-gtz v2, :cond_8

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    sget-boolean v2, Lcom/android/server/AlarmManagerServiceExt;->COUNTRY_CODE_CHN:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_2
    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-gtz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mExtraWhiteListPkgs:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1403
    :cond_3
    new-instance v3, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;-><init>(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1404
    .local v3, "a":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1405
    .local v20, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 1406
    .local v18, "nowElapsed":J
    sub-long v8, v20, v18

    .line 1408
    .local v8, "TIME_SKEW":J
    const-wide/16 v4, 0x1

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long v6, v18, v6

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v22, v0

    div-long v6, v6, v22

    add-long v12, v4, v6

    .line 1409
    .local v12, "count":J
    iget-wide v4, v3, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget-wide v6, v3, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    mul-long/2addr v6, v12

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    .line 1410
    iget v2, v3, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v4, 0x1

    if-gt v2, v4, :cond_7

    iget-wide v4, v3, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long/2addr v4, v8

    :goto_3
    iput-wide v4, v3, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    .line 1412
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInChn:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mDefaultIntervalInChn:J

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmForFixedPeriodicWakeups(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JJJ)V

    .line 1414
    iget-wide v4, v3, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_4

    .line 1415
    iget-wide v4, v3, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1417
    :cond_4
    iget-wide v4, v3, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget-wide v6, v3, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    sub-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1418
    iget-wide v4, v3, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v6, v3, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    sub-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1419
    const-wide/16 v4, 0x1

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 1420
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1421
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->AndroidMBuild:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$900()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1422
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    .line 1424
    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1381
    .end local v3    # "a":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v8    # "TIME_SKEW":J
    .end local v12    # "count":J
    .end local v16    # "isChnControlEnabled":Z
    .end local v18    # "nowElapsed":J
    .end local v20    # "nowRtc":J
    .restart local v14    # "creatorPkg":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1382
    .end local v14    # "creatorPkg":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 1383
    .local v15, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-virtual {v15}, Ljava/util/regex/PatternSyntaxException;->printStackTrace()V

    goto/16 :goto_1

    .line 1384
    .end local v15    # "e":Ljava/util/regex/PatternSyntaxException;
    :catch_1
    move-exception v15

    .line 1385
    .local v15, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v15}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_1

    .line 1398
    .end local v15    # "e":Ljava/lang/NullPointerException;
    .restart local v10    # "aExtUid":I
    .restart local v16    # "isChnControlEnabled":Z
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 1401
    .end local v10    # "aExtUid":I
    :cond_6
    const/16 v2, 0x2710

    goto/16 :goto_2

    .line 1410
    .restart local v3    # "a":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v8    # "TIME_SKEW":J
    .restart local v12    # "count":J
    .restart local v18    # "nowElapsed":J
    .restart local v20    # "nowRtc":J
    :cond_7
    iget-wide v4, v3, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    goto :goto_3

    .line 1427
    .end local v3    # "a":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v8    # "TIME_SKEW":J
    .end local v12    # "count":J
    .end local v18    # "nowElapsed":J
    .end local v20    # "nowRtc":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v4

    .line 1428
    :try_start_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v11

    .line 1429
    monitor-exit v4

    move v2, v11

    .line 1430
    goto/16 :goto_0

    .line 1429
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2
.end method

.method public updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 28
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 1440
    const/4 v9, 0x0

    .line 1441
    .local v9, "bRet":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1442
    .local v16, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 1443
    .local v14, "nowElapsed":J
    sub-long v6, v16, v14

    .line 1445
    .local v6, "TIME_SKEW":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1449
    .local v8, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-lez v21, :cond_0

    .line 1451
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-nez v21, :cond_3

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v18, v0

    .line 1453
    .local v18, "tempRepeatInterval":J
    :goto_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v0, v22

    iput-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    .line 1454
    const-wide/16 v22, 0x1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v24, v0

    sub-long v24, v14, v24

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v26, v0

    div-long v24, v24, v26

    add-long v10, v22, v24

    .line 1455
    .local v10, "count":J
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v22, v0

    mul-long v24, v10, v18

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    .line 1460
    iget-boolean v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-gtz v21, :cond_2

    :cond_1
    iget-boolean v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 1461
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v22

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 1463
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v24

    rem-long v22, v22, v24

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-nez v21, :cond_4

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v22

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move/from16 v3, v21

    invoke-direct {v0, v8, v1, v2, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    .line 1478
    :goto_1
    iget-boolean v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 1479
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-boolean v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    .line 1480
    const/4 v9, 0x1

    .line 1485
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1486
    :goto_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v24, v0

    iget v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_5

    move-wide/from16 v22, v16

    :goto_3
    cmp-long v21, v24, v22

    if-lez v21, :cond_6

    .line 1487
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v18

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_2

    .line 1451
    .end local v10    # "count":J
    .end local v18    # "tempRepeatInterval":J
    :cond_3
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v18, v0

    goto/16 :goto_0

    .line 1472
    .restart local v10    # "count":J
    .restart local v18    # "tempRepeatInterval":J
    :cond_4
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v22, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move/from16 v3, v21

    invoke-direct {v0, v8, v1, v2, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    goto :goto_1

    :cond_5
    move-wide/from16 v22, v14

    .line 1486
    goto :goto_3

    .line 1493
    :cond_6
    iget v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_d

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v6

    :goto_4
    move-wide/from16 v0, v22

    iput-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    .line 1495
    iget v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_e

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v6

    :goto_5
    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1500
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-wide/from16 v22, v0

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhenElapsed:J

    .line 1501
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1502
    const-wide/16 v22, 0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 1504
    :cond_7
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->AndroidMBuild:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$900()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 1505
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    .line 1507
    :cond_8
    const-string/jumbo v21, "eng"

    sget-object v22, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    move-wide/from16 v24, v0

    cmp-long v21, v22, v24

    if-nez v21, :cond_a

    :cond_9
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 1508
    :cond_a
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 1509
    .local v13, "time":Landroid/text/format/Time;
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v22, v0

    iget v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v21, v0

    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-gt v0, v1, :cond_b

    const-wide/16 v6, 0x0

    .end local v6    # "TIME_SKEW":J
    :cond_b
    add-long v22, v22, v6

    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1510
    invoke-virtual {v13}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v20

    .line 1511
    .local v20, "timeStr":Ljava/lang/String;
    const-string v21, "AlarmManagerEXT"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "--->> T:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", INT:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") count:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-boolean v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    .end local v8    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v10    # "count":J
    .end local v13    # "time":Landroid/text/format/Time;
    .end local v18    # "tempRepeatInterval":J
    .end local v20    # "timeStr":Ljava/lang/String;
    :cond_c
    return v9

    .line 1493
    .restart local v6    # "TIME_SKEW":J
    .restart local v8    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v10    # "count":J
    .restart local v18    # "tempRepeatInterval":J
    :cond_d
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v22, v0

    goto/16 :goto_4

    .line 1495
    :cond_e
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v22, v0

    goto/16 :goto_5
.end method
