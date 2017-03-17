.class final Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;
.super Ljava/lang/Object;
.source "WifiP2pTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;,
        Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;
    }
.end annotation


# static fields
.field static final BOOSTER_BTCOEX_FLAG:I = 0x2

.field private static final DBG:Z

.field private static final DBG_BOOSTER:Z = false

.field private static final ENABLE_TRAFFIC_STATS_POLL:I = 0x1

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "WifiP2pTrafficPoller"

.field private static final THRESHOLD_FILE:Ljava/lang/String; = "/data/misc/wifi/.threshold"

.field private static final TRAFFIC_STATS_POLL:I = 0x2

.field static mBoosterFLAG:I

.field private static mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCpuBooster:Landroid/os/DVFSHelper;

.field private mCpuCoreBooster:Landroid/os/DVFSHelper;

.field private mCpuFreqindex:[I

.field private mCurrentL1ssCtrl:I

.field private mEnableTrafficStatsPoll:Z

.field private final mInterface:Ljava/lang/String;

.field private mLpm:Landroid/os/DVFSHelper;

.field private mMifBooster:Landroid/os/DVFSHelper;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mRxBytes:J

.field private mRxPkts:J

.field private mSetMif:Z

.field private mSupportedCPUFreqTableMaxIndex:I

.field private mThresholdKbytes:[J

.field private final mTrafficHandler:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;

.field private mTrafficStatsPollToken:I

.field private mTxBytes:J

.field private mTxPkts:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    .line 81
    sput v1, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mBoosterFLAG:I

    .line 98
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->FullMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    const/4 v12, 0x2

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mEnableTrafficStatsPoll:Z

    .line 67
    iput v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I

    .line 71
    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 72
    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    .line 73
    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mLpm:Landroid/os/DVFSHelper;

    .line 74
    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mMifBooster:Landroid/os/DVFSHelper;

    .line 75
    iput v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSupportedCPUFreqTableMaxIndex:I

    .line 79
    new-array v0, v2, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    .line 86
    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mContext:Landroid/content/Context;

    .line 88
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentL1ssCtrl:I

    .line 92
    iput-boolean v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSetMif:Z

    .line 101
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mInterface:Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;-><init>(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;

    .line 105
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$1;-><init>(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)V

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mContext:Landroid/content/Context;

    const-string v2, "WIFI_P2P"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 157
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v10

    .line 159
    .local v10, "supportedCPUFreqTable":[I
    if-eqz v10, :cond_0

    .line 160
    array-length v0, v10

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSupportedCPUFreqTableMaxIndex:I

    .line 161
    sget-boolean v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiP2pTrafficPoller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSupportedCPUFreqTableMaxIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSupportedCPUFreqTableMaxIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->setCpuFreqIndex()V

    .line 164
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v7, v0, v1

    .line 169
    .local v7, "mCpuFreqIndex_0":I
    if-eqz v10, :cond_2

    .line 170
    sget-boolean v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiP2pTrafficPoller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportedCPUFreqTable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v10, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, v10, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_2
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "WIFI_P2P"

    const/16 v3, 0xe

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v9

    .line 179
    .local v9, "supportedCPUCoreTable":[I
    if-eqz v9, :cond_4

    .line 180
    sget-boolean v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "WifiP2pTrafficPoller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportedCPUCoreTable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v9, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    aget v2, v9, v11

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 185
    :cond_4
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "WIFI_L1SS"

    const/16 v3, 0x19

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mLpm:Landroid/os/DVFSHelper;

    .line 186
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "WIFI_P2P_MIF"

    const/16 v3, 0x13

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mMifBooster:Landroid/os/DVFSHelper;

    .line 187
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mMifBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v8

    .line 188
    .local v8, "supportedBUSFreqTable":[I
    if-eqz v8, :cond_6

    .line 189
    sget-boolean v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "WifiP2pTrafficPoller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportedBUSFreqTable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v8, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mMifBooster:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    aget v2, v8, v12

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 193
    :cond_6
    return-void

    .line 79
    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 88
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;)Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    .prologue
    .line 53
    sput-object p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentL1ssCtrl:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentL1ssCtrl:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)Landroid/os/DVFSHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mLpm:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSetMif:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSetMif:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)Landroid/os/DVFSHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mMifBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$908(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnableTrafficStatsPoll "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mEnableTrafficStatsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTrafficStatsPollToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTxPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mRxPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public notifyOnDataActivity()V
    .locals 28

    .prologue
    .line 223
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTxPkts:J

    .local v14, "preTxPkts":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mRxPkts:J

    .line 226
    .local v10, "preRxPkts":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTxPkts:J

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mRxPkts:J

    .line 229
    const-wide/16 v24, 0x0

    cmp-long v24, v14, v24

    if-gtz v24, :cond_0

    const-wide/16 v24, 0x0

    cmp-long v24, v10, v24

    if-lez v24, :cond_8

    .line 232
    :cond_0
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTxBytes:J

    .local v12, "preTxBytes":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mRxBytes:J

    .line 234
    .local v8, "preRxBytes":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTxBytes:J

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mRxBytes:J

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v25

    mul-int/lit8 v25, v25, 0x2

    add-int/lit8 v25, v25, 0x0

    aget-wide v24, v24, v25

    const-wide/16 v26, 0x400

    mul-long v18, v24, v26

    .line 243
    .local v18, "threshold_0":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v25

    mul-int/lit8 v25, v25, 0x2

    add-int/lit8 v25, v25, 0x1

    aget-wide v24, v24, v25

    const-wide/16 v26, 0x400

    mul-long v20, v24, v26

    .line 244
    .local v20, "threshold_1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v25

    mul-int/lit8 v25, v25, 0x2

    add-int/lit8 v25, v25, 0x2

    aget-wide v24, v24, v25

    const-wide/16 v26, 0x400

    mul-long v22, v24, v26

    .line 245
    .local v22, "threshold_2":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v7

    .line 247
    .local v7, "supportedCPUFreqTable":[I
    if-eqz v7, :cond_1

    .line 248
    array-length v0, v7

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSupportedCPUFreqTableMaxIndex:I

    .line 251
    :cond_1
    const-wide/32 v16, 0x12c0000

    .line 253
    .local v16, "setL1ss_tp":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->setCpuFreqIndex()V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v25

    mul-int/lit8 v25, v25, 0x2

    add-int/lit8 v25, v25, 0x0

    aget v4, v24, v25

    .line 255
    .local v4, "mCpuFreqIndex_0":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v25

    mul-int/lit8 v25, v25, 0x2

    add-int/lit8 v25, v25, 0x1

    aget v5, v24, v25

    .line 256
    .local v5, "mCpuFreqIndex_1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v25

    mul-int/lit8 v25, v25, 0x2

    add-int/lit8 v25, v25, 0x2

    aget v6, v24, v25

    .line 259
    .local v6, "mCpuFreqIndex_2":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTxBytes:J

    move-wide/from16 v24, v0

    sub-long v24, v24, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mRxBytes:J

    move-wide/from16 v26, v0

    sub-long v26, v26, v8

    add-long v24, v24, v26

    cmp-long v24, v24, v16

    if-lez v24, :cond_9

    .line 260
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentL1ssCtrl:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mLpm:Landroid/os/DVFSHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/DVFSHelper;->acquire()V

    .line 262
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentL1ssCtrl:I

    .line 263
    sget-boolean v24, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v24, :cond_2

    const-string v24, "WifiP2pTrafficPoller"

    const-string v25, "Over 150Mbps"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSetMif:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mMifBooster:Landroid/os/DVFSHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/DVFSHelper;->acquire()V

    .line 267
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSetMif:Z

    .line 282
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTxBytes:J

    move-wide/from16 v24, v0

    sub-long v24, v24, v12

    cmp-long v24, v24, v18

    if-gtz v24, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mRxBytes:J

    move-wide/from16 v24, v0

    sub-long v24, v24, v8

    cmp-long v24, v24, v18

    if-lez v24, :cond_b

    .line 287
    :cond_4
    if-eqz v7, :cond_6

    .line 288
    sget-boolean v24, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v24, :cond_5

    const-string v24, "WifiP2pTrafficPoller"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Dynamic booster is mCpuFreqIndex_0. mCpuFreqIndex_0 is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v24, v0

    const-string v25, "CPU"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    aget v27, v7, v4

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v24, v0

    const/16 v25, 0x7d0

    invoke-virtual/range {v24 .. v25}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 299
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    .line 300
    sget-boolean v24, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v24, :cond_7

    const-string v24, "WifiP2pTrafficPoller"

    const-string v25, "mCpuCoreBooster Lock"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    move-object/from16 v24, v0

    const/16 v25, 0x7d0

    invoke-virtual/range {v24 .. v25}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 350
    .end local v4    # "mCpuFreqIndex_0":I
    .end local v5    # "mCpuFreqIndex_1":I
    .end local v6    # "mCpuFreqIndex_2":I
    .end local v7    # "supportedCPUFreqTable":[I
    .end local v8    # "preRxBytes":J
    .end local v12    # "preTxBytes":J
    .end local v16    # "setL1ss_tp":J
    .end local v18    # "threshold_0":J
    .end local v20    # "threshold_1":J
    .end local v22    # "threshold_2":J
    :cond_8
    :goto_1
    return-void

    .line 270
    .restart local v4    # "mCpuFreqIndex_0":I
    .restart local v5    # "mCpuFreqIndex_1":I
    .restart local v6    # "mCpuFreqIndex_2":I
    .restart local v7    # "supportedCPUFreqTable":[I
    .restart local v8    # "preRxBytes":J
    .restart local v12    # "preTxBytes":J
    .restart local v16    # "setL1ss_tp":J
    .restart local v18    # "threshold_0":J
    .restart local v20    # "threshold_1":J
    .restart local v22    # "threshold_2":J
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentL1ssCtrl:I

    move/from16 v24, v0

    if-nez v24, :cond_a

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mLpm:Landroid/os/DVFSHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/DVFSHelper;->release()V

    .line 272
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentL1ssCtrl:I

    .line 273
    sget-boolean v24, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v24, :cond_a

    const-string v24, "WifiP2pTrafficPoller"

    const-string v25, "Under 150Mbps"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSetMif:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mMifBooster:Landroid/os/DVFSHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/DVFSHelper;->release()V

    .line 277
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSetMif:Z

    goto/16 :goto_0

    .line 304
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTxBytes:J

    move-wide/from16 v24, v0

    sub-long v24, v24, v12

    cmp-long v24, v24, v20

    if-gtz v24, :cond_c

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mRxBytes:J

    move-wide/from16 v24, v0

    sub-long v24, v24, v8

    cmp-long v24, v24, v20

    if-lez v24, :cond_e

    .line 309
    :cond_c
    if-eqz v7, :cond_8

    .line 310
    sget-boolean v24, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v24, :cond_d

    const-string v24, "WifiP2pTrafficPoller"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Dynamic booster is mCpuFreqIndex_1. mCpuFreqIndex_1 is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v24, v0

    const-string v25, "CPU"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    aget v27, v7, v5

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v24, v0

    const/16 v25, 0x7d0

    invoke-virtual/range {v24 .. v25}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_1

    .line 318
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTxBytes:J

    move-wide/from16 v24, v0

    sub-long v24, v24, v12

    cmp-long v24, v24, v22

    if-gtz v24, :cond_f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mRxBytes:J

    move-wide/from16 v24, v0

    sub-long v24, v24, v8

    cmp-long v24, v24, v22

    if-lez v24, :cond_8

    .line 323
    :cond_f
    if-eqz v7, :cond_8

    .line 324
    sget-boolean v24, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v24, :cond_10

    const-string v24, "WifiP2pTrafficPoller"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Dynamic booster is mCpuFreqIndex_2. mCpuFreqIndex_2 is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v24, v0

    const-string v25, "CPU"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    aget v27, v7, v6

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v24, v0

    const/16 v25, 0x7d0

    invoke-virtual/range {v24 .. v25}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_1
.end method

.method public setCpuFreqIndex()V
    .locals 6

    .prologue
    .line 466
    const-string v0, "0,5,11,2,5,11,2,5,11"

    .line 467
    .local v0, "dbCpuFreq":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 470
    .local v2, "tempFreqIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_2

    .line 471
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    aget v4, v4, v1

    if-gez v4, :cond_0

    .line 472
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 473
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    iget v4, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSupportedCPUFreqTableMaxIndex:I

    if-ge v2, v4, :cond_1

    move v4, v2

    :goto_1
    aput v4, v5, v1

    .line 470
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    :cond_1
    iget v4, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSupportedCPUFreqTableMaxIndex:I

    goto :goto_1

    .line 476
    :cond_2
    const/4 v1, 0x3

    :goto_2
    const/4 v4, 0x6

    if-ge v1, v4, :cond_5

    .line 477
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    aget v4, v4, v1

    if-gez v4, :cond_3

    .line 478
    add-int/lit8 v4, v1, 0x3

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 479
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    iget v4, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSupportedCPUFreqTableMaxIndex:I

    if-ge v2, v4, :cond_4

    move v4, v2

    :goto_3
    aput v4, v5, v1

    .line 476
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 479
    :cond_4
    iget v4, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSupportedCPUFreqTableMaxIndex:I

    goto :goto_3

    .line 494
    :cond_5
    return-void
.end method

.method public setDynamicThresholdValues()V
    .locals 14

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 404
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/data/misc/wifi/.threshold"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, "brRead":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 407
    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 409
    .local v7, "values":[Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 410
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v8, 0x3

    if-ge v5, v8, :cond_1

    .line 411
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 412
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-object v9, v7, v5

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v8, v5

    .line 410
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 416
    :cond_1
    const/4 v5, 0x3

    :goto_1
    const/4 v8, 0x6

    if-ge v5, v8, :cond_3

    .line 417
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 418
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    add-int/lit8 v9, v5, 0x3

    aget-object v9, v7, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v8, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 416
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 440
    .end local v5    # "i":I
    .end local v7    # "values":[Ljava/lang/String;
    :cond_3
    sget-boolean v8, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v8, :cond_4

    .line 441
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x4

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x5

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_4
    if-eqz v1, :cond_e

    .line 456
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 462
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "brRead":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_5
    :goto_2
    return-void

    .line 457
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "brRead":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 458
    .local v4, "e":Ljava/io/IOException;
    const-string v8, "WifiP2pTrafficPoller"

    const-string v9, "Failed to close .threshold file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 459
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 424
    .end local v2    # "brRead":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 425
    .local v6, "ignore":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    sget-boolean v8, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v8, :cond_6

    .line 426
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_6
    const-string v3, "10240,5120,1280,10240,5120,1280,10240,5120,1280"

    .line 428
    .local v3, "dbThreshold":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 429
    .restart local v7    # "values":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    const/4 v8, 0x3

    if-ge v5, v8, :cond_8

    .line 430
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_7

    .line 431
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-object v9, v7, v5

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v8, v5

    .line 429
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 434
    :cond_8
    const/4 v5, 0x3

    :goto_5
    const/4 v8, 0x6

    if-ge v5, v8, :cond_a

    .line 435
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_9

    .line 436
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    add-int/lit8 v9, v5, 0x3

    aget-object v9, v7, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v8, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 434
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 440
    :cond_a
    sget-boolean v8, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v8, :cond_b

    .line 441
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x4

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x5

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_b
    if-eqz v0, :cond_5

    .line 456
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 457
    :catch_2
    move-exception v4

    .line 458
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v8, "WifiP2pTrafficPoller"

    const-string v9, "Failed to close .threshold file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 440
    .end local v3    # "dbThreshold":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "i":I
    .end local v6    # "ignore":Ljava/lang/Exception;
    .end local v7    # "values":[Ljava/lang/String;
    :catchall_0
    move-exception v8

    :goto_6
    sget-boolean v9, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v9, :cond_c

    .line 441
    const-string v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[FullMode_0] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x0

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[FullMode_1] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x1

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[FullMode_2] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x2

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[BTcoex_0] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x3

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[BTcoex_1] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x4

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[BTcoex_2] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x5

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_c
    if-eqz v0, :cond_d

    .line 456
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 459
    :cond_d
    :goto_7
    throw v8

    .line 457
    :catch_3
    move-exception v4

    .line 458
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v9, "WifiP2pTrafficPoller"

    const-string v10, "Failed to close .threshold file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 440
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_6

    .line 424
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "brRead":Ljava/lang/String;
    :cond_e
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method public setThresholdValues()V
    .locals 12

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 363
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/data/misc/wifi/.threshold"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "brRead":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 366
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, "values":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 369
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 370
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x1

    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 385
    .end local v5    # "values":[Ljava/lang/String;
    :cond_0
    sget-boolean v6, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v6, :cond_1

    .line 386
    const-string v6, "WifiP2pTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[FullMode] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v6, "WifiP2pTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[BTcoex] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1
    if-eqz v1, :cond_9

    .line 392
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 398
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "brRead":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return-void

    .line 393
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "brRead":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 394
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "WifiP2pTrafficPoller"

    const-string v7, "Failed to close .threshold file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 395
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 373
    .end local v2    # "brRead":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 374
    .local v4, "ignore":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    sget-boolean v6, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v6, :cond_3

    .line 375
    const-string v6, "WifiP2pTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    .line 377
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x0

    const-string v8, "1280"

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 380
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    .line 381
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x1

    const-string v8, "1280"

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 385
    :cond_5
    sget-boolean v6, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v6, :cond_6

    .line 386
    const-string v6, "WifiP2pTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[FullMode] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v6, "WifiP2pTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[BTcoex] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_6
    if-eqz v0, :cond_2

    .line 392
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 393
    :catch_2
    move-exception v3

    .line 394
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v6, "WifiP2pTrafficPoller"

    const-string v7, "Failed to close .threshold file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 385
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ignore":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_2
    sget-boolean v7, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v7, :cond_7

    .line 386
    const-string v7, "WifiP2pTrafficPoller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[FullMode] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v10, 0x0

    aget-wide v10, v9, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v7, "WifiP2pTrafficPoller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[BTcoex] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v10, 0x1

    aget-wide v10, v9, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_7
    if-eqz v0, :cond_8

    .line 392
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 395
    :cond_8
    :goto_3
    throw v6

    .line 393
    :catch_3
    move-exception v3

    .line 394
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "WifiP2pTrafficPoller"

    const-string v8, "Failed to close .threshold file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 385
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 373
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "brRead":Ljava/lang/String;
    :cond_9
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_0
.end method
