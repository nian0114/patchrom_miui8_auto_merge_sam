.class public Lcom/android/server/wifi/WifiScanningServiceImpl;
.super Landroid/net/wifi/IWifiScanner$Stub;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x27100

.field private static final CMD_DRIVER_LOADED:I = 0x27106

.field private static final CMD_DRIVER_UNLOADED:I = 0x27107

.field private static final CMD_FULL_SCAN_RESULTS:I = 0x27101

.field private static final CMD_HOTLIST_AP_FOUND:I = 0x27102

.field private static final CMD_HOTLIST_AP_LOST:I = 0x27103

.field private static final CMD_SCAN_PAUSED:I = 0x27108

.field private static final CMD_SCAN_RESTARTED:I = 0x27109

.field private static final CMD_SCAN_RESULTS_AVAILABLE:I = 0x27100

.field private static final CMD_STOP_SCAN_INTERNAL:I = 0x2710a

.field private static final CMD_WIFI_CHANGES_STABILIZED:I = 0x27105

.field private static final CMD_WIFI_CHANGE_DETECTED:I = 0x27104

.field private static final DBG:Z = false

.field private static final INVALID_KEY:I = 0x0

.field private static final MIN_PERIOD_PER_CHANNEL_MS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "WifiScanningService"

.field private static final UNKNOWN_PID:I = -0x1

.field private static final VDBG:Z

.field private static mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

.field private static final mLocalLog:Landroid/util/LocalLog;


# instance fields
.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

.field mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsStartedWifiHal:Z

.field private final mScanCapabilities:Lcom/android/server/wifi/WifiNative$ScanCapabilities;

.field private mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

.field mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/net/wifi/IWifiScanner$Stub;-><init>()V

    .line 222
    new-instance v0, Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$ScanCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mScanCapabilities:Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    .line 555
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    .line 224
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    invoke-direct {p0}, Landroid/net/wifi/IWifiScanner$Stub;-><init>()V

    .line 222
    new-instance v0, Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$ScanCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mScanCapabilities:Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    .line 555
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    .line 227
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    .line 228
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiScanningServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700()Landroid/util/LocalLog;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/internal/app/IBatteryStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$1900(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiScanningServiceImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->enforceLocationHardwarePermission(I)V

    return-void
.end method

.method static synthetic access$2000(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I
    .locals 1
    .param p0, "x0"    # [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getBandFromChannels([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200([Landroid/net/wifi/WifiScanner$ChannelSpec;)I
    .locals 1
    .param p0, "x0"    # [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getBandFromChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/wifi/WifiScanningServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mIsStartedWifiHal:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiNative$ScanCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mScanCapabilities:Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    return-object v0
.end method

.method private static copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V
    .locals 4
    .param p0, "channelSpec"    # [Landroid/net/wifi/WifiScanner$ChannelSpec;
    .param p1, "offset"    # I
    .param p2, "channels"    # [I

    .prologue
    .line 1816
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1817
    add-int v1, p1, v0

    new-instance v2, Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget v3, p2, v0

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v2, p0, v1

    .line 1816
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1819
    :cond_0
    return-void
.end method

.method static describe(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;
    .locals 4
    .param p0, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    .line 1945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1946
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "  band:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1947
    const-string v2, "  period:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1948
    const-string v2, "  reportEvents:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1949
    const-string v2, "  numBssidsPerScan:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1950
    const-string v2, "  maxScansToCache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1952
    const-string v2, "  channels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1954
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    if-eqz v2, :cond_0

    .line 1955
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1956
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1957
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1960
    .end local v0    # "i":I
    :cond_0
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1961
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private enforceLocationHardwarePermission(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, -0x1

    const-string v3, "LocationHardware"

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 118
    return-void
.end method

.method private static getBandFromChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;)I
    .locals 7
    .param p0, "channels"    # [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .prologue
    .line 1901
    const/4 v1, 0x0

    .line 1902
    .local v1, "band":I
    move-object v0, p0

    .local v0, "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    .line 1903
    .local v2, "channel":Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/16 v5, 0x960

    iget v6, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    if-gt v5, v6, :cond_1

    iget v5, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    const/16 v6, 0x9c4

    if-ge v5, v6, :cond_1

    .line 1904
    or-int/lit8 v1, v1, 0x1

    .line 1902
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1905
    :cond_1
    iget v5, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v5}, Lcom/android/server/wifi/WifiScanningServiceImpl;->isDfs(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1906
    or-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 1907
    :cond_2
    const/16 v5, 0x13ec

    iget v6, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    if-gt v5, v6, :cond_0

    iget v5, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    const/16 v6, 0x1770

    if-ge v5, v6, :cond_0

    .line 1908
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1911
    .end local v2    # "channel":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_3
    return v1
.end method

.method private static getBandFromChannels([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I
    .locals 7
    .param p0, "channels"    # [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    .prologue
    .line 1915
    const/4 v1, 0x0

    .line 1916
    .local v1, "band":I
    move-object v0, p0

    .local v0, "arr$":[Lcom/android/server/wifi/WifiNative$ChannelSettings;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    .line 1917
    .local v2, "channel":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    if-eqz v2, :cond_0

    .line 1918
    const/16 v5, 0x960

    iget v6, v2, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    if-gt v5, v6, :cond_1

    iget v5, v2, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    const/16 v6, 0x9c4

    if-ge v5, v6, :cond_1

    .line 1919
    or-int/lit8 v1, v1, 0x1

    .line 1916
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1920
    :cond_1
    iget v5, v2, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    invoke-static {v5}, Lcom/android/server/wifi/WifiScanningServiceImpl;->isDfs(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1921
    or-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 1922
    :cond_2
    const/16 v5, 0x13ec

    iget v6, v2, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    if-gt v5, v6, :cond_0

    iget v5, v2, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    const/16 v6, 0x1770

    if-ge v5, v6, :cond_0

    .line 1923
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1927
    .end local v2    # "channel":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    :cond_3
    return v1
.end method

.method private static getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .locals 2
    .param p0, "band"    # I

    .prologue
    .line 1880
    invoke-static {}, Lcom/android/server/wifi/WifiScanningServiceImpl;->initChannels()Z

    .line 1882
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v0, 0x7

    if-le p0, v0, :cond_1

    .line 1884
    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1886
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method private static initChannels()Z
    .locals 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1822
    sget-object v5, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    if-eqz v5, :cond_0

    .line 1876
    .local v0, "channels24":[I
    :goto_0
    return v3

    .line 1827
    .end local v0    # "channels24":[I
    :cond_0
    invoke-static {v3}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v0

    .line 1828
    .restart local v0    # "channels24":[I
    if-nez v0, :cond_1

    .line 1829
    const-string v3, "Could not get channels for 2.4 GHz"

    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    move v3, v4

    .line 1830
    goto :goto_0

    .line 1833
    :cond_1
    invoke-static {v7}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v1

    .line 1834
    .local v1, "channels5":[I
    if-nez v1, :cond_2

    .line 1835
    const-string v3, "Could not get channels for 5 GHz"

    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    move v3, v4

    .line 1836
    goto :goto_0

    .line 1839
    :cond_2
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v2

    .line 1840
    .local v2, "channelsDfs":[I
    if-nez v2, :cond_3

    .line 1841
    const-string v3, "Could not get channels for DFS"

    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    move v3, v4

    .line 1842
    goto :goto_0

    .line 1845
    :cond_3
    const/16 v5, 0x8

    new-array v5, v5, [[Landroid/net/wifi/WifiScanner$ChannelSpec;

    sput-object v5, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 1847
    sget-object v5, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-array v6, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v6, v5, v4

    .line 1849
    sget-object v5, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v6, v0

    new-array v6, v6, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v6, v5, v3

    .line 1850
    sget-object v5, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v5, v5, v3

    invoke-static {v5, v4, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1852
    sget-object v5, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v6, v1

    new-array v6, v6, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v6, v5, v7

    .line 1853
    sget-object v5, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v5, v5, v7

    invoke-static {v5, v4, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1855
    sget-object v5, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v6, v0

    array-length v7, v1

    add-int/2addr v6, v7

    new-array v6, v6, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v6, v5, v8

    .line 1856
    sget-object v5, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v5, v5, v8

    invoke-static {v5, v4, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1857
    sget-object v5, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v5, v5, v8

    array-length v6, v0

    invoke-static {v5, v6, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1859
    sget-object v5, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v6, 0x4

    array-length v7, v2

    new-array v7, v7, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v7, v5, v6

    .line 1860
    sget-object v5, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-static {v5, v4, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1862
    sget-object v5, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v6, 0x5

    array-length v7, v0

    array-length v8, v2

    add-int/2addr v7, v8

    new-array v7, v7, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v7, v5, v6

    .line 1863
    sget-object v5, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-static {v5, v4, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1864
    sget-object v5, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    array-length v6, v0

    invoke-static {v5, v6, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1866
    sget-object v5, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v6, 0x6

    array-length v7, v1

    array-length v8, v2

    add-int/2addr v7, v8

    new-array v7, v7, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v7, v5, v6

    .line 1867
    sget-object v5, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-static {v5, v4, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1868
    sget-object v5, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    array-length v6, v1

    invoke-static {v5, v6, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1870
    sget-object v5, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v6, v0

    array-length v7, v1

    add-int/2addr v6, v7

    array-length v7, v2

    add-int/2addr v6, v7

    new-array v6, v6, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v6, v5, v9

    .line 1872
    sget-object v5, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v5, v5, v9

    invoke-static {v5, v4, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1873
    sget-object v4, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v4, v4, v9

    array-length v5, v0

    invoke-static {v4, v5, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1874
    sget-object v4, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v4, v4, v9

    array-length v5, v0

    array-length v6, v1

    add-int/2addr v5, v6

    invoke-static {v4, v5, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    goto/16 :goto_0
.end method

.method private static isDfs(I)Z
    .locals 3
    .param p0, "channel"    # I

    .prologue
    .line 1890
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v0

    .line 1892
    .local v0, "dfsChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1893
    aget-object v2, v0, v1

    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    if-ne p0, v2, :cond_0

    .line 1894
    const/4 v2, 0x1

    .line 1897
    :goto_1
    return v2

    .line 1892
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1897
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static localLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 78
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v0, "WifiScanningService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string v0, "WifiScanningService"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method addScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 5
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    const/4 v1, 0x0

    .line 1237
    if-nez p1, :cond_0

    .line 1238
    const-string v2, "WifiScanningService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failing scan request ClientInfo not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :goto_0
    return v1

    .line 1241
    :cond_0
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_1

    .line 1242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failing scan request because periodInMs is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1246
    :cond_1
    const/4 v0, 0x0

    .line 1247
    .local v0, "minSupportedPeriodMs":I
    iget-object v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    if-eqz v2, :cond_3

    .line 1248
    iget-object v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v2, v2

    mul-int/lit16 v0, v2, 0xc8

    .line 1264
    :cond_2
    :goto_1
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-ge v2, v0, :cond_6

    .line 1265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failing scan request because minSupportedPeriodMs is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but the request wants "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1250
    :cond_3
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_4

    .line 1252
    add-int/lit16 v0, v0, 0x3e8

    .line 1254
    :cond_4
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    .line 1256
    add-int/lit16 v0, v0, 0x3e8

    .line 1258
    :cond_5
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_2

    .line 1260
    add-int/lit16 v0, v0, 0x7d0

    goto :goto_1

    .line 1270
    :cond_6
    const-string v2, "addScanRequest"

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 1271
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->removeAllScanRequests()V

    .line 1272
    invoke-virtual {p1, p3, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;I)V

    .line 1273
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetBuckets()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1274
    const/4 v1, 0x1

    goto :goto_0

    .line 1276
    :cond_7
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeScanRequest(I)V

    .line 1277
    const-string v2, "Failing scan request because failed to reset scan"

    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method addSingleScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 4
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1283
    if-nez p1, :cond_0

    .line 1284
    const-string v1, "WifiScanningService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failing single scan request ClientInfo not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :goto_0
    return v0

    .line 1287
    :cond_0
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    if-nez v2, :cond_1

    .line 1288
    iput v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 1290
    :cond_1
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-nez v2, :cond_2

    .line 1291
    const/16 v2, 0x2710

    iput v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 1294
    :cond_2
    const-string v2, "addSingleScanRequest"

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 1295
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->removeAllScanRequests()V

    .line 1296
    invoke-virtual {p1, p3, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;I)V

    .line 1297
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetBuckets()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1299
    iput v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    move v0, v1

    .line 1300
    goto :goto_0

    .line 1302
    :cond_3
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeScanRequest(I)V

    .line 1303
    const-string v1, "Failing scan request because failed to reset scan"

    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->configure(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    .line 1400
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiScanner from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1942
    :goto_0
    return-void

    .line 1941
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAvailableChannels(I)Landroid/os/Bundle;
    .locals 8
    .param p1, "band"    # I

    .prologue
    .line 103
    invoke-static {p1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v3

    .line 104
    .local v3, "channelSpecs":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v3

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v0, v3

    .local v0, "arr$":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 106
    .local v2, "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v7, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    .end local v2    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v1, "b":Landroid/os/Bundle;
    const-string v7, "Channels"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 110
    return-object v1
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 97
    :goto_0
    return-object v0

    .line 96
    :cond_0
    const-string v0, "WifiScanningServiceImpl trying to get messenger w/o initialization"

    invoke-static {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    goto :goto_0
.end method

.method logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 2
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p3, "id"    # I
    .param p4, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    .line 1220
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1221
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1222
    const-string v1, "\nClient "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1223
    invoke-virtual {p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1224
    const-string v1, "\nId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1225
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1226
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1227
    if-eqz p4, :cond_0

    .line 1228
    invoke-static {p4}, Lcom/android/server/wifi/WifiScanningServiceImpl;->describe(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1229
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1231
    :cond_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1232
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    .line 1233
    return-void
.end method

.method removeAllScanRequests()V
    .locals 4

    .prologue
    .line 1317
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1318
    .local v1, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1319
    .local v0, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeAllScanRequests()V

    goto :goto_0

    .line 1321
    .end local v0    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_0
    return-void
.end method

.method removeScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 2
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .prologue
    .line 1309
    if-eqz p1, :cond_0

    .line 1310
    const-string v0, "removeScanRequest"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 1311
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeScanRequest(I)V

    .line 1312
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetBuckets()Z

    .line 1314
    :cond_0
    return-void
.end method

.method replyFailed(Landroid/os/Message;ILjava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "reason"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 918
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 919
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 920
    .local v0, "reply":Landroid/os/Message;
    const v1, 0x27012

    iput v1, v0, Landroid/os/Message;->what:I

    .line 921
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 922
    new-instance v1, Landroid/net/wifi/WifiScanner$OperationResult;

    invoke-direct {v1, p2, p3}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 924
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    .end local v0    # "reply":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 925
    .restart local v0    # "reply":Landroid/os/Message;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method replySucceeded(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 903
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 904
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 905
    .local v0, "reply":Landroid/os/Message;
    const v1, 0x27011

    iput v1, v0, Landroid/os/Message;->what:I

    .line 906
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 908
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    .end local v0    # "reply":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 909
    .restart local v0    # "reply":Landroid/os/Message;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method reportScanResults()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1324
    invoke-static {v5}, Lcom/android/server/wifi/WifiNative;->getScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v3

    .line 1325
    .local v3, "results":[Landroid/net/wifi/WifiScanner$ScanData;
    iget-object v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1326
    .local v1, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1327
    .local v0, "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    goto :goto_0

    .line 1330
    .end local v0    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_0
    return v5
.end method

.method reportWifiChanged([Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 1403
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1404
    .local v1, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1405
    .local v0, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportWifiChanged([Landroid/net/wifi/ScanResult;)V

    goto :goto_0

    .line 1407
    .end local v0    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_0
    return-void
.end method

.method reportWifiStabilized([Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 1410
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1411
    .local v1, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1412
    .local v0, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportWifiStabilized([Landroid/net/wifi/ScanResult;)V

    goto :goto_0

    .line 1414
    .end local v0    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_0
    return-void
.end method

.method resetBuckets()Z
    .locals 18

    .prologue
    .line 1170
    new-instance v2, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v13}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Lcom/android/server/wifi/WifiScanningServiceImpl$1;)V

    .line 1171
    .local v2, "c":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 1172
    .local v4, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1173
    .local v3, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getScanSettings()Ljava/util/Collection;

    move-result-object v12

    .line 1174
    .local v12, "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 1175
    .local v11, "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-virtual {v2, v11}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->prepChannelMap(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    goto :goto_0

    .line 1179
    .end local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v12    # "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1180
    .restart local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getScans()Ljava/util/Iterator;

    move-result-object v9

    .line 1181
    .local v9, "it":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1182
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1184
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1185
    .local v8, "id":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 1186
    .restart local v11    # "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-virtual {v2, v11}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->addScanRequestToBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    move-result v10

    .line 1187
    .local v10, "newPeriodInMs":I
    const/4 v13, -0x1

    if-ne v10, v13, :cond_4

    .line 1189
    const/4 v13, 0x0

    .line 1214
    .end local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v8    # "id":I
    .end local v9    # "it":Ljava/util/Iterator;
    .end local v10    # "newPeriodInMs":I
    .end local v11    # "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    :goto_2
    return v13

    .line 1191
    .restart local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .restart local v8    # "id":I
    .restart local v9    # "it":Ljava/util/Iterator;
    .restart local v10    # "newPeriodInMs":I
    .restart local v11    # "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_4
    iget v13, v11, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-eq v10, v13, :cond_3

    .line 1192
    invoke-virtual {v3, v8, v11, v10}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportPeriodChanged(ILandroid/net/wifi/WifiScanner$ScanSettings;I)V

    goto :goto_1

    .line 1197
    .end local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v8    # "id":I
    .end local v9    # "it":Ljava/util/Iterator;
    .end local v10    # "newPeriodInMs":I
    .end local v11    # "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->compressBuckets()V

    .line 1199
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->getComputedSettings()Lcom/android/server/wifi/WifiNative$ScanSettings;

    move-result-object v11

    .line 1200
    .local v11, "s":Lcom/android/server/wifi/WifiNative$ScanSettings;
    iget v13, v11, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-nez v13, :cond_7

    .line 1202
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mIsStartedWifiHal:Z

    if-eqz v13, :cond_6

    .line 1203
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->stopScan()V

    .line 1205
    :cond_6
    const/4 v13, 0x1

    goto :goto_2

    .line 1207
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mIsStartedWifiHal:Z

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-static {v11, v13}, Lcom/android/server/wifi/WifiNative;->startScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1208
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Successfully started scan of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " buckets at"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "time = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " period "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    .line 1211
    const/4 v13, 0x1

    goto :goto_2

    .line 1213
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to start scan of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " buckets"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    .line 1214
    const/4 v13, 0x0

    goto/16 :goto_2
.end method

.method resetHotlist()V
    .locals 13

    .prologue
    .line 1334
    iget-object v12, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 1335
    .local v3, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    const/4 v8, 0x0

    .line 1337
    .local v8, "num_hotlist_ap":I
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1338
    .local v2, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getHotlistSettings()Ljava/util/Collection;

    move-result-object v1

    .line 1339
    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiScanner$HotlistSettings;

    .line 1340
    .local v9, "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    iget-object v12, v9, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v12, v12

    add-int/2addr v8, v12

    .line 1341
    goto :goto_0

    .line 1344
    .end local v1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    .end local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    :cond_1
    if-nez v8, :cond_2

    .line 1345
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->resetHotlist()V

    .line 1363
    :goto_1
    return-void

    .line 1347
    :cond_2
    new-array v0, v8, [Landroid/net/wifi/WifiScanner$BssidInfo;

    .line 1348
    .local v0, "bssidInfos":[Landroid/net/wifi/WifiScanner$BssidInfo;
    const/4 v7, 0x0

    .line 1349
    .local v7, "index":I
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1350
    .restart local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getHotlistSettings()Ljava/util/Collection;

    move-result-object v11

    .line 1351
    .local v11, "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiScanner$HotlistSettings;

    .line 1352
    .restart local v9    # "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v12, v9, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v12, v12

    if-ge v4, v12, :cond_4

    .line 1353
    iget-object v12, v9, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    aget-object v12, v12, v4

    aput-object v12, v0, v7

    .line 1352
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1358
    .end local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v4    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    .end local v11    # "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    :cond_5
    new-instance v10, Landroid/net/wifi/WifiScanner$HotlistSettings;

    invoke-direct {v10}, Landroid/net/wifi/WifiScanner$HotlistSettings;-><init>()V

    .line 1359
    .local v10, "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    iput-object v0, v10, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    .line 1360
    const/4 v12, 0x3

    iput v12, v10, Landroid/net/wifi/WifiScanner$HotlistSettings;->apLostThreshold:I

    .line 1361
    iget-object v12, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-static {v10, v12}, Lcom/android/server/wifi/WifiNative;->setHotlist(Landroid/net/wifi/WifiScanner$HotlistSettings;Lcom/android/server/wifi/WifiNative$HotlistEventHandler;)Z

    goto :goto_1
.end method

.method resetHotlist(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 0
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .prologue
    .line 1371
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeHostlistSettings(I)V

    .line 1372
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetHotlist()V

    .line 1373
    return-void
.end method

.method setHotlist(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$HotlistSettings;)V
    .locals 0
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$HotlistSettings;

    .prologue
    .line 1366
    invoke-virtual {p1, p3, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->addHostlistSettings(Landroid/net/wifi/WifiScanner$HotlistSettings;I)V

    .line 1367
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetHotlist()V

    .line 1368
    return-void
.end method

.method public startService(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    .line 233
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiScanningService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 236
    new-instance v1, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    .line 237
    new-instance v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    .line 238
    new-instance v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    .line 239
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 241
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiScanningServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$1;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "wifi_scan_available"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->start()V

    .line 257
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->start()V

    .line 258
    return-void
.end method

.method trackWifiChanges(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 1
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->enable()V

    .line 1379
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->addSignificantWifiChange(I)V

    .line 1380
    return-void
.end method

.method untrackWifiChanges(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 4
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .prologue
    .line 1383
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeSignificantWifiChange(I)V

    .line 1384
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1385
    .local v1, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1386
    .local v0, "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getWifiChangeHandlers()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1396
    .end local v0    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :goto_0
    return-void

    .line 1395
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->disable()V

    goto :goto_0
.end method
