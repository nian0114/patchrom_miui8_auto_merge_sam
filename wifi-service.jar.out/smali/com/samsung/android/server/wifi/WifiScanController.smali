.class public Lcom/samsung/android/server/wifi/WifiScanController;
.super Ljava/lang/Object;
.source "WifiScanController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;,
        Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    }
.end annotation


# static fields
.field public static final DBG:Z

.field private static final MAX_DURATION:I = 0x927c0

.field private static final MAX_REGISTERATION_SENSOR_TIME:I = 0x57e40

.field public static final SCAN_TYPE_DO_NOTHING:I = 0x5

.field public static final SCAN_TYPE_EXCEPT_PASSIVE_CHANNELS:I = 0x3

.field public static final SCAN_TYPE_FULL:I = 0x0

.field public static final SCAN_TYPE_MAX:I = 0x5

.field public static final SCAN_TYPE_PARTIAL_1_6_11_CHANNELS:I = 0x2

.field public static final SCAN_TYPE_PARTIAL_2_4_ONLY:I = 0x1

.field public static final SCAN_TYPE_USE_CACHED_RESULT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiScanController"


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mChannel1_6_11Only:[I

.field private mChannel24Only:[I

.field private mChannelNoDfs:[I

.field private mCheckSMDSetting:Z

.field private final mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsAnyMotionDetectorSupported:Z

.field private mIsMoved:Z

.field private mIsNLPPackage:Z

.field private mIsRegisteredSMDListener:Z

.field private mLastActualScanActionTime:J

.field private mLastNLPScanRequestTime:J

.field private mLastNLPScanRequestTimeForSMDRegi:J

.field private mMaxDuration:J

.field private final mNLPPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private final mSMDCounter:[I

.field private final mScanCounter:[I

.field private final mScanLogMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 53
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsMoved:Z

    .line 54
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    .line 55
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mCheckSMDSetting:Z

    .line 56
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsNLPPackage:Z

    .line 57
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    .line 60
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    .line 62
    iput-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel24Only:[I

    .line 63
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel1_6_11Only:[I

    .line 64
    iput-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannelNoDfs:[I

    .line 66
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    .line 67
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTimeForSMDRegi:J

    .line 68
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    .line 69
    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMaxDuration:J

    .line 73
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounter:[I

    .line 78
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSMDCounter:[I

    .line 552
    new-instance v2, Lcom/samsung/android/server/wifi/WifiScanController$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/WifiScanController$1;-><init>(Lcom/samsung/android/server/wifi/WifiScanController;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 565
    new-instance v2, Lcom/samsung/android/server/wifi/WifiScanController$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/WifiScanController$2;-><init>(Lcom/samsung/android/server/wifi/WifiScanController;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 91
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 93
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const-string v2, "scontext"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextManager;

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 95
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    .line 98
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mCheckSMDSetting:Z

    .line 100
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AnyMotionDetector_wifi"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 101
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mActivityManager:Landroid/app/ActivityManager;

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->updateNLPPackages()V

    .line 112
    return-void

    .line 63
    nop

    :array_0
    .array-data 4
        0x96c
        0x985
        0x99e
    .end array-data

    .line 73
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 78
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/WifiScanController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiScanController;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/WifiScanController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiScanController;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->isLocationEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/WifiScanController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiScanController;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->getPersistedAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/server/wifi/WifiScanController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiScanController;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsMoved:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/server/wifi/WifiScanController;)[I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiScanController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSMDCounter:[I

    return-object v0
.end method

.method private addHistoricalScanLog(Ljava/lang/String;)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string v11, "com.android.settings"

    .line 168
    .local v11, "mSettingPackage":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "mDateformat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 171
    .local v6, "nowMs":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 173
    .local v10, "mCurrentDate":Ljava/lang/String;
    iget-object v12, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 174
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    .line 176
    .local v1, "temp":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    if-nez v1, :cond_1

    .line 178
    new-instance v1, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    .end local v1    # "temp":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v2, p1

    move-wide v8, v6

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;-><init>(Ljava/lang/String;IJJJLjava/lang/String;)V

    .line 179
    .restart local v1    # "temp":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_0
    :goto_0
    monitor-exit v12

    .line 188
    return-void

    .line 181
    :cond_1
    iget v2, v1, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount:I

    .line 182
    iput-wide v6, v1, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mLastTime:J

    .line 183
    iput-object v10, v1, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mLast:Ljava/lang/String;

    .line 184
    iget v2, v1, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountForBigdata:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountForBigdata:I

    goto :goto_0

    .line 187
    .end local v1    # "temp":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    :catchall_0
    move-exception v2

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private addOrUpdateNLPPackageSetting(Ljava/lang/String;IJ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scanType"    # I
    .param p3, "scanDelay"    # J

    .prologue
    .line 464
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_0
    const/4 v0, 0x5

    if-ge p2, v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    new-instance v2, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(Lcom/samsung/android/server/wifi/WifiScanController;IJ)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :goto_0
    monitor-exit v1

    .line 474
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    new-instance v2, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, p3, p4}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(Lcom/samsung/android/server/wifi/WifiScanController;IJ)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private calcPeriod()V
    .locals 12

    .prologue
    .line 149
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "MM-dd HH:mm:ss"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 151
    .local v2, "mDateformat":Ljava/text/SimpleDateFormat;
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 152
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 153
    .local v1, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 154
    .local v3, "tempCount":I
    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    iget v6, v6, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 155
    const/4 v3, 0x1

    .line 159
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    iget-wide v10, v6, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mLastTime:J

    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    iget-wide v6, v6, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mStartTime:J

    sub-long v6, v10, v6

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10

    int-to-long v10, v3

    div-long/2addr v6, v10

    long-to-double v4, v6

    .line 160
    .local v4, "period":D
    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    iput-wide v4, v6, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mPeriod:D

    .line 161
    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    iget-wide v10, v7, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mLastTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mLast:Ljava/lang/String;

    goto :goto_0

    .line 163
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "tempCount":I
    .end local v4    # "period":D
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 157
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v3    # "tempCount":I
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    iget v6, v6, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount:I

    add-int/lit8 v3, v6, -0x1

    goto :goto_1

    .line 163
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "tempCount":I
    :cond_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    return-void
.end method

.method private checkAndSMDUnregisteration()V
    .locals 4

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTimeForSMDRegi:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x57e40

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->unregisterSensorMonitor()V

    goto :goto_0
.end method

.method private checkScanDelayForCachedScan(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getNLPPackageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 331
    iget-object v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    .line 332
    .local v1, "scanSetting":Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;
    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanDelayMillis:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 334
    .local v2, "now":J
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    sub-long v4, v2, v4

    iget-wide v6, v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanDelayMillis:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 335
    const/4 v4, 0x1

    .line 339
    .end local v1    # "scanSetting":Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;
    .end local v2    # "now":J
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getCustomScanType(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getNLPPackageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 319
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    .line 320
    .local v1, "scanSetting":Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;
    if-eqz v1, :cond_1

    .line 321
    sget-boolean v2, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiScanController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    iget v2, v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanType:I

    .line 325
    .end local v1    # "scanSetting":Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getFilteredChannelList(Ljava/util/List;ZZ)Ljava/util/List;
    .locals 5
    .param p2, "use5"    # Z
    .param p3, "useDFS"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;ZZ)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "channelList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    if-nez p1, :cond_1

    .line 300
    const/4 v1, 0x0

    .line 313
    :cond_0
    return-object v1

    .line 302
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v1, "filteredChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiChannel;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiChannel;

    .line 305
    .local v0, "channel":Landroid/net/wifi/WifiChannel;
    if-nez p3, :cond_3

    iget-boolean v3, v0, Landroid/net/wifi/WifiChannel;->isDFS:Z

    if-nez v3, :cond_2

    .line 308
    :cond_3
    if-nez p2, :cond_4

    iget v3, v0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    const/16 v4, 0x1388

    if-gt v3, v4, :cond_2

    .line 311
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getNLPPackageKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 516
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 517
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 518
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 519
    .local v1, "nlpPackageKey":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    monitor-exit v3

    .line 525
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "nlpPackageKey":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 523
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit v3

    .line 525
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 523
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getPackageName(I)Ljava/lang/String;
    .locals 6
    .param p1, "pid"    # I

    .prologue
    .line 496
    const/4 v3, -0x1

    if-eq p1, v3, :cond_2

    .line 497
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 498
    .local v2, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_0

    .line 499
    new-instance v1, Ljava/lang/String;

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 500
    .local v1, "packageName":Ljava/lang/String;
    sget-boolean v3, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "WifiScanController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startScan by packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPersistedAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 548
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isLocationEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 541
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 542
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "location_mode"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 544
    .local v0, "mode":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isNLPPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getNLPPackageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    const/4 v0, 0x1

    .line 512
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerSensorMonitor()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 425
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mCheckSMDSetting:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    if-nez v2, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->isLocationEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 427
    const-string v1, "WifiScanController"

    const-string v2, "location is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    :goto_0
    return v0

    .line 429
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->getPersistedAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    const-string v1, "WifiScanController"

    const-string v2, "airplain mode enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 433
    :cond_2
    const-string v0, "WifiScanController"

    const-string v2, "register SMD listener"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    .line 435
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v3, 0x32

    iget-object v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/os/Looper;)Z

    move v0, v1

    .line 437
    goto :goto_0
.end method

.method private resetCounter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 350
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounter:[I

    aput v2, v0, v2

    .line 351
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounter:[I

    aput v2, v0, v3

    .line 352
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounter:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 353
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounter:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 354
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSMDCounter:[I

    aput v2, v0, v2

    .line 355
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSMDCounter:[I

    aput v2, v0, v3

    .line 356
    return-void
.end method

.method private updateNLPPackages()V
    .locals 8

    .prologue
    .line 451
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 454
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    const-string v2, "com.google.process.location"

    new-instance v3, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, p0, v4, v6, v7}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(Lcom/samsung/android/server/wifi/WifiScanController;IJ)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    const-string v2, "com.google.android.location"

    new-instance v3, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, p0, v4, v6, v7}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(Lcom/samsung/android/server/wifi/WifiScanController;IJ)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    const-string v2, "com.google.android.gms"

    new-instance v3, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, p0, v4, v6, v7}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(Lcom/samsung/android/server/wifi/WifiScanController;IJ)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    monitor-exit v1

    .line 461
    return-void

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 373
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 374
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string v6, "WifiScanController\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-SMD Supported:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", used:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mCheckSMDSetting:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-MAX Duration:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMaxDuration:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 381
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 382
    .local v2, "packageName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    .line 384
    .local v5, "settings":Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " type:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v5, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanType:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " delay:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v5, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanDelayMillis:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 388
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v5    # "settings":Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    sget-boolean v6, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v6, :cond_1

    .line 390
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-TotalScanRequest:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounter:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-IgnoreScanRequest:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounter:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-CachedScanRequest:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounter:[I

    aget v7, v7, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-ActualScanRequest:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounter:[I

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-SMDCounter moved:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSMDCounter:[I

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-SMDCounter none:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSMDCounter:[I

    aget v7, v7, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    :cond_1
    const-string v6, "\nWifi scan command history\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->calcPeriod()V

    .line 405
    const/4 v4, 0x0

    .line 406
    .local v4, "scanlogNumber":I
    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 407
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 408
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    .line 409
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ". "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PackageName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "         Count : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    iget v6, v6, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCount:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      Interval : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    iget-wide v10, v6, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mPeriod:D

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    Start Time : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mStart:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "     Last Time : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mLast:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 420
    .end local v1    # "key":Ljava/lang/String;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    :cond_2
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 421
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public getChannelFrequencyArray(I)[I
    .locals 1
    .param p1, "scanType"    # I

    .prologue
    .line 256
    packed-switch p1, :pswitch_data_0

    .line 269
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 258
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel1_6_11Only:[I

    goto :goto_0

    .line 261
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel24Only:[I

    goto :goto_0

    .line 264
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannelNoDfs:[I

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getMovingStatus()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 529
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    if-eqz v1, :cond_0

    .line 530
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsMoved:Z

    .line 531
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->requestToUpdate(Landroid/hardware/scontext/SContextListener;I)V

    .line 533
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsMoved:Z

    .line 537
    :cond_0
    return v0

    .line 534
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getScanLog(I)Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    .locals 6
    .param p1, "pid"    # I

    .prologue
    const/4 v4, 0x0

    .line 477
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "pacakgeName":Ljava/lang/String;
    if-nez v1, :cond_1

    move-object v2, v4

    .line 492
    :cond_0
    :goto_0
    return-object v2

    .line 483
    :cond_1
    const/4 v2, 0x0

    .line 484
    .local v2, "result":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    iget-object v5, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 485
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    move-object v2, v0

    .line 486
    monitor-exit v5

    .line 488
    if-nez v2, :cond_0

    move-object v2, v4

    .line 489
    goto :goto_0

    .line 486
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getScanType(I)I
    .locals 9
    .param p1, "pid"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 192
    .local v0, "now":J
    iget-object v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounter:[I

    const/4 v5, 0x3

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 193
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiScanController;->addHistoricalScanLog(Ljava/lang/String;)V

    .line 195
    if-eqz v2, :cond_a

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiScanController;->isNLPPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 196
    iput-boolean v8, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsNLPPackage:Z

    .line 197
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTimeForSMDRegi:J

    .line 199
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiScanController;->checkScanDelayForCachedScan(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    sget-boolean v3, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "WifiScanController"

    const-string v4, "Ignore scan request, reason:scan delay"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounter:[I

    const/4 v4, 0x2

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 202
    const/4 v3, 0x5

    .line 242
    :goto_0
    return v3

    .line 205
    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mCheckSMDSetting:Z

    if-eqz v4, :cond_8

    .line 206
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    if-nez v4, :cond_2

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->registerSensorMonitor()Z

    .line 208
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    .line 209
    iget-object v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounter:[I

    aget v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v3

    .line 210
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiScanController;->getCustomScanType(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->getMovingStatus()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 213
    sget-boolean v4, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "WifiScanController"

    const-string v5, "SMD detected. Force scan"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    .line 215
    iget-object v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounter:[I

    aget v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v3

    .line 216
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiScanController;->getCustomScanType(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 220
    :cond_4
    const-string v4, "WifiScanController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time diff: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    sub-long v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    sub-long v4, v0, v4

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMaxDuration:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    .line 222
    sget-boolean v3, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "WifiScanController"

    const-string v4, "Ignore scan request, use cached scan result"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounter:[I

    aget v4, v3, v8

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v8

    .line 224
    const/4 v3, 0x4

    goto :goto_0

    .line 226
    :cond_6
    sget-boolean v4, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v4, :cond_7

    const-string v4, "WifiScanController"

    const-string v5, "reset timer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    .line 231
    :cond_8
    sget-boolean v4, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v4, :cond_9

    const-string v4, "WifiScanController"

    const-string v5, "force scan"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanCounter:[I

    aget v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v3

    .line 233
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    .line 234
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiScanController;->getCustomScanType(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_0

    .line 236
    :cond_a
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsNLPPackage:Z

    .line 237
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    if-eqz v4, :cond_b

    .line 238
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->checkAndSMDUnregisteration()V

    .line 241
    :cond_b
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    goto/16 :goto_0
.end method

.method public isNLPPackageFromLastPid()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsNLPPackage:Z

    return v0
.end method

.method public setCustomScanType(Ljava/lang/String;II)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scanType"    # I
    .param p3, "scanDelaySeconds"    # I

    .prologue
    .line 343
    sget-boolean v0, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiScanController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scanType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scanDelay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(sec.), reset all counter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    mul-int/lit16 v0, p3, 0x3e8

    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/server/wifi/WifiScanController;->addOrUpdateNLPPackageSetting(Ljava/lang/String;IJ)V

    .line 346
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->resetCounter()V

    .line 347
    return-void
.end method

.method public setDurationSettings(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 369
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMaxDuration:J

    .line 370
    return-void
.end method

.method public setEnableToCheckSMD(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    if-eqz v0, :cond_0

    .line 360
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mCheckSMDSetting:Z

    .line 362
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->unregisterSensorMonitor()V

    .line 366
    :cond_0
    return-void
.end method

.method public unregisterSensorMonitor()V
    .locals 3

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    if-eqz v0, :cond_0

    .line 444
    const-string v0, "WifiScanController"

    const-string v1, "unregister SMD listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    .line 448
    :cond_0
    return-void
.end method

.method public updateChannelList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "channelList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 273
    sget-boolean v2, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiScanController"

    const-string v3, "updateChannelList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    const/4 v0, 0x0

    .line 276
    .local v0, "channelSet":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-direct {p0, p1, v4, v4}, Lcom/samsung/android/server/wifi/WifiScanController;->getFilteredChannelList(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 278
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel24Only:[I

    .line 279
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 280
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel24Only:[I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiChannel;

    iget v2, v2, Landroid/net/wifi/WifiChannel;->freqMHz:I

    aput v2, v3, v1

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v1    # "i":I
    :cond_1
    iput-object v5, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel24Only:[I

    .line 286
    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v4}, Lcom/samsung/android/server/wifi/WifiScanController;->getFilteredChannelList(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 288
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannelNoDfs:[I

    .line 289
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 290
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannelNoDfs:[I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiChannel;

    iget v2, v2, Landroid/net/wifi/WifiChannel;->freqMHz:I

    aput v2, v3, v1

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 293
    .end local v1    # "i":I
    :cond_3
    iput-object v5, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannelNoDfs:[I

    .line 295
    :cond_4
    return-void
.end method
