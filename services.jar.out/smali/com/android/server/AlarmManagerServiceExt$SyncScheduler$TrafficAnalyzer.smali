.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrafficAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    }
.end annotation


# static fields
.field private static final CORELATION_TOLERANCE_VALUE:J = 0x2710L

.field private static final TRAFFICMONITOR_ON:Z = true


# instance fields
.field private mBundlingPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field public volatile mDataConnectionIsConnected:Z

.field private mFgActivities:Landroid/util/SparseBooleanArray;

.field private mIgnorelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mIsScreenOn:Z

.field private mLocationUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mSafeLock:Ljava/lang/Object;

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mWHITElist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mWatchlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

.field private whitelistCount:I


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V
    .locals 9
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2276
    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2259
    iput v7, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->whitelistCount:I

    .line 2260
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIsScreenOn:Z

    .line 2261
    iput-boolean v7, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mDataConnectionIsConnected:Z

    .line 2262
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    .line 2263
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    .line 2264
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    .line 2265
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mFgActivities:Landroid/util/SparseBooleanArray;

    .line 2269
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    .line 2272
    iput-object v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 3391
    new-instance v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$1;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$1;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 3405
    new-instance v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$2;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$2;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 3437
    new-instance v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$3;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$3;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 3468
    new-instance v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$4;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$4;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mLocationUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 3508
    new-instance v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$5;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$5;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mBundlingPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 2277
    const-string v6, "AlarmManagerEXT"

    const-string v7, "[TA] creating..."

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2285
    .local v0, "am":Landroid/app/IActivityManager;
    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v6}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2290
    .end local v0    # "am":Landroid/app/IActivityManager;
    :goto_0
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2291
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2293
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2294
    .local v3, "gmsBundlingFilter":Landroid/content/IntentFilter;
    const-string v6, "com.sec.GMS_bundling"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2295
    const-string v6, "com.google.android.location.reporting.ACTION_INSISTENT_SYNC"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2296
    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mLocationUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2298
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2299
    .local v1, "bundlingPolicyFilter":Landroid/content/IntentFilter;
    const-string v6, "com.sec.android.intent.action.BUNDLING_POLICY_UPDATED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2300
    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mBundlingPolicyReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "android.permission.DEVICE_POWER"

    invoke-virtual {p2, v6, v1, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2302
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 2303
    .local v5, "screenFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2304
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2305
    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2306
    const-string v6, "AlarmManagerEXT"

    const-string v7, "[TA] created."

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    return-void

    .line 2286
    .end local v1    # "bundlingPolicyFilter":Landroid/content/IntentFilter;
    .end local v3    # "gmsBundlingFilter":Landroid/content/IntentFilter;
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .end local v5    # "screenFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    .line 2287
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 2256
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mFgActivities:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 3363
    monitor-enter p0

    .line 3364
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 3365
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 3368
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    monitor-exit p0

    return-object v0

    .line 3369
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public ForegroundAppsCheckLocked(IJ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "nowT"    # J

    .prologue
    .line 3378
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3381
    .local v1, "itWatch":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3383
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 3384
    .local v0, "ar":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    if-ne p1, v2, :cond_0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    sub-long v2, p2, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 3386
    iget v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->UMCount:I

    iget v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->NfgCount:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    if-nez v2, :cond_0

    iget v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    goto :goto_0

    .line 3390
    .end local v0    # "ar":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_1
    return-void
.end method

.method public determineListTypeLocked(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)Z
    .locals 14
    .param p1, "record"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .prologue
    .line 2570
    const/4 v9, 0x0

    .line 2571
    .local v9, "typeChanged":Z
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[TA] "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    :cond_0
    iget v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCount:I

    const/4 v11, 0x3

    if-lt v10, v11, :cond_8

    iget-boolean v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountEvenlyDistributed:Z

    if-nez v10, :cond_8

    iget v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountAfterHit:I

    if-eqz v10, :cond_1

    iget v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountAfterHit:I

    const/4 v11, 0x3

    if-lt v10, v11, :cond_8

    :cond_1
    iget-boolean v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    if-nez v10, :cond_8

    .line 2578
    new-instance v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    invoke-direct {v5, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    .line 2580
    .local v5, "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1100(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2581
    .local v4, "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2582
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2583
    .local v6, "pStr":Ljava/lang/String;
    iget-object v8, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    .line 2584
    .local v8, "recordPkg":Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2585
    const/4 v10, 0x0

    .line 2681
    .end local v4    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v6    # "pStr":Ljava/lang/String;
    .end local v8    # "recordPkg":Ljava/lang/String;
    :goto_0
    return v10

    .line 2588
    .restart local v4    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_3
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    int-to-long v10, v10

    const-wide/16 v12, 0x1388

    cmp-long v10, v10, v12

    if-gez v10, :cond_4

    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2589
    :cond_4
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2590
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2591
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2592
    .local v0, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->hashCode()I

    move-result v10

    iget v11, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->piHashCode:I

    if-ne v10, v11, :cond_5

    .line 2594
    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    .line 2595
    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 2596
    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 2600
    .end local v0    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_6
    const/4 v9, 0x1

    .line 2601
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[AppSync] moved to Ignore list: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    .end local v4    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_7
    :goto_1
    move v10, v9

    .line 2681
    goto :goto_0

    .line 2606
    :cond_8
    iget v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->hitCount:I

    const/4 v11, 0x2

    if-lt v10, v11, :cond_7

    iget-boolean v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    if-nez v10, :cond_7

    .line 2612
    iget-boolean v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountEvenlyDistributed:Z

    if-eqz v10, :cond_e

    iget-boolean v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isUIalarm:Z

    if-nez v10, :cond_e

    .line 2613
    new-instance v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    invoke-direct {v5, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    .line 2614
    .restart local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    const/4 v1, 0x0

    .line 2615
    .local v1, "found":Z
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2617
    .local v7, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v10, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget v11, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-ne v10, v11, :cond_9

    .line 2618
    const/4 v1, 0x1

    .line 2625
    .end local v7    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_a
    if-nez v1, :cond_c

    .line 2627
    const/4 v10, 0x1

    iput-boolean v10, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    .line 2628
    const/4 v10, 0x0

    iput v10, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountAfterHit:I

    .line 2629
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    int-to-long v10, v10

    const-wide/16 v12, 0x1388

    cmp-long v10, v10, v12

    if-gez v10, :cond_b

    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2630
    :cond_b
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v10

    if-eqz v10, :cond_c

    const-string v10, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[AppSync] moved to Whitelist: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    :cond_c
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget v11, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget-wide v12, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    # invokes: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateRepeatingAlarmLocked(IJ)V
    invoke-static {v10, v11, v12, v13}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;IJ)V

    .line 2679
    :cond_d
    :goto_2
    const/4 v9, 0x1

    goto :goto_1

    .line 2641
    .end local v1    # "found":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_e
    new-instance v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    invoke-direct {v5, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    .line 2642
    .restart local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    const/4 v1, 0x0

    .line 2643
    .restart local v1    # "found":Z
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2645
    .restart local v7    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v10, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget v11, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-ne v10, v11, :cond_f

    .line 2646
    const/4 v1, 0x1

    .line 2653
    .end local v7    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_10
    if-nez v1, :cond_d

    .line 2655
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1100(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2656
    .restart local v4    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 2657
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2658
    .restart local v6    # "pStr":Ljava/lang/String;
    iget-object v8, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    .line 2659
    .restart local v8    # "recordPkg":Ljava/lang/String;
    if-eqz v8, :cond_11

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 2660
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2663
    .end local v6    # "pStr":Ljava/lang/String;
    .end local v8    # "recordPkg":Ljava/lang/String;
    :cond_12
    const/4 v10, 0x0

    iput-boolean v10, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    .line 2664
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    int-to-long v10, v10

    const-wide/16 v12, 0x1388

    cmp-long v10, v10, v12

    if-gez v10, :cond_13

    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2665
    :cond_13
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2666
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 2667
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2668
    .restart local v0    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->hashCode()I

    move-result v10

    iget v11, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->piHashCode:I

    if-ne v10, v11, :cond_14

    .line 2670
    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    .line 2671
    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 2672
    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 2676
    .end local v0    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_15
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v10

    if-eqz v10, :cond_d

    const-string v10, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[AppSync] moved to Ignore list: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public getWhitelistCount()I
    .locals 3

    .prologue
    .line 3336
    const/4 v0, 0x0

    .line 3337
    .local v0, "c":I
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3338
    :try_start_0
    iget v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->whitelistCount:I

    .line 3339
    monitor-exit v2

    .line 3340
    return v0

    .line 3339
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I
    .locals 9
    .param p2, "alarmUid"    # I
    .param p3, "alarmPid"    # I
    .param p4, "alarmHashCode"    # I
    .param p5, "repeatInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;",
            ">;IIIJ)I"
        }
    .end annotation

    .prologue
    .line 2754
    .local p1, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    const/4 v1, 0x0

    .line 2755
    .local v1, "index":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2756
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2757
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2758
    .local v3, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-ne v4, p4, :cond_2

    .line 2763
    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-lez v4, :cond_1

    iget-wide v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    cmp-long v4, p5, v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    if-eq p1, v4, :cond_0

    const-wide/32 v4, 0x186a0

    rem-long v4, p5, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 2768
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2769
    const/4 v4, -0x1

    .line 2811
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :goto_1
    return v4

    .restart local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_1
    move v4, v1

    .line 2771
    goto :goto_1

    .line 2773
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 2774
    goto :goto_0

    .line 2778
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-lez v4, :cond_6

    .line 2779
    const/4 v1, 0x0

    .line 2780
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2784
    .restart local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    if-ne v4, p2, :cond_5

    iget-wide v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    cmp-long v4, v4, p5

    if-nez v4, :cond_5

    .line 2788
    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-nez v4, :cond_4

    move v4, v1

    .line 2789
    goto :goto_1

    .line 2797
    :cond_4
    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->hitCount:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_5

    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCount:I

    if-nez v4, :cond_5

    .line 2801
    iput p4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    move v4, v1

    .line 2802
    goto :goto_1

    .line 2805
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 2806
    goto :goto_2

    .line 2811
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_6
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public printWhitelist(ZLjava/io/PrintWriter;)V
    .locals 10
    .param p1, "bDump"    # Z
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 3344
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3345
    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->whitelistCount:I

    .line 3346
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 3347
    .local v1, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    .line 3348
    iget v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->whitelistCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->whitelistCount:I

    .line 3349
    if-eqz p1, :cond_1

    .line 3350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  (AppSync) "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3359
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3354
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_1
    :try_start_1
    const-string v2, "AlarmManagerEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(AppSync) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3359
    .end local v1    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3360
    return-void
.end method

.method public queryTrafficPeriodicity(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;J)J
    .locals 30
    .param p1, "aExt"    # Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .param p2, "distRounded"    # J

    .prologue
    .line 2310
    const/16 v19, 0x1

    .line 2311
    .local v19, "isValidInterval":Z
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->keyId:I

    .line 2312
    .local v9, "alarmHash":I
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v7

    .line 2313
    .local v7, "alarmUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2314
    .local v8, "alarmPid":I
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v24

    .line 2315
    .local v24, "pkgName":Ljava/lang/String;
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TA] querying "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " for "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    :cond_0
    const/16 v17, -0x1

    .line 2323
    .local v17, "foundIdx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 2327
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    move-object/from16 v5, p0

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_1

    const-wide/16 p2, -0x1

    monitor-exit v26

    .line 2419
    .end local p2    # "distRounded":J
    :goto_0
    return-wide p2

    .line 2332
    .restart local p2    # "distRounded":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    move-object/from16 v5, p0

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v17

    .line 2333
    const/4 v5, -0x1

    move/from16 v0, v17

    if-le v0, v5, :cond_2

    .line 2335
    move-wide/from16 v0, p2

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    monitor-exit v26

    goto :goto_0

    .line 2414
    .end local p2    # "distRounded":J
    :catchall_0
    move-exception v5

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2338
    .restart local p2    # "distRounded":J
    :cond_2
    const/16 v22, 0x0

    .line 2343
    .local v22, "makeNew":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    move-object/from16 v5, p0

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v17

    .line 2344
    const/4 v5, -0x1

    move/from16 v0, v17

    if-le v0, v5, :cond_b

    .line 2345
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2349
    .local v14, "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v0, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    move-wide/from16 v28, v0

    cmp-long v5, v10, v28

    if-gez v5, :cond_b

    .line 2350
    iget v5, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->resetCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->resetCount:I

    .line 2354
    iget v5, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->resetCount:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_b

    .line 2355
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2356
    const/16 v16, 0x0

    .line 2357
    .local v16, "found":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2358
    .local v25, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget v6, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-ne v5, v6, :cond_3

    .line 2359
    const/16 v16, 0x1

    .line 2363
    .end local v25    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_4
    if-nez v16, :cond_a

    .line 2365
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1100(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 2366
    .local v21, "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2367
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 2368
    .local v23, "pStr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v15

    .line 2369
    .local v15, "createPkg":Ljava/lang/String;
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2370
    const-wide/16 p2, 0x0

    monitor-exit v26

    goto/16 :goto_0

    .line 2373
    .end local v15    # "createPkg":Ljava/lang/String;
    .end local v23    # "pStr":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    iput-boolean v5, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    .line 2374
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v10, v5

    const-wide/16 v28, 0x1388

    cmp-long v5, v10, v28

    if-gez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2375
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 2376
    .local v20, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_8
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2377
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2378
    .local v4, "aaExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->hashCode()I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->hashCode()I

    move-result v6

    if-ne v5, v6, :cond_8

    .line 2380
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    .line 2381
    const-wide/16 v10, 0x0

    iput-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 2382
    const-wide/16 v10, 0x0

    iput-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 2386
    .end local v4    # "aaExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_9
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AppSync][Periodicity] moved to Ignore list: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    .end local v21    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a
    const-wide/16 p2, -0x1

    monitor-exit v26

    goto/16 :goto_0

    .line 2395
    .end local v14    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v16    # "found":Z
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_b
    const/4 v5, -0x1

    move/from16 v0, v17

    if-eq v0, v5, :cond_c

    if-eqz v22, :cond_f

    .line 2396
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    sub-long v12, v10, v28

    .line 2401
    .local v12, "TIME_SKEW":J
    new-instance v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    .line 2402
    .restart local v14    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    move-object/from16 v0, v24

    iput-object v0, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    .line 2403
    iput v7, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    .line 2404
    iput v8, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pid:I

    .line 2405
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->hashCode()I

    move-result v5

    iput v5, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->piHashCode:I

    .line 2406
    iput v9, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    .line 2407
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isExact:Z

    iput-boolean v5, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isExact:Z

    .line 2408
    move-wide/from16 v0, p2

    iput-wide v0, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    .line 2409
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iput-wide v10, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalRequested:J

    .line 2410
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_d

    const-wide/16 v12, 0x0

    .end local v12    # "TIME_SKEW":J
    :cond_d
    add-long/2addr v10, v12

    iput-wide v10, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    .line 2411
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v10, v5

    const-wide/16 v28, 0x1388

    cmp-long v5, v10, v28

    if-gez v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2412
    :cond_e
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AppSync][Periodicity] added to Watchlist: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    .end local v14    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_f
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2419
    const-wide/16 p2, 0x0

    goto/16 :goto_0
.end method

.method public removeAlarmRecord(Ljava/lang/String;I)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v6, -0x1

    .line 2815
    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2816
    :try_start_0
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2817
    .local v2, "itWhite":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2818
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2819
    .local v3, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    if-eqz p1, :cond_1

    iget-object v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eq p2, v6, :cond_0

    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 2825
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2852
    .end local v2    # "itWhite":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2828
    .restart local v2    # "itWhite":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2829
    .local v1, "itWatch":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2830
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2831
    .restart local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    if-eqz p1, :cond_5

    iget-object v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    if-eq p2, v6, :cond_4

    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_4

    .line 2837
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 2840
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_7
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2841
    .local v0, "itIgnore":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2842
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2843
    .restart local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    if-eqz p1, :cond_9

    iget-object v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    if-eq p2, v6, :cond_8

    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_8

    .line 2849
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 2852
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_b
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2853
    return-void
.end method

.method public removeUnusedAlarmRecord(JZLjava/io/PrintWriter;)V
    .locals 17
    .param p1, "curTimeRtc"    # J
    .param p3, "bDump"    # Z
    .param p4, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2856
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2857
    :try_start_0
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz p3, :cond_6

    .line 2858
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2859
    .local v6, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    if-eqz p3, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[AppSync] WHITE: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2903
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :catchall_0
    move-exception v7

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 2860
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_1
    :try_start_1
    const-string v7, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[AppSync] WHITE: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2862
    .end local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2863
    .restart local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    if-eqz p3, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[AppSync] ignore: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2864
    :cond_3
    const-string v7, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[AppSync] ignore: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2866
    .end local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2867
    .restart local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    if-eqz p3, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[AppSync] watch: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2868
    :cond_5
    const-string v7, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[AppSync] watch: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2872
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2873
    .local v5, "itWatch":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2874
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2875
    .restart local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget-wide v12, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    iget-wide v14, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    cmp-long v7, v12, v14

    if-gez v7, :cond_9

    iget-wide v8, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    .line 2876
    .local v8, "testTime":J
    :goto_4
    iget-wide v12, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    const-wide/16 v14, 0x3

    mul-long/2addr v12, v14

    add-long/2addr v12, v8

    cmp-long v7, v12, p1

    if-gez v7, :cond_7

    .line 2880
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[AppSync] removeW: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 2875
    .end local v8    # "testTime":J
    :cond_9
    iget-wide v8, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    goto :goto_4

    .line 2884
    .end local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2885
    .local v4, "itIgnore":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_b
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 2886
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2888
    .restart local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v7, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    iget v11, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->hitCount:I

    sub-int/2addr v7, v11

    iget v11, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCount:I

    sub-int v2, v7, v11

    .line 2889
    .local v2, "IgnoreCount":I
    int-to-long v12, v2

    iget-wide v14, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    mul-long/2addr v12, v14

    const-wide/32 v14, 0x2932e00

    cmp-long v7, v12, v14

    if-ltz v7, :cond_c

    .line 2890
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 2891
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[AppSync] removeI expiration: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2894
    :cond_c
    iget-wide v12, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    iget-wide v14, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    cmp-long v7, v12, v14

    if-gez v7, :cond_e

    iget-wide v8, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    .line 2895
    .restart local v8    # "testTime":J
    :goto_6
    iget-wide v12, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    const-wide/16 v14, 0x3

    mul-long/2addr v12, v14

    add-long/2addr v12, v8

    cmp-long v7, v12, p1

    if-gez v7, :cond_b

    .line 2899
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[AppSync] removeI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 2894
    .end local v8    # "testTime":J
    :cond_e
    iget-wide v8, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    goto :goto_6

    .line 2903
    .end local v2    # "IgnoreCount":I
    .end local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_f
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2904
    return-void
.end method

.method public updateAlarmTriggerInfo(Landroid/app/PendingIntent;IJ)V
    .locals 23
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "count"    # I
    .param p3, "nowRtc"    # J

    .prologue
    .line 2426
    const/4 v9, -0x1

    .line 2427
    .local v9, "piHashCode":I
    const/4 v7, -0x1

    .line 2429
    .local v7, "trigUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getKidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v9

    .line 2430
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 2434
    :goto_0
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TA][Trigger] "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", code="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 2438
    const/4 v13, -0x1

    .line 2442
    .local v13, "foundIdx":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v13

    .line 2443
    const/4 v5, -0x1

    if-eq v13, v5, :cond_7

    .line 2444
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2446
    .local v4, "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    .line 2447
    move/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->updateTriggerTimeLocked(IJ)V

    .line 2452
    const/16 v16, 0x1

    .line 2453
    .local v16, "tmRun":Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIsScreenOn:Z

    if-eqz v5, :cond_2

    .line 2454
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2455
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mFgActivities:Landroid/util/SparseBooleanArray;

    iget v8, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-virtual {v5, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2457
    const/16 v16, 0x0

    .line 2458
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    .line 2460
    :cond_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2465
    :cond_2
    :try_start_3
    iget-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    const-wide/16 v18, 0x0

    cmp-long v5, v10, v18

    if-lez v5, :cond_3

    iget-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x5

    div-long v18, v18, v20

    cmp-long v5, v10, v18

    if-gez v5, :cond_3

    .line 2467
    const/16 v16, 0x0

    .line 2470
    :cond_3
    if-eqz v16, :cond_6

    .line 2471
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->txbytes0time:J

    .line 2472
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isMonitorON:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2474
    :try_start_4
    new-instance v15, Ljava/util/Timer;

    invoke-direct {v15}, Ljava/util/Timer;-><init>()V

    .line 2475
    .local v15, "timer":Ljava/util/Timer;
    new-instance v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2476
    .local v14, "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    if-eqz v15, :cond_4

    if-nez v14, :cond_5

    :cond_4
    :try_start_5
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2546
    .end local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .end local v15    # "timer":Ljava/util/Timer;
    .end local v16    # "tmRun":Z
    :goto_1
    return-void

    .line 2431
    .end local v13    # "foundIdx":I
    :catch_0
    move-exception v12

    .line 2432
    .local v12, "e":Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 2460
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .restart local v13    # "foundIdx":I
    .restart local v16    # "tmRun":Z
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v5

    .line 2545
    .end local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v16    # "tmRun":Z
    :catchall_1
    move-exception v5

    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v5

    .line 2477
    .restart local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .restart local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .restart local v15    # "timer":Ljava/util/Timer;
    .restart local v16    # "tmRun":Z
    :cond_5
    :try_start_8
    invoke-virtual {v14, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->setAlarmInfo(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    .line 2479
    const-wide/16 v10, 0x2710

    invoke-virtual {v15, v14, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2480
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TA] isRunpass="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2485
    .end local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .end local v15    # "timer":Ljava/util/Timer;
    :cond_6
    :goto_2
    :try_start_9
    monitor-exit v17

    goto :goto_1

    .line 2481
    :catch_1
    move-exception v12

    .line 2482
    .local v12, "e":Ljava/lang/OutOfMemoryError;
    const-string v5, "AlarmManagerEXT"

    const-string v6, "OutOfMemory"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2491
    .end local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v12    # "e":Ljava/lang/OutOfMemoryError;
    .end local v16    # "tmRun":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v13

    const/4 v5, -0x1

    if-le v13, v5, :cond_8

    .line 2492
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2494
    .restart local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    .line 2495
    move/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->updateTriggerTimeLocked(IJ)V

    .line 2496
    monitor-exit v17

    goto :goto_1

    .line 2501
    .end local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v13

    .line 2502
    const/4 v5, -0x1

    if-eq v13, v5, :cond_e

    .line 2503
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2505
    .restart local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    .line 2506
    move/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->updateTriggerTimeLocked(IJ)V

    .line 2511
    const/16 v16, 0x1

    .line 2512
    .restart local v16    # "tmRun":Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIsScreenOn:Z

    if-eqz v5, :cond_a

    .line 2513
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2514
    :try_start_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mFgActivities:Landroid/util/SparseBooleanArray;

    iget v8, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-virtual {v5, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2516
    const/16 v16, 0x0

    .line 2517
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    .line 2519
    :cond_9
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2524
    :cond_a
    :try_start_b
    iget-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    const-wide/16 v18, 0x0

    cmp-long v5, v10, v18

    if-lez v5, :cond_b

    iget-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x5

    div-long v18, v18, v20

    cmp-long v5, v10, v18

    if-gez v5, :cond_b

    .line 2526
    const/16 v16, 0x0

    .line 2529
    :cond_b
    if-eqz v16, :cond_e

    .line 2530
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->txbytes0time:J

    .line 2531
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isMonitorON:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2533
    :try_start_c
    new-instance v15, Ljava/util/Timer;

    invoke-direct {v15}, Ljava/util/Timer;-><init>()V

    .line 2534
    .restart local v15    # "timer":Ljava/util/Timer;
    new-instance v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2535
    .restart local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    if-eqz v15, :cond_c

    if-nez v14, :cond_d

    :cond_c
    :try_start_d
    monitor-exit v17
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_1

    .line 2519
    .end local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .end local v15    # "timer":Ljava/util/Timer;
    :catchall_2
    move-exception v5

    :try_start_e
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 2536
    .restart local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .restart local v15    # "timer":Ljava/util/Timer;
    :cond_d
    :try_start_10
    invoke-virtual {v14, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->setAlarmInfo(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    .line 2538
    const-wide/16 v10, 0x2710

    invoke-virtual {v15, v14, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2539
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TA] isRunpass="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 2545
    .end local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .end local v15    # "timer":Ljava/util/Timer;
    .end local v16    # "tmRun":Z
    :cond_e
    :goto_3
    :try_start_11
    monitor-exit v17

    goto/16 :goto_1

    .line 2540
    .restart local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .restart local v16    # "tmRun":Z
    :catch_2
    move-exception v12

    .line 2541
    .restart local v12    # "e":Ljava/lang/OutOfMemoryError;
    const-string v5, "AlarmManagerEXT"

    const-string v6, "OutOfMemory"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_3
.end method

.method public updateEmailSyncStatus(JJ[J)J
    .locals 25
    .param p1, "curAccountd"    # J
    .param p3, "alarmTriggerTime"    # J
    .param p5, "emailAccountInfos"    # [J

    .prologue
    .line 2685
    const/4 v12, 0x0

    .line 2686
    .local v12, "accountInfoIndex":I
    move-object/from16 v0, p5

    array-length v14, v0

    .line 2690
    .local v14, "accountInfoLimit":I
    const/4 v2, 0x2

    .line 2691
    .local v2, "ACCOUNT_INFO_UNIT_LENGTH":I
    const-wide/16 v20, 0x0

    .local v20, "newInterval":J
    move v13, v12

    .line 2693
    .end local v12    # "accountInfoIndex":I
    .local v13, "accountInfoIndex":I
    :cond_0
    :goto_0
    if-ge v13, v14, :cond_6

    .line 2694
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "accountInfoIndex":I
    .restart local v12    # "accountInfoIndex":I
    aget-wide v10, p5, v13

    .line 2695
    .local v10, "accountId":J
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "accountInfoIndex":I
    .restart local v13    # "accountInfoIndex":I
    aget-wide v22, p5, v12

    .line 2699
    .local v22, "prevSync":J
    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-ltz v3, :cond_0

    .line 2704
    cmp-long v3, p1, v10

    if-nez v3, :cond_0

    .line 2705
    const-wide/16 v4, 0x0

    cmp-long v3, v22, v4

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 2706
    :cond_1
    sub-long v4, p3, v22

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    .line 2707
    .local v16, "distance":J
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "AlarmManagerEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(Email) ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", interval:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    :cond_2
    const-wide/16 v4, 0x3e8

    sub-long v4, v16, v4

    long-to-double v4, v4

    const-wide v6, 0x41124f8000000000L    # 300000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-long v4, v4

    const-wide/32 v6, 0x493e0

    mul-long v16, v4, v6

    .line 2713
    const-wide/32 v4, 0x493e0

    cmp-long v3, v16, v4

    if-ltz v3, :cond_0

    const-wide/32 v4, 0x493e0

    rem-long v4, v16, v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 2714
    move-wide/from16 v20, v16

    .line 2718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2719
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I
    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I
    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I

    move-result v6

    long-to-int v7, v10

    const-wide/16 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v18

    .line 2724
    .local v18, "foundIdx":I
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget-wide v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    cmp-long v3, v4, v20

    if-eqz v3, :cond_3

    .line 2725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2726
    const/16 v18, -0x1

    .line 2728
    :cond_3
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_5

    .line 2729
    new-instance v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    .line 2730
    .local v15, "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    const-string v3, "com.android.email"

    iput-object v3, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    .line 2731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I
    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I

    move-result v3

    iput v3, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    .line 2732
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I
    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I

    move-result v3

    iput v3, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pid:I

    .line 2733
    long-to-int v3, v10

    iput v3, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    .line 2734
    move-wide/from16 v0, v20

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    move-wide/from16 v0, v20

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    move-wide/from16 v0, v20

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalRequested:J

    move-wide/from16 v0, v20

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    .line 2738
    const/4 v3, 0x1

    iput-boolean v3, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    .line 2739
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v6, 0x1388

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2740
    :cond_4
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "AlarmManagerEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AppSync] moved to Whitelist; Email IDX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    .end local v15    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_5
    monitor-exit v19

    goto/16 :goto_0

    .end local v18    # "foundIdx":I
    :catchall_0
    move-exception v3

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2746
    .end local v10    # "accountId":J
    .end local v16    # "distance":J
    .end local v22    # "prevSync":J
    :cond_6
    return-wide v20
.end method

.method updateGmsBundlingState(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 3493
    if-eqz p1, :cond_1

    .line 3494
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3495
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3506
    :cond_0
    :goto_0
    return-void

    .line 3498
    :cond_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3500
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3501
    :catch_0
    move-exception v0

    .line 3502
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
