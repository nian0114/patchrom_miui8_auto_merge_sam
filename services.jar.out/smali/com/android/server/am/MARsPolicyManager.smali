.class public Lcom/android/server/am/MARsPolicyManager;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;,
        Lcom/android/server/am/MARsPolicyManager$PolicyException;,
        Lcom/android/server/am/MARsPolicyManager$Policy;
    }
.end annotation


# static fields
.field public static final ACTION_FORCEKILL_PACKAGE:I = 0x4

.field public static final ACTION_FORCESTOP_PACKAGE:I = 0x2

.field public static final ACTION_FORCESTOP_PACKAGE_LATER:I = 0x3

.field public static final ACTION_NONSTICKY_KILLPACKAGE:I = 0x1

.field static AppSleep_Enable:Z = false

.field static App_StartUp_History:Z = false

.field static DEBUG_MARs:Z = false

.field static GlobalModelWithChinaSIM:Z = false

.field public static final INTENT_ACTION_STRING_C2DM:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field static final MARS_SCPM_OPTIMIZIED_TYPE_SKIP:I = 0x3

.field static final MARS_SCPM_RESTRICTED_TYPE_BLACKLIST:I = 0x0

.field static final MARS_SCPM_RESTRICTED_TYPE_BLACKLIST_ACTIVE_TRAFFIC:I = 0x4

.field static final MARS_SCPM_RESTRICTED_TYPE_BLOCK:I = 0x1

.field static final MARS_SCPM_RESTRICTED_TYPE_SKIP:I = 0x2

.field static MARs_ENABLE:Z = false

.field public static final POLICY_NUM_APPLOCKER:I = 0x3

.field public static final POLICY_NUM_AUTORUN:I = 0x4

.field public static final POLICY_NUM_GCMLOCKER:I = 0x2

.field public static final POLICY_NUM_SBIKE:I = 0x6

.field public static final POLICY_NUM_SPCM:I = 0x1

.field public static final POLICY_NUM_UDS:I = 0x5

.field public static final POLICY_TARGET_CATEGORY_ALL:I = 0x1

.field public static final POLICY_TARGET_CATEGORY_ALWAYS_OPTIMIZING:I = 0xc

.field public static final POLICY_TARGET_CATEGORY_ALWAYS_OPTIMIZING_AND_NOTUSEDRECENTLY:I = 0xd

.field public static final POLICY_TARGET_CATEGORY_AUTORUN_OFF:I = 0x14

.field public static final POLICY_TARGET_CATEGORY_AUTORUN_OFF_AND_NOTUSEDRECENTLY:I = 0x15

.field public static final POLICY_TARGET_CATEGORY_AUTO_OPTIMIZING:I = 0xa

.field public static final POLICY_TARGET_CATEGORY_GLOBAL_AUTORUN_OFF:I = 0x18

.field public static final POLICY_TARGET_CATEGORY_SBIKE:I = 0x17

.field public static final POLICY_TARGET_CATEGORY_TURNED_OFF:I = 0xb

.field public static final POLICY_TARGET_CATEGORY_UDS:I = 0x16

.field public static final POLICY_TARGET_CATEGORY_USINGGCM:I = 0x2

.field static final PROTECTED_PACKAGES_LIMIT:I = 0x6

.field static final REQUEST_CNT_TRACKING_START_TIME:J = 0x493e0L

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_APPLOCKER:I = 0x13b8110

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_AUTORUN:I = 0x390880

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_GCMLOCKER:I = 0x1008112

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_SBIKE:I = 0x1000112

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_SPCM:I = 0x0

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_UDS:I = 0x1000220

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCKALL:I = 0x1

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCK_EXCEPTFG:I = 0x2

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCK_EXCEPTSYSTEM:I = 0x4

.field public static final RESTRICTION_TYPE_BACKUP_BLOCKALL:I = 0x1000000

.field public static final RESTRICTION_TYPE_BLOCK_AUTO_RUN:I = 0x10000000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCKALL:I = 0x1000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_C2DM:I = 0x8000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_EDGE_INTENT:I = 0x80000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMFG:I = 0x2000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMLAUNCHER:I = 0x100000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMSYSTEM:I = 0x4000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_GEAR_INTENT:I = 0x10000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_HIGH_PRIORITY_GCM:I = 0x40000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_KIES_INTENT:I = 0x200000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_SPECIALINTENTS_FOR_SKT:I = 0x20000

.field public static final RESTRICTION_TYPE_NONE:I = 0x0

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCKALL:I = 0x100

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_AUTORUNBLOCK:I = 0x800

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_EXCEPTFG:I = 0x200

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_EXCEPTSYSTEM:I = 0x400

.field public static final RESTRICTION_TYPE_SERVICE_BLOCKALL:I = 0x10

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_AUTORUNBLOCK:I = 0x80

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_EXCEPTFG:I = 0x20

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_EXCEPTSYSTEM:I = 0x40

.field public static final SERVICE_KILL_LIMIT_OF_ADJ:I = 0xe

.field static final TAG:Ljava/lang/String; = "MARsPolicyManager"

.field static final TAG_FORCE_KILL:Ljava/lang/String; = "MARs-ForceKillPackage-"

.field static final TAG_NONSTICKY_KILL:Ljava/lang/String; = "MARs-NonSticky-Kill-"

.field public static nonStickyKillAdj:I


# instance fields
.field public final MOVE_TO_INACTIVE_TIME_INTERNAL:J

.field public final SPCM_BASE_PACKAGE_SCORE:I

.field private final TREATLIKE_SYSTEMTIME_CHANGED_INTERNAL_TIME:J

.field private UNUSEDPACKAGES_DEFAULT_LOCKING_TIME:J

.field private final UPDATE_PACKAGES_INTERNAL_TIME_FIRST:J

.field private final UPDATE_PACKAGES_SCORE_INTERNAL_TIME:J

.field private appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field lastScreenOffStartTime:J

.field private mActiveAdminsUpdated:Z

.field private mAllPoliciesOn:I

.field mAm:Lcom/android/server/am/ActivityManagerService;

.field private mAppSizeIncreased:J

.field private mAppUsedRecently:Z

.field private mBoundAppWidgetPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCarModeOn:Z

.field mContext:Landroid/content/Context;

.field private mCurrentHomePackage:Ljava/lang/String;

.field mDBManager:Lcom/android/server/am/MARsDBManager;

.field private mDataConnectionIsConnected:Z

.field private mDataTrafficAmount:J

.field private mDefaultIMEPackage:Ljava/lang/String;

.field mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mFirstTimeExcutingPolicy:Z

.field private mFirstTimeUpdatePackages:Z

.field mInputMethodObserver:Landroid/database/ContentObserver;

.field private mIsManualMode:Z

.field private mLastUpdatePackagesScoreTime:J

.field public mLatestProtectedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchedAppBeforeInit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;",
            ">;"
        }
    .end annotation
.end field

.field private mLockingTimeChanged:Z

.field private final mMARsNotificationListener:Landroid/service/notification/NotificationListenerService;

.field private mMARsUpdatePackagesThread:Ljava/lang/Thread;

.field private mManagedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mNotiUpdateWhileScreenOffMap:Ljava/util/Map;
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

.field private mNotificationCountDiffMap:Ljava/util/Map;
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

.field private mNotificationListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPeriodMap:Ljava/util/Map;
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

.field private mNotificationUpdatedCount:J

.field private mOngoingNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyExceptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPolicyManager$PolicyException;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningLocationPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScpmBlackListForActiveTrafficValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScpmBlackListValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScpmBlockValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScpmSkipOptimizationValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScpmSkipValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mSpecialSKTPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageStatDiffMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageStatPeriodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficStatMap_LRU_RX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficStatMap_LRU_TX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mTrigger:Lcom/android/server/am/MARsTrigger;

.field private mUnusedAutoFreezeTime:J

.field private mUnusedLockingTime:J

.field private mVpnServicePackage:Ljava/lang/String;

.field private mWallpaperPackage:Ljava/lang/String;

.field private mWhiteListIntentsForSKT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public spcmPolicyTrigger:Z

.field private udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    .line 95
    const-string/jumbo v2, "sys.config.mars"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 98
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    .line 101
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 104
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    .line 456
    const/4 v0, 0x5

    sput v0, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillAdj:I

    return-void

    :cond_0
    move v0, v1

    .line 95
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 8
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    .line 116
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    .line 117
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    .line 118
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 386
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 389
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 394
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 397
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 400
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 403
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    .line 454
    iput-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    .line 455
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    .line 460
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->UNUSEDPACKAGES_DEFAULT_LOCKING_TIME:J

    .line 461
    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->UNUSEDPACKAGES_DEFAULT_LOCKING_TIME:J

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    .line 462
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    .line 463
    iput v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    .line 464
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    .line 465
    iput-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    .line 466
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->TREATLIKE_SYSTEMTIME_CHANGED_INTERNAL_TIME:J

    .line 469
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicyTrigger:Z

    .line 471
    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->MOVE_TO_INACTIVE_TIME_INTERNAL:J

    .line 472
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->UPDATE_PACKAGES_INTERNAL_TIME_FIRST:J

    .line 473
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->UPDATE_PACKAGES_SCORE_INTERNAL_TIME:J

    .line 474
    iput-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->mLastUpdatePackagesScoreTime:J

    .line 475
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager;->SPCM_BASE_PACKAGE_SCORE:I

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    .line 490
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mDataConnectionIsConnected:Z

    .line 491
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAppUsedRecently:Z

    .line 492
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z

    .line 493
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    .line 494
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    .line 495
    iput-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdatedCount:J

    .line 496
    iput-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAppSizeIncreased:J

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    .line 507
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlockValues:Landroid/util/ArrayMap;

    .line 508
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipValues:Landroid/util/ArrayMap;

    .line 509
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListValues:Landroid/util/ArrayMap;

    .line 510
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListForActiveTrafficValues:Landroid/util/ArrayMap;

    .line 511
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipOptimizationValues:Landroid/util/ArrayMap;

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    .line 532
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    .line 535
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    .line 536
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    .line 537
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    .line 538
    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    .line 539
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdminsUpdated:Z

    .line 541
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsPolicyManager$1;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    .line 606
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 607
    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 608
    new-instance v0, Lcom/android/server/am/MARsTrigger;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsTrigger;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    .line 609
    new-instance v0, Lcom/android/server/am/MARsDBManager;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsDBManager;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    .line 611
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 612
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->updatePackagesScore(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->updateLaunchedBeforeInitToManaged()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/MARsPolicyManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdminsUpdated:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/am/MARsPolicyManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdminsUpdated:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->updateActiveAdminsToManaged()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->updateSMDBValues()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->checkCarModeState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/MARsPolicyManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getDefaultIMEPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/MARsPolicyManager;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    return-object v0
.end method

.method private appLockerStateToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 3826
    packed-switch p1, :pswitch_data_0

    .line 3838
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3828
    :pswitch_0
    const-string v0, "PACKAGE_AUTO_OPTIMIZING                (extras 0)"

    goto :goto_0

    .line 3830
    :pswitch_1
    const-string v0, "PACKAGE_ALWAYS_OPTIMIZING              (extras 9)"

    goto :goto_0

    .line 3832
    :pswitch_2
    const-string v0, "PACKAGE_TURNED_OFF                     (extras 9)"

    goto :goto_0

    .line 3834
    :pswitch_3
    const-string v0, "PACKAGE_AUTO_OPTIMIZING_NOTUSEDRECENTLY(extras 1)"

    goto :goto_0

    .line 3836
    :pswitch_4
    const-string v0, "PACKAGE_SETTO_AUTO_OPTIMIZING          (extras 2)"

    goto :goto_0

    .line 3826
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private checkCarModeState()V
    .locals 5

    .prologue
    .line 1727
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "uimode"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    .line 1728
    .local v1, "mUiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    .line 1729
    .local v0, "mCarMode":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    if-eq v2, v0, :cond_1

    .line 1730
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    .line 1731
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change the car mode state from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    .line 1734
    :cond_1
    return-void

    .line 1728
    .end local v0    # "mCarMode":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertStateToAutorun(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x0

    .line 3532
    packed-switch p1, :pswitch_data_0

    .line 3541
    :goto_0
    :pswitch_0
    return v0

    .line 3539
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3532
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private covertDBValueToState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "strIsSMFreezed"    # Ljava/lang/String;
    .param p2, "strExtras"    # Ljava/lang/String;

    .prologue
    .line 3495
    const/4 v0, 0x0

    .line 3497
    .local v0, "state":I
    const-string v1, "9"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3498
    const/4 v0, 0x2

    .line 3510
    :cond_0
    :goto_0
    return v0

    .line 3499
    :cond_1
    const-string v1, "9"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3500
    const/4 v0, 0x1

    goto :goto_0

    .line 3502
    :cond_2
    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3503
    const/4 v0, 0x0

    goto :goto_0

    .line 3504
    :cond_3
    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3505
    const/4 v0, 0x3

    goto :goto_0

    .line 3506
    :cond_4
    const-string v1, "2"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3507
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private covertStateToDBExtrasValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 3514
    packed-switch p1, :pswitch_data_0

    .line 3526
    const-string v0, "0"

    :goto_0
    return-object v0

    .line 3516
    :pswitch_0
    const-string v0, "0"

    goto :goto_0

    .line 3518
    :pswitch_1
    const-string v0, "9"

    goto :goto_0

    .line 3520
    :pswitch_2
    const-string v0, "9"

    goto :goto_0

    .line 3522
    :pswitch_3
    const-string v0, "1"

    goto :goto_0

    .line 3524
    :pswitch_4
    const-string v0, "2"

    goto :goto_0

    .line 3514
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private createPolicies()V
    .locals 40

    .prologue
    .line 784
    const-string/jumbo v2, "sys.config.mars_spcm"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v7, 0x1

    .line 785
    .local v7, "spcmPolicyEnabled":Z
    :goto_0
    new-instance v2, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v8, "spcmpolicy"

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 791
    const-string/jumbo v2, "sys.config.mars_gcmlocker"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v13, 0x1

    .line 792
    .local v13, "gcmLockerPolicyEnabled":Z
    :goto_1
    new-instance v8, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v10, 0x2

    const/4 v11, 0x1

    const v12, 0x1008112

    const-string/jumbo v14, "gcmlockerpolicy"

    const/4 v15, 0x2

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v15}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 798
    const-string/jumbo v2, "sys.config.mars_applocker"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v19, 0x1

    .line 800
    .local v19, "appLockerPolicyEnabled":Z
    :goto_2
    new-instance v14, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v16, 0xd

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getActionTypeByCountryIso()I

    move-result v17

    const v18, 0x13b8110

    const-string v20, "applockerpolicy"

    const/16 v21, 0x3

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v21}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 806
    const-string/jumbo v2, "sys.config.mars_autorun"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v25, 0x1

    .line 807
    .local v25, "autoRunPolicyEnabled":Z
    :goto_3
    new-instance v20, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v22, 0x15

    const/16 v23, 0x4

    const v24, 0x390880

    const-string v26, "autorunpolicy"

    const/16 v27, 0x4

    move-object/from16 v21, p0

    invoke-direct/range {v20 .. v27}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 813
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UDS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    .line 814
    .local v31, "udsPolicyEnabled":Z
    new-instance v26, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v28, 0x16

    const/16 v29, 0x2

    const v30, 0x1000220

    const-string/jumbo v32, "udspolicy"

    const/16 v33, 0x5

    move-object/from16 v27, p0

    invoke-direct/range {v26 .. v33}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 820
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bikemode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v37

    .line 821
    .local v37, "sbikePolicyEnabled":Z
    new-instance v32, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v34, 0x17

    const/16 v35, 0x2

    const v36, 0x1000112

    const-string/jumbo v38, "sbkiepolicy"

    const/16 v39, 0x6

    move-object/from16 v33, p0

    invoke-direct/range {v32 .. v39}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 826
    return-void

    .line 784
    .end local v7    # "spcmPolicyEnabled":Z
    .end local v13    # "gcmLockerPolicyEnabled":Z
    .end local v19    # "appLockerPolicyEnabled":Z
    .end local v25    # "autoRunPolicyEnabled":Z
    .end local v31    # "udsPolicyEnabled":Z
    .end local v37    # "sbikePolicyEnabled":Z
    :cond_0
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 791
    .restart local v7    # "spcmPolicyEnabled":Z
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 798
    .restart local v13    # "gcmLockerPolicyEnabled":Z
    :cond_2
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 806
    .restart local v19    # "appLockerPolicyEnabled":Z
    :cond_3
    const/16 v25, 0x0

    goto :goto_3
.end method

.method private forceKillPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2876
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 2877
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageForMARsLocked(Ljava/lang/String;Ljava/lang/String;ZZI)Z

    .line 2878
    monitor-exit v6

    .line 2879
    return-void

    .line 2878
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2871
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 2872
    return-void
.end method

.method private formatDateTime(J)Ljava/lang/String;
    .locals 3
    .param p1, "dateTime"    # J

    .prologue
    .line 3842
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    .line 3843
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const v2, 0x20015

    invoke-static {v1, p1, p2, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private generateTargetList(Lcom/android/server/am/MARsPolicyManager$Policy;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "policy"    # Lcom/android/server/am/MARsPolicyManager$Policy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/MARsPolicyManager$Policy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1339
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1340
    .local v3, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->targetCategory:I

    .line 1342
    .local v0, "category":I
    if-ne v0, v5, :cond_2

    .line 1343
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1428
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v4, :cond_18

    .line 1429
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_18

    .line 1430
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1431
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v6, :cond_1

    .line 1432
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1433
    add-int/lit8 v1, v1, -0x1

    .line 1429
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1345
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_2
    if-ne v0, v6, :cond_4

    .line 1346
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1347
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1348
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-boolean v4, v2, Lcom/android/server/am/MARsPackageStatus;->isUsingGcm:Z

    if-eqz v4, :cond_3

    iget-boolean v4, v2, Lcom/android/server/am/MARsPackageStatus;->receivedGcmIntent:Z

    if-eqz v4, :cond_3

    .line 1349
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1353
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_4
    const/16 v4, 0xa

    if-ne v0, v4, :cond_6

    .line 1354
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1355
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1356
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-nez v4, :cond_5

    .line 1357
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1354
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1360
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_6
    const/16 v4, 0xb

    if-ne v0, v4, :cond_8

    .line 1361
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1362
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1363
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v6, :cond_7

    .line 1364
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1367
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_8
    const/16 v4, 0xc

    if-ne v0, v4, :cond_a

    .line 1368
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1369
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1370
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v5, :cond_9

    .line 1371
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1368
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1374
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_a
    const/16 v4, 0xd

    if-ne v0, v4, :cond_d

    .line 1375
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1376
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1377
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-eq v4, v5, :cond_b

    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v7, :cond_c

    .line 1379
    :cond_b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1375
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1384
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_d
    const/16 v4, 0x14

    if-ne v0, v4, :cond_f

    .line 1385
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1386
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1387
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v4, :cond_e

    .line 1388
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1385
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1391
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_f
    const/16 v4, 0x15

    if-ne v0, v4, :cond_12

    .line 1392
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1393
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1394
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-eqz v4, :cond_10

    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-ne v4, v5, :cond_11

    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v7, :cond_11

    .line 1396
    :cond_10
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1400
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_12
    const/16 v4, 0x16

    if-ne v0, v4, :cond_14

    .line 1401
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1402
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1403
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->uds:I

    if-ne v4, v5, :cond_13

    .line 1404
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1401
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1408
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_14
    const/16 v4, 0x17

    if-ne v0, v4, :cond_16

    .line 1409
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1410
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1411
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->sbike:I

    if-ne v4, v5, :cond_15

    .line 1412
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1409
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1417
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_16
    const/16 v4, 0x18

    if-ne v0, v4, :cond_0

    .line 1418
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_a
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1419
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1420
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v4, :cond_17

    .line 1421
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1418
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1438
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_18
    return-object v3
.end method

.method private getActiveAdminsPackages()Ljava/util/ArrayList;
    .locals 8
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
    .line 1759
    const/4 v1, 0x0

    .line 1760
    .local v1, "activeDeviceAdminPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 1761
    .local v5, "mDpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 1763
    .local v0, "activeAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_1

    .line 1764
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "activeDeviceAdminPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1765
    .restart local v1    # "activeDeviceAdminPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1766
    .local v3, "cmpName":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1767
    .local v2, "adminPkgName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1768
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1772
    .end local v2    # "adminPkgName":Ljava/lang/String;
    .end local v3    # "cmpName":Landroid/content/ComponentName;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v1
.end method

.method private getBoundAppWidgetPackages()Ljava/util/ArrayList;
    .locals 8
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
    .line 1797
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 1798
    .local v2, "mAwm":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v5

    .line 1799
    .local v5, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 1801
    .local v6, "userId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 1802
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1803
    .local v4, "provider":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1804
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v3, v6}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v1

    .line 1805
    .local v1, "isBound":Z
    if-eqz v1, :cond_0

    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1806
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1801
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1809
    .end local v1    # "isBound":Z
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "provider":Landroid/content/ComponentName;
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    return-object v7
.end method

.method private getDefaultIMEPackage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1479
    const/4 v0, 0x0

    .line 1480
    .local v0, "strPreferredIME":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1482
    if-eqz v0, :cond_0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1484
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1485
    .local v1, "tmp":[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1486
    aget-object v0, v1, v4

    .line 1490
    .end local v1    # "tmp":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getLaunchedAppBeforeInit(Ljava/lang/String;)Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3245
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 3246
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3247
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    .line 3248
    .local v1, "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    iget-object v2, v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3252
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :goto_1
    return-object v1

    .line 3246
    .restart local v0    # "i":I
    .restart local v1    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3252
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;
    .locals 3
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/am/MARsPackageStatus;"
        }
    .end annotation

    .prologue
    .line 1098
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    if-eqz p1, :cond_1

    .line 1099
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1100
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPackageStatus;

    .line 1101
    .local v1, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v2, v1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1105
    .end local v0    # "i":I
    .end local v1    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :goto_1
    return-object v1

    .line 1099
    .restart local v0    # "i":I
    .restart local v1    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1105
    .end local v0    # "i":I
    .end local v1    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getNotiUpdateCountWhileScreenOff(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1737
    const/4 v0, -0x1

    .line 1738
    .local v0, "updateCount":I
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1739
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1741
    :cond_0
    return v0
.end method

.method private getPackageActivityScore(Lcom/android/server/am/MARsPackageStatus;[Landroid/content/pm/ActivityInfo;Ljava/util/List;JJ)I
    .locals 24
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "activities"    # [Landroid/content/pm/ActivityInfo;
    .param p4, "totaltime"    # J
    .param p6, "lTimeInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/MARsPackageStatus;",
            "[",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;JJ)I"
        }
    .end annotation

    .prologue
    .line 3667
    .local p3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    move-object/from16 v0, p2

    array-length v4, v0

    .line 3668
    .local v4, "count":I
    const/16 v17, 0x0

    .line 3669
    .local v17, "score":I
    const v5, 0x20015

    .line 3676
    .local v5, "dateFormatFlags":I
    if-lez v4, :cond_1

    .line 3677
    const/16 v20, 0x0

    aget-object v2, p2, v20

    .line 3679
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x0

    .line 3680
    .local v6, "foreground_score":I
    const/4 v12, 0x0

    .line 3682
    .local v12, "lasttime_score":I
    const-wide/16 v8, 0x0

    .line 3683
    .local v8, "foregroundtime":J
    const-wide/16 v10, 0x0

    .line 3684
    .local v10, "lasttime":J
    const/4 v7, 0x0

    .line 3686
    .local v7, "found":Z
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 3687
    .local v3, "activityName":Ljava/lang/String;
    iget-object v13, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3688
    .local v13, "packageName":Ljava/lang/String;
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 3697
    .local v16, "processName":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "pkg_i":I
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_0

    .line 3699
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/usage/UsageStats;

    .line 3701
    .local v15, "pkgstat":Landroid/app/usage/UsageStats;
    iget-object v0, v15, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 3702
    iget-wide v8, v15, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 3703
    iget-wide v10, v15, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 3704
    const/4 v7, 0x1

    .line 3709
    .end local v15    # "pkgstat":Landroid/app/usage/UsageStats;
    :cond_0
    if-nez v7, :cond_3

    .line 3711
    const/4 v6, 0x0

    .line 3712
    const/4 v12, 0x0

    .line 3731
    :goto_1
    add-int v17, v6, v12

    .line 3735
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "activityName":Ljava/lang/String;
    .end local v6    # "foreground_score":I
    .end local v7    # "found":Z
    .end local v8    # "foregroundtime":J
    .end local v10    # "lasttime":J
    .end local v12    # "lasttime_score":I
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "pkg_i":I
    .end local v16    # "processName":Ljava/lang/String;
    :cond_1
    return v17

    .line 3697
    .restart local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "activityName":Ljava/lang/String;
    .restart local v6    # "foreground_score":I
    .restart local v7    # "found":Z
    .restart local v8    # "foregroundtime":J
    .restart local v10    # "lasttime":J
    .restart local v12    # "lasttime_score":I
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v14    # "pkg_i":I
    .restart local v15    # "pkgstat":Landroid/app/usage/UsageStats;
    .restart local v16    # "processName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 3715
    .end local v15    # "pkgstat":Landroid/app/usage/UsageStats;
    :cond_3
    const-wide/16 v20, 0x0

    cmp-long v20, p4, v20

    if-eqz v20, :cond_4

    .line 3716
    const-wide/16 v20, 0x2710

    mul-long v20, v20, v8

    div-long v20, v20, p4

    move-wide/from16 v0, v20

    long-to-int v6, v0

    .line 3718
    :cond_4
    if-nez v6, :cond_5

    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-eqz v20, :cond_5

    .line 3719
    const/4 v6, 0x1

    .line 3721
    :cond_5
    if-lez v6, :cond_6

    .line 3722
    add-int/lit16 v6, v6, 0x7d0

    .line 3724
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v18, v20, v10

    .line 3725
    .local v18, "tmptime":J
    const-wide/16 v20, 0x2710

    const-wide/16 v22, 0x2710

    mul-long v22, v22, v18

    div-long v22, v22, p6

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v12, v0

    .line 3728
    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    goto :goto_1
.end method

.method private getPackageProviderScore([Landroid/content/pm/ProviderInfo;)I
    .locals 16
    .param p1, "providers"    # [Landroid/content/pm/ProviderInfo;

    .prologue
    .line 3760
    const/4 v9, 0x0

    .line 3761
    .local v9, "score":I
    const/4 v11, 0x0

    .line 3762
    .local v11, "tmpscore":I
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    array-length v12, v0

    if-lez v12, :cond_3

    .line 3763
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v3, v12, :cond_3

    .line 3764
    aget-object v4, p1, v3

    .line 3766
    .local v4, "pInfo":Landroid/content/pm/ProviderInfo;
    iget-object v8, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 3767
    .local v8, "providerName":Ljava/lang/String;
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 3768
    .local v6, "processName":Ljava/lang/String;
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 3770
    .local v5, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    .line 3771
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v15, 0x1

    invoke-virtual {v12, v6, v14, v15}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 3772
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 3773
    const/16 v11, 0x3e8

    .line 3776
    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    add-int/lit8 v7, v12, -0x1

    .local v7, "proi":I
    :goto_1
    if-ltz v7, :cond_0

    .line 3777
    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v12, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    .line 3779
    .local v2, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v12, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3781
    iget-object v12, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3782
    .local v10, "size":I
    if-lez v10, :cond_0

    .line 3783
    add-int/lit16 v11, v11, 0xfa0

    .line 3788
    .end local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v7    # "proi":I
    .end local v10    # "size":I
    :cond_0
    monitor-exit v13

    .line 3790
    if-le v11, v9, :cond_1

    move v9, v11

    .line 3763
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3776
    .restart local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v7    # "proi":I
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 3788
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v7    # "proi":I
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 3794
    .end local v3    # "i":I
    .end local v4    # "pInfo":Landroid/content/pm/ProviderInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "processName":Ljava/lang/String;
    .end local v8    # "providerName":Ljava/lang/String;
    :cond_3
    return v9
.end method

.method private getPackageServiceScore(Lcom/android/server/am/MARsPackageStatus;[Landroid/content/pm/ServiceInfo;J)I
    .locals 13
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "sevices"    # [Landroid/content/pm/ServiceInfo;
    .param p3, "lLockTime"    # J

    .prologue
    .line 3740
    const/4 v0, 0x0

    .line 3741
    .local v0, "lastActivityScore":I
    const/4 v4, 0x0

    .line 3745
    .local v4, "tmpScore":I
    iget-wide v2, p1, Lcom/android/server/am/MARsPackageStatus;->lastServiceActivityTime:J

    .line 3746
    .local v2, "lastActivityTime":J
    const/16 v1, 0x1388

    .line 3747
    .local v1, "serviceBaseScore":I
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-eqz v5, :cond_0

    .line 3748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v2

    .line 3750
    .local v6, "tmptime":J
    cmp-long v5, v6, p3

    if-gez v5, :cond_0

    .line 3751
    int-to-long v8, v1

    int-to-long v10, v1

    mul-long/2addr v10, v6

    div-long v10, v10, p3

    sub-long/2addr v8, v10

    long-to-int v0, v8

    .line 3755
    .end local v6    # "tmptime":J
    :cond_0
    return v0
.end method

.method private getRunningProcessImprotance(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1494
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1495
    .local v2, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1496
    .local v0, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1497
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,getRunningProcessImprotance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 1502
    .end local v0    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v3

    :cond_1
    const/16 v3, 0x3e8

    goto :goto_0
.end method

.method public static getSmartManagerPkgName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 861
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v2, "com.samsung.android.sm"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTotalForegroundtimeIndays(Ljava/util/ArrayList;J)J
    .locals 22
    .param p2, "lTimeInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;J)J"
        }
    .end annotation

    .prologue
    .line 3624
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v17, "usagestats"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    .line 3626
    .local v2, "usageStatsManager":Landroid/app/usage/UsageStatsManager;
    const-wide/16 v18, 0x0

    .line 3628
    .local v18, "totalForegroundtime_indays":J
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 3630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v4, v20, p2

    .line 3631
    .local v4, "begintime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3632
    .local v6, "endtime":J
    const/4 v3, 0x3

    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v16

    .line 3635
    .local v16, "queryUsageStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    const v8, 0x20015

    .line 3640
    .local v8, "dateFormatFlags":I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 3641
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v15

    .line 3643
    .local v15, "pkgcnt":I
    const/4 v14, 0x0

    .local v14, "pkg_i":I
    :goto_0
    if-ge v14, v15, :cond_3

    .line 3644
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    iget-object v9, v3, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 3645
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    iget-wide v10, v3, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 3646
    .local v10, "foregroundtime":J
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    iget-wide v12, v3, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 3649
    .local v12, "lasttime":J
    cmp-long v3, v12, v4

    if-ltz v3, :cond_0

    const-wide/32 v20, 0xea60

    add-long v20, v20, v6

    cmp-long v3, v12, v20

    if-lez v3, :cond_1

    .line 3643
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 3652
    :cond_1
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3653
    add-long v18, v18, v10

    goto :goto_1

    .line 3659
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "foregroundtime":J
    .end local v12    # "lasttime":J
    .end local v14    # "pkg_i":I
    .end local v15    # "pkgcnt":I
    :cond_2
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_3

    .line 3660
    const-string v3, "MARsPolicyManager"

    const-string/jumbo v17, "getTotalForegroundtimeIndays no packages run activity in last 7 days!!! --- "

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3663
    .end local v4    # "begintime":J
    .end local v6    # "endtime":J
    .end local v8    # "dateFormatFlags":I
    .end local v16    # "queryUsageStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_3
    return-wide v18
.end method

.method private hasOngoingNotification(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1464
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1465
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1475
    :cond_0
    :goto_0
    return v0

    .line 1470
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 1471
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1475
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initPolicyExceptionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPolicyManager$PolicyException;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1109
    const/4 v0, 0x0

    return-object v0
.end method

.method private invokeNMGetNotificationCountInfo(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1554
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getNotiUpdateCountWhileScreenOff(Ljava/lang/String;)I

    move-result v0

    .line 1555
    .local v0, "notiUpdateCount":I
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": invokeNMGetNotificationCountInfo notiUpdateCount :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1557
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1558
    .local v1, "prevNotiCount":I
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": invokeNMGetNotificationCountInfo- diffNOTICount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    sub-int v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    .end local v1    # "prevNotiCount":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    return-void
.end method

.method private invokePMGetPackageSizeInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1531
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1532
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsPolicyManager$2;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    .line 1549
    .local v0, "mStatsObserver":Landroid/content/pm/IPackageStatsObserver$Stub;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 1550
    return-void
.end method

.method private isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2160
    if-nez p1, :cond_0

    .line 2182
    :goto_0
    return v4

    .line 2163
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 2164
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->resumedAppForMARsLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2167
    .local v0, "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2169
    monitor-exit v6

    move v4, v5

    goto :goto_0

    .line 2172
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const v8, 0x7fffffff

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->getServices(II)Ljava/util/List;

    move-result-object v2

    .line 2173
    .local v2, "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2174
    .local v3, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-boolean v7, v3, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v7, :cond_2

    .line 2175
    if-eqz p1, :cond_2

    iget-object v7, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    if-eqz v7, :cond_2

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v8, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2177
    monitor-exit v6

    move v4, v5

    goto :goto_0

    .line 2180
    .end local v3    # "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    monitor-exit v6

    goto :goto_0

    .end local v0    # "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private isAutoRunBlockedPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 5
    .param p1, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "hostingType"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 2399
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2401
    .local v0, "calleePkgName":Ljava/lang/String;
    if-eqz p1, :cond_3

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    .line 2402
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2410
    .local v1, "callerPkgName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "startService"

    if-eq p3, v3, :cond_0

    const-string v3, "bindService"

    if-ne p3, v3, :cond_1

    :cond_0
    invoke-direct {p0, v1, v0, p4}, Lcom/android/server/am/MARsPolicyManager;->isShouldSkipCaseForAutoRun(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2413
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->isSamsungService(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isLauncherableApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->isLauncherableApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2414
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_2

    .line 2415
    const-string v3, "MARsPolicyManager"

    const-string v4, "Blocked by AutoRun policy !!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    .end local v1    # "callerPkgName":Ljava/lang/String;
    :cond_2
    :goto_0
    return v2

    .line 2405
    :cond_3
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_2

    .line 2406
    const-string v3, "MARsPolicyManager"

    const-string v4, "Blocked by AutoRun policy !! -- Caller is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2418
    .restart local v1    # "callerPkgName":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v1, v0, p4}, Lcom/android/server/am/MARsPolicyManager;->isShouldBlockCase(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2419
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_2

    .line 2420
    const-string v3, "MARsPolicyManager"

    const-string v4, "Blocked by AutoRun policy -- shouldBlock cases!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2423
    :cond_5
    const-string v3, "bindService"

    if-ne p3, v3, :cond_8

    .line 2424
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isJobSchedulerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2425
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_2

    .line 2426
    const-string v3, "MARsPolicyManager"

    const-string v4, "Blocked by AutoRun policy -- JobSchedulerPackage!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2429
    :cond_6
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/am/MARsPolicyManager;->isSyncManagerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2430
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_2

    .line 2431
    const-string v3, "MARsPolicyManager"

    const-string v4, "Blocked by AutoRun policy -- SyncManagerPackage!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2434
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isBindNotificationListenerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2435
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_2

    .line 2436
    const-string v3, "MARsPolicyManager"

    const-string v4, "Blocked by AutoRun policy -- isBindNotificationListenerPackage!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2442
    :cond_8
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isBindNotificationListenerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    .line 2492
    if-nez p1, :cond_1

    .line 2514
    :cond_0
    :goto_0
    return v0

    .line 2495
    :cond_1
    const/4 v0, 0x0

    .line 2496
    .local v0, "bindNotiListenerPermissionFound":Z
    const/4 v3, 0x0

    .line 2498
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2499
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 2501
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 2502
    if-eqz v3, :cond_0

    .line 2503
    const-string v4, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2505
    const/4 v0, 0x1

    .line 2506
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoRun Policy isBindNotificationListenerPackage -- package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2509
    :catch_0
    move-exception v1

    .line 2510
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isBindNotificationListenerPackage exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z
    .locals 9
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "policyNum"    # I
    .param p3, "force"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    .line 1837
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_1

    if-ne p2, v8, :cond_1

    .line 1838
    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object v0, p0

    move v2, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MARsPolicyManager;->isSCPMManagedPackage(IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1839
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 1840
    const-string v0, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentImportantPackage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -is blacklist package!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v7, v1

    .line 2008
    :goto_0
    return v7

    .line 1848
    :cond_1
    iput-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 1851
    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->isDeviceAdmin:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->isRemovableAdmin:Z

    if-nez v0, :cond_3

    .line 1852
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_2

    .line 1853
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -isForceStopDisabled package from EDM!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    :cond_2
    const-string v0, "EDMForceStopDisabledPackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto :goto_0

    .line 1858
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1859
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_4

    .line 1860
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -wallpaper package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    :cond_4
    const-string v0, "WallpaperPackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto :goto_0

    .line 1866
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1867
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_6

    .line 1868
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -default inputMethod package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :cond_6
    const-string v0, "DefaultIMEPackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1874
    :cond_7
    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    if-eqz v0, :cond_9

    .line 1875
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_8

    .line 1876
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -is active device admin package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    :cond_8
    const-string v0, "ActiveDeviceAdminPackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1884
    :cond_9
    if-nez p3, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-nez v0, :cond_c

    if-eq p2, v7, :cond_c

    .line 1885
    :cond_a
    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isMusicOrRecordActive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1886
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_b

    .line 1887
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - isMusicOrRecordActive!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_b
    const-string v0, "MusicOrRecordActivePackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1893
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_10

    if-ne p2, v8, :cond_10

    .line 1895
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1896
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_d

    .line 1897
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -current home package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :cond_d
    const-string v0, "CurrentHomePackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1903
    :cond_e
    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1904
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_f

    .line 1905
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -foreground package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_f
    const-string v0, "ForegroundPackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1912
    :cond_10
    if-eqz p3, :cond_11

    move v7, v1

    .line 1913
    goto/16 :goto_0

    .line 1917
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_13

    if-ne p2, v8, :cond_13

    .line 1918
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1919
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_12

    .line 1920
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -first time excuting policy!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    :cond_12
    const-string v0, "FirstTimeExcutingPolicy"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1927
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_14

    if-eq p2, v8, :cond_16

    .line 1928
    :cond_14
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    if-lez v0, :cond_16

    .line 1929
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_15

    .line 1930
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -has running widgets "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "runningWidgets "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1936
    :cond_16
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1937
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_17

    .line 1938
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -vpnService package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    :cond_17
    const-string v0, "VpnServicePackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1943
    :cond_18
    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isDependsOnSystem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1944
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_19

    .line 1945
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -dependsOnSystem package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    :cond_19
    const-string v0, "DependsOnSystemPackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1951
    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_1b

    if-eq p2, v8, :cond_1d

    .line 1952
    :cond_1b
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-eq v0, v7, :cond_1d

    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasOngoingNotification(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1954
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_1c

    .line 1955
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -hasOngoingNotification!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    :cond_1c
    const-string/jumbo v0, "hasOngoingNotificationPackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1962
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_1f

    if-ne p2, v7, :cond_1f

    .line 1963
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1964
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_1e

    .line 1965
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -in latest protected packageslist for SPCM!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    :cond_1e
    const-string v0, "LatestProtectedPackages"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1972
    :cond_1f
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_29

    if-ne p2, v8, :cond_29

    .line 1974
    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isActiveTrafficExisting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1975
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_20

    .line 1976
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - isActiveTrafficExisting!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :cond_20
    const-string v0, "ActiveTrafficExistingPackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1981
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p1, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_23

    move v6, v7

    .line 1982
    .local v6, "isUnusedAppTimeExpired":Z
    :goto_1
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v0, :cond_24

    if-nez v6, :cond_24

    .line 1983
    iput-boolean v7, p0, Lcom/android/server/am/MARsPolicyManager;->mAppUsedRecently:Z

    .line 1984
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_22

    .line 1985
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Used in last 15 mins!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    :cond_22
    const-string v0, "UsedRecentlyPackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .end local v6    # "isUnusedAppTimeExpired":Z
    :cond_23
    move v6, v1

    .line 1981
    goto :goto_1

    .line 1990
    .restart local v6    # "isUnusedAppTimeExpired":Z
    :cond_24
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "com.baidu.BaiduMap"

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "com.autonavi.minimap"

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "com.autonavi.xmgd.navigator"

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "com.tencent.map"

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "com.sogou.map.android.maps"

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "com.baidu.navi"

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "com.mapbar.android.mapbarmap"

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "com.uu.uunavi"

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1995
    :cond_25
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_26

    .line 1996
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - isRunningLocationPackages!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    :cond_26
    const-string v0, "RunningLocationPackage"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 2001
    :cond_27
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-ne v0, v7, :cond_29

    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->hasAppIcon:Z

    if-nez v0, :cond_29

    .line 2002
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_28

    .line 2003
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - has No Icon!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    :cond_28
    const-string/jumbo v0, "hasNoIcon"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_0

    .end local v6    # "isUnusedAppTimeExpired":Z
    :cond_29
    move v7, v1

    .line 2008
    goto/16 :goto_0
.end method

.method private isCurrentLauncherApp(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2286
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2288
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call from Current Launcher app :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    const/4 v0, 0x1

    .line 2291
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDependsOnSystem(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1453
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "system"

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 1455
    .local v0, "prSystem":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    if-eqz v2, :cond_0

    .line 1456
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1457
    const/4 v1, 0x1

    .line 1460
    :cond_0
    return v1
.end method

.method private isEdgeIntent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 2260
    if-eqz p1, :cond_1

    const-string v0, "com.samsung.android.cocktail.action.COCKTAIL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.cocktail.v2.action.COCKTAIL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.app.memo.EDGE_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2265
    :cond_0
    const/4 v0, 0x1

    .line 2267
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isForegroundPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1442
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->resumedAppForMARsLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1443
    .local v0, "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1446
    .local v1, "TOP_APP":Lcom/android/server/am/ProcessRecord;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1447
    const/4 v2, 0x1

    .line 1449
    :goto_1
    return v2

    .line 1443
    .end local v1    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1449
    .restart local v1    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isGearManagerIntent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2230
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    const-string v0, "com.samsung.accessory"

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const-string v0, "android.accessory.service.action.ACCESSORY_SERVICE_CONNECTION_IND"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.accessory.device.action.REGISTER_AFTER_INSTALL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.accessory.action.REGISTER_AGENT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2237
    :cond_0
    const/4 v0, 0x1

    .line 2239
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInPolicyExceptionList(Lcom/android/server/am/MARsPackageStatus;I)Z
    .locals 7
    .param p1, "targetPackage"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "policyNum"    # I

    .prologue
    const/4 v3, 0x1

    .line 1114
    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    .line 1116
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1117
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPolicyManager$PolicyException;

    .line 1118
    .local v2, "pe":Lcom/android/server/am/MARsPolicyManager$PolicyException;
    iget-object v4, v2, Lcom/android/server/am/MARsPolicyManager$PolicyException;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v2, Lcom/android/server/am/MARsPolicyManager$PolicyException;->exception:I

    add-int/lit8 v5, p2, -0x1

    shl-int v5, v3, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 1120
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isInPolicyExceptionList "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in whitelist!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    .end local v2    # "pe":Lcom/android/server/am/MARsPolicyManager$PolicyException;
    :goto_1
    return v3

    .line 1116
    .restart local v2    # "pe":Lcom/android/server/am/MARsPolicyManager$PolicyException;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1126
    .end local v2    # "pe":Lcom/android/server/am/MARsPolicyManager$PolicyException;
    :cond_1
    const-string v4, ".cts."

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".cts"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1128
    :cond_2
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--is CTS Package, exclude!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1134
    :cond_3
    const-string v4, "com.samsung.accessory"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1135
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--Shouldn\'t be killed!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1140
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v4, :cond_5

    .line 1141
    const-string v4, "com.sec.android.app.shealth"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-ne v4, v3, :cond_5

    .line 1142
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--Shouldn\'t be killed!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1149
    :cond_5
    const/4 v4, 0x3

    invoke-direct {p0, v4, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isSCPMSkipOptimizationPackage(ILcom/android/server/am/MARsPackageStatus;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1150
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--Shouldn\'t be killed!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1154
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private isJobSchedulerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 2447
    if-nez p1, :cond_1

    .line 2469
    :cond_0
    :goto_0
    return v1

    .line 2450
    :cond_1
    const/4 v1, 0x0

    .line 2451
    .local v1, "jobPermissionFound":Z
    const/4 v3, 0x0

    .line 2453
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2454
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 2456
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 2457
    if-eqz v3, :cond_0

    .line 2458
    const-string v4, "android.permission.BIND_JOB_SERVICE"

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2460
    const/4 v1, 0x1

    .line 2461
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoRun Policy isJobSchedulerPackage -- package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2464
    :catch_0
    move-exception v0

    .line 2465
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isJobSchedulerPackage exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isKiesIntent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2272
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    const-string v0, "com.wssnps"

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const-string v0, "com.sec.android.intent.action.REQUEST_BACKUP_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec.android.intent.action.REQUEST_RESTORE_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.intent.action.REQUEST_BACKUP_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.intent.action.REQUEST_RESTORE_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2279
    :cond_0
    const/4 v0, 0x1

    .line 2281
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLauncherableApp(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2317
    const-string v4, "com.baidu.searchbox_samsung"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.bst.floatingmsgproxy"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2331
    :cond_0
    :goto_0
    return v3

    .line 2321
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2322
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2323
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 2324
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v4, :cond_2

    .line 2325
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoRun Policy isLauncherableApp -- Not launcherable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2326
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 2328
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 2329
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isLaucherableApp exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isMusicOrRecordActive(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1506
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1507
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    new-instance v3, Landroid/media/SamsungAudioManager;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    .line 1509
    .local v3, "mSamsungAudioManager":Landroid/media/SamsungAudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    .line 1510
    .local v1, "mMusicIsActive":Z
    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v2

    .line 1512
    .local v2, "mRecordIsActive":Z
    if-eqz v1, :cond_0

    invoke-virtual {v3, p1}, Landroid/media/SamsungAudioManager;->isUsingAudio(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->hasOngoingNotification(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getRunningProcessImprotance(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc8

    if-le v4, v5, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v3, p1}, Landroid/media/SamsungAudioManager;->isUsingAudio(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1515
    :cond_1
    const/4 v4, 0x1

    .line 1517
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isRunningPackage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2012
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 2013
    .local v2, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2014
    .local v0, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2015
    const/4 v3, 0x1

    .line 2018
    .end local v0    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return v3
.end method

.method private isSCPMManagedPackage(IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 9
    .param p1, "type"    # I
    .param p2, "policy_num"    # I
    .param p3, "calleePackage"    # Ljava/lang/String;
    .param p4, "callerPackage"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x4

    .line 4327
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v6, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v6, :cond_1

    .line 4328
    :cond_0
    const/4 v2, 0x0

    .line 4370
    :goto_0
    return v2

    .line 4331
    :cond_1
    const/4 v2, 0x0

    .line 4332
    .local v2, "isManagedPackage":Z
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 4333
    .local v5, "scpmManagedValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;>;"
    if-nez p1, :cond_5

    .line 4334
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 4335
    const-string v6, "MARsPolicyManager"

    const-string/jumbo v7, "isSCPMManagedPackage-----Scpm BlackList Values"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4347
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 4348
    .local v0, "action":Ljava/lang/String;
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 4349
    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4352
    :cond_3
    if-ne p2, v8, :cond_4

    .line 4353
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v6, "AutoRun"

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 4354
    .local v3, "scpmAutoRunManagedValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v3, :cond_4

    .line 4355
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 4356
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 4357
    .local v4, "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    invoke-direct {p0, v4, p3, p4, v0}, Lcom/android/server/am/MARsPolicyManager;->isSCPMValueMatch(Lcom/android/server/am/MARsDBManager$SCPMDBValue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 4358
    const/4 v2, 0x1

    .line 4367
    .end local v1    # "i":I
    .end local v3    # "scpmAutoRunManagedValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v4    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :cond_4
    const-string v6, "MARsPolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isSCPMManagedPackage --- calleePackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , callerPackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , isManagedPackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4336
    .end local v0    # "action":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x1

    if-ne p1, v6, :cond_6

    .line 4337
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlockValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 4338
    const-string v6, "MARsPolicyManager"

    const-string/jumbo v7, "isSCPMManagedPackage-----Scpm Block Values"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4339
    :cond_6
    const/4 v6, 0x2

    if-ne p1, v6, :cond_7

    .line 4340
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 4341
    const-string v6, "MARsPolicyManager"

    const-string/jumbo v7, "isSCPMManagedPackage-----Scpm Skip Values"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4342
    :cond_7
    if-ne p1, v8, :cond_2

    .line 4343
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListForActiveTrafficValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 4344
    const-string v6, "MARsPolicyManager"

    const-string/jumbo v7, "isSCPMManagedPackage-----Scpm BlackList for Active Traffic Values"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4355
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v3    # "scpmAutoRunManagedValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .restart local v4    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method

.method private isSCPMSkipOptimizationPackage(ILcom/android/server/am/MARsPackageStatus;I)Z
    .locals 9
    .param p1, "type"    # I
    .param p2, "targetPackage"    # Lcom/android/server/am/MARsPackageStatus;
    .param p3, "policy_num"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 4288
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v6, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v6, :cond_1

    .line 4321
    :cond_0
    :goto_0
    return v1

    .line 4292
    :cond_1
    iget v6, p2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-eqz v6, :cond_0

    .line 4296
    const/4 v1, 0x0

    .line 4297
    .local v1, "isSkipOptimizationPackage":Z
    iget-object v2, p2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    .line 4298
    .local v2, "packageName":Ljava/lang/String;
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 4300
    .local v5, "scpmSkipManagedValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;>;"
    const/4 v6, 0x3

    if-ne p1, v6, :cond_2

    .line 4301
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipOptimizationValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 4306
    :cond_2
    const/4 v6, 0x4

    if-ne p3, v6, :cond_3

    .line 4307
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v6, "AutoRun"

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 4308
    .local v3, "scpmAutoRunSkipOptimizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v3, :cond_3

    .line 4309
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 4310
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 4311
    .local v4, "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    invoke-direct {p0, v4, v2, v7, v7}, Lcom/android/server/am/MARsPolicyManager;->isSCPMValueMatch(Lcom/android/server/am/MARsDBManager$SCPMDBValue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4312
    const/4 v1, 0x1

    .line 4320
    .end local v0    # "i":I
    .end local v3    # "scpmAutoRunSkipOptimizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v4    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :cond_3
    const-string v6, "MARsPolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isSCPMSkipOptimizationPackage --- packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , isSkipOptimizationPackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4309
    .restart local v0    # "i":I
    .restart local v3    # "scpmAutoRunSkipOptimizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .restart local v4    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isSCPMValueMatch(Lcom/android/server/am/MARsDBManager$SCPMDBValue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;

    .prologue
    .line 4275
    const/4 v0, 0x0

    .line 4277
    .local v0, "isMatch":Z
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_1
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_3
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    if-eqz v1, :cond_4

    if-eqz p4, :cond_4

    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 4280
    :cond_5
    const/4 v0, 0x1

    .line 4282
    :cond_6
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSCPMValueMatch --- value.strCallee="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , value.strCaller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , value.strAction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " .....isSCPMValueMatch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    return v0
.end method

.method private isSamsungService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2296
    const-string/jumbo v2, "system"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.sec."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.samsung."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2297
    :cond_0
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_1

    .line 2298
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoRun Policy isSamsungService -- SamsungService:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    :cond_1
    :goto_0
    return v0

    .line 2302
    :cond_2
    const-string v2, "com.baidu.BaiduMap"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.baidu.searchbox_samsung"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.baidu.netdisk_ss"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    .line 2304
    goto :goto_0

    .line 2307
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->isSystemPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2308
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_1

    .line 2309
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoRun Policy isSamsungService -- SystemPackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move v0, v1

    .line 2313
    goto :goto_0
.end method

.method private isShouldBlockCase(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 7
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 2335
    const-string v0, "com.sec.android.cloudagent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.baidu.netdisk_ss"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2360
    :goto_0
    return v1

    .line 2339
    :cond_0
    const/4 v6, 0x0

    .line 2340
    .local v6, "action":Ljava/lang/String;
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2341
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 2344
    :cond_1
    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v6, :cond_2

    .line 2345
    const-string v0, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShouldBlockCase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2350
    :cond_2
    const-string v0, "com.samsung.android.opencalendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2351
    const-string v0, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShouldBlockCase: caller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callee = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2356
    :cond_3
    const/4 v2, 0x4

    move-object v0, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MARsPolicyManager;->isSCPMManagedPackage(IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2357
    const-string v0, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShouldBlockCase: SCPM caller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , callee = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2360
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private isShouldSkipCaseForAutoRun(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 8
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 2364
    const/4 v6, 0x0

    .line 2365
    .local v6, "action":Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2366
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 2369
    :cond_0
    const-string v0, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.eg.android.AlipayGphone.IAlixPay"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "com.alipay.android.app"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.alipay.android.app.IAlixPay"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2371
    :cond_2
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_3

    .line 2372
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldSkipCaseForAutoRun: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v7

    .line 2392
    :goto_0
    return v0

    .line 2375
    :cond_4
    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.tencent.mm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2376
    :cond_5
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isShouldSkipCase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " called with screen on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2377
    goto :goto_0

    .line 2379
    :cond_6
    const-string v0, "com.cmcc.sso"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "com.cmdm.rcs"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2380
    :cond_7
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isShouldSkipCase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2381
    goto :goto_0

    .line 2383
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.sina.weibo"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2384
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isShouldSkipCase: Foreground caller and callee = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2385
    goto/16 :goto_0

    .line 2388
    :cond_9
    const/4 v1, 0x2

    const/4 v2, 0x4

    move-object v0, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MARsPolicyManager;->isSCPMManagedPackage(IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2389
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isShouldSkipCase: SCPM caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , callee = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2390
    goto/16 :goto_0

    .line 2392
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private isSpecialIntentsForSKT(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2244
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2245
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2246
    .local v1, "theIntent":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2247
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_1

    .line 2248
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Specila Intent for speical SKT package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    :cond_1
    const/4 v2, 0x1

    .line 2255
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "theIntent":Ljava/lang/String;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSyncManagerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Landroid/content/Intent;)Z
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2473
    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 2474
    :cond_0
    const/4 v1, 0x0

    .line 2488
    :cond_1
    :goto_0
    return v1

    .line 2476
    :cond_2
    const/4 v1, 0x0

    .line 2479
    .local v1, "syncActionFound":Z
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.content.SyncAdapter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2481
    const/4 v1, 0x1

    .line 2482
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoRun Policy isSyncManagerPackage -- package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2484
    :catch_0
    move-exception v0

    .line 2485
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSyncManagerPackage exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2188
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 2189
    if-eqz p1, :cond_0

    .line 2190
    :try_start_0
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    if-gtz v3, :cond_3

    .line 2191
    monitor-exit v2

    .line 2198
    :goto_0
    return v0

    .line 2194
    :cond_0
    if-eqz p3, :cond_1

    const/16 v3, 0x3e8

    if-ne p3, v3, :cond_2

    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 2196
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 2194
    goto :goto_1

    .line 2196
    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 2198
    goto :goto_0
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2203
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2204
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2206
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_1

    .line 2225
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v4

    .line 2210
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 2214
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android"

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2217
    .local v2, "match":I
    if-ltz v2, :cond_0

    .line 2218
    const/4 v4, 0x1

    goto :goto_0

    .line 2222
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "match":I
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 2223
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSystemPackage exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private markAppStartUpResult(ZLjava/lang/String;Ljava/lang/String;Landroid/app/IApplicationThread;)V
    .locals 9
    .param p1, "isRestricted"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hostingType"    # Ljava/lang/String;
    .param p4, "caller"    # Landroid/app/IApplicationThread;

    .prologue
    .line 2797
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 2798
    const-string v0, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "markAppStartUpResult : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", isRestricted = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", Type = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2802
    .local v4, "currentTime":J
    const/4 v2, 0x0

    .line 2803
    .local v2, "callerPackage":Ljava/lang/String;
    move-object v1, p2

    .line 2806
    .local v1, "calleePackage":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    .line 2807
    .local v6, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-nez v6, :cond_2

    .line 2808
    const/4 v2, 0x0

    .line 2813
    :goto_0
    const-string v0, "activity"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2815
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_1

    .line 2816
    const-string v0, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " is starting with Activity, skip to record it."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    :cond_1
    :goto_1
    return-void

    .line 2810
    :cond_2
    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 2821
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2822
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_1

    .line 2823
    const-string v0, "MARsPolicyManager"

    const-string v3, "caller and callee are same."

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2828
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v7

    .line 2830
    .local v7, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-nez v7, :cond_5

    .line 2831
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_1

    .line 2832
    const-string v0, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " is a preload app, skip it."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2837
    :cond_5
    if-eqz p1, :cond_7

    .line 2838
    iget v0, v7, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v0, :cond_6

    .line 2839
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MARsDBManager;->updateAppStartUpInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_1

    .line 2841
    :cond_6
    const-string v0, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WTF -- auto run off case : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "start process "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " at "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2844
    :cond_7
    iget v0, v7, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_8

    .line 2845
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MARsDBManager;->updateAppStartUpInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto/16 :goto_1

    .line 2847
    :cond_8
    const-string v0, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WTF -- auto run on case : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "start process "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " at "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private nonStickyKillPackage(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "nonStickyKillAdj"    # I

    .prologue
    .line 2860
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 2861
    const/4 v4, 0x1

    .line 2862
    .local v4, "needClearNotification":Z
    :try_start_0
    const-string/jumbo v0, "spcm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2863
    const/4 v4, 0x0

    .line 2865
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageForMARsLocked(Ljava/lang/String;Ljava/lang/String;ZZI)Z

    move-result v0

    monitor-exit v6

    return v0

    .line 2866
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private printlogs_AllList_test()V
    .locals 6

    .prologue
    .line 4147
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mManagedPackages --- size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 4149
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 4150
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--PackageName  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4151
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--Score  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->score:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4152
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--State  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4154
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_0
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRestrictedPackages --- size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4155
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 4156
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 4157
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--PackageName  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4158
    const-string v3, "MARsPolicyManager"

    const-string v4, "--appliedPolicies  "

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4159
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 4160
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 4161
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4160
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4164
    .end local v1    # "j":I
    :cond_1
    const-string v3, "MARsPolicyManager"

    const-string/jumbo v4, "null"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4155
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4167
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_3
    return-void
.end method

.method private registerDefaultInputMethodChanged()V
    .locals 5

    .prologue
    .line 1813
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsPolicyManager$3;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    .line 1821
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_input_method"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1823
    return-void
.end method

.method private registerNotificationListener()V
    .locals 6

    .prologue
    .line 1827
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsNotificationListener:Landroid/service/notification/NotificationListenerService;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1833
    :goto_0
    return-void

    .line 1830
    :catch_0
    move-exception v0

    .line 1831
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MARsPolicyManager"

    const-string v2, "Unable to register notification listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private runMARsUpdatePackagesThread()V
    .locals 2

    .prologue
    .line 3170
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$8;

    const-string v1, "MARsUpdatePackages"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsPolicyManager$8;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsUpdatePackagesThread:Ljava/lang/Thread;

    .line 3241
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsUpdatePackagesThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3242
    return-void
.end method

.method private switchPolicies(I)V
    .locals 8
    .param p1, "policy"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v5, 0x1

    .line 961
    if-ne p1, v3, :cond_7

    .line 962
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v2, 0x18

    const v4, 0x390880

    const-string v6, "autorunpolicy"

    move-object v1, p0

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 967
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 969
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_1

    .line 972
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 974
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_2

    .line 975
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 976
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    .line 979
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    .line 980
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    .line 981
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    .line 982
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    .line 983
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    .line 984
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    .line 1013
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1014
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1017
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1018
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1021
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v0}, Lcom/android/server/am/MARsDBManager;->initManagedPackages()V

    .line 1024
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_6

    .line 1025
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getBoundAppWidgetPackages()Ljava/util/ArrayList;

    .line 1027
    :cond_6
    return-void

    .line 976
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 985
    :cond_7
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 986
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 988
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_8

    .line 989
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 990
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_9

    .line 991
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 993
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_a

    .line 994
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 995
    :cond_a
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 996
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 997
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 998
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 999
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1000
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 1001
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1002
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    if-eqz v0, :cond_e

    .line 1003
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1004
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    if-eqz v0, :cond_f

    .line 1005
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1006
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    if-eqz v0, :cond_10

    .line 1007
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1008
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 1009
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto/16 :goto_0

    .line 995
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private turnOffPolicies()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 941
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 943
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 945
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_1

    .line 948
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_2

    .line 950
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 952
    :cond_2
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_3

    .line 953
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 954
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v0, v3}, Lcom/android/server/am/MARsTrigger;->unregisterReceiver(Z)V

    .line 957
    return-void

    .line 954
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private turnOnPolicies()V
    .locals 3

    .prologue
    .line 928
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 929
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_1

    .line 934
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 935
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsTrigger;->registerReceiver(Z)V

    .line 938
    return-void

    .line 935
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateActiveAdminsToManaged()V
    .locals 6

    .prologue
    .line 1781
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getActiveAdminsPackages()Ljava/util/ArrayList;

    move-result-object v0

    .line 1782
    .local v0, "activeAdmins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 1783
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1784
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1785
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1786
    .local v2, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v3

    .line 1787
    .local v3, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v3, :cond_0

    .line 1788
    invoke-virtual {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 1789
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    .line 1784
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1792
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    monitor-exit v5

    .line 1794
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 1792
    .restart local v1    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private updateLaunchedBeforeInitToManaged()V
    .locals 6

    .prologue
    .line 3256
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 3257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3258
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    .line 3259
    .local v1, "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 3260
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_0

    .line 3261
    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 3262
    iget v3, v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->runningWidgets:I

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    .line 3257
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3265
    .end local v1    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3266
    monitor-exit v4

    .line 3267
    return-void

    .line 3266
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updatePackagesScore(Ljava/lang/String;)V
    .locals 26
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3546
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    .line 3547
    const-string v2, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePackagesScore PackageInfo name -- "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3550
    :cond_0
    const/4 v15, 0x0

    .line 3551
    .local v15, "forceUpdatedOne":Z
    if-eqz p1, :cond_1

    .line 3552
    const/4 v15, 0x1

    .line 3554
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 3555
    .local v12, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/MARsPolicyManager;->mLastUpdatePackagesScoreTime:J

    sub-long v8, v12, v8

    const-wide/32 v24, 0x927c0

    cmp-long v2, v8, v24

    if-gez v2, :cond_2

    if-eqz v15, :cond_c

    .line 3556
    :cond_2
    if-nez v15, :cond_3

    .line 3557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/am/MARsPolicyManager;->mLastUpdatePackagesScoreTime:J

    .line 3560
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3562
    .local v5, "activePackages_indays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    const-wide/16 v6, 0x0

    .line 3564
    .local v6, "totalForegroundtime_indays":J
    const-wide/32 v8, 0xf731400

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->getTotalForegroundtimeIndays(Ljava/util/ArrayList;J)J

    move-result-wide v6

    .line 3566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 3567
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_b

    .line 3568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPackageStatus;

    .line 3571
    .local v3, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v2, v3, Lcom/android/server/am/MARsPackageStatus;->info:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_4

    .line 3572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 3573
    .local v20, "pm":Landroid/content/pm/PackageManager;
    const/16 v14, 0xd

    .line 3576
    .local v14, "flags":I
    :try_start_1
    iget-object v2, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v19

    .line 3577
    .local v19, "pkginfo":Landroid/content/pm/PackageInfo;
    if-eqz v19, :cond_4

    .line 3578
    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/android/server/am/MARsPackageStatus;->info:Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3585
    .end local v14    # "flags":I
    .end local v19    # "pkginfo":Landroid/content/pm/PackageInfo;
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    :goto_1
    :try_start_2
    iget-object v0, v3, Lcom/android/server/am/MARsPackageStatus;->info:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    .line 3586
    .local v18, "pi":Landroid/content/pm/PackageInfo;
    if-nez v18, :cond_6

    .line 3567
    :cond_5
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 3580
    .end local v18    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v14    # "flags":I
    .restart local v20    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v11

    .line 3581
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPackageInfo package "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " not installed!"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3617
    .end local v3    # "ps":Lcom/android/server/am/MARsPackageStatus;
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14    # "flags":I
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v2

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3589
    .restart local v3    # "ps":Lcom/android/server/am/MARsPackageStatus;
    .restart local v18    # "pi":Landroid/content/pm/PackageInfo;
    :cond_6
    const/16 v17, 0x0

    .line 3592
    .local v17, "packageScore":I
    if-eqz v15, :cond_7

    if-eqz v15, :cond_5

    :try_start_3
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3594
    :cond_7
    const/4 v10, 0x0

    .line 3595
    .local v10, "activityScore":I
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_8

    .line 3596
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const-wide/32 v8, 0xf731400

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/MARsPolicyManager;->getPackageActivityScore(Lcom/android/server/am/MARsPackageStatus;[Landroid/content/pm/ActivityInfo;Ljava/util/List;JJ)I

    move-result v10

    .line 3601
    :cond_8
    const/16 v22, 0x0

    .line 3602
    .local v22, "serviceScore":I
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_9

    .line 3603
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    const-wide/32 v8, 0xf731400

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->getPackageServiceScore(Lcom/android/server/am/MARsPackageStatus;[Landroid/content/pm/ServiceInfo;J)I

    move-result v22

    .line 3607
    :cond_9
    const/16 v21, 0x0

    .line 3608
    .local v21, "providerScore":I
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_a

    .line 3609
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/MARsPolicyManager;->getPackageProviderScore([Landroid/content/pm/ProviderInfo;)I

    move-result v21

    .line 3612
    :cond_a
    add-int v2, v10, v22

    add-int v17, v2, v21

    .line 3614
    move/from16 v0, v17

    iput v0, v3, Lcom/android/server/am/MARsPackageStatus;->score:I

    goto :goto_2

    .line 3617
    .end local v3    # "ps":Lcom/android/server/am/MARsPackageStatus;
    .end local v10    # "activityScore":I
    .end local v17    # "packageScore":I
    .end local v18    # "pi":Landroid/content/pm/PackageInfo;
    .end local v21    # "providerScore":I
    .end local v22    # "serviceScore":I
    :cond_b
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3620
    .end local v5    # "activePackages_indays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    .end local v6    # "totalForegroundtime_indays":J
    .end local v16    # "i":I
    :cond_c
    return-void
.end method

.method private updateSMDBValues()V
    .locals 21

    .prologue
    .line 3279
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_0

    .line 3280
    const-string v3, "MARsPolicyManager"

    const-string/jumbo v4, "updateSMDBValues"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    :cond_0
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 3284
    .local v19, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    const/16 v17, 0x0

    .line 3286
    .local v17, "needTriggerAppLockerPolicy":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 3288
    .local v14, "currentTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 3289
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_14

    .line 3290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/MARsPackageStatus;

    .line 3293
    .local v18, "ps":Lcom/android/server/am/MARsPackageStatus;
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    if-gtz v3, :cond_4

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3299
    :cond_4
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->covertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v6

    .line 3301
    .local v6, "extras":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_8

    .line 3302
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3307
    .local v2, "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :goto_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3309
    move-object/from16 v0, v18

    iput-wide v14, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 3313
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v6    # "extras":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 3315
    :cond_6
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_9

    .line 3289
    :cond_7
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 3304
    .restart local v6    # "extras":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 3305
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    goto :goto_1

    .line 3318
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v6    # "extras":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 3319
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3320
    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3398
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v18    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v3

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3323
    .restart local v18    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_a
    :try_start_1
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_b

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_d

    .line 3325
    :cond_b
    move-object/from16 v0, v18

    iput-wide v14, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 3326
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 3328
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_c

    .line 3329
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string v7, "0"

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3334
    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :goto_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3331
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_c
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 3332
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    goto :goto_3

    .line 3337
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_d
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    if-nez v3, :cond_10

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    if-eqz v3, :cond_10

    .line 3339
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    sub-long v4, v14, v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_7

    .line 3341
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 3343
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_f

    .line 3344
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string v7, "0"

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3349
    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_e

    .line 3353
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 3357
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_7

    .line 3358
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 3359
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 3346
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_f
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 3347
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    goto :goto_4

    .line 3364
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_10
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-nez v3, :cond_12

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    if-eqz v3, :cond_12

    .line 3367
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_11

    .line 3368
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string v7, "0"

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3373
    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :goto_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3375
    move-object/from16 v0, v18

    iput-wide v14, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 3376
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    goto/16 :goto_2

    .line 3370
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_11
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 3371
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    goto :goto_5

    .line 3379
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_12
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-nez v3, :cond_7

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    sub-long v4, v14, v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    if-nez v3, :cond_7

    .line 3382
    const/4 v3, 0x3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 3384
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_13

    .line 3385
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string v7, "1"

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3390
    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :goto_6
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3393
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 3387
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_13
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 3388
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    goto :goto_6

    .line 3398
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v18    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_14
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_15

    if-eqz v17, :cond_15

    .line 3402
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 3403
    .local v16, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3404
    const-string v3, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3409
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/server/am/MARsDBManager;->updateResetTime(Ljava/util/ArrayList;)V

    .line 3411
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    .line 3412
    return-void
.end method


# virtual methods
.method cancelPolicy(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policyNum"    # I

    .prologue
    .line 2123
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 2125
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 2126
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz p1, :cond_1

    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2124
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2129
    :cond_1
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 2130
    if-eqz p2, :cond_2

    .line 2131
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2132
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPolicyManager$Policy;

    iget v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v3, p2, :cond_5

    .line 2133
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2135
    const/4 v3, 0x5

    if-ne p2, v3, :cond_2

    .line 2136
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->uds:I

    .line 2144
    .end local v1    # "j":I
    :cond_2
    if-eqz p2, :cond_3

    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 2145
    :cond_3
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 2148
    :cond_4
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 2149
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2150
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2131
    .restart local v1    # "j":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2153
    .end local v1    # "j":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_6
    monitor-exit v4

    .line 2154
    return-void

    .line 2153
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public checkSCPMParameters()V
    .locals 1

    .prologue
    .line 4171
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v0}, Lcom/android/server/am/MARsDBManager;->checkSCPMParametersFromDB()V

    .line 4172
    return-void
.end method

.method public clearNotiUpdateWhileScreenOn()V
    .locals 1

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1746
    return-void
.end method

.method public clearNotificationDiffWhileScreenOff()V
    .locals 1

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1755
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1756
    return-void
.end method

.method public clearStorageDiffWhileScreenOff()V
    .locals 1

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1750
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1751
    return-void
.end method

.method public dumpMARs(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 3850
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 3851
    :try_start_0
    const-string v5, "ACTIVITY MANAGER MARs (dumpsys activity mars)"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3853
    const-string/jumbo v5, "mManagedPackages --- size "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3854
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 3856
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_9

    .line 3857
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 3859
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_2

    .line 3861
    :cond_1
    const-string v5, "--State "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->appLockerStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3864
    const-string v5, "--resetTime "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->formatDateTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3868
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_3

    .line 3869
    const-string v5, "--Score "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->score:I

    if-nez v5, :cond_8

    const-string v5, "0    "

    :goto_1
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3873
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_4

    .line 3874
    iget-boolean v5, v2, Lcom/android/server/am/MARsPackageStatus;->receivedGcmIntent:Z

    if-eqz v5, :cond_4

    .line 3875
    const-string v5, "--receivedGcm"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3880
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_5

    .line 3881
    const-string v5, "--AutoRun "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3884
    :cond_5
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3887
    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 3888
    const-string v5, "--SkipReason "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3892
    :cond_6
    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3893
    const-string v5, "--Running "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3895
    :cond_7
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3856
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 3869
    :cond_8
    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->score:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    .line 3898
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_9
    const-string/jumbo v5, "mRestrictedPackages --- size "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3899
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 3900
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_c

    .line 3901
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 3904
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    const-string v5, "--resetTime "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->formatDateTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3906
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3907
    const-string v5, "--appliedPolicies "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3908
    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-eqz v5, :cond_a

    .line 3909
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_b

    .line 3910
    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3909
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3913
    .end local v1    # "j":I
    :cond_a
    const-string/jumbo v5, "null"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3916
    :cond_b
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3900
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3919
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_c
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3921
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_d

    .line 3922
    const-string/jumbo v5, "mLatestProtectedPackages "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3923
    const/4 v0, 0x0

    :goto_4
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_d

    .line 3924
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3923
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3927
    :cond_d
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 3928
    const-string/jumbo v5, "mWallpaperPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3930
    :cond_e
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    if-eqz v5, :cond_f

    .line 3931
    const-string/jumbo v5, "mVpnServicePackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3934
    :cond_f
    const-string v5, "DefaultIMEPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3936
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_10

    .line 3937
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    if-eqz v5, :cond_10

    .line 3938
    const-string v5, "CurrentHomePackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3942
    :cond_10
    const-string v5, "OngoingNotificationPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3943
    const/4 v0, 0x0

    :goto_5
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_11

    .line 3944
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3945
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3943
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3948
    :cond_11
    const-string v5, "NotificationListenerPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3949
    const/4 v0, 0x0

    :goto_6
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_12

    .line 3950
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3951
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3949
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3954
    :cond_12
    const/4 v3, 0x0

    .line 3955
    .local v3, "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const/4 v4, 0x0

    .line 3956
    .local v4, "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const-string v5, "SCPMBlackListPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3957
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListValues:Landroid/util/ArrayMap;

    const-string v7, "AutoRun"

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 3958
    .restart local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v4, :cond_13

    .line 3959
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_13

    .line 3960
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    check-cast v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 3961
    .restart local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string v5, "--callee "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3962
    const-string v5, "--caller "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3963
    const-string v5, "--action "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3964
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3959
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3968
    :cond_13
    const-string v5, "SCPMBlackListForActiveTrafficPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3969
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListForActiveTrafficValues:Landroid/util/ArrayMap;

    const-string v7, "AutoRun"

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 3970
    .restart local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v4, :cond_14

    .line 3971
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_14

    .line 3972
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    check-cast v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 3973
    .restart local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string v5, "--callee "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3974
    const-string v5, "--caller "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3975
    const-string v5, "--action "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3976
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3971
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3980
    :cond_14
    const-string v5, "SCPMBlockPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3981
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlockValues:Landroid/util/ArrayMap;

    const-string v7, "AutoRun"

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 3982
    .restart local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v4, :cond_15

    .line 3983
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_15

    .line 3984
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    check-cast v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 3985
    .restart local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string v5, "--callee "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3986
    const-string v5, "--caller "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3987
    const-string v5, "--action "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3988
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3983
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 3992
    :cond_15
    const-string v5, "SCPMSkipPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3993
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipValues:Landroid/util/ArrayMap;

    const-string v7, "AutoRun"

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 3994
    .restart local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v4, :cond_16

    .line 3995
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_16

    .line 3996
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    check-cast v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 3997
    .restart local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string v5, "--callee "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3998
    const-string v5, "--caller "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3999
    const-string v5, "--action "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4000
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3995
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 4004
    :cond_16
    const-string v5, "SCPMSkipOptimizationPackage ---  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4005
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipOptimizationValues:Landroid/util/ArrayMap;

    const-string v7, "AutoRun"

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 4006
    .restart local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    if-eqz v4, :cond_17

    .line 4007
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_17

    .line 4008
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    check-cast v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    .line 4009
    .restart local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    const-string v5, "--callee "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4010
    const-string v5, "--caller "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4011
    const-string v5, "--action "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4012
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4007
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 4015
    :cond_17
    monitor-exit v6

    .line 4016
    return-void

    .line 4015
    .end local v0    # "i":I
    .end local v3    # "scpmDBValue":Lcom/android/server/am/MARsDBManager$SCPMDBValue;
    .end local v4    # "scpmValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method executePolicy(Lcom/android/server/am/MARsPolicyManager$Policy;Ljava/lang/String;)V
    .locals 10
    .param p1, "policy"    # Lcom/android/server/am/MARsPolicyManager$Policy;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    .line 2023
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 2024
    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v4, :cond_1

    .line 2025
    :cond_0
    const-string v4, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "executePolicy policy  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not enabled!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    monitor-exit v5

    .line 2114
    :goto_0
    return-void

    .line 2029
    :cond_1
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v4, :cond_2

    .line 2030
    const-string v4, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "executePolicy policy  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " reason "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->generateTargetList(Lcom/android/server/am/MARsPolicyManager$Policy;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2037
    .local v2, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v4, v8, :cond_3

    .line 2038
    new-instance v4, Lcom/android/server/am/MARsPolicyManager$4;

    invoke-direct {v4, p0}, Lcom/android/server/am/MARsPolicyManager$4;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2051
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_a

    .line 2052
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPackageStatus;

    .line 2053
    .local v3, "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Lcom/android/server/am/MARsPackageStatus;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2054
    const-string v4, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " inPolicyWhiteList, don\'t execute this policy "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2061
    :cond_5
    const/4 v1, 0x0

    .line 2063
    .local v1, "spcmPolicyChoosed":Z
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v6}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2068
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2071
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    if-ne v4, v8, :cond_d

    .line 2072
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MARs-NonSticky-Kill-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillAdj:I

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2073
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v4, v8, :cond_6

    .line 2074
    const/4 v1, 0x1

    .line 2088
    :cond_6
    :goto_3
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v4, v8, :cond_7

    if-eqz v1, :cond_4

    .line 2091
    :cond_7
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v3, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    .line 2092
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v4, :cond_f

    .line 2093
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 2094
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2100
    :cond_8
    :goto_4
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2101
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2106
    :cond_9
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v4, v8, :cond_4

    if-eqz v1, :cond_4

    .line 2111
    .end local v1    # "spcmPolicyChoosed":Z
    .end local v3    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_a
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v4, :cond_b

    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v4, v9, :cond_b

    .line 2112
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z

    .line 2113
    :cond_b
    monitor-exit v5

    goto/16 :goto_0

    .end local v0    # "i":I
    .end local v2    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2076
    .restart local v0    # "i":I
    .restart local v1    # "spcmPolicyChoosed":Z
    .restart local v2    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    .restart local v3    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_c
    :try_start_1
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v4, :cond_4

    .line 2077
    const-string v4, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Choosed Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has the process under ADJ 5 - Skip NON-STICKY KILL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2080
    :cond_d
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_e

    .line 2081
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_3

    .line 2083
    :cond_e
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    if-ne v4, v9, :cond_6

    .line 2084
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MARs-ForceKillPackage-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2096
    :cond_f
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2097
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4
.end method

.method public forceRunPolicy(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ILjava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "policyNum"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4022
    invoke-virtual {p0, p3}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v2

    .line 4023
    .local v2, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    if-eqz v2, :cond_0

    iget-boolean v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v5, :cond_1

    .line 4024
    :cond_0
    const-string/jumbo v5, "policy is not exist or not enabled!"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4081
    :goto_0
    return-void

    .line 4028
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 4029
    :try_start_0
    const-string v5, "all"

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4030
    invoke-direct {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->generateTargetList(Lcom/android/server/am/MARsPolicyManager$Policy;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4037
    .local v3, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_c

    .line 4038
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsPackageStatus;

    .line 4039
    .local v4, "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    if-nez v4, :cond_3

    .line 4040
    const-string/jumbo v5, "not our managed package!"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4041
    monitor-exit v6

    goto :goto_0

    .line 4080
    .end local v0    # "i":I
    .end local v3    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    .end local v4    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4032
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v5, p4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v1

    .line 4033
    .local v1, "packageStatus":Lcom/android/server/am/MARsPackageStatus;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4034
    .restart local v3    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4044
    .end local v1    # "packageStatus":Lcom/android/server/am/MARsPackageStatus;
    .restart local v0    # "i":I
    .restart local v4    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_3
    iget v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v7, 0x0

    invoke-direct {p0, v4, v5, v7}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4045
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is CurrentImportantPackage !!!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4037
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4050
    :cond_4
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4053
    iget v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_9

    .line 4054
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MARs-NonSticky-Kill-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillAdj:I

    invoke-direct {p0, v5, v7, v8}, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4066
    :cond_5
    :goto_4
    iget v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    .line 4067
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v5, :cond_b

    .line 4068
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 4069
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4075
    :cond_6
    :goto_5
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 4076
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4078
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add mRestrictedPackages "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " policy --"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 4056
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Choosed Package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " has the process under ADJ 5 - Skip NON-STICKY KILL"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4059
    :cond_9
    iget v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_a

    .line 4060
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_4

    .line 4061
    :cond_a
    iget v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_5

    .line 4062
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MARs-ForceKillPackage-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4071
    :cond_b
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 4072
    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 4080
    .end local v4    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_c
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public forceRunPolicyForSpecificPackage(ILjava/util/ArrayList;)V
    .locals 11
    .param p1, "policyNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 4085
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4087
    .local v4, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    .line 4088
    .local v3, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    if-eqz v3, :cond_0

    iget-boolean v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v6, :cond_1

    .line 4089
    :cond_0
    const-string v6, "MARsPolicyManager"

    const-string/jumbo v7, "policy is not exist or not enabled!"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4141
    :goto_0
    return-void

    .line 4093
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 4094
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 4095
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4096
    .local v1, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 4097
    .local v2, "packageStatus":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_2

    .line 4098
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4094
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4101
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packageStatus":Lcom/android/server/am/MARsPackageStatus;
    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_d

    .line 4102
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageStatus;

    .line 4103
    .local v5, "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    if-nez v5, :cond_5

    .line 4104
    const-string v6, "MARsPolicyManager"

    const-string/jumbo v8, "not our managed package!"

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4101
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4108
    :cond_5
    iget v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v8, 0x1

    invoke-direct {p0, v5, v6, v8}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z

    move-result v6

    if-nez v6, :cond_4

    .line 4114
    iget v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    if-ne v6, v10, :cond_a

    .line 4115
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MARs-NonSticky-Kill-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillAdj:I

    invoke-direct {p0, v6, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4126
    :cond_6
    :goto_4
    iget v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v5, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    .line 4127
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v6, :cond_c

    .line 4128
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 4129
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4135
    :cond_7
    :goto_5
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 4136
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4138
    :cond_8
    const-string v6, "MARsPolicyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add mRestrictedPackages "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " policy --"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4140
    .end local v5    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 4117
    .restart local v5    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_9
    :try_start_1
    const-string v6, "MARsPolicyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Choosed Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has the process under ADJ 5 - Skip NON-STICKY KILL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4120
    :cond_a
    iget v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_b

    .line 4121
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/am/MARsPolicyManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_4

    .line 4122
    :cond_b
    iget v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_6

    .line 4123
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MARs-ForceKillPackage-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4131
    :cond_c
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 4132
    iget-object v6, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 4140
    .end local v5    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_d
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method getActionTypeByCountryIso()I
    .locals 6

    .prologue
    .line 884
    const/4 v0, 0x1

    .line 885
    .local v0, "actionType":I
    const/4 v1, 0x0

    .line 888
    .local v1, "countryIso":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CountryISO"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 894
    :goto_0
    const-string/jumbo v3, "tw"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "hk"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 895
    :cond_0
    const/4 v0, 0x4

    .line 898
    :cond_1
    return v0

    .line 889
    :catch_0
    move-exception v2

    .line 890
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on CountryISO: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAppUsedRecentlyState()Z
    .locals 1

    .prologue
    .line 1691
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppUsedRecently:Z

    return v0
.end method

.method public getCarModeOnState()Z
    .locals 1

    .prologue
    .line 1723
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    return v0
.end method

.method getManagedPackages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method getManagedSMDBValueList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1162
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_0

    .line 1163
    const-string v1, "MARsPolicyManager"

    const-string/jumbo v2, "getManagedSMDBValueList"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1167
    .local v8, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    iget-object v9, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    .line 1168
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_1

    .line 1169
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsPackageStatus;

    .line 1170
    .local v7, "ps":Lcom/android/server/am/MARsPackageStatus;
    new-instance v0, Lcom/android/server/am/MARsDBManager$SMDBValue;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v7, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v7, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    .local v0, "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1173
    .end local v0    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v7    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    monitor-exit v9

    .line 1175
    return-object v8

    .line 1173
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 902
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 915
    :goto_0
    return-object v0

    .line 904
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 905
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_0

    .line 906
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 907
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_0

    .line 908
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 909
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_0

    .line 910
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 911
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_0

    .line 912
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 913
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_0

    .line 915
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreenOnState()Z
    .locals 1

    .prologue
    .line 1705
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    return v0
.end method

.method public handelAlertToastWindowStarted(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2902
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-nez v1, :cond_0

    .line 2920
    :goto_0
    return-void

    .line 2904
    :cond_0
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_1

    .line 2905
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handelAlertToastWindowStarted pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    :cond_1
    move-object v0, p1

    .line 2909
    .local v0, "localPackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/MARsPolicyManager$5;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/MARsPolicyManager$5;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public handelNotificationBarClicked(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2923
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-nez v1, :cond_0

    .line 2941
    :goto_0
    return-void

    .line 2925
    :cond_0
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_1

    .line 2926
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handelNotificationBarClicked pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    :cond_1
    move-object v0, p1

    .line 2930
    .local v0, "localPackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/MARsPolicyManager$6;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/MARsPolicyManager$6;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public handleAppWidgetManagerActions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2948
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2949
    :try_start_0
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    .line 2950
    const-string v2, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleAppWidgetManagerActions pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    :cond_0
    if-eqz p1, :cond_4

    .line 2955
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 2956
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getLaunchedAppBeforeInit(Ljava/lang/String;)Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    move-result-object v0

    .line 2957
    .local v0, "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    if-nez v0, :cond_1

    .line 2958
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    .end local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    .line 2959
    .restart local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2962
    :cond_1
    const-string v2, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2963
    iget v2, v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->runningWidgets:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->runningWidgets:I

    .line 2965
    :cond_2
    monitor-exit v3

    .line 2984
    .end local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :goto_0
    return-void

    .line 2967
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v1

    .line 2968
    .local v1, "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v1, :cond_4

    .line 2969
    const-string v2, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2970
    iget v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    .line 2972
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 2983
    .end local v1    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_4
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2974
    .restart local v1    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_5
    :try_start_1
    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2975
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    goto :goto_1

    .line 2977
    :cond_6
    const-string v2, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2978
    iget v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public handleDeviceAdminActions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2991
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 2992
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_0

    .line 2993
    const-string v1, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDeviceAdminActions pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    :cond_0
    if-eqz p1, :cond_1

    .line 2996
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 2997
    .local v0, "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v0, :cond_1

    .line 2998
    const-string v1, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2999
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    .line 3000
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 3006
    .end local v0    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    :goto_0
    monitor-exit v2

    .line 3007
    return-void

    .line 3001
    .restart local v0    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_2
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3002
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    goto :goto_0

    .line 3006
    .end local v0    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handlePackageResumedFG(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "strCallerPkgName"    # Ljava/lang/String;
    .param p3, "isFullScreen"    # Z
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3103
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_1

    .line 3104
    if-eqz p4, :cond_0

    .line 3105
    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    const-string v4, "android.intent.category.HOME"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3107
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current Home Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Resumed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    .line 3116
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 3117
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_1

    .line 3118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    .line 3121
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_2

    .line 3122
    move-object v1, p1

    .line 3124
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v4, Lcom/android/server/am/MARsPolicyManager$7;

    invoke-direct {v4, p0, v1}, Lcom/android/server/am/MARsPolicyManager$7;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 3132
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3133
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3134
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3143
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_5

    .line 3146
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez p3, :cond_8

    .line 3162
    :cond_5
    :goto_1
    return-void

    .line 3135
    .restart local v1    # "pkgName":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    .line 3136
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3137
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3139
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3150
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_9

    .line 3151
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getLaunchedAppBeforeInit(Ljava/lang/String;)Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    move-result-object v0

    .line 3152
    .local v0, "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    if-nez v0, :cond_5

    .line 3153
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    .end local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    .line 3154
    .restart local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3159
    .end local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :cond_9
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 3160
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    goto :goto_1
.end method

.method public handlePackageStatusChange(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "isReInstall"    # Z

    .prologue
    .line 3062
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3094
    :cond_0
    :goto_0
    return-void

    .line 3066
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 3067
    :try_start_0
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3070
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsDBManager;->insertPackageToDB(Ljava/lang/String;)V

    .line 3093
    :cond_2
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3072
    :cond_3
    :try_start_1
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3073
    if-eqz p3, :cond_4

    .line 3074
    const-string v1, "MARsPolicyManager"

    const-string/jumbo v3, "handlePackageStatusChange isReInstall don\'t care!"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    monitor-exit v2

    goto :goto_0

    .line 3078
    :cond_4
    const/4 v0, 0x0

    .line 3079
    .local v0, "removedPkg":Lcom/android/server/am/MARsPackageStatus;
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3080
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3083
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3084
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3091
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsDBManager;->deletePackageInDB(Ljava/lang/String;)V

    goto :goto_1

    .line 3087
    :cond_6
    const-string v1, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected !! Uninstalled package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not in mManagedPackages list !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public handlePowerOff()V
    .locals 2

    .prologue
    .line 2855
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager;->updateAppStartUpHistory(Z)V

    .line 2856
    return-void
.end method

.method public handleSpecialBindServiceActions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 3033
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3059
    :cond_0
    :goto_0
    return-void

    .line 3037
    :cond_1
    const-string v1, "android.view.InputMethod"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3038
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 3039
    .local v0, "ps":Lcom/android/server/am/MARsPackageStatus;
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 3042
    .end local v0    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_2
    const-string v1, "android.net.VpnService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3043
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mVpnServicePackage:Ljava/lang/String;

    .line 3046
    :cond_3
    const-string v1, "android.service.wallpaper.WallpaperService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3047
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    .line 3048
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 3049
    .restart local v0    # "ps":Lcom/android/server/am/MARsPackageStatus;
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 3052
    .end local v0    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_4
    const-string v1, "android.service.notification.NotificationListenerService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3053
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 3054
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3055
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public handleSpecialIntentActions(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3015
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3016
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3030
    :cond_0
    :goto_0
    return-void

    .line 3018
    :cond_1
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3019
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->setPackageReceivedGCMIntent(Ljava/lang/String;)V

    goto :goto_0

    .line 3021
    :cond_2
    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3024
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MARsPolicyManager;->handleAppWidgetManagerActions(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3026
    :cond_4
    const-string v1, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3028
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MARsPolicyManager;->handleDeviceAdminActions(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Z)V
    .locals 7
    .param p1, "boot"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 616
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isAppOptUIAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 617
    sput-boolean v5, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isAppSleepUIAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 623
    const-string v2, "MARsPolicyManager"

    const-string v3, "AppSleepUI is available"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    sput-boolean v6, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    .line 629
    :cond_2
    :try_start_0
    const-string/jumbo v2, "sys.config.mars_version"

    const-string v3, "1.00"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->createPolicies()V

    .line 636
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, "isChinaNal":Ljava/lang/String;
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isChinaNal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v2, "ChinaNalSecurity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 640
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_3

    .line 641
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 642
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_4

    .line 643
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 644
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_5

    .line 645
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v5, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 648
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_6

    .line 649
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v6, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 651
    :cond_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    .line 652
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    .line 653
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotiUpdateWhileScreenOffMap:Ljava/util/Map;

    .line 654
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatPeriodMap:Ljava/util/Map;

    .line 655
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    .line 656
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationPeriodMap:Ljava/util/Map;

    .line 657
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    .line 661
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isAppStartUpHistoryEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 662
    const-string v2, "MARsPolicyManager"

    const-string v3, "App StartUp History is enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    sput-boolean v6, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    .line 668
    :cond_8
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v2, v6}, Lcom/android/server/am/MARsTrigger;->registerReceiver(Z)V

    .line 671
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v2, :cond_9

    .line 672
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v2}, Lcom/android/server/am/MARsTrigger;->registerUDSReceiver()V

    .line 676
    :cond_9
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v2, :cond_a

    .line 677
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v2}, Lcom/android/server/am/MARsTrigger;->registerSBikeReceiver()V

    .line 680
    :cond_a
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->registerDefaultInputMethodChanged()V

    .line 682
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsDBManager;->initSettingFromUI()V

    .line 683
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsDBManager;->initManagedPackages()V

    .line 684
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsDBManager;->initSKTPackagesWhiteList()V

    .line 687
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->checkSCPMParameters()V

    .line 689
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->initPolicyExceptionList()Ljava/util/ArrayList;

    .line 694
    if-eqz p1, :cond_e

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v2, :cond_d

    :cond_b
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v2, :cond_d

    :cond_c
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v2, :cond_e

    .line 697
    :cond_d
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->runMARsUpdatePackagesThread()V

    .line 701
    :cond_e
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v2, :cond_f

    .line 702
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsDBManager;->updateAutoRun()V

    .line 706
    :cond_f
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    if-eqz v2, :cond_10

    .line 707
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsDBManager;->insertForBootUp()V

    .line 711
    :cond_10
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_11

    .line 713
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spcmPolicy.enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gcmLockerPolicy.enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appLockerPolicy.enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " autoRunPolicy.enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " udsPolicy.enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sbikePolicy.enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_11
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getDefaultIMEPackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEPackage:Ljava/lang/String;

    .line 725
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->registerNotificationListener()V

    .line 728
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v2, :cond_0

    .line 729
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getBoundAppWidgetPackages()Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 630
    .end local v1    # "isChinaNal":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MARsPolicyManager"

    const-string/jumbo v3, "init(), we cannot set system property"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public isActiveTrafficExisting(Ljava/lang/String;)Z
    .locals 23
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1615
    const/16 v22, 0x1

    .line 1616
    .local v22, "retCode":Z
    const/4 v13, 0x0

    .line 1617
    .local v13, "currTrafficTX":Ljava/lang/Long;
    const/16 v21, 0x0

    .line 1618
    .local v21, "prevTrafficTX":Ljava/lang/Long;
    const/4 v12, 0x0

    .line 1619
    .local v12, "currTrafficRX":Ljava/lang/Long;
    const/16 v20, 0x0

    .line 1623
    .local v20, "prevTrafficRX":Ljava/lang/Long;
    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/MARsPolicyManager;->isSCPMManagedPackage(IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1624
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    .line 1625
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isActiveTrafficExisting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -scpm blacklist package, force stop it!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    :cond_0
    const/4 v2, 0x0

    .line 1685
    :goto_0
    return v2

    .line 1630
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 1631
    .local v19, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 1632
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_2

    .line 1633
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 1634
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 1641
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1642
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v21, v0

    .line 1646
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v20, v0

    .line 1649
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1651
    if-eqz v21, :cond_5

    if-eqz v13, :cond_5

    if-eqz v20, :cond_5

    if-nez v12, :cond_7

    .line 1653
    :cond_5
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_6

    .line 1654
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TrafficForPkg :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1636
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v18

    .line 1637
    .local v18, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NameNotFoundException occurred for package :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1649
    .end local v18    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1659
    :cond_7
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v16, v2, v4

    .line 1660
    .local v16, "diffTX":J
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v14, v2, v4

    .line 1661
    .local v14, "diffRX":J
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_8

    .line 1662
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActiveTraffic :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (tx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_8
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-eqz v2, :cond_9

    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    cmp-long v2, v16, v2

    if-gez v2, :cond_a

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    cmp-long v2, v14, v2

    if-gez v2, :cond_a

    .line 1665
    :cond_9
    const/16 v22, 0x0

    .line 1668
    :cond_a
    if-eqz v22, :cond_d

    .line 1669
    const-wide/16 v10, 0x0

    .line 1670
    .local v10, "StorageDiff":J
    const/4 v8, 0x0

    .line 1671
    .local v8, "NotiDiff":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1672
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mStorageStatDiffMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1675
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->mNotificationCountDiffMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1678
    :cond_c
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1679
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": StorageDiff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NotiDiff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/am/MARsPolicyManager;->mAppSizeIncreased:J

    cmp-long v2, v10, v2

    if-gtz v2, :cond_d

    int-to-long v2, v8

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdatedCount:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_d

    .line 1681
    const/16 v22, 0x0

    .line 1682
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Storage zero and noti no updated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8    # "NotiDiff":I
    .end local v10    # "StorageDiff":J
    :cond_d
    move/from16 v2, v22

    .line 1685
    goto/16 :goto_0

    .line 1678
    .restart local v8    # "NotiDiff":I
    .restart local v10    # "StorageDiff":J
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method isAppOptUIAvailable()Z
    .locals 5

    .prologue
    .line 832
    const-string v0, "com.samsung.android.sm.ACTION_APPLOCKING_VIEW"

    .line 833
    .local v0, "APP_OPTIMIZATION_INTENT":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 836
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 837
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.sm.ACTION_APPLOCKING_VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 839
    .local v2, "isAppOptUI":Z
    :goto_0
    return v2

    .line 838
    .end local v2    # "isAppOptUI":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method isAppSleepUIAvailable()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 843
    const-string v0, "com.samsung.android.sm.ACTION_SLEEP_UNUSED_APPS"

    .line 844
    .local v0, "APP_SLEEP_INTENT":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 846
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 847
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.sm.ACTION_SLEEP_UNUSED_APPS"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    const-string v5, "com.samsung.android.sm"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 850
    .local v3, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 852
    const/4 v4, 0x1

    .line 855
    :cond_0
    return v4
.end method

.method isAppStartUpHistoryEnabled()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 866
    const-string v0, "com.samsung.android.sm.ACTION_AUTO_RUN"

    .line 867
    .local v0, "APP_STARTUP_HISTORY_INTENT":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 869
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 870
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.sm.ACTION_AUTO_RUN"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 871
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getSmartManagerPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 873
    .local v3, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_0

    .line 875
    const/4 v4, 0x1

    .line 878
    :cond_0
    return v4
.end method

.method public isAutoRunBlockedApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1180
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v3, :cond_1

    .line 1181
    :cond_0
    const-string v2, "MARsPolicyManager"

    const-string v3, "Auto Run Policy not enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :goto_0
    return v1

    .line 1184
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 1185
    .local v0, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-nez v0, :cond_2

    .line 1186
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Auto run ON."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1189
    :cond_2
    const/4 v3, 0x4

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1190
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " skip 1."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1193
    :cond_3
    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v3, :cond_4

    .line 1194
    const-string v1, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Auto run OFF."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1195
    goto :goto_0

    .line 1197
    :cond_4
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Auto run ON."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isPolicyEnabled(I)Z
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 919
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v0

    .line 920
    .local v0, "pl":Lcom/android/server/am/MARsPolicyManager$Policy;
    if-eqz v0, :cond_0

    .line 921
    iget-boolean v1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 923
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;)Z
    .locals 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "hostingType"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2520
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/MARsPolicyManager;->isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 22
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "hostingType"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "queueName"    # Ljava/lang/String;

    .prologue
    .line 2528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2529
    .local v10, "now":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 2530
    .local v12, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2531
    .local v6, "callerPackage":Ljava/lang/String;
    const/16 v17, 0x0

    .line 2532
    .local v17, "target":Lcom/android/server/am/MARsPackageStatus;
    const/4 v9, 0x0

    .line 2545
    .local v9, "isRestricted":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2547
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_0

    .line 2548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/MARsPackageStatus;

    .line 2549
    .local v14, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v0, v14, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2550
    const/4 v9, 0x1

    .line 2551
    move-object/from16 v17, v14

    .line 2556
    .end local v14    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_0
    if-nez v9, :cond_2

    .line 2564
    const/16 v18, 0x0

    monitor-exit v19

    .line 2791
    :goto_1
    return v18

    .line 2547
    .restart local v14    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2568
    .end local v14    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_2
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 2576
    const/16 v18, 0x0

    monitor-exit v19

    goto :goto_1

    .line 2785
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 2580
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    .line 2581
    .local v5, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v5, :cond_4

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 2582
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2585
    :cond_4
    const/4 v9, 0x0

    .line 2586
    const/4 v13, 0x0

    .line 2587
    .local v13, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    const/4 v15, 0x0

    .line 2588
    .local v15, "receivedGCM":Z
    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_9

    .line 2589
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    check-cast v13, Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 2590
    .restart local v13    # "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    iget v0, v13, Lcom/android/server/am/MARsPolicyManager$Policy;->restriction:I

    move/from16 v16, v0

    .line 2593
    .local v16, "restrictions":I
    iget v0, v13, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move/from16 v18, v0

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 2594
    :cond_5
    const/4 v9, 0x0

    .line 2588
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2598
    :cond_7
    const-string v18, "activity"

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 2599
    and-int/lit8 v18, v16, 0x1

    if-eqz v18, :cond_e

    .line 2600
    const/4 v9, 0x1

    .line 2766
    :cond_8
    :goto_3
    if-eqz v9, :cond_6

    .line 2771
    .end local v16    # "restrictions":I
    :cond_9
    if-nez v9, :cond_a

    .line 2772
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 2776
    :cond_a
    if-nez v9, :cond_b

    if-eqz v15, :cond_b

    .line 2777
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 2778
    const/4 v15, 0x0

    .line 2781
    :cond_b
    sget-boolean v18, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v18, :cond_c

    if-eqz v9, :cond_c

    .line 2782
    const-string v18, "MARsPolicyManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Package: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " hostingType: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is Restricted by policy: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " caller is: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    :cond_c
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2787
    sget-boolean v18, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    if-eqz v18, :cond_d

    .line 2788
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p2

    invoke-direct {v0, v9, v12, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->markAppStartUpResult(ZLjava/lang/String;Ljava/lang/String;Landroid/app/IApplicationThread;)V

    :cond_d
    move/from16 v18, v9

    .line 2791
    goto/16 :goto_1

    .line 2606
    .restart local v16    # "restrictions":I
    :cond_e
    const/4 v4, 0x0

    .line 2607
    .local v4, "allowedFlag":I
    and-int/lit8 v18, v16, 0x2

    if-eqz v18, :cond_f

    .line 2608
    or-int/lit8 v4, v4, 0x1

    .line 2609
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 2610
    or-int/lit8 v4, v4, 0x2

    .line 2613
    :cond_f
    and-int/lit8 v18, v16, 0x4

    if-eqz v18, :cond_10

    .line 2614
    or-int/lit8 v4, v4, 0x1

    .line 2615
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 2616
    or-int/lit8 v4, v4, 0x2

    .line 2621
    :cond_10
    and-int/lit8 v18, v4, 0x1

    if-eqz v18, :cond_11

    and-int/lit8 v18, v4, 0x2

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    :cond_11
    const/4 v8, 0x1

    .line 2622
    .local v8, "isAllowed":Z
    :goto_4
    if-nez v8, :cond_13

    const/4 v9, 0x1

    .line 2623
    :goto_5
    goto/16 :goto_3

    .line 2621
    .end local v8    # "isAllowed":Z
    :cond_12
    const/4 v8, 0x0

    goto :goto_4

    .line 2622
    .restart local v8    # "isAllowed":Z
    :cond_13
    const/4 v9, 0x0

    goto :goto_5

    .line 2625
    .end local v4    # "allowedFlag":I
    .end local v8    # "isAllowed":Z
    :cond_14
    const-string/jumbo v18, "startService"

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_15

    const-string v18, "bindService"

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1d

    .line 2626
    :cond_15
    and-int/lit8 v18, v16, 0x10

    if-eqz v18, :cond_16

    .line 2627
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 2630
    :cond_16
    const/4 v4, 0x0

    .line 2631
    .restart local v4    # "allowedFlag":I
    and-int/lit8 v18, v16, 0x20

    if-eqz v18, :cond_17

    .line 2632
    or-int/lit8 v4, v4, 0x1

    .line 2633
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 2634
    or-int/lit8 v4, v4, 0x2

    .line 2637
    :cond_17
    and-int/lit8 v18, v16, 0x40

    if-eqz v18, :cond_18

    .line 2638
    or-int/lit8 v4, v4, 0x1

    .line 2639
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 2640
    or-int/lit8 v4, v4, 0x2

    .line 2643
    :cond_18
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-eqz v18, :cond_19

    .line 2644
    or-int/lit8 v4, v4, 0x1

    .line 2645
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v18

    if-nez v18, :cond_19

    .line 2646
    or-int/lit8 v4, v4, 0x2

    .line 2649
    :cond_19
    and-int/lit8 v18, v4, 0x1

    if-eqz v18, :cond_1a

    and-int/lit8 v18, v4, 0x2

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_1b

    :cond_1a
    const/4 v8, 0x1

    .line 2650
    .restart local v8    # "isAllowed":Z
    :goto_6
    if-nez v8, :cond_1c

    const/4 v9, 0x1

    .line 2651
    :goto_7
    goto/16 :goto_3

    .line 2649
    .end local v8    # "isAllowed":Z
    :cond_1b
    const/4 v8, 0x0

    goto :goto_6

    .line 2650
    .restart local v8    # "isAllowed":Z
    :cond_1c
    const/4 v9, 0x0

    goto :goto_7

    .line 2653
    .end local v4    # "allowedFlag":I
    .end local v8    # "isAllowed":Z
    :cond_1d
    const-string/jumbo v18, "provider"

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_25

    .line 2654
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    if-eqz v18, :cond_1e

    .line 2655
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 2658
    :cond_1e
    const/4 v4, 0x0

    .line 2659
    .restart local v4    # "allowedFlag":I
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x200

    move/from16 v18, v0

    if-eqz v18, :cond_1f

    .line 2660
    or-int/lit8 v4, v4, 0x1

    .line 2661
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v18

    if-eqz v18, :cond_1f

    .line 2662
    or-int/lit8 v4, v4, 0x2

    .line 2665
    :cond_1f
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    if-eqz v18, :cond_20

    .line 2666
    or-int/lit8 v4, v4, 0x1

    .line 2667
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v18

    if-eqz v18, :cond_20

    .line 2668
    or-int/lit8 v4, v4, 0x2

    .line 2671
    :cond_20
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x800

    move/from16 v18, v0

    if-eqz v18, :cond_21

    .line 2672
    or-int/lit8 v4, v4, 0x1

    .line 2673
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v18

    if-nez v18, :cond_21

    .line 2674
    or-int/lit8 v4, v4, 0x2

    .line 2677
    :cond_21
    and-int/lit8 v18, v4, 0x1

    if-eqz v18, :cond_22

    and-int/lit8 v18, v4, 0x2

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_23

    :cond_22
    const/4 v8, 0x1

    .line 2678
    .restart local v8    # "isAllowed":Z
    :goto_8
    if-nez v8, :cond_24

    const/4 v9, 0x1

    .line 2679
    :goto_9
    goto/16 :goto_3

    .line 2677
    .end local v8    # "isAllowed":Z
    :cond_23
    const/4 v8, 0x0

    goto :goto_8

    .line 2678
    .restart local v8    # "isAllowed":Z
    :cond_24
    const/4 v9, 0x0

    goto :goto_9

    .line 2681
    .end local v4    # "allowedFlag":I
    .end local v8    # "isAllowed":Z
    :cond_25
    const-string v18, "broadcast"

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_34

    .line 2682
    if-eqz p6, :cond_26

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x1000

    move/from16 v18, v0

    if-eqz v18, :cond_27

    .line 2683
    :cond_26
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 2686
    :cond_27
    const/4 v4, 0x0

    .line 2687
    .restart local v4    # "allowedFlag":I
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x2000

    move/from16 v18, v0

    if-eqz v18, :cond_28

    .line 2688
    or-int/lit8 v4, v4, 0x1

    .line 2689
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v18

    if-eqz v18, :cond_28

    .line 2690
    or-int/lit8 v4, v4, 0x2

    .line 2693
    :cond_28
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x4000

    move/from16 v18, v0

    if-eqz v18, :cond_29

    .line 2694
    or-int/lit8 v4, v4, 0x1

    .line 2695
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v18

    if-eqz v18, :cond_29

    .line 2696
    or-int/lit8 v4, v4, 0x2

    .line 2700
    :cond_29
    const v18, 0x8000

    and-int v18, v18, v16

    if-eqz v18, :cond_2a

    .line 2701
    or-int/lit8 v4, v4, 0x1

    .line 2702
    const-string v18, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2a

    .line 2703
    or-int/lit8 v4, v4, 0x2

    .line 2704
    const/4 v15, 0x1

    .line 2709
    :cond_2a
    const/high16 v18, 0x10000

    and-int v18, v18, v16

    if-eqz v18, :cond_2b

    .line 2710
    or-int/lit8 v4, v4, 0x1

    .line 2711
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lcom/android/server/am/MARsPolicyManager;->isGearManagerIntent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2b

    .line 2712
    or-int/lit8 v4, v4, 0x2

    .line 2716
    :cond_2b
    const/high16 v18, 0x20000

    and-int v18, v18, v16

    if-eqz v18, :cond_2c

    .line 2717
    or-int/lit8 v4, v4, 0x1

    .line 2718
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v12, v1}, Lcom/android/server/am/MARsPolicyManager;->isSpecialIntentsForSKT(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2c

    .line 2719
    or-int/lit8 v4, v4, 0x2

    .line 2723
    :cond_2c
    const/high16 v18, 0x40000

    and-int v18, v18, v16

    if-eqz v18, :cond_2d

    .line 2724
    or-int/lit8 v4, v4, 0x1

    .line 2726
    iget v0, v13, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move/from16 v18, v0

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move/from16 v18, v0

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_2d

    const-string v18, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2d

    const-string/jumbo v18, "foreground"

    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2d

    .line 2730
    or-int/lit8 v4, v4, 0x2

    .line 2735
    :cond_2d
    const/high16 v18, 0x80000

    and-int v18, v18, v16

    if-eqz v18, :cond_2e

    .line 2736
    or-int/lit8 v4, v4, 0x1

    .line 2737
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->isEdgeIntent(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2e

    .line 2738
    or-int/lit8 v4, v4, 0x2

    .line 2742
    :cond_2e
    const/high16 v18, 0x200000

    and-int v18, v18, v16

    if-eqz v18, :cond_2f

    .line 2743
    or-int/lit8 v4, v4, 0x1

    .line 2744
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lcom/android/server/am/MARsPolicyManager;->isKiesIntent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2f

    .line 2745
    or-int/lit8 v4, v4, 0x2

    .line 2749
    :cond_2f
    const/high16 v18, 0x100000

    and-int v18, v18, v16

    if-eqz v18, :cond_30

    .line 2750
    or-int/lit8 v4, v4, 0x1

    .line 2751
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    move/from16 v18, v0

    if-eqz v18, :cond_30

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->isCurrentLauncherApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v18

    if-eqz v18, :cond_30

    .line 2752
    or-int/lit8 v4, v4, 0x2

    .line 2755
    :cond_30
    and-int/lit8 v18, v4, 0x1

    if-eqz v18, :cond_31

    and-int/lit8 v18, v4, 0x2

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_32

    :cond_31
    const/4 v8, 0x1

    .line 2756
    .restart local v8    # "isAllowed":Z
    :goto_a
    if-nez v8, :cond_33

    const/4 v9, 0x1

    .line 2757
    :goto_b
    goto/16 :goto_3

    .line 2755
    .end local v8    # "isAllowed":Z
    :cond_32
    const/4 v8, 0x0

    goto :goto_a

    .line 2756
    .restart local v8    # "isAllowed":Z
    :cond_33
    const/4 v9, 0x0

    goto :goto_b

    .line 2759
    .end local v4    # "allowedFlag":I
    .end local v8    # "isAllowed":Z
    :cond_34
    const-string v18, "backup"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 2760
    const/high16 v18, 0x1000000

    and-int v18, v18, v16

    if-eqz v18, :cond_8

    .line 2761
    const/4 v9, 0x1

    goto/16 :goto_3
.end method

.method public screenOnStateChanged(Z)V
    .locals 2
    .param p1, "onoff"    # Z

    .prologue
    .line 1712
    if-nez p1, :cond_0

    .line 1713
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->lastScreenOffStartTime:J

    .line 1716
    :cond_0
    return-void
.end method

.method setAllPoliciesOnOffState(I)V
    .locals 6
    .param p1, "on"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1044
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 1045
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllPoliciesOnOffState on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_0
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    if-eq v0, p1, :cond_1

    .line 1049
    packed-switch p1, :pswitch_data_0

    .line 1079
    :goto_0
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    .line 1081
    :cond_1
    return-void

    .line 1051
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->turnOffPolicies()V

    .line 1053
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_2

    .line 1054
    sput-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 1056
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    goto :goto_0

    .line 1059
    :pswitch_1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_3

    .line 1060
    sput-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 1061
    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(I)V

    .line 1063
    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->turnOnPolicies()V

    .line 1064
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    goto :goto_0

    .line 1067
    :pswitch_2
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_4

    .line 1068
    sput-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 1069
    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(I)V

    .line 1071
    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->turnOnPolicies()V

    .line 1072
    iput-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    goto :goto_0

    .line 1075
    :pswitch_3
    sput-boolean v4, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 1076
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(I)V

    goto :goto_0

    .line 1049
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAppUsedRecentlyState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 1695
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAppUsedRecently:Z

    .line 1696
    return-void
.end method

.method public setAutoRunDownloadParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "trafficDuration"    # Ljava/lang/String;
    .param p2, "trafficAmount"    # Ljava/lang/String;
    .param p3, "notiUpdateCount"    # Ljava/lang/String;
    .param p4, "appSizeIncreased"    # Ljava/lang/String;

    .prologue
    .line 4181
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    .line 4182
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    .line 4183
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdatedCount:J

    .line 4184
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppSizeIncreased:J

    .line 4185
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoRunDownloadParameter --- trafficDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    iget-wide v2, v2, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , trafficAmount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDataTrafficAmount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , notiUpdateCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationUpdatedCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,appSizeIncreased = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAppSizeIncreased:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4187
    return-void
.end method

.method public setAutoRunParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "triggerPeriod"    # Ljava/lang/String;
    .param p2, "unusedPeriod"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x3c

    .line 4175
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    mul-long/2addr v2, v6

    iput-wide v2, v0, Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J

    .line 4176
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v4

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    .line 4177
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoRunParameter --- TriggerPeriod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    iget-wide v2, v2, Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , UnusedPeriod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4178
    return-void
.end method

.method public setCarModeOnState(Z)V
    .locals 0
    .param p1, "onoff"    # Z

    .prologue
    .line 1719
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    .line 1720
    return-void
.end method

.method public setDataConnectionConnected()V
    .locals 5

    .prologue
    .line 1522
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1523
    .local v0, "mConnManagerDoNotUseDirectly":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1524
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDataConnectionIsConnected:Z

    .line 1525
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    .line 1526
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataConnection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDataConnectionIsConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_0
    return-void

    .line 1524
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setPackageReceivedGCMIntent(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2886
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v1, :cond_1

    .line 2888
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 2889
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 2890
    .local v0, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v0, :cond_0

    .line 2891
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->receivedGcmIntent:Z

    .line 2892
    :cond_0
    monitor-exit v2

    .line 2894
    .end local v0    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1
    return-void

    .line 2892
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setPackagesUnusedLockingTime(I)V
    .locals 6
    .param p1, "hours"    # I

    .prologue
    const-wide/16 v4, 0x3e8

    .line 1030
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 1031
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPackagesUnusedLockingTime hours = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    mul-int/lit8 v2, p1, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1035
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    .line 1038
    :cond_1
    mul-int/lit8 v0, p1, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    .line 1039
    return-void
.end method

.method public setSCPMBlackListForActiveTrafficValue(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4241
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4242
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListForActiveTrafficValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 4244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4245
    .local v0, "autoRunBlackListForActiveTraffic":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4246
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4247
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4245
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4253
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListForActiveTrafficValues:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4254
    monitor-exit v3

    .line 4255
    return-void

    .line 4254
    .end local v0    # "autoRunBlackListForActiveTraffic":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setSCPMBlackListValue(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4224
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4225
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 4227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4228
    .local v0, "autoRunBlackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4229
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4230
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4228
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4236
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlackListValues:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4237
    monitor-exit v3

    .line 4238
    return-void

    .line 4237
    .end local v0    # "autoRunBlackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setSCPMBlockValue(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4190
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4191
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlockValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 4193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4194
    .local v0, "autoRunBlockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4195
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4196
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4194
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4202
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmBlockValues:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4203
    monitor-exit v3

    .line 4204
    return-void

    .line 4203
    .end local v0    # "autoRunBlockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setSCPMSkipOptimizationValue(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4258
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4259
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipOptimizationValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 4261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4262
    .local v0, "autoRunSkipOptimizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4263
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4264
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4262
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4270
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipOptimizationValues:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4271
    monitor-exit v3

    .line 4272
    return-void

    .line 4271
    .end local v0    # "autoRunSkipOptimizationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setSCPMSkipValue(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SCPMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4207
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4208
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipValues:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 4210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4211
    .local v0, "autoRunSkipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4212
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4213
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4211
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4219
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScpmSkipValues:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const-string v4, "AutoRun"

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4220
    monitor-exit v3

    .line 4221
    return-void

    .line 4220
    .end local v0    # "autoRunSkipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SCPMDBValue;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method setSKTSpeicalPackages(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1084
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 1085
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1086
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1087
    monitor-exit v1

    .line 1088
    return-void

    .line 1087
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScreenOnState(Z)V
    .locals 1
    .param p1, "onoff"    # Z

    .prologue
    .line 1699
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eq v0, p1, :cond_0

    .line 1700
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->screenOnStateChanged(Z)V

    .line 1701
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    .line 1702
    return-void
.end method

.method setWhiteListIntentsForSKT(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1091
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 1092
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1093
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1094
    monitor-exit v1

    .line 1095
    return-void

    .line 1094
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public switchUser(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 735
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 739
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    :goto_0
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 745
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsDBManager;->unregisterContentObserver()V

    .line 746
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsDBManager;->setContext(Landroid/content/Context;)V

    .line 747
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v1, v3}, Lcom/android/server/am/MARsTrigger;->unregisterReceiver(Z)V

    .line 748
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsTrigger;->setContext(Landroid/content/Context;)V

    .line 750
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 751
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 752
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 753
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 754
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 755
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 757
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 758
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 759
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 760
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 761
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 762
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 763
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    .line 764
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 765
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 766
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mBoundAppWidgetPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 767
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    .line 768
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 769
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 770
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mOngoingNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 771
    :cond_a
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    .line 772
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 773
    :cond_b
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    .line 774
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 775
    :cond_c
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 776
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 778
    :cond_d
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    .line 780
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->init(Z)V

    .line 781
    return-void

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V
    .locals 7
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;

    .prologue
    const/4 v6, 0x0

    .line 3421
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_4

    .line 3423
    :cond_1
    if-eqz p1, :cond_4

    .line 3425
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 3427
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->AppSleep_Enable:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v0, :cond_3

    .line 3428
    :cond_2
    iput v6, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 3429
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 3431
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_6

    .line 3432
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v0

    iput v0, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 3433
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    iget v4, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-direct {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->covertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MARsDBManager;->updateResetTimeSpecific(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 3444
    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    .line 3445
    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 3446
    :cond_5
    return-void

    .line 3435
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    iget v4, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-direct {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->covertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MARsDBManager;->updateResetTimeSpecific(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3438
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    goto :goto_0
.end method

.method public updateDBResetTimeForTimeChanged(J)V
    .locals 13
    .param p1, "changedTime"    # J

    .prologue
    .line 3456
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v5, :cond_0

    .line 3457
    const-string v5, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDBResetTimeForTimeChanged -- SystemTime Changed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x1b7740

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    .line 3461
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v5, :cond_1

    .line 3462
    const-string v5, "MARsPolicyManager"

    const-string v6, "SystemTime Changed Less than 30 min, didn\'t care!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    :cond_1
    :goto_0
    return-void

    .line 3467
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3469
    .local v3, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 3470
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 3471
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 3473
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_3

    .line 3474
    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    add-long/2addr v8, p1

    iput-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 3477
    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->covertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v0

    .line 3478
    .local v0, "extras":Ljava/lang/String;
    new-instance v4, Lcom/android/server/am/MARsDBManager$SMDBValue;

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v7, v8, v0}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3479
    .local v4, "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3470
    .end local v0    # "extras":Ljava/lang/String;
    .end local v4    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3483
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v5, v3}, Lcom/android/server/am/MARsDBManager;->updateResetTime(Ljava/util/ArrayList;)V

    .line 3484
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method updateManagedPackages(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1202
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    .line 1203
    if-eqz p1, :cond_15

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_15

    .line 1204
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_0

    .line 1205
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateManagedPackages! size = "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_0
    const/4 v10, 0x0

    .line 1208
    .local v10, "needTriggerAppLockerPolicy":Z
    const/4 v11, 0x0

    .line 1210
    .local v11, "needTriggerAutoRunPolicy":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_12

    .line 1211
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/MARsDBManager$SMDBValue;

    .line 1212
    .local v13, "srcpkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strIsSMFreezed:Ljava/lang/String;

    iget-object v4, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strExtras:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->covertDBValueToState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1213
    .local v5, "newState":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v12

    .line 1216
    .local v12, "newAutoRun":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    iget-object v4, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .local v2, "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_8

    .line 1223
    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    if-ne v5, v3, :cond_1

    .line 1226
    const/4 v10, 0x0

    .line 1230
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v3, 0x2

    if-ne v5, v3, :cond_2

    .line 1233
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 1236
    :cond_2
    iput v5, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 1239
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1240
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 1243
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_4

    .line 1244
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v3, :cond_5

    .line 1245
    iput v12, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 1210
    :cond_4
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1247
    :cond_5
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 1248
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1249
    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v3, :cond_6

    const/4 v3, 0x1

    if-ne v12, v3, :cond_6

    .line 1250
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 1252
    :cond_6
    iput v12, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    goto :goto_1

    .line 1334
    .end local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    .end local v5    # "newState":I
    .end local v8    # "i":I
    .end local v10    # "needTriggerAppLockerPolicy":Z
    .end local v11    # "needTriggerAutoRunPolicy":Z
    .end local v12    # "newAutoRun":I
    .end local v13    # "srcpkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :catchall_0
    move-exception v3

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1254
    .restart local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    .restart local v5    # "newState":I
    .restart local v8    # "i":I
    .restart local v10    # "needTriggerAppLockerPolicy":Z
    .restart local v11    # "needTriggerAutoRunPolicy":Z
    .restart local v12    # "newAutoRun":I
    .restart local v13    # "srcpkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_7
    const/4 v3, 0x0

    :try_start_1
    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    goto :goto_1

    .line 1261
    :cond_8
    const-wide/16 v6, 0x0

    .line 1262
    .local v6, "time":J
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1263
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1266
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    if-eq v5, v3, :cond_a

    const/4 v3, 0x3

    if-ne v5, v3, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    if-nez v3, :cond_b

    .line 1269
    const/4 v10, 0x1

    .line 1272
    :cond_b
    new-instance v2, Lcom/android/server/am/MARsPackageStatus;

    .end local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    iget-object v4, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/MARsPackageStatus;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 1275
    .restart local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_c

    .line 1277
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/MARsPackageStatus;->isDeviceAdmin:Z

    .line 1278
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v4, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getAdminRemovable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1279
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/MARsPackageStatus;->isRemovableAdmin:Z

    .line 1284
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_f

    .line 1285
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v3, :cond_10

    .line 1286
    iput v12, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 1294
    :goto_2
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_d

    .line 1296
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/MARsPackageStatus;->hasAppIcon:Z

    .line 1299
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    if-eqz v3, :cond_e

    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_e

    .line 1301
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    .line 1304
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    if-eqz v3, :cond_f

    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v3, :cond_f

    .line 1305
    const/4 v11, 0x1

    .line 1309
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1288
    :cond_10
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    if-eqz v3, :cond_11

    .line 1289
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    goto :goto_2

    .line 1291
    :cond_11
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    goto :goto_2

    .line 1313
    .end local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    .end local v5    # "newState":I
    .end local v6    # "time":J
    .end local v12    # "newAutoRun":I
    .end local v13    # "srcpkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_13

    if-eqz v10, :cond_13

    .line 1315
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1316
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v9, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1317
    const-string v3, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getUserId()I

    move-result v15

    invoke-direct {v4, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v9, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1322
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_14

    if-eqz v11, :cond_14

    .line 1324
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1325
    .restart local v9    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v9, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1326
    const-string v3, "com.android.server.am.ACTION_UI_SET_AUTORUN_OFF"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getUserId()I

    move-result v15

    invoke-direct {v4, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v9, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1329
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z

    .line 1332
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    .line 1334
    .end local v8    # "i":I
    .end local v10    # "needTriggerAppLockerPolicy":Z
    .end local v11    # "needTriggerAutoRunPolicy":Z
    :cond_15
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1335
    return-void
.end method

.method public updateRunningLocationPackages(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1606
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1607
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1608
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1609
    const-string/jumbo v1, "packagelist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    .line 1611
    :cond_0
    return-void
.end method

.method public updateSBikePackages(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3817
    .local p1, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3818
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPackageStatus;

    .line 3819
    .local v1, "ps":Lcom/android/server/am/MARsPackageStatus;
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/am/MARsPackageStatus;->sbike:I

    .line 3817
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3821
    .end local v1    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_0
    return-void
.end method

.method public updateTrafficStat()V
    .locals 15

    .prologue
    .line 1566
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    const-string v7, "android.intent.action.GET_RUNNING_LOCATION"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1567
    .local v3, "intentGetLocaitonPkg":Landroid/content/Intent;
    sget-boolean v7, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v7, :cond_0

    const-string v7, "MARsPolicyManager"

    const-string v12, "GPS INTENT send"

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/os/UserHandle;

    iget-object v13, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getUserId()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v3, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1570
    iget-boolean v7, p0, Lcom/android/server/am/MARsPolicyManager;->mDataConnectionIsConnected:Z

    if-eqz v7, :cond_4

    .line 1571
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1572
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 1573
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 1575
    iget-object v12, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    .line 1576
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 1577
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageStatus;

    .line 1578
    .local v6, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v4, v6, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1580
    .local v4, "pkgName":Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1581
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 1582
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    .line 1583
    .local v10, "txbytestime":J
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1584
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v7, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    sget-boolean v7, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v7, :cond_1

    .line 1586
    const-string v7, "MARsPolicyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NETWORK_STAT_LRU :: mTrafficStatMap_LRU_TX put name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",txbytestime:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :cond_1
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v8

    .line 1589
    .local v8, "rxbytestime":J
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1590
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v7, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    invoke-direct {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->invokePMGetPackageSizeInfo(Ljava/lang/String;)V

    .line 1592
    invoke-direct {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->invokeNMGetNotificationCountInfo(Ljava/lang/String;)V

    .line 1593
    sget-boolean v7, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v7, :cond_2

    .line 1594
    const-string v7, "MARsPolicyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NETWORK_STAT_LRU :: mTrafficStatMap_LRU_RX put name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",rxbytestime:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1576
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "rxbytestime":J
    .end local v10    # "txbytestime":J
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1597
    :catch_0
    move-exception v1

    .line 1598
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v7, "MARsPolicyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception for package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1601
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v6    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :catchall_0
    move-exception v7

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    :cond_3
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1603
    .end local v2    # "i":I
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    return-void
.end method

.method public updateUDSPackages(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3802
    .local p1, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3803
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3804
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3805
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 3806
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_0

    .line 3807
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->uds:I

    .line 3802
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3811
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method
