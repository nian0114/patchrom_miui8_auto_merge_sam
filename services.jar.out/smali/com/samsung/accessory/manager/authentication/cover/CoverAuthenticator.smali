.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
.super Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
.source "CoverAuthenticator.java"

# interfaces
.implements Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
.implements Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;
.implements Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;,
        Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;
    }
.end annotation


# static fields
.field private static final ACCESSORY_MANAGER_PERMISSION:Ljava/lang/String; = "com.samsung.accessory.manager.permission.AUTHENTICATION_CONTROL"

.field private static final ACTION_AUTHENTICATION_RESULT:Ljava/lang/String; = "com.samsung.accessory.manager.action.AUTHENTICATION_RESULT"

.field private static final ACTION_AUTHENTICATION_START:Ljava/lang/String; = "com.samsung.accessory.manager.action.START_AUTHENTICATION"

.field private static final ACTION_AUTHENTICATION_STATE_REPLY:Ljava/lang/String; = "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REPLY"

.field private static final ACTION_AUTHENTICATION_STATE_REQUEST:Ljava/lang/String; = "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REQUEST"

.field private static final ACTION_NFC_SERVICE_STARTED:Ljava/lang/String; = "com.sec.android.nfc.AUTH_READY"

.field private static final AUTH_PREPARE_TIMEOUT:J = 0x6978L

.field private static final AUTH_SCHEDULE_INTERVAL:J = 0x44aa200L

.field private static final AUTH_TIMEOUT:J = 0x2710L

.field private static final CHARGING_AUTH_INTERVAL:J = 0x5265c00L

.field static final COVER_ATTACH:I = 0x1

.field static final COVER_DETACH:I = 0x0

.field static final COVER_NOT_SUPPORT:I = -0x1

.field private static final DBG:Z

.field private static final ERROR_RESTART_TIME_MS:I = 0xc8

.field private static final ERROR_RESTART_TIME_MS_TIMEOUT:I = 0x12c

.field private static final FUZZ_TIMES:I = 0xdbba00

.field private static final MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I = 0x1

.field private static final MAX_RETRIES_WHEN_CONNECTIVITY_BUSY:I = 0x2

.field private static final MSG_AUTH_FORCE_UNVERIFY:I = 0x6

.field private static final MSG_AUTH_RESPONSE:I = 0x3

.field private static final MSG_AUTH_START:I = 0x2

.field private static final MSG_AUTH_STOP:I = 0x4

.field private static final MSG_AUTH_TIMEOUT:I = 0x5

.field private static final MSG_INITIALIZE:I = 0x1

.field private static final PowerConnected:I = 0x1

.field private static final PowerDisconnected:I = 0x0

.field private static final RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_COVER_ATTACHED:I = 0x1

.field private static final TYPE_ON_FIRST_BOOT:I = 0x2

.field private static final TYPE_RESTRICTION_CHANGED:I = 0x4

.field private static final TYPE_SCHEDULED_WHEN_CHARGING:I = 0x3

.field private static USE_SCHEDULED_AUTHENTICATION:Z = false

.field private static USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z = false

.field private static final VDBG:Z = true


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAuthAlarmSet:Z

.field private mAuthType:I

.field final mAuthenticationHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

.field mBatteryStateReceiver:Landroid/content/BroadcastReceiver;

.field mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

.field mBootCompleted:Z

.field private mContext:Landroid/content/Context;

.field mCoverAttachedWhenNanos:J

.field private mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

.field mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

.field private mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field private mCurrentPowerSouce:I

.field mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

.field mDeviceProvisioned:Z

.field mFactoryIntent:Landroid/content/Intent;

.field mFactoryReceiver:Landroid/content/BroadcastReceiver;

.field mFactoryTestRequested:Z

.field private mFailuresCount:I

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field mIsFactoryBinary:Z

.field volatile mIsShutingdown:Z

.field private mLastAttachTime:J

.field private volatile mLastAuthenticationTime:J

.field mLastCoverState:Lcom/samsung/android/cover/CoverState;

.field private mLastDetachTime:J

.field mNfcServiceReady:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field volatile mPreparing:Z

.field mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

.field final mResult:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/samsung/accessory/manager/authentication/AuthenticationResult;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCounterWhenBusy:I

.field mRunAuthIntent:Landroid/app/PendingIntent;

.field private mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field mScheduledAuthReceiver:Landroid/content/BroadcastReceiver;

.field mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 58
    const-class v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    .line 59
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".action.AUTHENTICATION_INTERVAL_ELAPSED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    .line 103
    sput-boolean v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION:Z

    .line 104
    sput-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z

    return-void

    :cond_0
    move v0, v2

    .line 59
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "callback"    # Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 482
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;-><init>()V

    .line 118
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    .line 119
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    .line 120
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBootCompleted:Z

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mDeviceProvisioned:Z

    .line 122
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsShutingdown:Z

    .line 123
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    .line 125
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    .line 126
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    .line 135
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    .line 139
    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    .line 140
    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    .line 141
    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    .line 142
    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    .line 146
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    .line 147
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    .line 150
    iput-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    .line 152
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthAlarmSet:Z

    .line 153
    iput-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    .line 159
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 164
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    .line 166
    iput-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 652
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mScheduledAuthReceiver:Landroid/content/BroadcastReceiver;

    .line 668
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBatteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 989
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryReceiver:Landroid/content/BroadcastReceiver;

    .line 483
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 484
    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 485
    iput-object p4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    .line 487
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-direct {v0, p0, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 488
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->initialize()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->handleAuthResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationBlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)V
    .locals 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p1, "x1"    # J

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthentication(J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->handleAuthStart()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    return v0
.end method

.method static synthetic access$1508(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthAlarm()V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
    .param p4, "x4"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->readyToStartAuthentication()V

    return-void
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    return-wide p1
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isLedCover()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    return v0
.end method

.method static synthetic access$2502(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    return p1
.end method

.method static synthetic access$2900(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendFactoryResult()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)V
    .locals 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p1, "x1"    # J

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    return-void
.end method

.method static synthetic access$602(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    return-void
.end method

.method static synthetic access$802(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    return p1
.end method

.method private declared-synchronized getCoverManager()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    .prologue
    .line 744
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 745
    const-string/jumbo v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 746
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 747
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 744
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCoverSwitchState()I
    .locals 4

    .prologue
    .line 754
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, -0x1

    const/16 v2, -0x100

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method private handleAuthResponse(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 229
    sget-object v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "handleAuthResponse"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/16 v18, 0x0

    .line 232
    .local v18, "needToStopSession":Z
    const/16 v20, 0x0

    .line 233
    .local v20, "verified":Z
    const/4 v13, 0x0

    .line 235
    .local v13, "isFake":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 238
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    if-nez v4, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 239
    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v5, "This is unlikely indicates that cover is detached while authenticating"

    invoke-static {v4, v5}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 323
    :goto_0
    return-void

    .line 245
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 246
    .local v19, "result":Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 248
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getResultBundle()Landroid/os/Bundle;

    move-result-object v11

    .line 249
    .local v11, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "reason"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 250
    .local v10, "authReason":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(I)V

    .line 251
    sget-object v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auth reason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    if-eqz v4, :cond_2

    .line 254
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendFactoryResult()V

    .line 256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v4, v5}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 261
    :cond_2
    new-instance v12, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getExtraId()[B

    move-result-object v4

    invoke-direct {v12, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    .line 262
    .local v12, "coverInfo":Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
    if-nez v10, :cond_6

    .line 263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getPublicKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->isThisKeyBlacklisted(Ljava/lang/String;)Z

    move-result v16

    .line 264
    .local v16, "isKeyBlocked":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringManagerURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->isThisKeyBlacklisted(Ljava/lang/String;)Z

    move-result v17

    .line 265
    .local v17, "isPackageBlocked":Z
    invoke-virtual {v12}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v16, :cond_5

    if-nez v17, :cond_5

    .line 266
    const/16 v20, 0x1

    .line 272
    :goto_1
    const/16 v18, 0x1

    .line 317
    .end local v16    # "isKeyBlocked":Z
    .end local v17    # "isPackageBlocked":Z
    :cond_3
    :goto_2
    if-eqz v18, :cond_4

    .line 318
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v13, v12, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 319
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthentication(J)V

    .line 322
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 268
    .restart local v16    # "isKeyBlocked":Z
    .restart local v17    # "isPackageBlocked":Z
    :cond_5
    sget-object v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is ID valid ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isKeyBlocked ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isPackageBlocked? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 274
    .end local v16    # "isKeyBlocked":Z
    .end local v17    # "isPackageBlocked":Z
    :cond_6
    const/4 v4, 0x1

    if-ne v10, v4, :cond_7

    .line 276
    const/16 v18, 0x1

    goto :goto_2

    .line 277
    :cond_7
    const/16 v4, 0xb

    if-eq v10, v4, :cond_8

    const/16 v4, 0x1e

    if-ne v10, v4, :cond_9

    .line 279
    :cond_8
    sget-object v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "do nothing.."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 280
    :cond_9
    const/16 v4, 0x1f

    if-ne v10, v4, :cond_a

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    .line 283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    goto :goto_2

    .line 285
    :cond_a
    const/16 v4, 0xc

    if-ne v10, v4, :cond_b

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    .line 287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    .line 288
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 289
    :cond_b
    const/16 v4, 0xd

    if-ne v10, v4, :cond_d

    .line 290
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 292
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    .line 294
    const/4 v5, 0x1

    const-wide/16 v6, 0x2710

    const-wide/16 v8, 0x1388

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJJ)V

    goto/16 :goto_2

    .line 296
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    .line 299
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 301
    :cond_d
    const/16 v4, 0x14

    if-eq v10, v4, :cond_e

    const/16 v4, 0x15

    if-eq v10, v4, :cond_e

    const/16 v4, 0x16

    if-eq v10, v4, :cond_e

    const/16 v4, 0x17

    if-eq v10, v4, :cond_e

    const/16 v4, 0x18

    if-eq v10, v4, :cond_e

    const/16 v4, 0x20

    if-eq v10, v4, :cond_e

    const/16 v4, 0xa

    if-eq v10, v4, :cond_e

    const/16 v4, 0x5a

    if-ne v10, v4, :cond_3

    .line 309
    :cond_e
    const/16 v4, 0x16

    if-eq v10, v4, :cond_f

    const/16 v4, 0xa

    if-ne v10, v4, :cond_10

    :cond_f
    const-wide/16 v14, 0x12c

    .line 312
    .local v14, "delay":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 313
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    goto/16 :goto_2

    .line 309
    .end local v14    # "delay":J
    :cond_10
    const-wide/16 v14, 0xc8

    goto :goto_3
.end method

.method private handleAuthStart()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    .line 491
    sget-object v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleAuthStart"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 495
    iget-boolean v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v3

    if-ge v3, v5, :cond_1

    .line 496
    sget-boolean v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v4, "This is unlikely indicates that cover is detached while starting auth"

    invoke-static {v3, v4}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 524
    :goto_0
    return-void

    .line 501
    :cond_1
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v3, v4}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    move-result v2

    .line 502
    .local v2, "sessionState":I
    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_2

    .line 504
    sget-object v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "session is busy"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 509
    :cond_2
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 511
    .local v1, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v3, v4}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 512
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 513
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "connectivity_type"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 514
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 515
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 516
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-interface {v3, v1, v5}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->start(Landroid/os/Message;Z)V

    .line 523
    .end local v0    # "data":Landroid/os/Bundle;
    :goto_1
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 519
    :cond_3
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 520
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-interface {v3, v1, v5}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->start(Landroid/os/Message;Z)V

    goto :goto_1
.end method

.method private initialize()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 532
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "Initialize cover authenticator"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    .line 536
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-direct {v0, p0, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 537
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->readFile()V

    .line 539
    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    .line 540
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual {v0, p0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->setCertBlacklistListener(Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;)V

    .line 541
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->readFile()V

    .line 542
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    .line 543
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    invoke-virtual {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->setNfcRestrictionPolicyListener(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;)V

    .line 544
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nfc restriction policy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->isAuthenticatonAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    .line 547
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    sget-object v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 548
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 549
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DetachTimeoutWakeLock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 551
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 553
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 555
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION:Z

    if-eqz v0, :cond_1

    .line 556
    new-instance v6, Landroid/content/Intent;

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v6, "authIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 559
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v6, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRunAuthIntent:Landroid/app/PendingIntent;

    .line 561
    new-instance v3, Landroid/content/IntentFilter;

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 562
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mScheduledAuthReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "com.samsung.accessory.manager.permission.AUTHENTICATION_CONTROL"

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 565
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "authIntent":Landroid/content/Intent;
    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REQUEST"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 566
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.accessory.manager.action.START_AUTHENTICATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "com.samsung.accessory.manager.permission.AUTHENTICATION_CONTROL"

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 569
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "com.sec.android.nfc.AUTH_READY"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 578
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 579
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$6;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$6;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 595
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    if-nez v0, :cond_2

    .line 596
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->registerBatteryReceiver()V

    .line 598
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isDeviceProvisioned()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mDeviceProvisioned:Z

    .line 599
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mDeviceProvisioned:Z

    if-nez v0, :cond_2

    .line 600
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$7;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$7;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 612
    :cond_2
    iput-boolean v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    .line 613
    return-void
.end method

.method private isAuthenticationBlocked()Z
    .locals 6

    .prologue
    .line 401
    const/4 v1, 0x0

    .line 403
    .local v1, "isBlocked":Z
    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 404
    const/4 v1, 0x1

    .line 405
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(I)V

    .line 428
    :cond_0
    :goto_0
    return v1

    .line 406
    :cond_1
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->isAuthenticationBlocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 407
    const/4 v1, 0x1

    .line 408
    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v3, "Authentication is blocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 409
    :cond_2
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->isAuthenticatonAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 410
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getBlockedType()I

    move-result v0

    .line 411
    .local v0, "blockedType":I
    const/4 v1, 0x1

    .line 412
    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 414
    :cond_3
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$4;

    invoke-direct {v3, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$4;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 425
    :cond_4
    :goto_1
    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authentication is blocked.. type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 422
    :cond_5
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 423
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerifiedAlt()V

    goto :goto_1
.end method

.method private isAuthenticationReady()Z
    .locals 1

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mDeviceProvisioned:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsShutingdown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLedCover()Z
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readyToStartAuthentication()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 617
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v0

    .line 622
    .local v0, "coverSwitchState":I
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    if-lt v0, v4, :cond_3

    .line 626
    sget-boolean v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ready to authenticate the cover"

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    .line 629
    const-wide/16 v2, 0x0

    invoke-direct {p0, v4, v2, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    goto :goto_0

    .line 631
    :cond_3
    sget-boolean v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ready to authenticate the cover but a cover attach state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerBatteryReceiver()V
    .locals 3

    .prologue
    .line 527
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 528
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBatteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 529
    return-void
.end method

.method private scheduleAuthenticationTimeOuts(J)V
    .locals 3
    .param p1, "interval"    # J

    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    .line 808
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 809
    return-void
.end method

.method private sendFactoryResult()V
    .locals 5

    .prologue
    .line 1021
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    if-nez v2, :cond_0

    .line 1022
    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "factory intent is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :goto_0
    return-void

    .line 1026
    :cond_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 1028
    .local v1, "result":Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    if-eqz v1, :cond_4

    .line 1029
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getExtraId()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    .line 1030
    .local v0, "info":Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1032
    const-string v2, "OK"

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getCoverId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    .end local v0    # "info":Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
    :goto_1
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1033
    .restart local v0    # "info":Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1034
    const-string v2, "NG_ID"

    const-string v3, ""

    const-string v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1035
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1036
    const-string v2, "NG_KEY"

    const-string v3, ""

    const-string v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1038
    :cond_3
    const-string v2, "NG_NFC"

    const-string v3, ""

    const-string v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1040
    .end local v0    # "info":Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
    :cond_4
    const-string v2, "NG_NFC"

    const-string v3, ""

    const-string v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "serial"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 1046
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo v2, "result_factory"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1047
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo v2, "serial_factory"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1048
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo v2, "id_factory"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1050
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const-string v0, "OK"

    .line 1051
    .local v0, "isCoverAttached":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string v2, "attachInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    invoke-virtual {p0, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getDateFromUTC(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1052
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo v2, "detachInfo"

    iget-wide v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    invoke-virtual {p0, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getDateFromUTC(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1053
    return-void

    .line 1050
    .end local v0    # "isCoverAttached":Ljava/lang/String;
    :cond_0
    const-string v0, "NG"

    goto :goto_0
.end method

.method private setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .locals 8
    .param p1, "isVerified"    # Z
    .param p2, "isFake"    # Z
    .param p3, "coverInfo"    # Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
    .param p4, "result"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .prologue
    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 326
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    .line 327
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    invoke-virtual {v0, p2}, Lcom/samsung/android/cover/CoverState;->setFakeCover(Z)V

    .line 328
    if-eqz p1, :cond_6

    .line 329
    invoke-virtual {v0, v5}, Lcom/samsung/android/cover/CoverState;->setAttachState(Z)V

    .line 330
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setColor(I)V

    .line 331
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getModel()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setModel(I)V

    .line 332
    invoke-virtual {p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringManagerURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setSmartCoverAppUri(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayExtraData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setSmartCoverCookie([B)V

    .line 334
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getSmapp()I

    move-result v2

    if-nez v2, :cond_3

    .line 335
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    .line 336
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setSerialNumber(Ljava/lang/String;)V

    .line 343
    :goto_0
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    .line 344
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->setCoverVerify(I)V

    .line 345
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->setCoverType(I)V

    .line 346
    invoke-virtual {p0, p1, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->applyCoverVerifiedState(ZLcom/samsung/android/cover/CoverState;)Z

    .line 347
    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    if-ne v2, v6, :cond_2

    .line 348
    :cond_0
    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "coverInfo.getUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getUrl()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.applinker.REQUEST_LINK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v1, "linkIntent":Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 352
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getUrl()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 353
    const-string v2, "DEVICE_TYPE"

    const-string/jumbo v3, "cover"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v2, "URI"

    invoke-virtual {p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayManagerURI()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 358
    :goto_1
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 361
    .end local v1    # "linkIntent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getId()[B

    move-result-object v3

    invoke-virtual {p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayManagerURI()[B

    move-result-object v4

    invoke-virtual {p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayExtraData()[B

    move-result-object v5

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->writeFile([B[B[B)V
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->access$900(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;[B[B[B)V

    .line 365
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthAlarm()V

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    .line 369
    iput v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    .line 378
    :goto_2
    return-void

    .line 337
    :cond_3
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getSmapp()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 338
    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    goto/16 :goto_0

    .line 340
    :cond_4
    invoke-virtual {v0, v6}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    goto/16 :goto_0

    .line 356
    .restart local v1    # "linkIntent":Landroid/content/Intent;
    :cond_5
    const-string v2, "URI"

    new-array v3, v6, [B

    fill-array-data v3, :array_0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_1

    .line 371
    .end local v1    # "linkIntent":Landroid/content/Intent;
    :cond_6
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->setCoverVerify(I)V

    .line 372
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->setCoverType(I)V

    .line 373
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_7

    .line 374
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2, v7}, Lcom/samsung/android/cover/CoverState;->setAttachState(Z)V

    .line 375
    :cond_7
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0, p1, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->applyCoverVerifiedState(ZLcom/samsung/android/cover/CoverState;)Z

    .line 376
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    goto :goto_2

    .line 356
    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method private setCoverVerifiedAlt()V
    .locals 4

    .prologue
    .line 381
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 383
    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setCoverVerifiedAlt"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    invoke-direct {v0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    .line 386
    .local v0, "coverInfo":Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 387
    new-instance v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-direct {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;-><init>()V

    .line 388
    .local v1, "result":Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    if-eqz v2, :cond_1

    .line 389
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setManagerURI([B)V

    .line 390
    :cond_1
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    if-eqz v2, :cond_2

    .line 391
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setExtraData([B)V

    .line 393
    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 397
    .end local v1    # "result":Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    :goto_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 398
    return-void

    .line 395
    :cond_3
    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v3, "Id is not valid.."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startAuthAlarm()V
    .locals 8

    .prologue
    .line 716
    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthAlarmSet:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION:Z

    if-eqz v1, :cond_1

    .line 717
    sget-boolean v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v4, "Schedule an authentication alarm"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthAlarmSet:Z

    .line 719
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 720
    .local v0, "random":Ljava/security/SecureRandom;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x44aa200

    add-long/2addr v4, v6

    const v1, 0xdbba00

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v1

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 721
    .local v2, "when":J
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRunAuthIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 723
    .end local v0    # "random":Ljava/security/SecureRandom;
    .end local v2    # "when":J
    :cond_1
    return-void
.end method

.method private startAuthentication(ZJ)V
    .locals 2
    .param p1, "resetTimeout"    # Z
    .param p2, "delayed"    # J

    .prologue
    .line 779
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    :goto_0
    return-void

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    .line 782
    if-eqz p1, :cond_1

    .line 783
    const-wide/16 v0, 0x6978

    invoke-direct {p0, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    .line 784
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private startAuthentication(ZJJ)V
    .locals 2
    .param p1, "resetTimeout"    # Z
    .param p2, "interval"    # J
    .param p4, "delayed"    # J

    .prologue
    .line 791
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    :goto_0
    return-void

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    .line 794
    if-eqz p1, :cond_1

    .line 795
    invoke-direct {p0, p2, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p4, p5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private stopAuthAlarm()V
    .locals 2

    .prologue
    .line 726
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopAuthAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthAlarmSet:Z

    .line 728
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRunAuthIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 729
    return-void
.end method

.method private stopAuthentication(J)V
    .locals 3
    .param p1, "delayed"    # J

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    .line 813
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    .line 816
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 817
    return-void
.end method


# virtual methods
.method addRecord(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method public applyCoverVerifiedState(ZLcom/samsung/android/cover/CoverState;)Z
    .locals 4
    .param p1, "verified"    # Z
    .param p2, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 733
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    .line 734
    .local v0, "cm":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v0, :cond_0

    .line 735
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    .end local v0    # "cm":Lcom/samsung/android/cover/ICoverManager;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 737
    :catch_0
    move-exception v1

    .line 738
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException in notifySmartCoverAttachStateChanged: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1067
    const-string v2, " Current CoverAuthenticator state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 1070
    .local v1, "reault":Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    if-eqz v1, :cond_0

    .line 1071
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  auth reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1072
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  auth uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringManagerURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  auth extra data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringExtraData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    :cond_0
    const-string v2, "  Historical authentication: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1077
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1078
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1077
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1080
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mFactoryTestRequested = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLastAuthenticationTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  isAuthenticatonAllowed? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->isAuthenticatonAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  getBlockedType? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getBlockedType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1084
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  isAuthenticationBlocked? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlacklister:Lcom/samsung/accessory/manager/authentication/CertBlacklister;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->isAuthenticationBlocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1085
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLastAttachTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1086
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLastDetachTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1087
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mFailuresCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1088
    return-void
.end method

.method public getDateFromUTC(J)Ljava/lang/String;
    .locals 5
    .param p1, "millis"    # J

    .prologue
    .line 1056
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1057
    .local v0, "c":Ljava/util/Calendar;
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 1058
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1059
    const-string v1, "%ty-%tm-%td %tH:%tM:%tS.%tL"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const/4 v3, 0x5

    aput-object v0, v2, v3

    const/4 v3, 0x6

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1061
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public isDeviceProvisioned()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 640
    const-string v3, "VZW"

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 641
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 642
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "device_provisioned"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 643
    .local v0, "provisioned":I
    if-eq v0, v2, :cond_0

    .line 644
    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupwizard not completed, provisioned = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .end local v0    # "provisioned":I
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onAuthenticationBlocked(Z)V
    .locals 4
    .param p1, "isBlocked"    # Z

    .prologue
    .line 865
    if-eqz p1, :cond_0

    .line 866
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessage(I)Z

    .line 869
    :goto_0
    return-void

    .line 868
    :cond_0
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    goto :goto_0
.end method

.method public onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .locals 3
    .param p1, "result"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .prologue
    .line 215
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 216
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 217
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendMessage(Landroid/os/Message;)Z

    .line 218
    return-void
.end method

.method public onAuthenticationStarted()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->post(Ljava/lang/Runnable;)Z

    .line 195
    return-void
.end method

.method public onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .locals 2
    .param p1, "session"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->post(Ljava/lang/Runnable;)Z

    .line 180
    return-void
.end method

.method public onAuthenticationStopped(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .locals 2
    .param p1, "session"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$3;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$3;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method

.method public onCertBlacklistChanged()V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->post(Ljava/lang/Runnable;)Z

    .line 861
    return-void
.end method

.method public onCoverAttached(JZ)V
    .locals 9
    .param p1, "whenNanos"    # J
    .param p3, "attached"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    .line 758
    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    if-eqz p3, :cond_2

    .line 761
    iput v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    .line 762
    iput-wide p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    .line 763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    .line 764
    invoke-direct {p0, v4, v6, v7}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    goto :goto_0

    .line 766
    :cond_2
    const-wide/16 v0, 0x0

    .line 767
    .local v0, "delayedMs":J
    iget-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    sub-long v2, p1, v2

    const-wide/32 v4, 0x1dcd6500

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 769
    const-wide/16 v0, 0x1f4

    .line 771
    :cond_3
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 772
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    .line 773
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    .line 774
    invoke-direct {p0, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthentication(J)V

    goto :goto_0
.end method

.method public onNfcRestrictionPolicyChanged(Z)V
    .locals 3
    .param p1, "allowed"    # Z

    .prologue
    .line 826
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNfcRestrictionPolicyChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;

    invoke-direct {v1, p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->post(Ljava/lang/Runnable;)Z

    .line 843
    return-void
.end method

.method removeAuthenticationTimeOuts()V
    .locals 2

    .prologue
    .line 802
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    .line 803
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->removeMessages(I)V

    .line 804
    return-void
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->sendEmptyMessage(I)Z

    .line 822
    return-void
.end method
