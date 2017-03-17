.class final Lcom/android/server/wifi/WifiTrafficPoller;
.super Ljava/lang/Object;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiTrafficPoller$2;,
        Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;,
        Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;
    }
.end annotation


# static fields
.field private static final ADD_CLIENT:I = 0x3

.field static final BOOSTER_BTCOEX_FLAG:I = 0x2

.field static final BOOSTER_HOTSPOT3G_FLAG:I = 0x1

.field private static final DBG_BOOSTER:Z = false

.field private static final ENABLE_TRAFFIC_STATS_POLL:I = 0x1

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x3e8

.field private static final REMOVE_CLIENT:I = 0x4

.field private static final THRESHOLD_FILE:Ljava/lang/String; = "/data/misc/wifi/.threshold"

.field private static final TRAFFIC_STATS_POLL:I = 0x2

.field static mBoosterFLAG:I

.field private static mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;


# instance fields
.field private DBG:Z

.field private final TAG:Ljava/lang/String;

.field private VDBG:Z

.field private final mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private mCpuBooster:Landroid/os/DVFSHelper;

.field private mCpuCoreBooster:Landroid/os/DVFSHelper;

.field private mCpuCstate:Landroid/os/DVFSHelper;

.field private mCpuFreqindex:[I

.field private mCstateDisable:Landroid/os/DVFSHelper;

.field private mCurrenRpsModeValue:I

.field private mCurrentDelAckSize:I

.field private mCurrentL1ssCtrl:I

.field private mDataActivity:I

.field private mEnableTrafficStatsPoll:Z

.field private mHotspotClientNum:I

.field private final mInterface:Ljava/lang/String;

.field private mLegacySched:Landroid/os/DVFSHelper;

.field private mLpm:Landroid/os/DVFSHelper;

.field private mMifBooster:Landroid/os/DVFSHelper;

.field mNeedBooster:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mRxBytes:J

.field private mRxBytes2:J

.field private mRxPkts:J

.field private mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSetMif:Z

.field private mThresholdKbytes:[J

.field private final mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

.field private mTrafficStatsPollToken:I

.field private mTxBytes:J

.field private mTxBytes2:J

.field private mTxPkts:J

.field private mWifiService:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    .line 103
    sget-object v0, Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;->FullMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    sput-object v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p3, "iface"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->VDBG:Z

    .line 59
    const-string v0, "WifiTrafficPoller"

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->TAG:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNeedBooster:Z

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mHotspotClientNum:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuCstate:Landroid/os/DVFSHelper;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mLegacySched:Landroid/os/DVFSHelper;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCstateDisable:Landroid/os/DVFSHelper;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mLpm:Landroid/os/DVFSHelper;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mMifBooster:Landroid/os/DVFSHelper;

    .line 92
    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuFreqindex:[I

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrenRpsModeValue:I

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentDelAckSize:I

    .line 123
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentL1ssCtrl:I

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mSetMif:Z

    .line 127
    iput-object p3, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    .line 128
    new-instance v0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    .line 129
    iput-object p2, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    .line 131
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v0, "com.samsung.android.net.wifi.NETWORK_OXYGEN_STATE_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v0, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/android/server/wifi/WifiTrafficPoller$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiTrafficPoller$1;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;)V

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mLegacySched:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "WIFI_LEGACY"

    const/16 v3, 0x17

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mLegacySched:Landroid/os/DVFSHelper;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCstateDisable:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    .line 207
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "WIFI_CSTATE"

    const/16 v3, 0x16

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCstateDisable:Landroid/os/DVFSHelper;

    .line 209
    :cond_1
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "WIFI_TP"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 210
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v10

    .line 211
    .local v10, "supportedCPUFreqTable":[I
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiTrafficPoller;->setCpuFreqIndex()V

    .line 212
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuFreqindex:[I

    sget-object v1, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;->ordinal()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x0

    aget v7, v0, v1

    .line 216
    .local v7, "mCpuFreqIndex_0":I
    if-eqz v10, :cond_3

    .line 217
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiTrafficPoller"

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

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

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

    .line 222
    :cond_3
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "WIFI_TP"

    const/16 v3, 0x16

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuCstate:Landroid/os/DVFSHelper;

    .line 223
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "WIFI_TP"

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    .line 224
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v9

    .line 225
    .local v9, "supportedCPUCoreTable":[I
    if-eqz v9, :cond_5

    .line 226
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "WifiTrafficPoller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportedCPUCoreTable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v9, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const/4 v2, 0x0

    aget v2, v9, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 231
    :cond_5
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "WIFI_L1SS"

    const/16 v3, 0x19

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mLpm:Landroid/os/DVFSHelper;

    .line 232
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "WIFI_MIF"

    const/16 v3, 0x13

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mMifBooster:Landroid/os/DVFSHelper;

    .line 233
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mMifBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v8

    .line 234
    .local v8, "supportedBUSFreqTable":[I
    if-eqz v8, :cond_7

    .line 235
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "WifiTrafficPoller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportedBUSFreqTable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget v2, v8, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mMifBooster:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    const/4 v2, 0x2

    aget v2, v8, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 239
    :cond_7
    return-void

    .line 92
    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 117
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiTrafficPoller;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiTrafficPoller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/WifiTrafficPoller;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiTrafficPoller;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$1108(Lcom/android/server/wifi/WifiTrafficPoller;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiTrafficPoller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->VDBG:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiTrafficPoller;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiTrafficPoller;->setDelAckSize(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiTrafficPoller;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentL1ssCtrl:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wifi/WifiTrafficPoller;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentL1ssCtrl:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiTrafficPoller;)Landroid/os/DVFSHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mLpm:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiTrafficPoller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mSetMif:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wifi/WifiTrafficPoller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mSetMif:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiTrafficPoller;)Landroid/os/DVFSHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mMifBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiTrafficPoller;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mHotspotClientNum:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wifi/WifiTrafficPoller;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mHotspotClientNum:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiTrafficPoller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/wifi/WifiTrafficPoller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method private setDelAckSize(Ljava/lang/String;)V
    .locals 6
    .param p1, "delAckSize"    # Ljava/lang/String;

    .prologue
    .line 665
    :try_start_0
    const-string v2, "/sys/kernel/ipv4/tcp_delack_seg"

    .line 666
    .local v2, "mProcFile":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 668
    .local v0, "delAck":I
    if-lez v0, :cond_0

    const/16 v3, 0x3c

    if-le v0, v3, :cond_1

    .line 669
    :cond_0
    const-string v3, "WifiTrafficPoller"

    const-string v4, " delAck size is out of range, configuring to default"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/4 v0, 0x1

    .line 673
    :cond_1
    const-string v3, "/sys/kernel/ipv4/tcp_delack_seg"

    invoke-static {v3, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    .end local v0    # "delAck":I
    .end local v2    # "mProcFile":Ljava/lang/String;
    :goto_0
    return-void

    .line 674
    :catch_0
    move-exception v1

    .line 675
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "WifiTrafficPoller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t set delayed ACK size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method addClient(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "client"    # Landroid/os/Messenger;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 243
    return-void
.end method

.method public determineBoosterMode()V
    .locals 3

    .prologue
    .line 549
    const-string v0, "WifiTrafficPoller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBoosterFLAG : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    sget v0, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 551
    sget-object v0, Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;->BTCoexMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    sput-object v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    .line 560
    :goto_0
    const-string v0, "WifiTrafficPoller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current booster mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApEnabledState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    sget v0, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 555
    sget-object v0, Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;->Hotspot3GMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    sput-object v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    goto :goto_0

    .line 557
    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;->FullMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    sput-object v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    goto :goto_0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnableTrafficStatsPoll "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTrafficStatsPollToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataActivity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNeedBooster:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNeedBooster:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHotspotClientNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mHotspotClientNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    .line 250
    if-lez p1, :cond_0

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    goto :goto_0
.end method

.method public evaluateTrafficStatsPolling()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 303
    const-string v1, "WifiTrafficPoller"

    const-string v2, "evaluateTrafficStatsPolling"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v1, :cond_0

    .line 331
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNeedBooster:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApEnabledState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mHotspotClientNum:I

    if-gtz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiEnabledState()I

    move-result v1

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiIBSSEnabledState()I

    move-result v1

    if-ne v1, v5, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_4

    .line 313
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiTrafficPoller;->determineBoosterMode()V

    .line 314
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    invoke-static {v1, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 320
    .local v0, "msg":Landroid/os/Message;
    :goto_1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 317
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    invoke-static {v1, v4, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_1
.end method

.method public notifyOnDataActivity()V
    .locals 48

    .prologue
    .line 335
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    move-wide/from16 v24, v0

    .local v24, "preTxPkts":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    move-wide/from16 v18, v0

    .line 336
    .local v18, "preRxPkts":J
    const/4 v5, 0x0

    .line 338
    .local v5, "dataActivity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    .line 341
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->VDBG:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 342
    const-string v35, "WifiTrafficPoller"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, " packet count Tx="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    move-wide/from16 v44, v0

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " Rx="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    move-wide/from16 v44, v0

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    const-wide/16 v42, 0x0

    cmp-long v35, v24, v42

    if-gtz v35, :cond_1

    const-wide/16 v42, 0x0

    cmp-long v35, v18, v42

    if-lez v35, :cond_16

    .line 349
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    move-wide/from16 v42, v0

    sub-long v28, v42, v24

    .line 350
    .local v28, "sent":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    move-wide/from16 v42, v0

    sub-long v26, v42, v18

    .line 351
    .local v26, "received":J
    const-wide/16 v42, 0x0

    cmp-long v35, v28, v42

    if-lez v35, :cond_2

    .line 352
    or-int/lit8 v5, v5, 0x2

    .line 354
    :cond_2
    const-wide/16 v42, 0x0

    cmp-long v35, v26, v42

    if-lez v35, :cond_3

    .line 355
    or-int/lit8 v5, v5, 0x1

    .line 360
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxBytes:J

    move-wide/from16 v20, v0

    .local v20, "preTxBytes":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxBytes:J

    .line 362
    .local v14, "preRxBytes":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiTrafficPoller;->mTxBytes:J

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiTrafficPoller;->mRxBytes:J

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApEnabledState()I

    move-result v35

    const/16 v42, 0xd

    move/from16 v0, v35

    move/from16 v1, v42

    if-ne v0, v1, :cond_4

    .line 369
    const-string v10, "swlan0"

    .line 370
    .local v10, "mInterface2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxBytes2:J

    move-wide/from16 v22, v0

    .local v22, "preTxBytes2":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxBytes2:J

    move-wide/from16 v16, v0

    .line 372
    .local v16, "preRxBytes2":J
    invoke-static {v10}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiTrafficPoller;->mTxBytes2:J

    .line 373
    invoke-static {v10}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiTrafficPoller;->mRxBytes2:J

    .line 378
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxBytes2:J

    move-wide/from16 v42, v0

    sub-long v42, v42, v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxBytes2:J

    move-wide/from16 v44, v0

    sub-long v44, v44, v16

    add-long v42, v42, v44

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxBytes:J

    move-wide/from16 v44, v0

    sub-long v44, v44, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxBytes:J

    move-wide/from16 v46, v0

    sub-long v46, v46, v14

    add-long v44, v44, v46

    cmp-long v35, v42, v44

    if-lez v35, :cond_4

    .line 379
    move-wide/from16 v20, v22

    .line 380
    move-wide/from16 v14, v16

    .line 381
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxBytes2:J

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiTrafficPoller;->mTxBytes:J

    .line 382
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxBytes2:J

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiTrafficPoller;->mRxBytes:J

    .line 386
    .end local v10    # "mInterface2":Ljava/lang/String;
    .end local v16    # "preRxBytes2":J
    .end local v22    # "preTxBytes2":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    move-object/from16 v35, v0

    sget-object v42, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;->ordinal()I

    move-result v42

    mul-int/lit8 v42, v42, 0x3

    add-int/lit8 v42, v42, 0x0

    aget-wide v42, v35, v42

    const-wide/16 v44, 0x400

    mul-long v36, v42, v44

    .line 387
    .local v36, "threshold_0":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    move-object/from16 v35, v0

    sget-object v42, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;->ordinal()I

    move-result v42

    mul-int/lit8 v42, v42, 0x3

    add-int/lit8 v42, v42, 0x1

    aget-wide v42, v35, v42

    const-wide/16 v44, 0x400

    mul-long v38, v42, v44

    .line 388
    .local v38, "threshold_1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    move-object/from16 v35, v0

    sget-object v42, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;->ordinal()I

    move-result v42

    mul-int/lit8 v42, v42, 0x3

    add-int/lit8 v42, v42, 0x2

    aget-wide v42, v35, v42

    const-wide/16 v44, 0x400

    mul-long v40, v42, v44

    .line 389
    .local v40, "threshold_2":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v34

    .line 390
    .local v34, "supportedCPUFreqTable":[I
    const-wide/32 v12, 0xc80000

    .line 391
    .local v12, "max_pkt":J
    const-wide/32 v32, 0x2bc0000

    .line 392
    .local v32, "setdelack_tp":J
    const-wide/32 v30, 0x12c0000

    .line 394
    .local v30, "setL1ss_tp":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiTrafficPoller;->setCpuFreqIndex()V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuFreqindex:[I

    move-object/from16 v35, v0

    sget-object v42, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;->ordinal()I

    move-result v42

    mul-int/lit8 v42, v42, 0x3

    add-int/lit8 v42, v42, 0x0

    aget v7, v35, v42

    .line 396
    .local v7, "mCpuFreqIndex_0":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuFreqindex:[I

    move-object/from16 v35, v0

    sget-object v42, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;->ordinal()I

    move-result v42

    mul-int/lit8 v42, v42, 0x3

    add-int/lit8 v42, v42, 0x1

    aget v8, v35, v42

    .line 397
    .local v8, "mCpuFreqIndex_1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuFreqindex:[I

    move-object/from16 v35, v0

    sget-object v42, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiTrafficPoller$BoosterMode;->ordinal()I

    move-result v42

    mul-int/lit8 v42, v42, 0x3

    add-int/lit8 v42, v42, 0x2

    aget v9, v35, v42

    .line 400
    .local v9, "mCpuFreqIndex_2":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxBytes:J

    move-wide/from16 v42, v0

    sub-long v42, v42, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxBytes:J

    move-wide/from16 v44, v0

    sub-long v44, v44, v14

    add-long v42, v42, v44

    cmp-long v35, v42, v32

    if-lez v35, :cond_e

    .line 401
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentDelAckSize:I

    move/from16 v35, v0

    const/16 v42, 0x1

    move/from16 v0, v35

    move/from16 v1, v42

    if-ne v0, v1, :cond_5

    .line 402
    const-string v35, "20"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller;->setDelAckSize(Ljava/lang/String;)V

    .line 403
    const/16 v35, 0x14

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentDelAckSize:I

    .line 414
    :cond_5
    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxBytes:J

    move-wide/from16 v42, v0

    sub-long v42, v42, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxBytes:J

    move-wide/from16 v44, v0

    sub-long v44, v44, v14

    add-long v42, v42, v44

    cmp-long v35, v42, v30

    if-lez v35, :cond_f

    .line 415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentL1ssCtrl:I

    move/from16 v35, v0

    const/16 v42, 0x1

    move/from16 v0, v35

    move/from16 v1, v42

    if-ne v0, v1, :cond_6

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mLpm:Landroid/os/DVFSHelper;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/DVFSHelper;->acquire()V

    .line 417
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentL1ssCtrl:I

    .line 418
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    move/from16 v35, v0

    if-eqz v35, :cond_6

    const-string v35, "WifiTrafficPoller"

    const-string v42, "Over 150Mbps"

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mSetMif:Z

    move/from16 v35, v0

    if-nez v35, :cond_7

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mMifBooster:Landroid/os/DVFSHelper;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/DVFSHelper;->acquire()V

    .line 422
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mSetMif:Z

    .line 438
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxBytes:J

    move-wide/from16 v42, v0

    sub-long v42, v42, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxBytes:J

    move-wide/from16 v44, v0

    sub-long v44, v44, v14

    add-long v42, v42, v44

    cmp-long v35, v42, v12

    if-lez v35, :cond_11

    .line 439
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrenRpsModeValue:I

    move/from16 v35, v0

    if-nez v35, :cond_8

    .line 440
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 441
    .local v11, "msg":Landroid/os/Message;
    const/16 v35, 0x4b

    move/from16 v0, v35

    iput v0, v11, Landroid/os/Message;->what:I

    .line 442
    const/16 v35, 0x1

    move/from16 v0, v35

    iput v0, v11, Landroid/os/Message;->arg1:I

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Lcom/android/server/wifi/WifiServiceImpl;->callSECApi(Landroid/os/Message;)I

    .line 444
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrenRpsModeValue:I

    .line 457
    .end local v11    # "msg":Landroid/os/Message;
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxBytes:J

    move-wide/from16 v42, v0

    sub-long v42, v42, v20

    cmp-long v35, v42, v36

    if-gtz v35, :cond_9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxBytes:J

    move-wide/from16 v42, v0

    sub-long v42, v42, v14

    cmp-long v35, v42, v36

    if-lez v35, :cond_12

    .line 459
    :cond_9
    if-eqz v34, :cond_a

    .line 460
    const-string v35, "WifiTrafficPoller"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Dynamic booster is mCpuFreqIndex_0. mCpuFreqIndex_0 is "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v35, v0

    const-string v42, "CPU"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    aget v44, v34, v7

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ""

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v35, v0

    const/16 v42, 0x7d0

    move-object/from16 v0, v35

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 467
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuCstate:Landroid/os/DVFSHelper;

    move-object/from16 v35, v0

    if-eqz v35, :cond_b

    .line 468
    const-string v35, "WifiTrafficPoller"

    const-string v42, "mCpuCstate Lock"

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuCstate:Landroid/os/DVFSHelper;

    move-object/from16 v35, v0

    const/16 v42, 0x7d0

    move-object/from16 v0, v35

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 471
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    move-object/from16 v35, v0

    if-eqz v35, :cond_c

    .line 472
    const-string v35, "WifiTrafficPoller"

    const-string v42, "mCpuCoreBooster Lock"

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    move-object/from16 v35, v0

    const/16 v42, 0x7d0

    move-object/from16 v0, v35

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 516
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-eq v5, v0, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v35

    if-eqz v35, :cond_16

    .line 517
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    .line 518
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    move/from16 v35, v0

    if-eqz v35, :cond_d

    .line 519
    const-string v35, "WifiTrafficPoller"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "notifying of data activity "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Messenger;

    .line 523
    .local v4, "client":Landroid/os/Messenger;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 524
    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v35, 0x1

    move/from16 v0, v35

    iput v0, v11, Landroid/os/Message;->what:I

    .line 525
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    move/from16 v35, v0

    move/from16 v0, v35

    iput v0, v11, Landroid/os/Message;->arg1:I

    .line 527
    :try_start_0
    invoke-virtual {v4, v11}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 528
    :catch_0
    move-exception v35

    goto :goto_4

    .line 406
    .end local v4    # "client":Landroid/os/Messenger;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v11    # "msg":Landroid/os/Message;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentDelAckSize:I

    move/from16 v35, v0

    const/16 v42, 0x14

    move/from16 v0, v35

    move/from16 v1, v42

    if-ne v0, v1, :cond_5

    .line 407
    const-string v35, "1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller;->setDelAckSize(Ljava/lang/String;)V

    .line 408
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentDelAckSize:I

    goto/16 :goto_0

    .line 425
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentL1ssCtrl:I

    move/from16 v35, v0

    if-nez v35, :cond_10

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mLpm:Landroid/os/DVFSHelper;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/DVFSHelper;->release()V

    .line 427
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrentL1ssCtrl:I

    .line 428
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    move/from16 v35, v0

    if-eqz v35, :cond_10

    const-string v35, "WifiTrafficPoller"

    const-string v42, "Under 150Mbps"

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mSetMif:Z

    move/from16 v35, v0

    if-eqz v35, :cond_7

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mMifBooster:Landroid/os/DVFSHelper;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/DVFSHelper;->release()V

    .line 432
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mSetMif:Z

    goto/16 :goto_1

    .line 447
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrenRpsModeValue:I

    move/from16 v35, v0

    const/16 v42, 0x1

    move/from16 v0, v35

    move/from16 v1, v42

    if-ne v0, v1, :cond_8

    .line 448
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 449
    .restart local v11    # "msg":Landroid/os/Message;
    const/16 v35, 0x4b

    move/from16 v0, v35

    iput v0, v11, Landroid/os/Message;->what:I

    .line 450
    const/16 v35, 0x0

    move/from16 v0, v35

    iput v0, v11, Landroid/os/Message;->arg1:I

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Lcom/android/server/wifi/WifiServiceImpl;->callSECApi(Landroid/os/Message;)I

    .line 452
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mCurrenRpsModeValue:I

    goto/16 :goto_2

    .line 477
    .end local v11    # "msg":Landroid/os/Message;
    :cond_12
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxBytes:J

    move-wide/from16 v42, v0

    sub-long v42, v42, v20

    cmp-long v35, v42, v38

    if-gtz v35, :cond_13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxBytes:J

    move-wide/from16 v42, v0

    sub-long v42, v42, v14

    cmp-long v35, v42, v38

    if-lez v35, :cond_14

    .line 479
    :cond_13
    if-eqz v34, :cond_c

    .line 480
    const-string v35, "WifiTrafficPoller"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Dynamic booster is mCpuFreqIndex_1. mCpuFreqIndex_1 is "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v35, v0

    const-string v42, "CPU"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    aget v44, v34, v8

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ""

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v35, v0

    const/16 v42, 0x7d0

    move-object/from16 v0, v35

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_3

    .line 485
    :cond_14
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxBytes:J

    move-wide/from16 v42, v0

    sub-long v42, v42, v20

    cmp-long v35, v42, v40

    if-gtz v35, :cond_15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxBytes:J

    move-wide/from16 v42, v0

    sub-long v42, v42, v14

    cmp-long v35, v42, v40

    if-lez v35, :cond_c

    .line 487
    :cond_15
    if-eqz v34, :cond_c

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v9, v0, :cond_c

    .line 488
    const-string v35, "WifiTrafficPoller"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Dynamic booster is mCpuFreqIndex_2. mCpuFreqIndex_2 is "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v35, v0

    const-string v42, "CPU"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    aget v44, v34, v9

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ""

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v35, v0

    const/16 v42, 0x7d0

    move-object/from16 v0, v35

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_3

    .line 535
    .end local v7    # "mCpuFreqIndex_0":I
    .end local v8    # "mCpuFreqIndex_1":I
    .end local v9    # "mCpuFreqIndex_2":I
    .end local v12    # "max_pkt":J
    .end local v14    # "preRxBytes":J
    .end local v20    # "preTxBytes":J
    .end local v26    # "received":J
    .end local v28    # "sent":J
    .end local v30    # "setL1ss_tp":J
    .end local v32    # "setdelack_tp":J
    .end local v34    # "supportedCPUFreqTable":[I
    .end local v36    # "threshold_0":J
    .end local v38    # "threshold_1":J
    .end local v40    # "threshold_2":J
    :cond_16
    return-void
.end method

.method removeClient(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "client"    # Landroid/os/Messenger;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 247
    return-void
.end method

.method public setCpuFreqIndex()V
    .locals 5

    .prologue
    .line 652
    const-string v0, "0,5,11,2,5,11,2,5,11"

    .line 653
    .local v0, "dbCpuFreq":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 655
    .local v2, "values":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x9

    if-ge v1, v3, :cond_1

    .line 656
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuFreqindex:[I

    aget v3, v3, v1

    if-gez v3, :cond_0

    .line 657
    iget-object v3, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mCpuFreqindex:[I

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1

    .line 655
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    :cond_1
    return-void
.end method

.method public setDynamicThresholdValues()V
    .locals 14

    .prologue
    .line 605
    const/4 v0, 0x0

    .line 607
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

    .line 608
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 609
    .local v2, "brRead":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 610
    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 612
    .local v7, "values":[Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 613
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v8, 0x9

    if-ge v5, v8, :cond_1

    .line 614
    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 615
    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    aget-object v9, v7, v5

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v8, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 613
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 630
    .end local v5    # "i":I
    .end local v7    # "values":[Ljava/lang/String;
    :cond_1
    iget-boolean v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v8, :cond_2

    .line 631
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 632
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 633
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 634
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[Hotspot3G_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 635
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[Hotspot3G_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 636
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[Hotspot3G_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 637
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x6

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x7

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/16 v11, 0x8

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_2
    if-eqz v1, :cond_a

    .line 643
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 649
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "brRead":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_3
    :goto_1
    return-void

    .line 644
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "brRead":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 645
    .local v4, "e":Ljava/io/IOException;
    const-string v8, "WifiTrafficPoller"

    const-string v9, "Failed to close .threshold file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 646
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 620
    .end local v2    # "brRead":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 621
    .local v6, "ignore":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    iget-boolean v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v8, :cond_4

    const-string v8, "WifiTrafficPoller"

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

    .line 622
    :cond_4
    const-string v3, "10240,5120,1280,10240,5120,1280,10240,5120,1280"

    .line 623
    .local v3, "dbThreshold":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 624
    .restart local v7    # "values":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    const/16 v8, 0x9

    if-ge v5, v8, :cond_6

    .line 625
    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    .line 626
    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    aget-object v9, v7, v5

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v8, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 624
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 630
    :cond_6
    iget-boolean v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v8, :cond_7

    .line 631
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 632
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 633
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 634
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[Hotspot3G_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 635
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[Hotspot3G_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 636
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[Hotspot3G_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 637
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x6

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x7

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v8, "WifiTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/16 v11, 0x8

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_7
    if-eqz v0, :cond_3

    .line 643
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 644
    :catch_2
    move-exception v4

    .line 645
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v8, "WifiTrafficPoller"

    const-string v9, "Failed to close .threshold file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 630
    .end local v3    # "dbThreshold":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "i":I
    .end local v6    # "ignore":Ljava/lang/Exception;
    .end local v7    # "values":[Ljava/lang/String;
    :catchall_0
    move-exception v8

    :goto_4
    iget-boolean v9, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v9, :cond_8

    .line 631
    const-string v9, "WifiTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[FullMode_0] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 632
    const-string v9, "WifiTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[FullMode_1] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 633
    const-string v9, "WifiTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[FullMode_2] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 634
    const-string v9, "WifiTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[Hotspot3G_0] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 635
    const-string v9, "WifiTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[Hotspot3G_1] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 636
    const-string v9, "WifiTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[Hotspot3G_2] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 637
    const-string v9, "WifiTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[BTcoex_0] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x6

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const-string v9, "WifiTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[BTcoex_1] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x7

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v9, "WifiTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[BTcoex_2] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/16 v12, 0x8

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_8
    if-eqz v0, :cond_9

    .line 643
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 646
    :cond_9
    :goto_5
    throw v8

    .line 644
    :catch_3
    move-exception v4

    .line 645
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v9, "WifiTrafficPoller"

    const-string v10, "Failed to close .threshold file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 630
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 620
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "brRead":Ljava/lang/String;
    :cond_a
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method public setThresholdValues()V
    .locals 12

    .prologue
    .line 564
    const/4 v0, 0x0

    .line 566
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

    .line 567
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 568
    .local v2, "brRead":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 569
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 571
    .local v5, "values":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 572
    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 573
    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 574
    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x2

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

    .line 589
    .end local v5    # "values":[Ljava/lang/String;
    :cond_0
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v6, :cond_1

    .line 590
    const-string v6, "WifiTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[FullMode] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 591
    const-string v6, "WifiTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[Hotspot3G] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 592
    const-string v6, "WifiTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[BTcoex] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_1
    if-eqz v1, :cond_a

    .line 596
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 602
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "brRead":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return-void

    .line 597
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "brRead":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 598
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "WifiTrafficPoller"

    const-string v7, "Failed to close .threshold file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 599
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 577
    .end local v2    # "brRead":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 578
    .local v4, "ignore":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v6, :cond_3

    const-string v6, "WifiTrafficPoller"

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

    .line 579
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    .line 580
    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x0

    const-string v8, "1280"

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 582
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    .line 583
    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x1

    const-string v8, "1280"

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 585
    :cond_5
    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    .line 586
    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x2

    const-string v8, "1280"

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 589
    :cond_6
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v6, :cond_7

    .line 590
    const-string v6, "WifiTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[FullMode] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 591
    const-string v6, "WifiTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[Hotspot3G] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 592
    const-string v6, "WifiTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[BTcoex] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_7
    if-eqz v0, :cond_2

    .line 596
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 597
    :catch_2
    move-exception v3

    .line 598
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v6, "WifiTrafficPoller"

    const-string v7, "Failed to close .threshold file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 589
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ignore":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_2
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    if-eqz v7, :cond_8

    .line 590
    const-string v7, "WifiTrafficPoller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[FullMode] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 591
    const-string v7, "WifiTrafficPoller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[Hotspot3G] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

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

    .line 592
    const-string v7, "WifiTrafficPoller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[BTcoex] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mThresholdKbytes:[J

    const/4 v10, 0x2

    aget-wide v10, v9, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_8
    if-eqz v0, :cond_9

    .line 596
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 599
    :cond_9
    :goto_3
    throw v6

    .line 597
    :catch_3
    move-exception v3

    .line 598
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "WifiTrafficPoller"

    const-string v8, "Failed to close .threshold file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 589
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 577
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
    :cond_a
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_0
.end method
