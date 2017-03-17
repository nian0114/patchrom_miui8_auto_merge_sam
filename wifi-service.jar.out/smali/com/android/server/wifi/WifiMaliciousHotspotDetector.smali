.class public Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
.super Landroid/os/Handler;
.source "WifiMaliciousHotspotDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiMaliciousHotspotDetector$2;,
        Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;,
        Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;,
        Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;,
        Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SpecialSsid;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final MHD_FW_VERSION:I = 0x1

.field public static MHD_VERSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiMHD"

.field private static roamingStarted:Z


# instance fields
.field public final EVENT_ARP_QUERY_REQUEST:I

.field public final EVENT_ARP_TABLE_CHECK_REQUEST:I

.field public final EVENT_GSIM_LOGGING_INTERVAL:I

.field public final EVENT_SSD_REQUEST:I

.field public final EVENT_SSD_RESULT:I

.field public final EVENT_START_SCAN:I

.field private final MAX_DUMPLOG_LINE:I

.field private final MAX_MALICIOUS_AP_LIST:I

.field public final STATE_DISABLED:I

.field public final STATE_ENABLED:I

.field public final STATE_ENABLED_ONLY_LOG:I

.field public final TYPE_ALREADY_DETECTED:I

.field public final TYPE_ARP_SPOOFING:I

.field public final TYPE_KARMA_AP:I

.field public final TYPE_SSL_STRIP:I

.field private mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCachedGsimLog:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCountryIso:Ljava/lang/String;

.field private mGsimLoggingEnabled:Z

.field private final mGsimLoggingMaxCount:I

.field private final mGsimLoggingRefreshInterval:J

.field private mGsimLoggingStartTime:J

.field private mGsimLoggingTotalCount:I

.field private mIsSCPMClientExist:Z

.field private mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMaliciousApList:[Ljava/lang/String;

.field private mMaliciousApListIndex:I

.field private mMaliciousApLogs:[Ljava/lang/String;

.field private mMaliciousApLogsIndex:I

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 74
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z

    .line 77
    sput v2, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->MHD_VERSION:I

    .line 123
    sput-boolean v1, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->roamingStarted:Z

    return-void

    :cond_0
    move v0, v2

    .line 74
    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 8
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x1e

    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 134
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    iput v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->EVENT_SSD_REQUEST:I

    .line 82
    iput v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->EVENT_SSD_RESULT:I

    .line 84
    iput v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->EVENT_ARP_QUERY_REQUEST:I

    .line 85
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->EVENT_ARP_TABLE_CHECK_REQUEST:I

    .line 87
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->EVENT_START_SCAN:I

    .line 89
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->EVENT_GSIM_LOGGING_INTERVAL:I

    .line 92
    iput v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->TYPE_ALREADY_DETECTED:I

    .line 93
    iput v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->TYPE_KARMA_AP:I

    .line 94
    iput v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->TYPE_SSL_STRIP:I

    .line 95
    iput v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->TYPE_ARP_SPOOFING:I

    .line 98
    iput v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->STATE_DISABLED:I

    .line 99
    iput v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->STATE_ENABLED_ONLY_LOG:I

    .line 100
    iput v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->STATE_ENABLED:I

    .line 105
    iput v7, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->MAX_DUMPLOG_LINE:I

    .line 108
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 114
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->MAX_MALICIOUS_AP_LIST:I

    .line 126
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingEnabled:Z

    .line 127
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingStartTime:J

    .line 128
    iput v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingTotalCount:I

    .line 129
    const-wide/32 v2, 0x5265c00

    iput-wide v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingRefreshInterval:J

    .line 130
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingMaxCount:I

    .line 131
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCachedGsimLog:Ljava/util/HashMap;

    .line 176
    new-instance v2, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;-><init>(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    iput-object p2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mContext:Landroid/content/Context;

    .line 136
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 137
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 138
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 139
    new-instance v2, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;-><init>(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    .line 140
    new-instance v2, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;-><init>(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    .line 141
    new-instance v2, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;-><init>(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    .line 142
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCountryIso:Ljava/lang/String;

    .line 143
    const/16 v2, 0x64

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApList:[Ljava/lang/String;

    .line 144
    iput v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApListIndex:I

    .line 145
    new-array v2, v7, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApLogs:[Ljava/lang/String;

    .line 146
    iput v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApLogsIndex:I

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mScanResults:Ljava/util/List;

    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.sm.policy"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    invoke-direct {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->setGsimLoggingEnabled()V

    .line 174
    return-void

    .line 151
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "WifiMHD"

    const-string v3, "NDB"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->setEnabled(I)V

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v2, :cond_2

    .line 158
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->setEnabled(I)V

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->setEnabled(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mScanResults:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mScanResults:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCachedGsimLog:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendGsimData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApList:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApListIndex:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->isRegistered(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getConvertedBssid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getTimeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->addMaliciousApLogs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->roamingStarted:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 73
    sput-boolean p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->roamingStarted:Z

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->isEnterpriseAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
    .param p1, "x1"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getWifiManager()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingEnabled:Z

    return v0
.end method

.method private addMaliciousApLogs(Ljava/lang/String;)V
    .locals 4
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApLogs:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApLogsIndex:I

    rem-int/lit8 v1, v1, 0x1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rec["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApLogsIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 442
    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApLogsIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApLogsIndex:I

    const/16 v1, 0x2706

    if-lt v0, v1, :cond_0

    .line 443
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApLogsIndex:I

    .line 445
    :cond_0
    return-void
.end method

.method private getConvertedBssid(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 416
    if-nez p1, :cond_0

    .line 417
    const-string v8, "null"

    .line 437
    :goto_0
    return-object v8

    .line 419
    :cond_0
    const-string v1, ""

    .line 420
    .local v1, "convertedA":Ljava/lang/String;
    const-string v2, ""

    .line 421
    .local v2, "convertedB":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 423
    .local v6, "logInfo":[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x6

    if-ge v8, v9, :cond_1

    .line 424
    const-string v8, "null"

    goto :goto_0

    .line 428
    :cond_1
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v7, v0, v4

    .line 429
    .local v7, "str":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 430
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 428
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 432
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "str":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 433
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "WifiMHD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "err : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v8, "null"

    goto :goto_0

    .line 437
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method private getSecurityFromScanDetail(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v0, -0x1

    .line 591
    if-nez p1, :cond_1

    .line 602
    :cond_0
    :goto_0
    return v0

    .line 593
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 595
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    const/4 v0, 0x2

    goto :goto_0

    .line 597
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 598
    const/4 v0, 0x3

    goto :goto_0

    .line 599
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 600
    const/4 v0, 0x1

    goto :goto_0

    .line 602
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTimeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 402
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getWifiManager()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 396
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 398
    :goto_0
    return v1

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 398
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isEnterpriseAP()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1767
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_1

    .line 1781
    :cond_0
    :goto_0
    return v1

    .line 1768
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1769
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1770
    const/4 v1, 0x0

    .line 1771
    .local v1, "result":Z
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1772
    const/4 v1, 0x1

    .line 1780
    :cond_2
    :goto_1
    sget-boolean v2, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "WifiMHD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mhd_E "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1773
    :cond_3
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1774
    const/4 v1, 0x1

    goto :goto_1

    .line 1775
    :cond_4
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1776
    const/4 v1, 0x1

    goto :goto_1

    .line 1777
    :cond_5
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1778
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isRegistered(Ljava/lang/String;)Z
    .locals 5
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 408
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 409
    const/4 v4, 0x1

    .line 412
    .end local v3    # "str":Ljava/lang/String;
    :goto_1
    return v4

    .line 407
    .restart local v3    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private sendGsimData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x4d

    const-wide/32 v10, 0x5265c00

    .line 546
    invoke-direct {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getWifiManager()Z

    move-result v6

    if-nez v6, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingEnabled:Z

    if-eqz v6, :cond_0

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 549
    .local v2, "currTime":J
    iget-wide v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingStartTime:J

    sub-long v6, v2, v6

    cmp-long v6, v6, v10

    if-ltz v6, :cond_2

    .line 550
    div-long v6, v2, v10

    mul-long/2addr v6, v10

    iget-wide v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingStartTime:J

    rem-long/2addr v8, v10

    add-long v4, v6, v8

    .line 552
    .local v4, "newStartTime":J
    iput-wide v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingStartTime:J

    .line 554
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 555
    .local v1, "msgLog":Landroid/os/Message;
    iput v12, v1, Landroid/os/Message;->what:I

    .line 556
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 557
    .local v0, "argsLog":Landroid/os/Bundle;
    const-string v6, "feature"

    const-string v7, "MHDT"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v6, "value"

    iget v7, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingTotalCount:I

    int-to-long v8, v7

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 559
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 560
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 561
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 562
    const/4 v1, 0x0

    .line 565
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingTotalCount:I

    .line 566
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCachedGsimLog:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 567
    const/4 v6, 0x6

    iget-wide v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingStartTime:J

    add-long/2addr v8, v10

    sub-long/2addr v8, v2

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendEmptyMessageDelayed(IJ)Z

    .line 570
    .end local v0    # "argsLog":Landroid/os/Bundle;
    .end local v1    # "msgLog":Landroid/os/Message;
    .end local v4    # "newStartTime":J
    :cond_2
    if-eqz p1, :cond_0

    .line 572
    iget v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingTotalCount:I

    const/16 v7, 0xa

    if-lt v6, v7, :cond_3

    .line 587
    :goto_1
    iget v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingTotalCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingTotalCount:I

    goto :goto_0

    .line 576
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 577
    .restart local v1    # "msgLog":Landroid/os/Message;
    iput v12, v1, Landroid/os/Message;->what:I

    .line 578
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 579
    .restart local v0    # "argsLog":Landroid/os/Bundle;
    const-string v6, "feature"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v6, "extra"

    invoke-virtual {v0, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 582
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 583
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    goto :goto_1
.end method

.method private setGsimLoggingEnabled()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 1785
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    if-eqz v0, :cond_1

    .line 1786
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->getEnabled()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->getEnabled()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->getEnabled()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingEnabled:Z

    .line 1791
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingEnabled:Z

    if-eqz v0, :cond_3

    .line 1792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingStartTime:J

    .line 1793
    const-wide/32 v0, 0x5265c00

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendEmptyMessageDelayed(IJ)Z

    .line 1797
    :goto_1
    return-void

    .line 1786
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1795
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->removeMessages(I)V

    goto :goto_1
.end method


# virtual methods
.method public checkForMaliciousHotspotAddress(Ljava/lang/String;)Z
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 388
    if-nez p1, :cond_0

    .line 389
    const/4 v0, 0x0

    .line 392
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->isRegistered(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDumpMsg()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1744
    const-string v1, ""

    .line 1745
    .local v1, "dumpmsg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[V]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->MHD_VERSION:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1747
    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    if-eqz v5, :cond_0

    .line 1748
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[K]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->getEnabled()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1750
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v5, :cond_1

    .line 1751
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[S]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->getEnabled()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1753
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    if-eqz v5, :cond_2

    .line 1754
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[A]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->getEnabled()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1757
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n[List]\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1758
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApLogs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 1759
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1760
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1758
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1763
    .end local v4    # "s":Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method public handleMaliciousHotspotDetection(Ljava/lang/String;II)V
    .locals 11
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "enabled"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 448
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getWifiManager()Z

    move-result v6

    if-nez v6, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->isRegistered(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    if-nez p3, :cond_4

    .line 453
    :cond_2
    if-nez p2, :cond_0

    .line 455
    const-string v6, "WifiMHD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mhdf("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v6, :cond_3

    .line 457
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v9}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->notifyMaliciousHotspotDetected(Ljava/lang/String;Z)V

    .line 459
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiManager;->addToSBlacklist(Ljava/lang/String;)Z

    goto :goto_0

    .line 464
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 465
    .local v5, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v5, :cond_0

    const-string v6, "00:00:00:00:00:00"

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 470
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mhdf("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getConvertedBssid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "log":Ljava/lang/String;
    const-string v6, "WifiMHD"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getTimeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->addMaliciousApLogs(Ljava/lang/String;)V

    .line 474
    const/4 v6, 0x2

    if-ne p3, v6, :cond_0

    .line 479
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApList:[Ljava/lang/String;

    iget v7, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApListIndex:I

    aput-object p1, v6, v7

    .line 480
    iget v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApListIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApListIndex:I

    const/16 v7, 0x64

    if-lt v6, v7, :cond_5

    .line 481
    iput v10, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApListIndex:I

    .line 486
    :cond_5
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 487
    const/4 v2, 0x0

    .line 490
    .local v2, "maliciousHotspot":Landroid/net/wifi/ScanResult;
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mScanResults:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 491
    .local v4, "sr":Landroid/net/wifi/ScanResult;
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 492
    iget-object v6, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 493
    move-object v2, v4

    .line 499
    .end local v4    # "sr":Landroid/net/wifi/ScanResult;
    :cond_7
    if-eqz v2, :cond_c

    .line 501
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mScanResults:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 502
    .restart local v4    # "sr":Landroid/net/wifi/ScanResult;
    iget-object v6, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v7, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getSecurityFromScanDetail(Landroid/net/wifi/ScanResult;)I

    move-result v6

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getSecurityFromScanDetail(Landroid/net/wifi/ScanResult;)I

    move-result v7

    if-ne v6, v7, :cond_8

    iget-object v6, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v7, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 506
    sget-boolean v6, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z

    if-eqz v6, :cond_9

    const-string v7, "WifiMHD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v6, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "-"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v6, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z

    if-eqz v6, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " - "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_9
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiManager;->addToSBlacklist(Ljava/lang/String;)Z

    .line 509
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v10}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->notifyMaliciousHotspotDetected(Ljava/lang/String;Z)V

    .line 510
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->reassociate()Z

    goto/16 :goto_0

    .line 506
    :cond_a
    const-string v6, ""

    goto :goto_1

    :cond_b
    const-string v6, ""

    goto :goto_2

    .line 515
    .end local v4    # "sr":Landroid/net/wifi/ScanResult;
    :cond_c
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v9}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->notifyMaliciousHotspotDetected(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 517
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "maliciousHotspot":Landroid/net/wifi/ScanResult;
    :cond_d
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getSBlacklist()Ljava/lang/String;

    move-result-object v3

    .line 518
    .local v3, "sBlacklist":Ljava/lang/String;
    if-nez v3, :cond_e

    const-string v3, ""

    .line 519
    :cond_e
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 520
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiManager;->addToSBlacklist(Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 280
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 282
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v3, :cond_0

    .line 283
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 284
    .local v1, "onGoingId":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->requestSSD(I)V

    goto :goto_0

    .line 288
    .end local v1    # "onGoingId":I
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v3, :cond_0

    .line 289
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 290
    .local v0, "id":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 291
    .local v2, "token":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->checkResult(II)V

    goto :goto_0

    .line 295
    .end local v0    # "id":I
    .end local v2    # "token":I
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    if-eqz v3, :cond_0

    .line 296
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->ArpTableCheck()V

    goto :goto_0

    .line 300
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    if-eqz v3, :cond_0

    .line 301
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->ArpTableCheck()V

    .line 302
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->sendArpQueryToGateway()V

    goto :goto_0

    .line 306
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    if-eqz v3, :cond_0

    .line 307
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->doPartialScan()V

    goto :goto_0

    .line 311
    :pswitch_5
    invoke-direct {p0, v4, v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendGsimData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public notifyMaliciousHotspotDetected(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 529
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.net.wifi.SHOW_NOTI_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 530
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "info_type"

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 531
    const-string v2, "visible"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 532
    const-string v2, "targetSSID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 542
    :goto_0
    return-void

    .line 538
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "WifiMHD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send broadcast before boot - action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setArpSpoofingDetectionEnabled(I)V
    .locals 1
    .param p1, "enable"    # I

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    if-eqz v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->setEnabled(I)V

    .line 1326
    :cond_0
    return-void
.end method

.method public setCountryIso(Ljava/lang/String;)V
    .locals 3
    .param p1, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 933
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 938
    :cond_1
    sget-boolean v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiMHD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iso : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_2
    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCountryIso:Ljava/lang/String;

    .line 940
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->updateUrlList(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->access$1500(Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setKarmaApDetectionEnabled(I)V
    .locals 1
    .param p1, "enable"    # I

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->setEnabled(I)V

    .line 642
    :cond_0
    return-void
.end method

.method public setSslStripDetectionEnabled(I)V
    .locals 1
    .param p1, "enable"    # I

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->setEnabled(I)V

    .line 911
    :cond_0
    return-void
.end method

.method public startArpSpoofingDetection()V
    .locals 3

    .prologue
    .line 1302
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->getEnabled()I

    move-result v2

    if-nez v2, :cond_1

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1303
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 1304
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    const/4 v1, 0x0

    .line 1305
    .local v1, "gwIp":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1306
    iget v2, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1307
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->startArpSpoofingDetection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startArpSpoofingDetection(Ljava/lang/String;)V
    .locals 1
    .param p1, "gwIp"    # Ljava/lang/String;

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->ArpCheckRequest(Ljava/lang/String;)V

    .line 1314
    :cond_0
    return-void
.end method

.method public startSslStripDetection()V
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->getEnabled()I

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->start()V

    .line 918
    :cond_0
    return-void
.end method

.method public startSslStripDetection(IIIII)V
    .locals 6
    .param p1, "ssdSet"    # I
    .param p2, "delayed_start_sec"    # I
    .param p3, "timeout_sec"    # I
    .param p4, "interval_sec"    # I
    .param p5, "repeat_min"    # I

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->start(IIIII)V

    .line 924
    :cond_0
    return-void
.end method

.method public stopArpSpoofingDetection()V
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    if-eqz v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V

    .line 1320
    :cond_0
    return-void
.end method

.method public stopSslStripDetection()V
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->stop()V

    .line 930
    :cond_0
    return-void
.end method

.method public updateArpSpoofingDetectionVariables(II)V
    .locals 1
    .param p1, "arpCheckPeriod_sec"    # I
    .param p2, "arpTableCheckDelay_sec"    # I

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->updateVariables(II)V

    .line 1332
    :cond_0
    return-void
.end method

.method public updateParameters(Ljava/util/HashMap;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, "mhdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 385
    :goto_0
    return-void

    .line 322
    :cond_0
    const-string v2, "mhd_kon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/server/wifi/WWSMPatcher$Util;->getIntFromString(Ljava/lang/String;I)I

    move-result v18

    .line 324
    .local v18, "mhdKarmaEnabled":I
    const-string v2, "mhd_son"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/server/wifi/WWSMPatcher$Util;->getIntFromString(Ljava/lang/String;I)I

    move-result v19

    .line 326
    .local v19, "mhdSslStripEnabled":I
    const-string v2, "mhd_aon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/server/wifi/WWSMPatcher$Util;->getIntFromString(Ljava/lang/String;I)I

    move-result v17

    .line 328
    .local v17, "mhdArpSpoofingEnabled":I
    const-string v2, "mhd_sset"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/server/wifi/WWSMPatcher$Util;->getIntFromString(Ljava/lang/String;I)I

    move-result v4

    .line 330
    .local v4, "ssd_ssd_set":I
    const-string v2, "mhd_stos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/server/wifi/WWSMPatcher$Util;->getIntFromString(Ljava/lang/String;I)I

    move-result v5

    .line 332
    .local v5, "ssd_timeout_sec":I
    const-string v2, "mhd_sitvs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/server/wifi/WWSMPatcher$Util;->getIntFromString(Ljava/lang/String;I)I

    move-result v6

    .line 334
    .local v6, "ssd_interval_sec":I
    const-string v2, "mhd_srpm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/server/wifi/WWSMPatcher$Util;->getIntFromString(Ljava/lang/String;I)I

    move-result v7

    .line 336
    .local v7, "ssd_repeat_min":I
    const-string v2, "mhd_sdss"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/server/wifi/WWSMPatcher$Util;->getIntFromString(Ljava/lang/String;I)I

    move-result v8

    .line 338
    .local v8, "ssd_delayed_start_sec":I
    const-string v2, "mhd_acps"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v22, 0x1e

    move/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/server/wifi/WWSMPatcher$Util;->getIntFromString(Ljava/lang/String;I)I

    move-result v9

    .line 340
    .local v9, "arp_check_period_sec":I
    const-string v2, "mhd_actds"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/server/wifi/WWSMPatcher$Util;->getIntFromString(Ljava/lang/String;I)I

    move-result v10

    .line 344
    .local v10, "arp_check_table_delay_sec":I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 345
    .local v15, "it":Ljava/util/Iterator;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 346
    .local v3, "mhdUrlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 347
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 348
    .local v13, "entry":Ljava/util/Map$Entry;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 349
    .local v16, "key":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 350
    .local v21, "value":Ljava/lang/String;
    if-eqz v16, :cond_1

    if-eqz v21, :cond_1

    const-string v2, "mhd_url_"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 352
    .local v11, "country":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    const-string v2, "+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 356
    .local v20, "urls":[Ljava/lang/String;
    if-eqz v20, :cond_1

    move-object/from16 v0, v20

    array-length v2, v0

    if-lez v2, :cond_1

    .line 357
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move-object/from16 v0, v20

    array-length v2, v0

    if-ge v14, v2, :cond_2

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "http://"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v22, v20, v14

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v20, v14

    .line 357
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 360
    :cond_2
    move-object/from16 v0, v20

    invoke-virtual {v3, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 382
    .end local v3    # "mhdUrlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v11    # "country":Ljava/lang/String;
    .end local v13    # "entry":Ljava/util/Map$Entry;
    .end local v14    # "i":I
    .end local v15    # "it":Ljava/util/Iterator;
    .end local v16    # "key":Ljava/lang/String;
    .end local v20    # "urls":[Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 383
    .local v12, "e":Ljava/lang/Exception;
    const-string v2, "WifiMHD"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "err : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 365
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v3    # "mhdUrlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .restart local v15    # "it":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    if-eqz v2, :cond_4

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->setEnabled(I)V

    .line 368
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v2, :cond_5

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->setEnabled(I)V

    .line 371
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    if-eqz v2, :cond_6

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->setEnabled(I)V

    .line 374
    :cond_6
    const-string v2, "WifiMHD"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "set : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->setGsimLoggingEnabled()V

    move-object/from16 v2, p0

    .line 377
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->updateSslStripDetectionVariables(Ljava/util/HashMap;IIIII)V

    .line 379
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->updateArpSpoofingDetectionVariables(II)V

    .line 381
    const-string v2, "mhd_ver"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/server/wifi/WWSMPatcher$Util;->getIntFromString(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->MHD_VERSION:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateSslStripDetectionVariables(Ljava/util/HashMap;IIIII)V
    .locals 7
    .param p2, "ssdSet"    # I
    .param p3, "timeout_sec"    # I
    .param p4, "interval_sec"    # I
    .param p5, "repeat_min"    # I
    .param p6, "delayed_start_sec"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;IIIII)V"
        }
    .end annotation

    .prologue
    .line 946
    .local p1, "urlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->updateVariables(Ljava/util/HashMap;IIIII)V

    .line 949
    :cond_0
    return-void
.end method
