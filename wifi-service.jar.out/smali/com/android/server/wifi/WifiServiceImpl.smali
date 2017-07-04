.class public final Lcom/android/server/wifi/WifiServiceImpl;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiServiceImpl$Multicaster;,
        Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;,
        Lcom/android/server/wifi/WifiServiceImpl$LockList;,
        Lcom/android/server/wifi/WifiServiceImpl$WifiLock;,
        Lcom/android/server/wifi/WifiServiceImpl$EncryptTool;,
        Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;,
        Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;,
        Lcom/android/server/wifi/WifiServiceImpl$ApInfo;,
        Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;,
        Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;,
        Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;
    }
.end annotation


# static fields
.field private static final ACTIVITY_TRACKER_WAITING_TIME:I = 0x2710

.field private static APInfoCount:I = 0x0

.field private static AddedWifiProfile:Ljava/lang/String; = null

.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field private static final CSC_DISABLE_EMERGENCYCALLBACK_TRANSITION:Z

.field private static final CSC_SUPPORT_RSSIPOLLSTATE_DURINGWIFICALLING:Z

.field private static final CSC_WFA_CONFIG:Ljava/lang/String;

.field private static final DBG:Z

.field private static final DBGMHS:Z

.field private static final DISABLE_AUTO_RECONNECT:Z

.field private static final FILENAME_WIFIVERSION:Ljava/lang/String; = "/data/.wifiver.info"

.field private static final NETWORK_RESTRICTION_MODE:Z

.field private static OTACount:I = 0x0

.field private static final PATH_WFACONFIG:Ljava/lang/String; = "/data/.agingtest.info"

.field private static final PATH_WFAFrameBurstInfo:Ljava/lang/String; = "/data/.frameburst.info"

.field private static final PATH_WFAPropTxInfo:Ljava/lang/String; = "/data/.proptx.info"

.field private static final PATH_WFARoamOffInfo:Ljava/lang/String; = "/data/.roamoff.info"

.field static final SECURITY_EAP:I = 0x3

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WEP:I = 0x1

.field public static final SUPPORTMOBILEAPWPSPBC:Z

.field public static final SUPPORTMOBILEAPWPSPIN:Z

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field private static final VDBG:Z = false

.field public static final WIFIAP_POWER_MODE_ALARM:Ljava/lang/String; = "android.net.wifi.wifiap_power_mode_alarm"

.field public static final WIFIAP_POWER_MODE_ALARM_EXPIRE:I = 0x1

.field public static final WIFIAP_POWER_MODE_ALARM_OPTION:Ljava/lang/String; = "wifiap_power_mode_alarm_option"

.field public static final WIFIAP_POWER_MODE_ALARM_START:I = 0x0

.field public static final WIFIAP_POWER_MODE_ALARM_STOP:I = 0x2

.field public static final WIFIAP_POWER_MODE_ALARM_UNKNOWN:I = 0x3

.field public static final WIFIAP_POWER_MODE_VALUE_CHANGED:I = 0x4

.field private static final WIFI_AUTOJOIN:Z

.field private static final WIFI_PREFERREDBAND:Z

.field private static final WIFI_STOP_SCAN_FOR_ETWS:Z

.field private static final WIFI_VER_PREFIX_BRCM:Ljava/lang/String; = "HD_ver"

.field private static final WIFI_VER_PREFIX_MAVL:Ljava/lang/String; = "received"

.field private static final WIFI_VER_PREFIX_QCA:Ljava/lang/String; = "FW:"

.field private static final WIFI_VER_PREFIX_QCOM:Ljava/lang/String; = "CNSS"

.field private static final WIFI_VER_PREFIX_SPRD:Ljava/lang/String; = "[firmware :"

.field private static defaultTimeoutValue:I

.field private static filePathDefaultAp:Ljava/io/File;

.field private static filePathDefaultApCheck:Ljava/io/File;

.field private static filePathGeneralinfo:Ljava/io/File;

.field private static flagForDefaultAp:Z

.field private static flagForNWNameCreate:Z

.field private static mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

.field private static final mConfigPriorAp:Ljava/lang/String;

.field private static final mEnableAutoConnectHotspot:Ljava/lang/String;

.field private static mFilePath:Ljava/io/File;

.field private static mFirstScanAddProfile:Z

.field private static mFirstWifiSavedStateCheck:Z

.field private static mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

.field private static final mGetSPNameFromSimForWifiprofile:Z

.field private static mMatchedNetworkName:Ljava/lang/String;

.field private static mMatchedPrevNetworkName:Ljava/lang/String;

.field private static mOldApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

.field private static mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

.field private static final mReMovableDefaultAp:Z

.field private static mRemoveWifiProfile:Z

.field private static mRemovedDefaultAp:Z

.field private static final mSalesCode:Ljava/lang/String;

.field private static mWifiProfileLoaded:Z

.field private static mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;


# instance fields
.field private final CRED_DOWNLOAD_PATH:Ljava/lang/String;

.field private final PATH_GENERALINFOFILE_NAME:Ljava/lang/String;

.field private final PATH_PREVNETWORKNAME:Ljava/lang/String;

.field private final PATH_WIFIPROFILE:Ljava/lang/String;

.field private final PATH_WIFIPROFILE_NAME:Ljava/lang/String;

.field private allowWifi:Z

.field private allowWifiAp:Z

.field public bPreScanMove:I

.field public bScanMove:I

.field private checkVehicleTimeMilli:I

.field currentMs:J

.field private isBootCompleted:Z

.field private isProvisionSuccessful:Z

.field private isVehicle:Z

.field public isWifiScanWithSensor:Z

.field private mActivityTrackerListener:Landroid/hardware/scontext/SContextListener;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBcSmsReceived:Z

.field private mBlockScanFromOthers:Z

.field private mChameleonEnabled:Z

.field private mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

.field private final mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/IDevicePolicyManager;

.field private mDeviceManager:Lcom/android/server/DeviceManager3LMService;

.field private mDomRoamMaxUser:I

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mGsmMaxUser:I

.field private mHistoricalDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHotspotTestMode:Z

.field mInIdleMode:Z

.field private mIntRoamMaxUser:I

.field private mInterfaceName:Ljava/lang/String;

.field private mIsShutdown:Z

.field final mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

.field private mMaxUser:I

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiServiceImpl$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPppoeStateMachine:Landroid/net/wifi/PppoeStateMachine;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSUPPORTPPPOE:Z

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field mScanPending:Z

.field private mScreenOn:Z

.field private mSendDhcpRelease:Z

.field final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field final mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

.field private mSsid:Ljava/lang/String;

.field private mTetheredData:I

.field public mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

.field private final mUserManager:Landroid/os/UserManager;

.field private mWifiApDatabaseHelper:Landroid/net/wifi/WifiApDatabaseHelper;

.field private mWifiController:Lcom/android/server/wifi/WifiController;

.field private mWifiEnabled:Z

.field private mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

.field final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiStateMachineHandler:Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

.field private mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

.field private scanRequestCounter:I

.field startMs:J

.field private tWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 196
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    .line 197
    const-string v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-eq v0, v2, :cond_2

    :cond_0
    :goto_1
    sput-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->DBGMHS:Z

    .line 200
    const-string v0, "ro.csc.sales_code"

    const-string v2, "NONE"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiServiceImpl;->mSalesCode:Ljava/lang/String;

    .line 214
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_StopScanForETWS"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->WIFI_STOP_SCAN_FOR_ETWS:Z

    .line 219
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_NETWORK_RESTRICTION_MODE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->NETWORK_RESTRICTION_MODE:Z

    .line 243
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_ConfigPriorAP"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiServiceImpl;->mConfigPriorAp:Ljava/lang/String;

    .line 251
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_EnableMenuAutoJoin"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->WIFI_AUTOJOIN:Z

    .line 253
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_DisableAutoReconnect"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->DISABLE_AUTO_RECONNECT:Z

    .line 255
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_PreferredBand"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->WIFI_PREFERREDBAND:Z

    .line 257
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiServiceImpl;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    .line 259
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_SupportRssiPollStateDuringWifiCalling"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->CSC_SUPPORT_RSSIPOLLSTATE_DURINGWIFICALLING:Z

    .line 261
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_DisableEmergencyCallbackTransition"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->CSC_DISABLE_EMERGENCYCALLBACK_TRANSITION:Z

    .line 309
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/WifiServiceImpl;->filePathGeneralinfo:Ljava/io/File;

    .line 310
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/WifiServiceImpl;->filePathDefaultAp:Ljava/io/File;

    .line 311
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi/default_ap.check"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/WifiServiceImpl;->filePathDefaultApCheck:Ljava/io/File;

    .line 316
    sput-boolean v1, Lcom/android/server/wifi/WifiServiceImpl;->mFirstScanAddProfile:Z

    .line 318
    sput-boolean v1, Lcom/android/server/wifi/WifiServiceImpl;->mRemoveWifiProfile:Z

    .line 319
    sput-boolean v1, Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfileLoaded:Z

    .line 320
    sput-boolean v1, Lcom/android/server/wifi/WifiServiceImpl;->flagForDefaultAp:Z

    .line 321
    sput-boolean v1, Lcom/android/server/wifi/WifiServiceImpl;->flagForNWNameCreate:Z

    .line 322
    const-string v0, ""

    sput-object v0, Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;

    .line 323
    const-string v0, ""

    sput-object v0, Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;

    .line 324
    const-string v0, ""

    sput-object v0, Lcom/android/server/wifi/WifiServiceImpl;->AddedWifiProfile:Ljava/lang/String;

    .line 325
    sput v1, Lcom/android/server/wifi/WifiServiceImpl;->OTACount:I

    .line 326
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_RemovableDefaultAP"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->mReMovableDefaultAp:Z

    .line 327
    sput-boolean v1, Lcom/android/server/wifi/WifiServiceImpl;->mRemovedDefaultAp:Z

    .line 328
    const/16 v0, 0xa

    sput v0, Lcom/android/server/wifi/WifiServiceImpl;->APInfoCount:I

    .line 337
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_ConfigWFACertification"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiServiceImpl;->CSC_WFA_CONFIG:Ljava/lang/String;

    .line 338
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_SupportProfileSimProviderName"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->mGetSPNameFromSimForWifiprofile:Z

    .line 339
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_ConfigAutoConnectHotspot"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiServiceImpl;->mEnableAutoConnectHotspot:Ljava/lang/String;

    .line 341
    sput-boolean v1, Lcom/android/server/wifi/WifiServiceImpl;->mFirstWifiSavedStateCheck:Z

    .line 577
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget v0, Landroid/net/wifi/WifiApCust;->mDefaultTimeOut:I

    sput v0, Lcom/android/server/wifi/WifiServiceImpl;->defaultTimeoutValue:I

    .line 591
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupportWPSPBC:Z

    sput-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->SUPPORTMOBILEAPWPSPBC:Z

    .line 593
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupportWPSPIN:Z

    sput-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->SUPPORTMOBILEAPWPSPIN:Z

    .line 595
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/android/server/wifi/WifiServiceImpl;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    return-void

    :cond_1
    move v0, v2

    .line 196
    goto/16 :goto_0

    :cond_2
    move v2, v1

    .line 197
    goto/16 :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 601
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    .line 216
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBcSmsReceived:Z

    .line 217
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBlockScanFromOthers:Z

    .line 218
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Wifi_SupportPppoe"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSUPPORTPPPOE:Z

    .line 221
    new-instance v4, Lcom/android/server/wifi/WifiServiceImpl$LockList;

    invoke-direct {v4, p0, v9}, Lcom/android/server/wifi/WifiServiceImpl$LockList;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiServiceImpl$1;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    .line 231
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Wifi_SendSignalDuringPowerOff"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSendDhcpRelease:Z

    .line 234
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    .line 266
    iput-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl;->mActivityTrackerListener:Landroid/hardware/scontext/SContextListener;

    .line 268
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->isWifiScanWithSensor:Z

    .line 269
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->bPreScanMove:I

    .line 270
    iput v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->bScanMove:I

    .line 271
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->isVehicle:Z

    .line 272
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScreenOn:Z

    .line 275
    const v4, 0x493e0

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->checkVehicleTimeMilli:I

    .line 279
    iput-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl;->tWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 284
    iput v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    .line 286
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHotspotTestMode:Z

    .line 290
    iput-boolean v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->allowWifi:Z

    .line 291
    iput-boolean v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->allowWifiAp:Z

    .line 294
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiEnabled:Z

    .line 306
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->isBootCompleted:Z

    .line 307
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIsShutdown:Z

    .line 312
    const-string v4, "/data/misc/wifi"

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->PATH_WIFIPROFILE:Ljava/lang/String;

    .line 313
    const-string v4, "default_ap.conf"

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->PATH_WIFIPROFILE_NAME:Ljava/lang/String;

    .line 314
    const-string v4, "generalinfo_nw.conf"

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->PATH_GENERALINFOFILE_NAME:Ljava/lang/String;

    .line 315
    const-string v4, "prev_networkname.conf"

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->PATH_PREVNETWORKNAME:Ljava/lang/String;

    .line 330
    const-string v4, "/data/misc/wifi/"

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->CRED_DOWNLOAD_PATH:Ljava/lang/String;

    .line 342
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->isProvisionSuccessful:Z

    .line 568
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mChameleonEnabled:Z

    .line 569
    iput v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTetheredData:I

    .line 570
    const-string v4, ""

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSsid:Ljava/lang/String;

    .line 571
    iput v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMaxUser:I

    .line 572
    iput v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mGsmMaxUser:I

    .line 573
    iput v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mDomRoamMaxUser:I

    .line 574
    iput v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIntRoamMaxUser:I

    .line 4114
    new-instance v4, Lcom/android/server/wifi/WifiServiceImpl$12;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiServiceImpl$12;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 4426
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    .line 5581
    new-instance v4, Lcom/android/server/wifi/WifiServiceImpl$15;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiServiceImpl$15;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 602
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    .line 604
    new-instance v4, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    .line 606
    const-string v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 607
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    .line 609
    const-string v4, "wifi.interface"

    const-string v5, "wlan0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInterfaceName:Ljava/lang/String;

    .line 611
    new-instance v4, Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v4, v5, p0, v6}, Lcom/android/server/wifi/WifiTrafficPoller;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    .line 612
    new-instance v4, Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInterfaceName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 614
    new-instance v4, Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/server/wifi/SoftApStateMachine;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .line 615
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->setSoftApStateMachine(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    .line 619
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4, v8}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 620
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 621
    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 622
    const-string v4, "appops"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    .line 623
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 625
    new-instance v4, Lcom/android/server/wifi/WifiNotificationController;

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {v4, v5, v6}, Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    .line 627
    new-instance v4, Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/wifi/WifiSettingsStore;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    .line 634
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "WifiService"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 635
    .local v3, "wifiThread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 636
    new-instance v4, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    .line 637
    new-instance v4, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineHandler:Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    .line 638
    new-instance v4, Lcom/android/server/wifi/WifiController;

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, p0, v6}, Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    .line 644
    const-string v4, "scontext"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/scontext/SContextManager;

    iput-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 647
    const-string v4, "Private"

    sget-object v5, Lcom/android/server/wifi/WifiServiceImpl;->mConfigPriorAp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 648
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/wifi/WifiServiceImpl$1;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiServiceImpl$1;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 713
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 714
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 715
    const/16 v4, 0x3e8

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 716
    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$2;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    .line 745
    .local v2, "priorityReceiver":Landroid/content/BroadcastReceiver;
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 834
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/wifi/WifiServiceImpl$3;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiServiceImpl$3;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.CSC_WIFI_DEFAULTAP_DONE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 883
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/wifi/WifiServiceImpl$4;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiServiceImpl$4;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.CSC_WIFI_GENERALINFO_DONE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 922
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/wifi/WifiServiceImpl$5;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiServiceImpl$5;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 961
    const-string v4, "SPRINT"

    sget-object v5, Lcom/android/server/wifi/WifiServiceImpl;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 965
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTetheredData:I

    .line 967
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/wifi/WifiServiceImpl$6;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiServiceImpl$6;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.samsung.sec.android.application.csc.chameleon_wifi"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1011
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/wifi/WifiServiceImpl$7;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiServiceImpl$7;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1020
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 194
    sget-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiServiceImpl;Landroid/net/wifi/ScanResult;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->isBootCompleted:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/wifi/WifiServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->isBootCompleted:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTetheredData:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/wifi/WifiServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 194
    iput p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTetheredData:I

    return p1
.end method

.method static synthetic access$1300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/android/server/wifi/WifiServiceImpl;->mOldApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    return-object v0
.end method

.method static synthetic access$1302([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 0
    .param p0, "x0"    # [Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .prologue
    .line 194
    sput-object p0, Lcom/android/server/wifi/WifiServiceImpl;->mOldApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    return-object p0
.end method

.method static synthetic access$1400()Ljava/io/File;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/android/server/wifi/WifiServiceImpl;->mFilePath:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1402(Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Ljava/io/File;

    .prologue
    .line 194
    sput-object p0, Lcom/android/server/wifi/WifiServiceImpl;->mFilePath:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 194
    sget-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->flagForDefaultAp:Z

    return v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 194
    sput-boolean p0, Lcom/android/server/wifi/WifiServiceImpl;->flagForDefaultAp:Z

    return p0
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 194
    sget-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->mReMovableDefaultAp:Z

    return v0
.end method

.method static synthetic access$1700()Ljava/io/File;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/android/server/wifi/WifiServiceImpl;->filePathDefaultApCheck:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/io/File;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/android/server/wifi/WifiServiceImpl;->filePathDefaultAp:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/io/File;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/android/server/wifi/WifiServiceImpl;->filePathGeneralinfo:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 194
    sget-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->mFirstScanAddProfile:Z

    return v0
.end method

.method static synthetic access$2002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 194
    sput-boolean p0, Lcom/android/server/wifi/WifiServiceImpl;->mFirstScanAddProfile:Z

    return p0
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    .line 194
    sget-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfileLoaded:Z

    return v0
.end method

.method static synthetic access$2202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 194
    sput-boolean p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfileLoaded:Z

    return p0
.end method

.method static synthetic access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    return-object v0
.end method

.method static synthetic access$2302([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 0
    .param p0, "x0"    # [Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .prologue
    .line 194
    sput-object p0, Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    return-object p0
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 194
    sput-object p0, Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 194
    sget-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->mRemoveWifiProfile:Z

    return v0
.end method

.method static synthetic access$2502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 194
    sput-boolean p0, Lcom/android/server/wifi/WifiServiceImpl;->mRemoveWifiProfile:Z

    return p0
.end method

.method static synthetic access$2602(Lcom/android/server/wifi/WifiServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mChameleonEnabled:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMaxUser:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/wifi/WifiServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 194
    iput p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMaxUser:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mGsmMaxUser:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/wifi/WifiServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 194
    iput p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mGsmMaxUser:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mDomRoamMaxUser:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/wifi/WifiServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 194
    iput p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mDomRoamMaxUser:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiServiceImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isOwner(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIntRoamMaxUser:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/wifi/WifiServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 194
    iput p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIntRoamMaxUser:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->handleSecurityPolicy()V

    return-void
.end method

.method static synthetic access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    return-object v0
.end method

.method static synthetic access$3302([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 0
    .param p0, "x0"    # [Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .prologue
    .line 194
    sput-object p0, Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    return-object p0
.end method

.method static synthetic access$3400()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    return-object v0
.end method

.method static synthetic access$3402([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 0
    .param p0, "x0"    # [Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .prologue
    .line 194
    sput-object p0, Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    return-object p0
.end method

.method static synthetic access$3500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/android/server/wifi/WifiServiceImpl;->mConfigPriorAp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600()Z
    .locals 1

    .prologue
    .line 194
    sget-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->mGetSPNameFromSimForWifiprofile:Z

    return v0
.end method

.method static synthetic access$3700()Z
    .locals 1

    .prologue
    .line 194
    sget-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->flagForNWNameCreate:Z

    return v0
.end method

.method static synthetic access$3702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 194
    sput-boolean p0, Lcom/android/server/wifi/WifiServiceImpl;->flagForNWNameCreate:Z

    return p0
.end method

.method static synthetic access$3800()I
    .locals 1

    .prologue
    .line 194
    sget v0, Lcom/android/server/wifi/WifiServiceImpl;->APInfoCount:I

    return v0
.end method

.method static synthetic access$3900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3902(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 194
    sput-object p0, Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/net/wifi/PppoeStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPppoeStateMachine:Landroid/net/wifi/PppoeStateMachine;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100()Z
    .locals 1

    .prologue
    .line 194
    sget-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->mRemovedDefaultAp:Z

    return v0
.end method

.method static synthetic access$4102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 194
    sput-boolean p0, Lcom/android/server/wifi/WifiServiceImpl;->mRemovedDefaultAp:Z

    return p0
.end method

.method static synthetic access$4202(Lcom/android/server/wifi/WifiServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->isVehicle:Z

    return p1
.end method

.method static synthetic access$4300()Z
    .locals 1

    .prologue
    .line 194
    sget-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->WIFI_STOP_SCAN_FOR_ETWS:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/WifiServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBcSmsReceived:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/android/server/wifi/WifiServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBcSmsReceived:Z

    return p1
.end method

.method static synthetic access$4502(Lcom/android/server/wifi/WifiServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/hardware/scontext/SContextListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mActivityTrackerListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/server/wifi/WifiServiceImpl;Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Landroid/hardware/scontext/SContextListener;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mActivityTrackerListener:Landroid/hardware/scontext/SContextListener;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/server/wifi/WifiServiceImpl;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->checkSensorStatus(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/hardware/scontext/SContextManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/server/wifi/WifiServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBlockScanFromOthers:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/IBinder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/wifi/WifiServiceImpl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiServiceImpl;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method private acquireWifiLockLocked(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)Z
    .locals 6
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    .prologue
    .line 5162
    sget-boolean v1, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireWifiLockLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5164
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$LockList;->addLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->access$5600(Lcom/android/server/wifi/WifiServiceImpl$LockList;Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    .line 5166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5168
    .local v2, "ident":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    .line 5169
    iget v1, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 5181
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v4, 0x26006

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5182
    const/4 v1, 0x1

    .line 5186
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    return v1

    .line 5171
    :pswitch_0
    :try_start_1
    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5183
    :catch_0
    move-exception v0

    .line 5184
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 5186
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 5174
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_2
    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 5186
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 5178
    :pswitch_2
    :try_start_3
    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksAcquired:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksAcquired:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 5169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private addHistoricalDumpLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 4428
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 4429
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4431
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4432
    return-void
.end method

.method private checkAppOppAllowed(ILjava/lang/String;I)Z
    .locals 1
    .param p1, "op"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 5874
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p3, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkCallerCanAccessScanResults(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5852
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, p2}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->checkAppOppAllowed(ILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5870
    :cond_0
    :goto_0
    return v1

    .line 5858
    :cond_1
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v3, p2}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->checkAppOppAllowed(ILjava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5863
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isMApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 5865
    .local v0, "apiLevel23App":Z
    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isForegroundApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5868
    :cond_3
    const-string v1, "WifiService"

    const-string v3, "Permission denial: Need ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission to get scan results"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 5870
    goto :goto_0
.end method

.method private checkInteractAcrossUsersFull()Z
    .locals 2

    .prologue
    .line 3383
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkPasspointValidity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 3
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 5804
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 5806
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSID not expected for Passpoint: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' FQDN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5827
    :goto_0
    return-object v1

    .line 5811
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5812
    const-string v1, "no provider friendly name"

    goto :goto_0

    .line 5814
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 5816
    .local v0, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 5818
    :cond_2
    const-string v1, "no enterprise config"

    goto :goto_0

    .line 5820
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-nez v1, :cond_5

    .line 5824
    const-string v1, "no CA certificate"

    goto :goto_0

    .line 5827
    .end local v0    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkPeersMacAddress()Z
    .locals 2

    .prologue
    .line 3392
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PEERS_MAC_ADDRESS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkSensorStatus(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x19

    .line 4030
    const/4 v1, 0x0

    .line 4031
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4033
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4034
    const-string v2, "WifiService"

    const-string v3, "System do NOT have com.sec.feature.sensorhub feature"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4110
    :goto_0
    return v5

    .line 4037
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    invoke-virtual {v2, v4}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4038
    const-string v2, "WifiService"

    const-string v3, "SContextManager is NOT available for SContext.TYPE_ACTIVITY_TRACKER"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4042
    :cond_1
    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$11;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$11;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mActivityTrackerListener:Landroid/hardware/scontext/SContextListener;

    .line 4107
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mActivityTrackerListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 4108
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mActivityTrackerListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/scontext/SContextManager;->requestToUpdate(Landroid/hardware/scontext/SContextListener;I)V

    goto :goto_0
.end method

.method public static checkValidity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 3
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 5785
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-nez v0, :cond_0

    .line 5786
    const-string v0, "allowed kmgmt"

    .line 5800
    :goto_0
    return-object v0

    .line 5788
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 5789
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 5790
    const-string v0, "cardinality != 2"

    goto :goto_0

    .line 5792
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5793
    const-string v0, "not WPA_EAP"

    goto :goto_0

    .line 5795
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5797
    const-string v0, "not PSK or 8021X"

    goto :goto_0

    .line 5800
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 2219
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    return-void
.end method

.method private enforceAccessSecuredPermission()V
    .locals 3

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.ACCESS_WIFI_SECURED_INFO"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 2224
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    return-void
.end method

.method private enforceLocationHardwarePermission()V
    .locals 3

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "LocationHardware"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    return-void
.end method

.method private enforceReadCredentialPermission()V
    .locals 3

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_WIFI_CREDENTIAL"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    return-void
.end method

.method private enforceWorkSourcePermission()V
    .locals 3

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2242
    return-void
.end method

.method private getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 1240
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1241
    const/4 v0, 0x1

    .line 1247
    :goto_0
    return v0

    .line 1242
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1243
    const/4 v0, 0x2

    goto :goto_0

    .line 1244
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1245
    const/4 v0, 0x3

    goto :goto_0

    .line 1247
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1231
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 1237
    :cond_0
    :goto_0
    return v0

    .line 1233
    :cond_1
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v3

    .line 1235
    goto :goto_0

    .line 1237
    :cond_3
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private handleSecurityPolicy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4217
    const/4 v1, 0x0

    .line 4219
    .local v1, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v1, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4226
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Landroid/app/admin/IDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->allowWifi:Z

    .line 4227
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Landroid/app/admin/IDevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->allowWifiAp:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 4231
    :goto_1
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSecurityPolicy()     allowWifi ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->allowWifi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")     allowWifiAp ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->allowWifiAp:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->allowWifi:Z

    if-nez v3, :cond_0

    .line 4233
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiEnabledState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 4234
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->allowWifi:Z

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    .line 4235
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4236
    .local v2, "wifiToastIntent":Landroid/content/Intent;
    const-string v3, "info_type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4237
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4240
    .end local v2    # "wifiToastIntent":Landroid/content/Intent;
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->allowWifiAp:Z

    if-nez v3, :cond_1

    .line 4241
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApEnabledState()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_1

    .line 4242
    const/4 v3, 0x0

    invoke-virtual {p0, v6, v3}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 4243
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4244
    .restart local v2    # "wifiToastIntent":Landroid/content/Intent;
    const-string v3, "info_type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4245
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4248
    .end local v2    # "wifiToastIntent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 4220
    :catch_0
    move-exception v0

    .line 4221
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiService"

    const-string v4, "Failed getting userId using ActivityManagerNative"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 4222
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4223
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "WifiService"

    const-string v4, "Failed getting userId using ActivityManagerNative"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 4228
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v3

    goto/16 :goto_1
.end method

.method private insertLogForWifiEnabled(ZI)V
    .locals 10
    .param p1, "isEnabled"    # Z
    .param p2, "pid"    # I

    .prologue
    const/4 v9, 0x0

    .line 2607
    const-string v2, ""

    .line 2608
    .local v2, "data":Ljava/lang/String;
    const-string v4, ""

    .line 2610
    .local v4, "packageName":Ljava/lang/String;
    const/4 v6, -0x1

    if-eq p2, v6, :cond_1

    .line 2611
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2613
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2614
    .local v5, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p2, :cond_0

    .line 2615
    iget-object v4, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 2616
    sget-boolean v6, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertLogForWifiEnabled : packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2621
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    const-string v6, "com.android.settings"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.android.systemui"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2636
    :cond_2
    :goto_1
    return-void

    .line 2626
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_4

    const-string v6, "1"

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2628
    const-string v6, "TRUE"

    sget-object v7, Lcom/android/server/wifi/WifiStateMachine;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2629
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2630
    .local v1, "args":Landroid/os/Bundle;
    const-string v6, "bigdata"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2631
    const-string v6, "feature"

    const-string v7, "ONOF"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    const-string v6, "data"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const v8, 0x200ca

    invoke-virtual {v7, v8, v9, v9, v1}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 2626
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_4
    const-string v6, "0"

    goto :goto_2
.end method

.method private isCurrentProfile(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x1

    .line 3401
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 3402
    .local v0, "currentUser":I
    if-ne p1, v0, :cond_0

    .line 3411
    :goto_0
    return v4

    .line 3405
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 3406
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 3407
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne p1, v5, :cond_1

    goto :goto_0

    .line 3411
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isForegroundApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5893
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 5894
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 5895
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method private isHotspotTestMode()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1194
    const/4 v6, 0x0

    .line 1195
    .local v6, "isTestMode":Z
    sget-boolean v9, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v9, :cond_3

    .line 1196
    const-string v0, "/data/misc/wifi/hotspot_info"

    .line 1197
    .local v0, "HOTSPOT_INFO_FILE":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1198
    .local v1, "buf":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 1201
    .local v3, "bufReadLine":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .local v2, "buf":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1203
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1204
    .local v5, "hotspotInfo":[Ljava/lang/String;
    array-length v9, v5

    const/4 v10, 0x2

    if-lt v9, v10, :cond_0

    const-string v9, "ATT_HOTSPOT"

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1205
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-ne v9, v7, :cond_1

    move v6, v7

    :goto_1
    goto :goto_0

    :cond_1
    move v6, v8

    goto :goto_1

    .line 1212
    .end local v5    # "hotspotInfo":[Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    .line 1213
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1219
    .end local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "bufReadLine":Ljava/lang/String;
    :cond_3
    :goto_2
    if-nez v6, :cond_4

    iget-boolean v9, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHotspotTestMode:Z

    if-eqz v9, :cond_5

    :cond_4
    move v8, v7

    :cond_5
    return v8

    .line 1214
    .restart local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "bufReadLine":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1215
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1208
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 1209
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1212
    if-eqz v1, :cond_3

    .line 1213
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 1214
    :catch_2
    move-exception v4

    .line 1215
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1211
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1212
    :goto_4
    if-eqz v1, :cond_6

    .line 1213
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1216
    :cond_6
    :goto_5
    throw v7

    .line 1214
    :catch_3
    move-exception v4

    .line 1215
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1211
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_4

    .line 1208
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private isLocationEnabled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3371
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isMApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isForegroundApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 3373
    .local v0, "legacyForegroundApp":Z
    :goto_0
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .end local v0    # "legacyForegroundApp":Z
    :cond_2
    move v0, v1

    .line 3371
    goto :goto_0
.end method

.method private static isMApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5879
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 5884
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 5879
    goto :goto_0

    .line 5881
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isMobileApOn()Z
    .locals 3

    .prologue
    .line 5551
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->syncGetWifiApState()I

    move-result v0

    .line 5555
    .local v0, "wifiApState":I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 5556
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "returning true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5557
    const/4 v1, 0x1

    .line 5560
    :goto_0
    return v1

    .line 5559
    :cond_1
    const-string v1, "WifiService"

    const-string v2, "returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5560
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOwner(I)Z
    .locals 9
    .param p1, "uid"    # I

    .prologue
    const/4 v7, 0x1

    .line 3420
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3421
    .local v2, "ident":J
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 3423
    .local v6, "userId":I
    const/4 v1, 0x0

    .line 3424
    .local v1, "ownerUser":I
    if-ne v6, v1, :cond_0

    .line 3436
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v7

    .line 3427
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .line 3428
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 3429
    .local v4, "profile":Landroid/content/pm/UserInfo;
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v8, :cond_1

    .line 3436
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3433
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v7, 0x0

    .line 3436
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public static isValid(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 5775
    invoke-static {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkValidity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 5776
    .local v0, "validity":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->logAndReturnFalse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isValidPasspoint(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 5780
    invoke-static {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkPasspointValidity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 5781
    .local v0, "validity":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->logAndReturnFalse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWifiOn()Z
    .locals 3

    .prologue
    .line 5569
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    .line 5570
    .local v0, "wifiState":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5571
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "returning true wifi"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5572
    const/4 v1, 0x1

    .line 5575
    :goto_0
    return v1

    .line 5574
    :cond_1
    const-string v1, "WifiService"

    const-string v2, "returning flase wifi"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5575
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static logAndReturnFalse(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 5770
    const-string v0, "WifiService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5771
    const/4 v0, 0x0

    return v0
.end method

.method private noteAcquireWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    .locals 2
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5142
    iget v0, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 5149
    :goto_0
    return-void

    .line 5146
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 5142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private noteReleaseWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    .locals 2
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5152
    iget v0, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 5159
    :goto_0
    return-void

    .line 5156
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 5152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readWifiVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 4395
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 4396
    .local v6, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 4397
    .local v4, "in":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4398
    .local v3, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 4401
    .local v0, "bufLine":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 4402
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Not Found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 4416
    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4422
    :cond_0
    :goto_0
    return-object v7

    .line 4417
    :catch_0
    move-exception v2

    .line 4418
    .local v2, "e2":Ljava/lang/Exception;
    const-string v8, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4405
    .end local v2    # "e2":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4406
    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    if-nez v5, :cond_3

    .line 4407
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Can not open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v7

    .line 4416
    if-eqz v5, :cond_2

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_1
    move-object v4, v5

    .line 4419
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .line 4417
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 4418
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string v8, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4409
    .end local v2    # "e2":Ljava/lang/Exception;
    :cond_3
    :goto_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4410
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 4412
    :catch_2
    move-exception v1

    move-object v4, v5

    .line 4413
    .end local v5    # "in":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :goto_3
    :try_start_6
    const-string v7, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4416
    if-eqz v4, :cond_4

    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 4422
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 4416
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :cond_5
    if-eqz v5, :cond_6

    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_6
    move-object v4, v5

    .line 4419
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 4417
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    .line 4418
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string v7, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 4420
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 4417
    .end local v2    # "e2":Ljava/lang/Exception;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 4418
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string v7, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4415
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 4416
    :goto_5
    if-eqz v4, :cond_7

    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 4419
    :cond_7
    :goto_6
    throw v7

    .line 4417
    :catch_5
    move-exception v2

    .line 4418
    .restart local v2    # "e2":Ljava/lang/Exception;
    const-string v8, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4415
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_5

    .line 4412
    :catch_6
    move-exception v1

    goto :goto_3
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 4251
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4252
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4253
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4254
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4255
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4256
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4257
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4258
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4259
    sget-boolean v1, Lcom/android/server/wifi/WifiServiceImpl;->CSC_DISABLE_EMERGENCYCALLBACK_TRANSITION:Z

    if-nez v1, :cond_0

    .line 4260
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4262
    :cond_0
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4264
    const-string v1, "com.samsung.android.net.wifi.p2p_disabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4266
    sget-boolean v1, Lcom/android/server/wifi/WifiServiceImpl;->WIFI_STOP_SCAN_FOR_ETWS:Z

    if-eqz v1, :cond_1

    .line 4267
    const-string v1, "android.provider.Telephony.SMS_CB_WIFI_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4270
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4271
    return-void
.end method

.method private registerForPackageOrUserRemoval()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 4274
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 4275
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4276
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4277
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$14;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiServiceImpl$14;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 4302
    return-void
.end method

.method private registerForScanModeChange()V
    .locals 4

    .prologue
    .line 4202
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$13;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiServiceImpl$13;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Handler;)V

    .line 4210
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4213
    return-void
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 5227
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->access$5900(Lcom/android/server/wifi/WifiServiceImpl$LockList;Landroid/os/IBinder;)Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    move-result-object v1

    .line 5229
    .local v1, "wifiLock":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    sget-boolean v4, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseWifiLockLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5231
    :cond_0
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 5233
    .local v0, "hadLock":Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5235
    .local v2, "ident":J
    if-eqz v0, :cond_1

    .line 5236
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    .line 5237
    iget v4, v1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 5248
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v5, 0x26006

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5252
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5255
    :goto_2
    return v0

    .line 5231
    .end local v0    # "hadLock":Z
    .end local v2    # "ident":J
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 5239
    .restart local v0    # "hadLock":Z
    .restart local v2    # "ident":J
    :pswitch_0
    :try_start_1
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 5250
    :catch_0
    move-exception v4

    .line 5252
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 5242
    :pswitch_1
    :try_start_2
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 5252
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 5245
    :pswitch_2
    :try_start_3
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksReleased:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 5237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 1223
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1224
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1226
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1228
    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private removeMulticasterLocked(II)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "uid"    # I

    .prologue
    .line 5361
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    .line 5363
    .local v2, "removed":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    if-eqz v2, :cond_0

    .line 5364
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->unlinkDeathRecipient()V

    .line 5366
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 5367
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    .line 5370
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5372
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5375
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5377
    :goto_0
    return-void

    .line 5373
    :catch_0
    move-exception v3

    .line 5375
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private declared-synchronized setWifiEnabled(ZI)Z
    .locals 11
    .param p1, "enable"    # Z
    .param p2, "cmd"    # I

    .prologue
    .line 2489
    monitor-enter p0

    :try_start_0
    sget-boolean v8, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v8, :cond_0

    .line 2490
    const-string v8, "WifiService"

    const-string v9, "Invoking mWifiStateMachine.setWifiEnabled\n"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2493
    :cond_0
    if-eqz p1, :cond_1

    .line 2494
    const/4 v6, 0x0

    .line 2496
    .local v6, "userId":I
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v8

    iget v6, v8, Landroid/content/pm/UserInfo;->id:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2503
    :goto_0
    :try_start_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    const/4 v9, 0x0

    invoke-interface {v8, v9, v6}, Landroid/app/admin/IDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->allowWifi:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2506
    :goto_1
    :try_start_3
    iget-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->allowWifi:Z

    .line 2507
    iget-boolean v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->allowWifi:Z

    if-nez v8, :cond_1

    .line 2508
    const-string v8, "WifiService"

    const-string v9, "Wi-Fi is not allowed (Policy)a"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2510
    .local v7, "wifiToastIntent":Landroid/content/Intent;
    const-string v8, "info_type"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2511
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const v9, 0x20130

    invoke-virtual {v8, v9, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2512
    const/4 v8, 0x0

    .line 2603
    .end local v6    # "userId":I
    .end local v7    # "wifiToastIntent":Landroid/content/Intent;
    :goto_2
    monitor-exit p0

    return v8

    .line 2497
    .restart local v6    # "userId":I
    :catch_0
    move-exception v0

    .line 2498
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v8, "WifiService"

    const-string v9, "Failed getting userId using ActivityManagerNative"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2489
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v6    # "userId":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 2499
    .restart local v6    # "userId":I
    :catch_1
    move-exception v0

    .line 2500
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_5
    const-string v8, "WifiService"

    const-string v9, "Failed getting userId using ActivityManagerNative"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2528
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v6    # "userId":I
    :cond_1
    if-eqz p1, :cond_2

    .line 2529
    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const v8, 0x26015

    if-ne p2, v8, :cond_5

    const/4 v8, 0x3

    :goto_3
    invoke-virtual {v9, v8}, Lcom/android/server/wifi/WifiStateMachine;->canEnabledFirmwareType(I)I

    move-result v1

    .line 2530
    .local v1, "enabledFirmwareType":I
    const v8, 0x26015

    if-eq p2, v8, :cond_6

    const/4 v8, 0x3

    if-eq v1, v8, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isWifiSharingEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2533
    const-string v8, "WifiService"

    const-string v9, "Do nothing in case of MOBILEAP_WIFI_CONCURRENCY"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    .end local v1    # "enabledFirmwareType":I
    :cond_2
    :goto_4
    if-nez p1, :cond_3

    iget-boolean v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSendDhcpRelease:Z

    if-eqz v8, :cond_3

    .line 2554
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 2555
    .local v5, "mWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v8

    if-nez v8, :cond_3

    .line 2556
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendMessage - WifiStateMachine.CMD_SEND_DHCP_RELEASE , isCaptiveportal : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const v9, 0x200cd

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2561
    .end local v5    # "mWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_3
    if-eqz p1, :cond_4

    .line 2562
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/server/wifi/WifiServiceImpl;->mFirstScanAddProfile:Z

    .line 2563
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/server/wifi/WifiServiceImpl;->mRemoveWifiProfile:Z

    .line 2570
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v2

    .line 2572
    .local v2, "ident":J
    const v8, 0x26008

    if-ne p2, v8, :cond_9

    :try_start_6
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v8, p1}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v8

    if-nez v8, :cond_9

    .line 2574
    const/4 v8, 0x1

    .line 2594
    :try_start_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .line 2529
    .end local v2    # "ident":J
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 2535
    .restart local v1    # "enabledFirmwareType":I
    :cond_6
    if-ltz v1, :cond_2

    .line 2536
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isWifiSharingEnabled()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isMobileApOn()Z

    move-result v8

    if-nez v8, :cond_7

    .line 2538
    const-string v8, "WifiService"

    const-string v9, "Skip Wifi Enable Dialog in case of MOBILEAP_WIFI_CONCURRENCY not enabled"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2540
    :cond_7
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.samsung.android.intent.action.WIFI_ENABLE_WARNING"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2541
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "req_type"

    const v8, 0x26015

    if-ne p2, v8, :cond_8

    const/4 v8, 0x3

    :goto_5
    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2542
    const-string v8, "extra_type"

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2543
    const/high16 v8, 0x14000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2544
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const v9, 0x20130

    invoke-virtual {v8, v9, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2545
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 2541
    :cond_8
    const/4 v8, 0x0

    goto :goto_5

    .line 2577
    .end local v1    # "enabledFirmwareType":I
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v2    # "ident":J
    :cond_9
    if-eqz p1, :cond_b

    const v8, 0x26015

    if-eq p2, v8, :cond_b

    :try_start_8
    const-string v8, "TMB"

    sget-object v9, Lcom/android/server/wifi/WifiServiceImpl;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "MTR"

    sget-object v9, Lcom/android/server/wifi/WifiServiceImpl;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "TMK"

    sget-object v9, Lcom/android/server/wifi/WifiServiceImpl;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "VZW"

    sget-object v9, Lcom/android/server/wifi/WifiServiceImpl;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2582
    :cond_a
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiStateMachine;->isUsbTethered()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2583
    const-string v8, "WifiService"

    const-string v9, "Wifi is not allowed because USB Tether is enabling"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.samsung.android.intent.action.WIFI_ENABLE_WARNING"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2585
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v8, "req_type"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2586
    const-string v8, "extra_type"

    const/4 v9, 0x4

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2587
    const/high16 v8, 0x14000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2588
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const v9, 0x20130

    invoke-virtual {v8, v9, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2589
    const/4 v8, 0x0

    .line 2594
    :try_start_9
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .end local v4    # "intent":Landroid/content/Intent;
    :cond_b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2597
    const v8, 0x26015

    if-ne p2, v8, :cond_d

    .line 2598
    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    if-eqz p1, :cond_c

    const/4 v8, 0x1

    :goto_6
    invoke-virtual {v9, p2, v8}, Lcom/android/server/wifi/WifiController;->sendMessage(II)V

    .line 2603
    :goto_7
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 2594
    :catchall_1
    move-exception v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 2598
    :cond_c
    const/4 v8, 0x0

    goto :goto_6

    .line 2600
    :cond_d
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v8, p2}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    .line 2504
    .end local v2    # "ident":J
    .restart local v6    # "userId":I
    :catch_2
    move-exception v8

    goto/16 :goto_1
.end method

.method private shutdown()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2639
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 2640
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIsShutdown:Z

    .line 2641
    const-string v3, "WifiService"

    const-string v4, "Shutdown is called"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApEnabledState()I

    move-result v1

    .line 2645
    .local v1, "wifiApState":I
    const/16 v3, 0xc

    if-eq v1, v3, :cond_0

    const/16 v3, 0xd

    if-ne v1, v3, :cond_1

    .line 2647
    :cond_0
    const-string v3, "WifiService"

    const-string v4, "Mobile AP will disable"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v6}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 2651
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_saved_state"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 2652
    .local v2, "wifiSavedState":I
    if-ne v2, v5, :cond_2

    .line 2653
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2658
    .end local v2    # "wifiSavedState":I
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSendDhcpRelease:Z

    if-eqz v3, :cond_3

    .line 2659
    const-string v3, "WifiService"

    const-string v4, "sendMessage - WifiStateMachine.CMD_SEND_DHCP_RELEASE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const v4, 0x200cd

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2662
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->setShutdown(Z)V

    .line 2663
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 2665
    return v5

    .line 2654
    :catch_0
    move-exception v0

    .line 2655
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "WifiService"

    const-string v4, "SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static toHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x27

    .line 5836
    if-nez p0, :cond_0

    .line 5837
    const-string v2, "null"

    .line 5844
    :goto_0
    return-object v2

    .line 5839
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5840
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5841
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5842
    const-string v2, " %02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5841
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5844
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static verifyCert(Ljava/security/cert/X509Certificate;)V
    .locals 8
    .param p0, "caCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 3248
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 3249
    .local v0, "factory":Ljava/security/cert/CertificateFactory;
    invoke-static {}, Ljava/security/cert/CertPathValidator;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v4

    .line 3251
    .local v4, "validator":Ljava/security/cert/CertPathValidator;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    aput-object p0, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v3

    .line 3253
    .local v3, "path":Ljava/security/cert/CertPath;
    const-string v5, "AndroidCAStore"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 3254
    .local v1, "ks":Ljava/security/KeyStore;
    invoke-virtual {v1, v7, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 3255
    new-instance v2, Ljava/security/cert/PKIXParameters;

    invoke-direct {v2, v1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/security/KeyStore;)V

    .line 3256
    .local v2, "params":Ljava/security/cert/PKIXParameters;
    invoke-virtual {v2, v6}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 3257
    invoke-virtual {v4, v3, v2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    .line 3258
    return-void
.end method

.method private writeCredInfo(Ljava/lang/String;)V
    .locals 12
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 3458
    const-string v9, "WifiService"

    const-string v10, "Inside writeCredInfo"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3459
    const-string v4, "/data/misc/wifi/"

    .line 3460
    .local v4, "filePath":Ljava/lang/String;
    const/4 v1, 0x1

    .line 3463
    .local v1, "count":I
    :try_start_0
    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "cred.conf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3464
    .local v7, "newFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3465
    new-instance v7, Ljava/io/File;

    .end local v7    # "newFile":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "cred_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".conf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3466
    .restart local v7    # "newFile":Ljava/io/File;
    :goto_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3467
    add-int/lit8 v1, v1, 0x1

    .line 3468
    new-instance v7, Ljava/io/File;

    .end local v7    # "newFile":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "cred_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".conf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .restart local v7    # "newFile":Ljava/io/File;
    goto :goto_0

    .line 3472
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 3473
    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File name :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3474
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "chmod 664  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3475
    .local v0, "command":Ljava/lang/String;
    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Command"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3476
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    .line 3478
    .local v8, "p":Ljava/lang/Process;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    .line 3479
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3487
    .end local v0    # "command":Ljava/lang/String;
    .end local v8    # "p":Ljava/lang/Process;
    :goto_1
    const/4 v5, 0x0

    .line 3489
    .local v5, "fw":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3490
    .end local v5    # "fw":Ljava/io/FileOutputStream;
    .local v6, "fw":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3494
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v5, v6

    .line 3501
    .end local v6    # "fw":Ljava/io/FileOutputStream;
    .end local v7    # "newFile":Ljava/io/File;
    :goto_2
    return-void

    .line 3480
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v7    # "newFile":Ljava/io/File;
    .restart local v8    # "p":Ljava/lang/Process;
    :catch_0
    move-exception v2

    .line 3481
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 3483
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "p":Ljava/lang/Process;
    :catch_1
    move-exception v2

    .line 3484
    .local v2, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 3496
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "newFile":Ljava/io/File;
    :catch_2
    move-exception v2

    .line 3497
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v9, "WifiService"

    const-string v10, "File not found"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3491
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "fw":Ljava/io/FileOutputStream;
    .restart local v7    # "newFile":Ljava/io/File;
    :catch_3
    move-exception v3

    .line 3492
    .local v3, "e1":Ljava/lang/Exception;
    :goto_3
    :try_start_8
    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3494
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    .line 3498
    .end local v3    # "e1":Ljava/lang/Exception;
    .end local v5    # "fw":Ljava/io/FileOutputStream;
    .end local v7    # "newFile":Ljava/io/File;
    :catch_4
    move-exception v2

    .line 3499
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3494
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "fw":Ljava/io/FileOutputStream;
    .restart local v7    # "newFile":Ljava/io/File;
    :catchall_0
    move-exception v9

    :goto_4
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    throw v9
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .end local v5    # "fw":Ljava/io/FileOutputStream;
    .restart local v6    # "fw":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileOutputStream;
    .restart local v5    # "fw":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 3491
    .end local v5    # "fw":Ljava/io/FileOutputStream;
    .restart local v6    # "fw":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v3

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileOutputStream;
    .restart local v5    # "fw":Ljava/io/FileOutputStream;
    goto :goto_3
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 5321
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    .line 5323
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    monitor-enter v4

    .line 5324
    :try_start_0
    iget v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastEnabled:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastEnabled:I

    .line 5325
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    invoke-direct {v5, p0, p2, p1}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5330
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->stopFilteringMulticastV4Packets()V

    .line 5331
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5333
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5334
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5336
    .local v0, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5339
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5341
    :goto_0
    return-void

    .line 5331
    .end local v0    # "ident":J
    .end local v2    # "uid":I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 5337
    .restart local v0    # "ident":J
    .restart local v2    # "uid":I
    :catch_0
    move-exception v3

    .line 5339
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "lockMode"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 5118
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5119
    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    .line 5122
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument, lockMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5123
    sget-boolean v1, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5124
    :cond_0
    const/4 v1, 0x0

    .line 5137
    :goto_0
    return v1

    .line 5126
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 5127
    const/4 p4, 0x0

    .line 5129
    :cond_2
    if-eqz p4, :cond_3

    .line 5130
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceWakeSourcePermission(II)V

    .line 5132
    :cond_3
    if-nez p4, :cond_4

    .line 5133
    new-instance p4, Landroid/os/WorkSource;

    .end local p4    # "ws":Landroid/os/WorkSource;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 5135
    .restart local p4    # "ws":Landroid/os/WorkSource;
    :cond_4
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;-><init>(Lcom/android/server/wifi/WifiServiceImpl;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 5136
    .local v0, "wifiLock":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    monitor-enter v2

    .line 5137
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl;->acquireWifiLockLocked(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 5138
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, -0x1

    .line 3195
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3196
    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->isValidPasspoint(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3198
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 3200
    .local v2, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 3204
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/WifiServiceImpl;->verifyCert(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3219
    :cond_1
    const-string v4, "addOrUpdateNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SSID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, v3, :cond_2

    .line 3223
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 3234
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_3

    .line 3235
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .line 3242
    .end local v2    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :goto_1
    return v3

    .line 3205
    .restart local v2    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :catch_0
    move-exception v0

    .line 3206
    .local v0, "cpve":Ljava/security/cert/CertPathValidatorException;
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CA Cert "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " untrusted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3210
    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :catch_1
    move-exception v1

    .line 3211
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to verify certificate"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3225
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    goto :goto_0

    .line 3237
    :cond_3
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3241
    .end local v2    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_4
    const-string v4, "WifiService"

    const-string v5, "bad network configuration"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3210
    .restart local v2    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 3668
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3670
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->addToBlacklist(Ljava/lang/String;)V

    .line 3671
    return-void
.end method

.method public addToSBlacklist(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 3689
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3691
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->addToSBlacklist(Ljava/lang/String;)V

    .line 3692
    return-void
.end method

.method public addVendorNetworkafterFactoryReset()V
    .locals 10

    .prologue
    .line 5631
    const/4 v4, 0x0

    .line 5634
    .local v4, "mRes":I
    new-instance v1, Ljava/io/File;

    const-string v6, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5635
    .local v1, "filePathOfVendorAPInData":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v6, "/system/etc/wifi/default_ap.conf"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5637
    .local v2, "filePathOfVendorAPInSystem":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 5638
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    const-string v7, "/system/etc/wifi/default_ap.conf"

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->access$6300(Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v6

    sput-object v6, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 5647
    :goto_0
    :try_start_0
    sget-boolean v6, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addVendorNetworkafterFactoryReset: mfactoryResetVendorApInfo.length("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5648
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sget-object v6, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    array-length v6, v6

    if-ge v3, v6, :cond_4

    .line 5649
    sget-object v6, Lcom/android/server/wifi/WifiServiceImpl;->filePathGeneralinfo:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5650
    sget-boolean v6, Lcom/android/server/wifi/WifiServiceImpl;->mGetSPNameFromSimForWifiprofile:Z

    if-eqz v6, :cond_5

    .line 5651
    sget-object v6, Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;

    sget-object v7, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSPName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_6

    .line 5648
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5639
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 5640
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    const-string v7, "/data/misc/wifi/default_ap.conf"

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->access$6300(Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v6

    sput-object v6, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    goto :goto_0

    .line 5642
    :cond_3
    const-string v6, "WifiService"

    const-string v7, "addVendorNetworkafterFactoryReset : defaut_ap.conf does not exist."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5702
    :cond_4
    :goto_3
    return-void

    .line 5655
    .restart local v3    # "i":I
    :cond_5
    :try_start_1
    sget-object v6, Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;

    sget-object v7, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5660
    :cond_6
    sget-object v6, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v6, v6, v3

    if-eqz v6, :cond_1

    .line 5661
    sget-boolean v6, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v6, :cond_7

    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addVendorNetworkafterFactoryReset: ssid is ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5663
    :cond_7
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 5664
    .local v5, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    sget-object v7, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->access$700(Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 5665
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 5666
    const/4 v6, 0x2

    iput v6, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 5667
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    .line 5668
    sget-object v6, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    const-string v6, ""

    sget-object v7, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 5669
    sget-object v6, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 5670
    :cond_8
    const-string v6, "WPA-EAP IEEE8021X"

    sget-object v7, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 5671
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    .line 5672
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    .line 5674
    :cond_9
    const-string v6, "NONE"

    sget-object v7, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 5675
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    .line 5677
    :cond_a
    const-string v6, "SIM"

    sget-object v7, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 5678
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 5686
    :cond_b
    :goto_4
    const-string v6, "None"

    sget-object v7, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPhase2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 5687
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 5692
    :cond_c
    :goto_5
    sget-object v6, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getIdentity()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 5693
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    sget-object v7, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getIdentity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 5694
    :cond_d
    sget-object v6, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPassword()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 5695
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    sget-object v7, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 5696
    :cond_e
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    goto/16 :goto_2

    .line 5679
    :cond_f
    const-string v6, "AKA"

    sget-object v7, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 5680
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 5699
    .end local v3    # "i":I
    .end local v5    # "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    :catch_0
    move-exception v0

    .line 5700
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v6, "WifiService"

    const-string v7, "addVendorNetworkafterFactoryReset - NullPointerException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5681
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "i":I
    .restart local v5    # "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_10
    :try_start_2
    const-string v6, "PEAP"

    sget-object v7, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 5682
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_4

    .line 5683
    :cond_11
    const-string v6, "TTLS"

    sget-object v7, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 5684
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_4

    .line 5688
    :cond_12
    const-string v6, "MSCHAPV2"

    sget-object v7, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPhase2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 5689
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 5690
    :cond_13
    const-string v6, "GTC"

    sget-object v7, Lcom/android/server/wifi/WifiServiceImpl;->mfactoryResetVendorApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPhase2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 5691
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5
.end method

.method public addWifiApData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "limit"    # Ljava/lang/String;

    .prologue
    .line 3028
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isWifiApDbContain(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3029
    new-instance v0, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3030
    .local v0, "mWifiApDataInfo":Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApDatabaseHelper:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiApDatabaseHelper;->insert(Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;)J

    .line 3036
    .end local v0    # "mWifiApDataInfo":Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;
    :goto_0
    return-void

    .line 3031
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isWifiApListContain(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3032
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApDatabaseHelper:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/WifiApDatabaseHelper;->addList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3034
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApDatabaseHelper:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v1, p1, p3}, Landroid/net/wifi/WifiApDatabaseHelper;->modifyLimtData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 2887
    const-string v1, "application/x-wifi-config"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2889
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, v1}, Lcom/android/server/wifi/configparse/ConfigBuilder;->buildConfig(Ljava/lang/String;[BLandroid/content/Context;)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 2898
    :goto_0
    return-object v1

    .line 2891
    :catch_0
    move-exception v0

    .line 2892
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse wi-fi configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2896
    :cond_0
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown wi-fi config type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2891
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public callSECApi(Landroid/os/Message;)I
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4436
    if-nez p1, :cond_0

    .line 4437
    const/4 v14, -0x1

    .line 4910
    :goto_0
    return v14

    .line 4439
    :cond_0
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    sparse-switch v14, :sswitch_data_0

    .line 4907
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->recycle()V

    .line 4910
    const/4 v14, -0x1

    goto :goto_0

    .line 4441
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->recycle()V

    .line 4442
    const/4 v14, 0x0

    goto :goto_0

    .line 4444
    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4445
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v14

    goto :goto_0

    .line 4448
    :sswitch_2
    const/4 v14, 0x1

    goto :goto_0

    .line 4453
    :sswitch_3
    sget-boolean v14, Lcom/android/server/wifi/WifiServiceImpl;->CSC_SUPPORT_RSSIPOLLSTATE_DURINGWIFICALLING:Z

    if-eqz v14, :cond_1

    .line 4454
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4455
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v14

    goto :goto_0

    .line 4457
    :cond_1
    const/4 v14, -0x1

    goto :goto_0

    .line 4460
    :sswitch_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v14}, Landroid/os/INetworkManagementService;->getAccessPointNumConnectedSta()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    goto :goto_0

    .line 4461
    :catch_0
    move-exception v7

    .line 4462
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4463
    const/4 v14, -0x1

    goto :goto_0

    .line 4467
    .end local v7    # "e":Landroid/os/RemoteException;
    :sswitch_5
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4468
    .local v2, "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    const-string v15, "mac"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Landroid/os/INetworkManagementService;->setAccessPointDisassocSta(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    goto :goto_0

    .line 4469
    .end local v2    # "args":Landroid/os/Bundle;
    :catch_1
    move-exception v7

    .line 4470
    .restart local v7    # "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4471
    const/4 v14, 0x0

    goto :goto_0

    .line 4475
    .end local v7    # "e":Landroid/os/RemoteException;
    :sswitch_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v14}, Landroid/os/INetworkManagementService;->readWhiteList()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v14

    goto :goto_0

    .line 4476
    :catch_2
    move-exception v7

    .line 4477
    .restart local v7    # "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4479
    const/4 v14, 0x0

    goto :goto_0

    .line 4481
    .end local v7    # "e":Landroid/os/RemoteException;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiStateMachine;->getRvfMode()I

    move-result v14

    if-nez v14, :cond_2

    .line 4483
    :try_start_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4484
    .restart local v2    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    const-string v15, "maxClient"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v14, v15}, Landroid/os/INetworkManagementService;->setMaxClient(I)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v14

    goto/16 :goto_0

    .line 4485
    .end local v2    # "args":Landroid/os/Bundle;
    :catch_3
    move-exception v7

    .line 4486
    .restart local v7    # "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4489
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4492
    :sswitch_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "att_hotspot_test"

    invoke-static {v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 4493
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mHotspotTestMode:Z

    .line 4494
    const-string v14, "WifiService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  mHotspotTestMode : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mHotspotTestMode:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4498
    :goto_1
    const-string v14, "WifiService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mHotspotTestMode : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mHotspotTestMode:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 4503
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mHotspotTestMode:Z

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    goto/16 :goto_0

    .line 4497
    :cond_3
    const/4 v14, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mHotspotTestMode:Z
    :try_end_5
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 4499
    :catch_4
    move-exception v12

    .line 4500
    .local v12, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mHotspotTestMode:Z

    .line 4501
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "att_hotspot_test"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 4503
    .end local v12    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4505
    :sswitch_9
    const-string v14, "ro.build.characteristics"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "tablet"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    const-string v14, "ATT"

    sget-object v15, Lcom/android/server/wifi/WifiServiceImpl;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 4506
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mHotspotTestMode:Z

    if-nez v14, :cond_6

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mHotspotTestMode:Z

    .line 4507
    const-string v14, "WifiService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SET mHotspotTestMode : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mHotspotTestMode:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4508
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mHotspotTestMode:Z

    if-eqz v14, :cond_7

    .line 4509
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "att_hotspot_test"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4515
    :cond_5
    :goto_4
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4506
    :cond_6
    const/4 v14, 0x0

    goto :goto_3

    .line 4512
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "att_hotspot_test"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 4517
    :sswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4518
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    .line 4519
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4521
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4524
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4525
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string v14, "keep_connection"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 4526
    .local v8, "keepConnection":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v14, v8}, Lcom/android/server/wifi/WifiStateMachine;->sendUserSelection(Z)V

    .line 4527
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4530
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v8    # "keepConnection":Z
    :sswitch_d
    const-string v14, "SPRINT"

    sget-object v15, Lcom/android/server/wifi/WifiServiceImpl;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v14

    const/16 v15, 0x64

    if-ge v14, v15, :cond_9

    .line 4531
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 4533
    .local v5, "cr":Landroid/content/ContentResolver;
    :try_start_6
    const-string v14, "chameleon_tethereddata"

    invoke-static {v5, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mTetheredData:I

    .line 4534
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mTetheredData:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_8

    .line 4535
    const-string v14, "persist.sys.tether_data"

    const/4 v15, -0x1

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mTetheredData:I

    .line 4536
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "chameleon_tethereddata"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mTetheredData:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    .line 4545
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mTetheredData:I

    goto/16 :goto_0

    .line 4538
    :catch_5
    move-exception v7

    .line 4539
    .local v7, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v14, "WifiService"

    const-string v15, "Settings.SettingNotFoundException for CHAMELEON_TETHEREDDATA"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4543
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mTetheredData:I

    goto :goto_5

    .line 4547
    .end local v5    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_9
    const/4 v14, -0x1

    goto/16 :goto_0

    .line 4549
    :sswitch_e
    const-string v14, "SPRINT"

    sget-object v15, Lcom/android/server/wifi/WifiServiceImpl;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 4550
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 4552
    .restart local v5    # "cr":Landroid/content/ContentResolver;
    :try_start_7
    const-string v14, "chameleon_maxuser"

    invoke-static {v5, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mMaxUser:I
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    .line 4556
    :goto_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mMaxUser:I

    goto/16 :goto_0

    .line 4553
    :catch_6
    move-exception v7

    .line 4554
    .restart local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mMaxUser:I

    goto :goto_6

    .line 4558
    .end local v5    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_a
    const/4 v14, -0x1

    goto/16 :goto_0

    .line 4560
    :sswitch_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 4562
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4566
    :sswitch_10
    sget-boolean v14, Lcom/android/server/wifi/WifiServiceImpl;->WIFI_AUTOJOIN:Z

    if-nez v14, :cond_b

    sget-boolean v14, Lcom/android/server/wifi/WifiServiceImpl;->DISABLE_AUTO_RECONNECT:Z

    if-eqz v14, :cond_c

    .line 4567
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4569
    :cond_c
    const/4 v14, -0x1

    goto/16 :goto_0

    .line 4571
    :sswitch_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4572
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4575
    :sswitch_12
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessSecuredPermission()V

    .line 4576
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendCallSECApiAsync(Landroid/os/Message;)V

    .line 4577
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4580
    :sswitch_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4581
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4584
    :sswitch_14
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4585
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4590
    :sswitch_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4591
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4594
    :sswitch_16
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessSecuredPermission()V

    .line 4595
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4599
    :sswitch_17
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4600
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4603
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4604
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string v14, "enable"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 4605
    const-string v14, "WifiService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setWifiEnabled by pid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4606
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/server/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    .line 4607
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    .line 4608
    const-string v14, "WifiService"

    const-string v15, "WiFi Enabled with p2p -> Stop Scan, Stop Assoc"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendCallSECApiAsync(Landroid/os/Message;)V

    .line 4613
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4610
    :cond_d
    const-string v14, "WifiService"

    const-string v15, "Start scan, start assoc"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 4616
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4617
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string v14, "enable"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 4618
    const-string v14, "WifiService"

    const-string v15, "SEC_COMMAND_ID_SET_WIFI_SCAN_WITH_P2P : WiFi scan with p2p -> Stop Scan, Stop Assoc"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4627
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendCallSECApiAsync(Landroid/os/Message;)V

    .line 4628
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4620
    :cond_e
    const-string v14, "WifiService"

    const-string v15, "SEC_COMMAND_ID_SET_WIFI_SCAN_WITH_P2P : Start scan, start assoc"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4623
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendCallSECApiAsync(Landroid/os/Message;)V

    .line 4624
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4631
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    .line 4632
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4635
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4636
    .restart local v2    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const-string v15, "mode"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->setRvfMode(I)V

    .line 4638
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    if-eqz v14, :cond_f

    .line 4639
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v15, "mode"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setRvfMode(I)V

    .line 4643
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4645
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiStateMachine;->getRvfMode()I

    move-result v14

    goto/16 :goto_0

    .line 4650
    :sswitch_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4651
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4654
    :sswitch_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4655
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4657
    :sswitch_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4658
    const-string v14, "WifiService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "startPartialScan by pid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", uid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4660
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4661
    .restart local v2    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    const-string v16, "channel"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->startPartialScan(I[I)I

    move-result v14

    goto/16 :goto_0

    .line 4665
    .end local v2    # "args":Landroid/os/Bundle;
    :sswitch_20
    :try_start_8
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 4666
    .local v1, "arg":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    const-string v15, "txPower"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v14, v15}, Landroid/os/INetworkManagementService;->setTxPower(I)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v14

    goto/16 :goto_0

    .line 4667
    .end local v1    # "arg":Landroid/os/Bundle;
    :catch_7
    move-exception v7

    .line 4668
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4670
    const/4 v14, -0x1

    goto/16 :goto_0

    .line 4672
    .end local v7    # "e":Landroid/os/RemoteException;
    :sswitch_21
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->shutdown()Z

    .line 4673
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4677
    :sswitch_22
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4698
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v15, 0x26016

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v14 .. v18}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 4699
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4707
    :sswitch_23
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4709
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4740
    :sswitch_24
    const-string v14, "WifiService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "callSECApi - id : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4741
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4742
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v14, :cond_10

    .line 4743
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4745
    :cond_10
    const-string v14, "WifiService"

    const-string v15, "mWifiStateMachineChannel is not initialized"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4746
    const/4 v14, -0x1

    goto/16 :goto_0

    .line 4748
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiStateMachine;->getDhcpRenewAfterRoamingMode()I

    move-result v14

    goto/16 :goto_0

    .line 4750
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Bundle;

    const-string v16, "mode"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v15, v14}, Lcom/android/server/wifi/WifiStateMachine;->setDhcpRenewAfterRoamingMode(I)I

    move-result v14

    goto/16 :goto_0

    .line 4755
    :sswitch_27
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 4756
    const-string v14, "SKT"

    sget-object v15, Lcom/android/server/wifi/WifiServiceImpl;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 4757
    const-string v14, "persist.service.wifi_band"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    goto/16 :goto_0

    .line 4759
    :cond_11
    const-string v14, "persist.service.wifi_band"

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    goto/16 :goto_0

    .line 4763
    :sswitch_28
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4764
    sget-boolean v14, Lcom/android/server/wifi/WifiServiceImpl;->WIFI_PREFERREDBAND:Z

    if-eqz v14, :cond_14

    .line 4765
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 4766
    .local v3, "band":I
    if-ltz v3, :cond_12

    const/4 v14, 0x2

    if-le v3, v14, :cond_13

    .line 4767
    :cond_12
    const/4 v14, -0x1

    goto/16 :goto_0

    .line 4770
    :cond_13
    const-string v14, "persist.service.wifi_band"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4771
    const-string v14, "persist.service.wifi_band"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v3, :cond_14

    .line 4772
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4775
    .end local v3    # "band":I
    :cond_14
    const/4 v14, -0x1

    goto/16 :goto_0

    .line 4780
    :sswitch_29
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessSecuredPermission()V

    .line 4781
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4784
    :sswitch_2a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessSecuredPermission()V

    .line 4785
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 4786
    .local v4, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v14, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendSelectedWifiProfile(Landroid/os/Bundle;)V

    .line 4788
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4791
    .end local v4    # "bundle":Landroid/os/Bundle;
    :sswitch_2b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4792
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessSecuredPermission()V

    .line 4793
    const-string v14, "WifiService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "callSECApi: SEC_COMMAND_ID_CMCC_WLAN_ENABLE_WARN. setWifiEnabled: true pid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", uid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4795
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    .line 4796
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4800
    :sswitch_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4801
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4805
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4808
    :sswitch_2e
    const-string v14, "WifiService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "callSECApi - id : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4810
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4811
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v14, :cond_15

    .line 4812
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4814
    :cond_15
    const-string v14, "WifiService"

    const-string v15, "mWifiStateMachineChannel is not initialized"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4815
    const/4 v14, -0x1

    goto/16 :goto_0

    .line 4820
    :sswitch_2f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4821
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4823
    :sswitch_30
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessSecuredPermission()V

    .line 4824
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4825
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string v14, "cred"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4826
    .local v6, "credInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v13

    .line 4827
    .local v13, "wifiState":I
    const/4 v14, 0x3

    if-ne v13, v14, :cond_16

    .line 4828
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiServiceImpl;->writeCredInfo(Ljava/lang/String;)V

    .line 4829
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 4830
    .local v9, "msg1":Landroid/os/Message;
    const/16 v14, 0x2c

    iput v14, v9, Landroid/os/Message;->what:I

    .line 4831
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v14, v15, v9}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4833
    .end local v9    # "msg1":Landroid/os/Message;
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiServiceImpl;->writeCredInfo(Ljava/lang/String;)V

    .line 4835
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4840
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v6    # "credInfo":Ljava/lang/String;
    .end local v13    # "wifiState":I
    :sswitch_31
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 4843
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4848
    :sswitch_32
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessSecuredPermission()V

    .line 4851
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4853
    :sswitch_33
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4854
    const-string v14, "TRUE"

    sget-object v15, Lcom/android/server/wifi/WifiStateMachine;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 4855
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const v16, 0x200ca

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v15 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 4858
    :cond_17
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4861
    :sswitch_34
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v14, :cond_18

    .line 4862
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4863
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string v14, "extra_log"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/wifi/WifiServiceImpl;->addHistoricalDumpLog(Ljava/lang/String;)V

    .line 4865
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->recycle()V

    .line 4866
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4869
    :sswitch_35
    const/4 v11, -0x1

    .line 4870
    .local v11, "ret":I
    const-string v14, ""

    const-string v15, "GRIP"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 4871
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v11

    .line 4873
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->recycle()V

    move v14, v11

    .line 4874
    goto/16 :goto_0

    .line 4877
    .end local v11    # "ret":I
    :sswitch_36
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessSecuredPermission()V

    .line 4878
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 4879
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string v14, "parameters"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4880
    .local v10, "parameters":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v14, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateEvaluationParameters(Ljava/lang/String;)I

    move-result v14

    goto/16 :goto_0

    .line 4883
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v10    # "parameters":Ljava/lang/String;
    :sswitch_37
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessSecuredPermission()V

    .line 4884
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_hotspot20_enable"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    goto/16 :goto_0

    .line 4887
    :sswitch_38
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessSecuredPermission()V

    .line 4888
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4891
    :sswitch_39
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4892
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4895
    :sswitch_3a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessSecuredPermission()V

    .line 4896
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4899
    :sswitch_3b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4900
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4904
    :sswitch_3c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessSecuredPermission()V

    .line 4905
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v14

    goto/16 :goto_0

    .line 4439
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_11
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0xe -> :sswitch_7
        0xf -> :sswitch_2c
        0x11 -> :sswitch_13
        0x12 -> :sswitch_17
        0x13 -> :sswitch_14
        0x15 -> :sswitch_d
        0x16 -> :sswitch_e
        0x18 -> :sswitch_3
        0x19 -> :sswitch_a
        0x1a -> :sswitch_18
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1e -> :sswitch_27
        0x1f -> :sswitch_28
        0x20 -> :sswitch_1d
        0x22 -> :sswitch_1e
        0x23 -> :sswitch_1d
        0x24 -> :sswitch_1f
        0x29 -> :sswitch_15
        0x2a -> :sswitch_31
        0x2c -> :sswitch_30
        0x2d -> :sswitch_38
        0x32 -> :sswitch_23
        0x33 -> :sswitch_23
        0x34 -> :sswitch_23
        0x35 -> :sswitch_23
        0x3d -> :sswitch_16
        0x3e -> :sswitch_f
        0x46 -> :sswitch_2b
        0x47 -> :sswitch_10
        0x49 -> :sswitch_2
        0x4a -> :sswitch_19
        0x4b -> :sswitch_1
        0x4c -> :sswitch_1a
        0x4d -> :sswitch_33
        0x4e -> :sswitch_34
        0x4f -> :sswitch_35
        0x51 -> :sswitch_1e
        0x52 -> :sswitch_12
        0x53 -> :sswitch_1d
        0x54 -> :sswitch_1d
        0x64 -> :sswitch_24
        0x65 -> :sswitch_24
        0x66 -> :sswitch_24
        0x67 -> :sswitch_24
        0x68 -> :sswitch_24
        0x69 -> :sswitch_24
        0x6a -> :sswitch_24
        0x6b -> :sswitch_24
        0x6d -> :sswitch_24
        0x82 -> :sswitch_24
        0x83 -> :sswitch_24
        0x84 -> :sswitch_24
        0x85 -> :sswitch_24
        0x86 -> :sswitch_24
        0x87 -> :sswitch_24
        0x88 -> :sswitch_24
        0x89 -> :sswitch_24
        0x96 -> :sswitch_24
        0x97 -> :sswitch_24
        0xa1 -> :sswitch_24
        0xa2 -> :sswitch_24
        0xa3 -> :sswitch_24
        0xa4 -> :sswitch_24
        0xa5 -> :sswitch_24
        0xaa -> :sswitch_24
        0xab -> :sswitch_24
        0xb4 -> :sswitch_25
        0xb5 -> :sswitch_26
        0xbf -> :sswitch_8
        0xc0 -> :sswitch_9
        0xc3 -> :sswitch_20
        0xc5 -> :sswitch_22
        0xc8 -> :sswitch_b
        0xc9 -> :sswitch_c
        0xcb -> :sswitch_2e
        0xcc -> :sswitch_2a
        0xcd -> :sswitch_29
        0xce -> :sswitch_32
        0xd0 -> :sswitch_32
        0xd1 -> :sswitch_32
        0xd2 -> :sswitch_32
        0xdc -> :sswitch_2d
        0xdd -> :sswitch_2d
        0xde -> :sswitch_3b
        0xe6 -> :sswitch_21
        0xf0 -> :sswitch_2f
        0xf1 -> :sswitch_36
        0xf2 -> :sswitch_2f
        0xfe -> :sswitch_31
        0xff -> :sswitch_37
        0x100 -> :sswitch_39
        0x101 -> :sswitch_3a
        0x102 -> :sswitch_3c
        0x103 -> :sswitch_3c
        0x104 -> :sswitch_29
        0x3e9 -> :sswitch_31
    .end sparse-switch
.end method

.method public callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 4914
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 4998
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 5002
    :cond_0
    :goto_0
    return-object v2

    .line 4916
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 4917
    const-string v2, ""

    goto :goto_0

    .line 4919
    :sswitch_1
    sget-boolean v5, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "WifiService"

    const-string v6, "callSECStringApi - SEC_COMMAND_ID_GET_SCAN_RESULTS_EX"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4921
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v5, :cond_2

    .line 4922
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v5, v6, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4924
    :cond_2
    const-string v5, "WifiService"

    const-string v6, "mWifiStateMachineChannel is not initialized"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4928
    :sswitch_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 4930
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessSecuredPermission()V

    .line 4931
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    iget-object v5, v5, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v6, :cond_0

    .line 4935
    const/4 v4, 0x0

    .line 4936
    .local v4, "result":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v5, :cond_3

    .line 4937
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v5, v6, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    .line 4942
    const/4 v2, 0x0

    .line 4943
    .local v2, "encryptData":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 4944
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "key"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4946
    .local v3, "key":Ljava/lang/String;
    :try_start_0
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiServiceImpl$EncryptTool;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 4939
    .end local v2    # "encryptData":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    const-string v5, "WifiService"

    const-string v6, "mWifiStateMachineChannel is not initialized"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4947
    .restart local v2    # "encryptData":Ljava/lang/String;
    .restart local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 4948
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "WifiService"

    const-string v6, "Encryption failure"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4955
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "encryptData":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    :sswitch_3
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callSECStringApi - id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4957
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4958
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v5, :cond_4

    .line 4959
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v5, v6, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 4961
    :cond_4
    const-string v5, "WifiService"

    const-string v6, "mWifiStateMachineChannel is not initialized"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4966
    :sswitch_4
    sget-boolean v5, Lcom/android/server/wifi/WifiServiceImpl;->SUPPORTMOBILEAPWPSPBC:Z

    if-nez v5, :cond_5

    sget-boolean v5, Lcom/android/server/wifi/WifiServiceImpl;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v5, :cond_0

    .line 4967
    :cond_5
    const-string v5, "WifiService"

    const-string v6, "callSECStringApi - SEC_COMMAND_ID_WPS_AP_METHOD "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4969
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 4970
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "cmd_type"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "wps_ap_pin_set"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "cmd_type"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "wps_ap_pin_client"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "cmd_type"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "wps_check_pin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4971
    :cond_6
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    const-string v6, "cmd_type"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "wps_pin"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/os/INetworkManagementService;->wps_ap_method(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 4973
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    const-string v6, "cmd_type"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/os/INetworkManagementService;->wps_ap_method(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto/16 :goto_0

    .line 4975
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_1
    move-exception v1

    .line 4976
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 4982
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 4983
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v5, :cond_8

    .line 4984
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v5, v6, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 4986
    :cond_8
    const-string v5, "WifiService"

    const-string v6, "mWifiStateMachineChannel is not initialized"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4990
    :sswitch_6
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 4991
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v5, :cond_9

    .line 4992
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v5, v6, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 4994
    :cond_9
    const-string v5, "WifiService"

    const-string v6, "mWifiStateMachineChannel is not initialized"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4914
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_1
        0x27 -> :sswitch_2
        0x6c -> :sswitch_3
        0xa0 -> :sswitch_3
        0xca -> :sswitch_4
        0xcf -> :sswitch_5
        0xdf -> :sswitch_6
    .end sparse-switch
.end method

.method public checkAndStartWifi()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1030
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mIsShutdown:Z

    .line 1033
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v1

    .line 1034
    .local v1, "wifiEnabled":Z
    const-string v3, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService starting up with Wi-Fi "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_4

    const-string v2, "enabled"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForScanModeChange()V

    .line 1038
    const-string v2, "VZW"

    sget-object v3, Lcom/android/server/wifi/WifiServiceImpl;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1040
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x41

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1044
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wifi/WifiServiceImpl$8;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiServiceImpl$8;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1059
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1061
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "device_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    .line 1062
    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1063
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1065
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wifi/WifiServiceImpl$9;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiServiceImpl$9;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1082
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wifi/WifiServiceImpl$10;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiServiceImpl$10;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.SET_HOME_AP"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1136
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForBroadcasts()V

    .line 1137
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForPackageOrUserRemoval()V

    .line 1138
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    .line 1140
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiController;->start()V

    .line 1142
    const-string v2, "false"

    const-string v3, "vold.encrypt_progress"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1143
    const-string v2, "WifiService"

    const-string v3, "Do not turn on the Wi-Fi if en/decryption is in progress"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiIbssToggleEnabled()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 1153
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2, v6}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiIbssToggled(Z)V

    .line 1154
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2, v7}, Lcom/android/server/wifi/WifiSettingsStore;->setOrRecoveryScanMode(Z)V

    .line 1158
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getMessenger()Landroid/os/Messenger;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->makeWifiWatchdogStateMachine(Landroid/content/Context;Landroid/os/Messenger;)Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .line 1161
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSUPPORTPPPOE:Z

    if-eqz v2, :cond_3

    .line 1162
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/wifi/PppoeStateMachine;->makePppoeStateMachine(Landroid/content/Context;)Landroid/net/wifi/PppoeStateMachine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPppoeStateMachine:Landroid/net/wifi/PppoeStateMachine;

    .line 1164
    :cond_3
    return-void

    .line 1034
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_4
    const-string v2, "disabled"

    goto/16 :goto_0

    .line 1147
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    :cond_5
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    goto :goto_1
.end method

.method public checkWarningPopup()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5394
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wlan_permission_available"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    .line 3678
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3680
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->clearBlacklist()V

    .line 3681
    return-void
.end method

.method public clearSBlacklist()V
    .locals 1

    .prologue
    .line 3700
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3702
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->clearSBlacklist()V

    .line 3703
    return-void
.end method

.method public deleteWifiApData(Ljava/lang/String;)V
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 3044
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApDatabaseHelper:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiApDatabaseHelper;->deleteWifiApData(Ljava/lang/String;)V

    .line 3045
    return-void
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)V
    .locals 1
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 3829
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3830
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3831
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 3832
    return-void
.end method

.method public disableNetwork(I)Z
    .locals 4
    .param p1, "netId"    # I

    .prologue
    const/4 v0, 0x0

    .line 3307
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3308
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableNetwork: pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const v1, 0x7fffffff

    if-eq p1, v1, :cond_0

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_1

    .line 3310
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "invalid netId was used"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    :goto_0
    return v0

    .line 3313
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_2

    .line 3314
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    goto :goto_0

    .line 3316
    :cond_2
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 3061
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3062
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    .line 3064
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4306
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v16, "android.permission.DUMP"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_0

    .line 4308
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", uid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4392
    :goto_0
    return-void

    .line 4313
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Wi-Fi is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4314
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Stay-awake conditions: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "stay_on_while_plugged_in"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4317
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mMulticastEnabled "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastEnabled:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4318
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mMulticastDisabled "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastDisabled:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4319
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mInIdleMode "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4320
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mScanPending "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4323
    const-string v15, "Wi-Fi api call history:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4324
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mHistoricalDumpLogs:Ljava/util/List;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4325
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4327
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/wifi/WifiController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4328
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/wifi/WifiSettingsStore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4329
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/wifi/WifiNotificationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4330
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/wifi/WifiTrafficPoller;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4332
    const-string v15, "Latest scan results:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4333
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v14

    .line 4334
    .local v14, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 4335
    .local v12, "nowMs":J
    if-eqz v14, :cond_4

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-eqz v15, :cond_4

    .line 4336
    const-string v15, "    BSSID              Frequency  RSSI    Age      SSID                                 Flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4338
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    .line 4339
    .local v11, "r":Landroid/net/wifi/ScanResult;
    const-wide/16 v6, 0x0

    .line 4340
    .local v6, "ageSec":J
    const-wide/16 v4, 0x0

    .line 4341
    .local v4, "ageMilli":J
    iget-wide v0, v11, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v16, v0

    cmp-long v15, v12, v16

    if-lez v15, :cond_1

    iget-wide v0, v11, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_1

    .line 4342
    iget-wide v0, v11, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v16, v0

    sub-long v16, v12, v16

    const-wide/16 v18, 0x3e8

    div-long v6, v16, v18

    .line 4343
    iget-wide v0, v11, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v16, v0

    sub-long v16, v12, v16

    const-wide/16 v18, 0x3e8

    rem-long v4, v16, v18

    .line 4345
    :cond_1
    const-string v8, " "

    .line 4346
    .local v8, "candidate":Ljava/lang/String;
    iget v15, v11, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    if-lez v15, :cond_2

    const-string v8, "+"

    .line 4347
    :cond_2
    const-string v16, "  %17s  %9d  %5d  %3d.%03d%s   %-32s  %s\n"

    const/16 v15, 0x8

    new-array v0, v15, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/4 v15, 0x0

    iget-object v0, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v17, v15

    const/4 v15, 0x1

    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v15

    const/4 v15, 0x2

    iget v0, v11, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v17, v15

    const/4 v15, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v17, v15

    const/4 v15, 0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v17, v15

    const/4 v15, 0x5

    aput-object v8, v17, v15

    const/16 v18, 0x6

    iget-object v15, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v15, :cond_3

    const-string v15, ""

    :goto_2
    aput-object v15, v17, v18

    const/4 v15, 0x7

    iget-object v0, v11, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v17, v15

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_1

    :cond_3
    iget-object v15, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_2

    .line 4357
    .end local v4    # "ageMilli":J
    .end local v6    # "ageSec":J
    .end local v8    # "candidate":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "r":Landroid/net/wifi/ScanResult;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4358
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Locks acquired: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " full, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " full high perf, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksAcquired:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " scan"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4361
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Locks released: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " full, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " full high perf, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksReleased:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " scan"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4364
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4365
    const-string v15, "Locks held:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4366
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    move-object/from16 v0, p2

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v15, v0}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->access$5000(Lcom/android/server/wifi/WifiServiceImpl$LockList;Ljava/io/PrintWriter;)V

    .line 4368
    const-string v15, "Multicast Locks held:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4369
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    .line 4370
    .local v10, "l":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    const-string v15, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4371
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    .line 4374
    .end local v10    # "l":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4375
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4376
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4377
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4380
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Wi-Fi version\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/data/.wifiver.info"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->readWifiVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4381
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4383
    const-string v15, "MHS dump ----- start -----\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4384
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/net/wifi/WifiApCust;->dump(Ljava/io/PrintWriter;)V

    .line 4385
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4386
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isWifiSharingEnabled:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->isWifiSharingEnabled()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4387
    sget-boolean v15, Lcom/android/server/wifi/WifiServiceImpl;->DBGMHS:Z

    if-eqz v15, :cond_6

    .line 4388
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MHS Clients\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApStaList()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4389
    :cond_6
    const-string v15, "MHS dump ----- end -----\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4390
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0
.end method

.method public enableAggressiveHandover(I)V
    .locals 1
    .param p1, "enabled"    # I

    .prologue
    .line 5414
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 5415
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableAggressiveHandover(I)V

    .line 5416
    return-void
.end method

.method public enableAutoJoinWhenAssociated(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 5434
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 5435
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableAutoJoinWhenAssociated(Z)Z

    move-result v0

    return v0
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 3290
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3291
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 3292
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    move-result v0

    .line 3296
    :goto_0
    return v0

    .line 3295
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableTdls(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "remoteAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 3796
    if-nez p1, :cond_0

    .line 3797
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "remoteAddress cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3800
    :cond_0
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    .line 3801
    .local v0, "params":Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;
    iput-object p1, v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->remoteIpAddress:Ljava/lang/String;

    .line 3802
    iput-boolean p2, v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->enable:Z

    .line 3803
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3804
    return-void
.end method

.method public enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 3808
    if-nez p1, :cond_0

    .line 3809
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "remoteMacAddress cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3812
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->enableTdls(Ljava/lang/String;Z)V

    .line 3813
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    .line 5404
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 5405
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableVerboseLogging(I)V

    .line 5406
    return-void
.end method

.method public enableWifiSharing(Z)Z
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    const/16 v7, 0xa

    const/4 v2, 0x0

    .line 5503
    const-string v3, "VZW"

    sget-object v4, Lcom/android/server/wifi/WifiServiceImpl;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5505
    if-eqz p1, :cond_1

    .line 5506
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_enable_wifi_sharing"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5529
    :cond_0
    :goto_0
    return v1

    .line 5507
    :cond_1
    if-nez p1, :cond_0

    .line 5508
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_ap_enable_wifi_sharing"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5511
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WIFI_AP_WIFI_SHARING value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_ap_wifi_sharing"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5512
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_ap_wifi_sharing"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v7, :cond_2

    .line 5513
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_ap_wifi_sharing"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5516
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isMobileApOn()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isWifiOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5518
    const-string v3, "WifiService"

    const-string v4, "Both MHS and Wifi are ON"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5519
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 5521
    const-wide/16 v2, 0x258

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5522
    :catch_0
    move-exception v0

    .line 5523
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    move v1, v2

    .line 5529
    goto :goto_0
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 5110
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 5115
    :goto_0
    return-void

    .line 5113
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public factoryReset()V
    .locals 10

    .prologue
    const/4 v8, 0x3

    const/4 v9, 0x0

    .line 5706
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 5708
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string v7, "no_network_reset"

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5766
    :goto_0
    return-void

    .line 5712
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string v7, "no_config_tethering"

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 5714
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v5

    .line 5715
    .local v5, "wifiState":I
    if-eq v5, v8, :cond_1

    .line 5717
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v6, v9}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z

    .line 5718
    const-string v6, "WifiService"

    const-string v7, "setting wifi toggled to false"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5720
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v9}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 5721
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5724
    .end local v5    # "wifiState":I
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string v7, "no_config_wifi"

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 5725
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v5

    .line 5726
    .restart local v5    # "wifiState":I
    if-ne v5, v8, :cond_6

    .line 5728
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 5729
    .local v3, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_5

    .line 5730
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 5731
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiServiceImpl;->removeNetwork(I)Z

    goto :goto_2

    .line 5733
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    sget-boolean v6, Lcom/android/server/wifi/WifiServiceImpl;->mReMovableDefaultAp:Z

    if-eqz v6, :cond_4

    .line 5734
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->addVendorNetworkafterFactoryReset()V

    .line 5735
    sget-object v6, Lcom/android/server/wifi/WifiServiceImpl;->filePathDefaultApCheck:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5736
    sget-object v6, Lcom/android/server/wifi/WifiServiceImpl;->filePathDefaultApCheck:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 5739
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->saveConfiguration()Z

    .line 5760
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v5    # "wifiState":I
    :cond_5
    :goto_3
    const-string v6, "DEFAULT_ON"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Wifi_ConfigSnsStatus"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 5761
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_watchdog_poor_network_test_enabled"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5765
    :goto_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const v7, 0x20272

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 5742
    .restart local v5    # "wifiState":I
    :cond_6
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_scan_always_enabled"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 5743
    .local v4, "scanAlways":I
    if-eqz v4, :cond_7

    .line 5744
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_scan_always_enabled"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5747
    :cond_7
    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5748
    :goto_5
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 5749
    .local v2, "msg":Landroid/os/Message;
    const/16 v6, 0xf2

    iput v6, v2, Landroid/os/Message;->what:I

    .line 5750
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiServiceImpl;->callSECApi(Landroid/os/Message;)I

    .line 5752
    sput-boolean v9, Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfileLoaded:Z

    .line 5755
    if-eqz v4, :cond_5

    .line 5756
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_scan_always_enabled"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 5763
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "scanAlways":I
    .end local v5    # "wifiState":I
    :cond_8
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 5721
    .restart local v5    # "wifiState":I
    :catch_0
    move-exception v6

    goto/16 :goto_1

    .line 5747
    .restart local v4    # "scanAlways":I
    :catch_1
    move-exception v6

    goto :goto_5
.end method

.method public fetchHs20OsuProviders()Z
    .locals 1

    .prologue
    .line 3453
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3454
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->fetchHs20OsuProviders()Z

    move-result v0

    return v0
.end method

.method public getAggressiveHandover()I
    .locals 1

    .prologue
    .line 5419
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 5420
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getAggressiveHandover()I

    move-result v0

    return v0
.end method

.method public getAllowScansWithTraffic()I
    .locals 1

    .prologue
    .line 5429
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 5430
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getAllowScansWithTraffic()I

    move-result v0

    return v0
.end method

.method public getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2190
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChannelList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1184
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1185
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetChannelList(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 1189
    :goto_0
    return-object v0

    .line 1188
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3838
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3839
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3153
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3154
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 3155
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetConfiguredNetworks(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 3159
    :goto_0
    return-object v0

    .line 3158
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 3326
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3331
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;
    .locals 2

    .prologue
    .line 5454
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 5455
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceReadCredentialPermission()V

    .line 5456
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 5457
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetConnectionStatistics(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v0

    .line 5460
    :goto_0
    return-object v0

    .line 5459
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5460
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3548
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 3549
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 3550
    .local v0, "country":Ljava/lang/String;
    return-object v0
.end method

.method public getCountryRev()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3947
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3948
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetCountryRev()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentNetwork()Landroid/net/Network;
    .locals 1

    .prologue
    .line 5831
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 5832
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 7

    .prologue
    .line 3597
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3598
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->syncGetDhcpResults()Landroid/net/DhcpResults;

    move-result-object v0

    .line 3600
    .local v0, "dhcpResults":Landroid/net/DhcpResults;
    new-instance v4, Landroid/net/DhcpInfo;

    invoke-direct {v4}, Landroid/net/DhcpInfo;-><init>()V

    .line 3602
    .local v4, "info":Landroid/net/DhcpInfo;
    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet4Address;

    if-eqz v6, :cond_0

    .line 3604
    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    check-cast v6, Ljava/net/Inet4Address;

    invoke-static {v6}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->ipAddress:I

    .line 3607
    :cond_0
    iget-object v6, v0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    if-eqz v6, :cond_1

    .line 3608
    iget-object v6, v0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    check-cast v6, Ljava/net/Inet4Address;

    invoke-static {v6}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->gateway:I

    .line 3611
    :cond_1
    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v6, :cond_2

    .line 3612
    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v6

    invoke-static {v6}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->netmask:I

    .line 3615
    :cond_2
    const/4 v2, 0x0

    .line 3616
    .local v2, "dnsFound":I
    iget-object v6, v0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 3617
    .local v1, "dns":Ljava/net/InetAddress;
    instance-of v6, v1, Ljava/net/Inet4Address;

    if-eqz v6, :cond_3

    .line 3618
    if-nez v2, :cond_6

    .line 3619
    check-cast v1, Ljava/net/Inet4Address;

    .end local v1    # "dns":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->dns1:I

    .line 3623
    :goto_0
    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x1

    if-le v2, v6, :cond_3

    .line 3626
    :cond_4
    iget-object v5, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    .line 3627
    .local v5, "serverAddress":Ljava/net/InetAddress;
    instance-of v6, v5, Ljava/net/Inet4Address;

    if-eqz v6, :cond_5

    .line 3628
    check-cast v5, Ljava/net/Inet4Address;

    .end local v5    # "serverAddress":Ljava/net/InetAddress;
    invoke-static {v5}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->serverAddress:I

    .line 3630
    :cond_5
    iget v6, v0, Landroid/net/DhcpResults;->leaseDuration:I

    iput v6, v4, Landroid/net/DhcpInfo;->leaseDuration:I

    .line 3632
    return-object v4

    .line 3621
    .restart local v1    # "dns":Ljava/net/InetAddress;
    :cond_6
    check-cast v1, Ljava/net/Inet4Address;

    .end local v1    # "dns":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->dns2:I

    goto :goto_0
.end method

.method public getEnableAutoJoinWhenAssociated()Z
    .locals 1

    .prologue
    .line 5439
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 5440
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getEnableAutoJoinWhenAssociated()Z

    move-result v0

    return v0
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    .line 3579
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3580
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v0

    return v0
.end method

.method public getFullRoamScanPeriod()I
    .locals 1

    .prologue
    .line 3911
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3912
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetFullRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public getHalBasedAutojoinOffload()I
    .locals 1

    .prologue
    .line 5448
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 5449
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getHalBasedAutojoinOffload()I

    move-result v0

    return v0
.end method

.method public getHs20OsuProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hs20/WifiHs20OsuProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3443
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3444
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getHs20OsuProviders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLinkStatus()I
    .locals 1

    .prologue
    .line 3953
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3954
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetLinkStatus()I

    move-result v0

    return v0
.end method

.method public getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 3184
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3185
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetMatchingWifiConfig(Landroid/net/wifi/ScanResult;Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 3968
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3969
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4001
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSUPPORTPPPOE:Z

    if-nez v1, :cond_1

    .line 4008
    :cond_0
    :goto_0
    return-object v0

    .line 4004
    :cond_1
    const-string v1, "pppoe"

    const-string v2, "wifiservice: getPPPOEInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4005
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPppoeStateMachine:Landroid/net/wifi/PppoeStateMachine;

    if-eqz v1, :cond_0

    .line 4006
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPppoeStateMachine:Landroid/net/wifi/PppoeStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/PppoeStateMachine;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrivilegedConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3168
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceReadCredentialPermission()V

    .line 3169
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3170
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 3171
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetPrivilegedConfiguredNetwork(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 3174
    :goto_0
    return-object v0

    .line 3173
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProvisionSuccess()Z
    .locals 3

    .prologue
    .line 5539
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isProvisioning successful  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->isProvisionSuccessful:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5540
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->isProvisionSuccessful:Z

    return v0
.end method

.method public getRoamBand()I
    .locals 1

    .prologue
    .line 3929
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3930
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetRoamBand()I

    move-result v0

    return v0
.end method

.method public getRoamDelta()I
    .locals 1

    .prologue
    .line 3875
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3876
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetRoamDelta()I

    move-result v0

    return v0
.end method

.method public getRoamScanPeriod()I
    .locals 1

    .prologue
    .line 3893
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3894
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public getRoamTrigger()I
    .locals 1

    .prologue
    .line 3857
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3858
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetRoamTrigger()I

    move-result v0

    return v0
.end method

.method public getSBlacklist()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3711
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3713
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 3714
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetSBlacklist()Ljava/lang/String;

    move-result-object v0

    .line 3717
    :goto_0
    return-object v0

    .line 3716
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScanResults(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3340
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3341
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 3342
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3343
    .local v5, "uid":I
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkPeersMacAddress()Z

    move-result v0

    .line 3344
    .local v0, "canReadPeerMacAddresses":Z
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Landroid/net/NetworkScorerAppManager;->isCallerActiveScorer(Landroid/content/Context;I)Z

    move-result v4

    .line 3346
    .local v4, "isActiveNetworkScorer":Z
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkInteractAcrossUsersFull()Z

    move-result v1

    .line 3347
    .local v1, "hasInteractUsersFull":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3349
    .local v2, "ident":J
    if-nez v0, :cond_0

    if-nez v4, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isLocationEnabled(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3351
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3366
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v7

    .line 3353
    :cond_0
    if-nez v0, :cond_1

    if-nez v4, :cond_1

    :try_start_1
    invoke-direct {p0, p1, v5}, Lcom/android/server/wifi/WifiServiceImpl;->checkCallerCanAccessScanResults(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3355
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3366
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3357
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v8, 0xa

    invoke-virtual {v7, v8, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    .line 3359
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3366
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3361
    :cond_2
    :try_start_3
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiServiceImpl;->isCurrentProfile(I)Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v1, :cond_3

    .line 3362
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3366
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3364
    :cond_3
    :try_start_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    .line 3366
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "netID"    # I

    .prologue
    .line 3961
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3962
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFeatures()I
    .locals 2

    .prologue
    .line 3086
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3087
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 3088
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetSupportedFeatures(Lcom/android/internal/util/AsyncChannel;)I

    move-result v0

    .line 3091
    :goto_0
    return v0

    .line 3090
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVerboseLoggingLevel()I
    .locals 1

    .prologue
    .line 5409
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 5410
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getVerboseLoggingLevel()I

    move-result v0

    return v0
.end method

.method public getWifiApChameleonSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2973
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiApConfigTxPower()I
    .locals 1

    .prologue
    .line 2980
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->syncGetWifiApConfigTxPower()I

    move-result v0

    return v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 2874
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2876
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApEnabledState()I
    .locals 1

    .prologue
    .line 2861
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2863
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->syncGetWifiApState()I

    move-result v0

    return v0
.end method

.method public getWifiApLimitDataFromDb(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 3018
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApDatabaseHelper:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiApDatabaseHelper;->getDataInfoFromDb(Ljava/lang/String;)Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;

    move-result-object v0

    .line 3019
    .local v0, "mWifiApDataInfo":Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getLimit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getWifiApRemainDataFromDb(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 3023
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApDatabaseHelper:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiApDatabaseHelper;->getDataInfoFromDb(Ljava/lang/String;)Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;

    move-result-object v0

    .line 3024
    .local v0, "mWifiApDataInfo":Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataInfo;->getRemain()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getWifiApStaList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2966
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getAccessPointStaList()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2969
    :goto_0
    return-object v1

    .line 2967
    :catch_0
    move-exception v0

    .line 2968
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2969
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApTimeOut()I
    .locals 4

    .prologue
    .line 3004
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_time_out_value"

    sget v3, Lcom/android/server/wifi/WifiServiceImpl;->defaultTimeoutValue:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3005
    .local v0, "sec":I
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiApTimeOut, sec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    return v0
.end method

.method public getWifiEnabledState()I
    .locals 1

    .prologue
    .line 2677
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2678
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    return v0
.end method

.method public getWifiIBSSEnabledState()I
    .locals 1

    .prologue
    .line 2683
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2684
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiIBSSState()I

    move-result v0

    return v0
.end method

.method public getWifiMonitor()Lcom/android/server/wifi/WifiMonitor;
    .locals 1

    .prologue
    .line 5400
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getWifiMonitor()Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    return-object v0
.end method

.method public getWifiScanWithSensor()I
    .locals 1

    .prologue
    .line 4022
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->isWifiScanWithSensor:Z

    if-eqz v0, :cond_0

    .line 4023
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->bScanMove:I

    .line 4025
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 3820
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3821
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3822
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWifiVerName()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 5919
    const-string v10, "WifiService"

    const-string v11, "read Version from /data/.wifiver.info"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5921
    const/4 v4, 0x0

    .line 5922
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 5923
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 5924
    .local v9, "verString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 5926
    .local v6, "retString":Ljava/lang/String;
    const/4 v8, 0x0

    .line 5927
    .local v8, "verStart":I
    const/4 v7, 0x0

    .line 5930
    .local v7, "verEnd":I
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v10, "/data/.wifiver.info"

    invoke-direct {v5, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5931
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 5933
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 5935
    if-eqz v9, :cond_11

    .line 5936
    const-string v10, "HD_ver"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 5937
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 5939
    if-eqz v9, :cond_4

    .line 5940
    const-string v10, "version"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 5942
    if-eq v8, v12, :cond_3

    .line 5943
    const-string v10, "version"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    add-int/lit8 v8, v10, 0x1

    .line 5944
    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v7, v10, -0x1

    .line 5945
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BR"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5946
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Firmware version is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6019
    :goto_0
    if-eqz v1, :cond_0

    .line 6020
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 6022
    :cond_0
    if-eqz v5, :cond_1

    .line 6023
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 6029
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :cond_2
    :goto_1
    const-string v10, "WifiService"

    const-string v11, "returned Wi-Fi Version info"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6030
    return-object v6

    .line 5949
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_3
    :try_start_4
    const-string v6, "NG"

    goto :goto_0

    .line 5953
    :cond_4
    const-string v6, "NG"

    .line 5954
    const-string v10, "WifiService"

    const-string v11, "file was damaged, it need check !"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 6014
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 6015
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v2, "e1":Ljava/io/IOException;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :goto_2
    :try_start_5
    const-string v10, "WifiService"

    const-string v11, "/data/.wifiver.info doesn\'t exist or there are something wrong on handling it"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 6019
    if-eqz v0, :cond_5

    .line 6020
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 6022
    :cond_5
    if-eqz v4, :cond_2

    .line 6023
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 6025
    :catch_1
    move-exception v3

    .line 6026
    .local v3, "e2":Ljava/io/IOException;
    const-string v10, "WifiService"

    const-string v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5957
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e1":Ljava/io/IOException;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_6
    :try_start_7
    const-string v10, "CNSS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 5958
    const-string v10, "CNSS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 5960
    if-eq v8, v12, :cond_9

    .line 5961
    const-string v10, "CNSS-PR-"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v8, v10

    .line 5962
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "QC"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5963
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Firmware version is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 6018
    :catchall_0
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 6019
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :goto_3
    if-eqz v0, :cond_7

    .line 6020
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 6022
    :cond_7
    if-eqz v4, :cond_8

    .line 6023
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 6027
    :cond_8
    :goto_4
    throw v10

    .line 5966
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_9
    :try_start_9
    const-string v6, "NG"

    goto/16 :goto_0

    .line 5969
    :cond_a
    const-string v10, "FW:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 5970
    const-string v10, "FW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 5972
    if-eq v8, v12, :cond_b

    .line 5973
    const-string v10, "FW"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    add-int/lit8 v8, v10, 0x1

    .line 5974
    const-string v10, "HW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v7, v10, -0x2

    .line 5975
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "QC"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5976
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Firmware version is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5979
    :cond_b
    const-string v6, "NG"

    goto/16 :goto_0

    .line 5982
    :cond_c
    const-string v10, "received"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 5983
    const-string v10, ".p"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v8, v10, 0x1

    .line 5984
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 5986
    if-eq v8, v12, :cond_d

    .line 5987
    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 5988
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MV"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5989
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Firmware version is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5992
    :cond_d
    const-string v6, "NG"

    goto/16 :goto_0

    .line 5995
    :cond_e
    const-string v10, "[firmware :"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 5996
    const-string v10, "date"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v8, v10, 0xb

    .line 5997
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 5999
    if-eq v8, v12, :cond_f

    .line 6000
    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 6001
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SP"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6002
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Firmware version is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6005
    :cond_f
    const-string v6, "NG"

    goto/16 :goto_0

    .line 6009
    :cond_10
    const-string v6, "NG"

    goto/16 :goto_0

    .line 6012
    :cond_11
    const-string v10, "WifiService"

    const-string v11, "file is null .. !"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 6025
    :catch_2
    move-exception v3

    .line 6026
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "WifiService"

    const-string v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 6028
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_1

    .line 6025
    .end local v3    # "e2":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 6026
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v11, "WifiService"

    const-string v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 6018
    .end local v3    # "e2":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    goto/16 :goto_3

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_3

    .line 6014
    :catch_4
    move-exception v2

    goto/16 :goto_2

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_2
.end method

.method public getWpsNfcConfigurationToken(I)Ljava/lang/String;
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 2177
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 2178
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method handleIdleModeChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2199
    const/4 v0, 0x0

    .line 2200
    .local v0, "doScan":Z
    monitor-enter p0

    .line 2201
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    .line 2202
    .local v1, "idle":Z
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    if-eq v2, v1, :cond_0

    .line 2203
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    .line 2204
    if-nez v1, :cond_0

    .line 2205
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    if-eqz v2, :cond_0

    .line 2206
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    .line 2207
    const/4 v0, 0x1

    .line 2211
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2212
    if-eqz v0, :cond_1

    .line 2214
    invoke-virtual {p0, v3, v3}, Lcom/android/server/wifi/WifiServiceImpl;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 2216
    :cond_1
    return-void

    .line 2211
    .end local v1    # "idle":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public initializeMulticastFiltering()V
    .locals 2

    .prologue
    .line 5308
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    .line 5310
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 5312
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5313
    monitor-exit v1

    .line 5318
    :goto_0
    return-void

    .line 5315
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    .line 5317
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBatchedScanSupported()Z
    .locals 1

    .prologue
    .line 2171
    const/4 v0, 0x0

    return v0
.end method

.method public isCaptivePortalException()Z
    .locals 1

    .prologue
    .line 5915
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isCaptivePortalException()Z

    move-result v0

    return v0
.end method

.method public isDetectedAsMaliciousHotspot(Ljava/lang/String;)Z
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 5903
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->checkForMaliciousHotspotAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDualBandSupported()Z
    .locals 1

    .prologue
    .line 3587
    const/4 v0, 0x1

    return v0
.end method

.method public isHs20OsuProviderAvailable()Z
    .locals 1

    .prologue
    .line 3448
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3449
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isHs20OsuProviderAvailable()Z

    move-result v0

    return v0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 5380
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 5382
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 5383
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPasspointDefaultOn()Z
    .locals 1

    .prologue
    .line 5907
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isPasspointDefaultOn()Z

    move-result v0

    return v0
.end method

.method public isPasspointMenuVisible()Z
    .locals 1

    .prologue
    .line 5911
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isPasspointMenuVisible()Z

    move-result v0

    return v0
.end method

.method public isScanAlwaysAvailable()Z
    .locals 1

    .prologue
    .line 3053
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3054
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    return v0
.end method

.method public isWifiApDbContain(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 3010
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApDatabaseHelper:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiApDatabaseHelper;->isWifiApDbContain(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWifiApListContain(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 3014
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApDatabaseHelper:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiApDatabaseHelper;->isWifiApListContain(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWifiSharingEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5488
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_ap_wifi_sharing"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 5489
    const-string v3, "WifiService"

    const-string v4, "Returning true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5498
    :goto_0
    return v1

    .line 5491
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_ap_wifi_sharing"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 5492
    const-string v1, "WifiService"

    const-string v3, "Returning false"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 5493
    goto :goto_0

    .line 5495
    :catch_0
    move-exception v0

    .line 5496
    .local v0, "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in getting provider value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    move v1, v2

    .line 5498
    goto :goto_0
.end method

.method public pingSupplicant()Z
    .locals 2

    .prologue
    .line 1171
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1172
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v0

    .line 1176
    :goto_0
    return v0

    .line 1175
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pollBatchedScan()V
    .locals 0

    .prologue
    .line 2174
    return-void
.end method

.method public reassociate()V
    .locals 1

    .prologue
    .line 3078
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3079
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reassociateCommand()V

    .line 3080
    return-void
.end method

.method public reconnect()V
    .locals 1

    .prologue
    .line 3070
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3071
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reconnectCommand()V

    .line 3072
    return-void
.end method

.method public releaseMulticastLock()V
    .locals 6

    .prologue
    .line 5344
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    .line 5346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5347
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    .line 5348
    :try_start_0
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastDisabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastDisabled:I

    .line 5349
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 5350
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 5351
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    .line 5352
    .local v1, "m":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->getUid()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 5353
    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->removeMulticasterLocked(II)V

    .line 5350
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5356
    .end local v1    # "m":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    :cond_1
    monitor-exit v5

    .line 5357
    return-void

    .line 5356
    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 5218
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5219
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    monitor-enter v1

    .line 5220
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 5221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeNetwork(I)Z
    .locals 3
    .param p1, "netId"    # I

    .prologue
    const/4 v0, 0x0

    .line 3267
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3269
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->isOwner(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3270
    const-string v1, "WifiService"

    const-string v2, "Remove is not authorized for user"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    :goto_0
    return v0

    .line 3274
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_1

    .line 3275
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    goto :goto_0

    .line 3277
    :cond_1
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeNetworkByMDM(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 5466
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 5467
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncRemoveNetworkByMDM(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 5470
    :goto_0
    return v0

    .line 5469
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5470
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 24

    .prologue
    .line 3099
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3100
    const/16 v19, 0x0

    .line 3101
    .local v19, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    const/4 v2, 0x0

    .line 3102
    .local v2, "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v3, :cond_4

    .line 3103
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mIsShutdown:Z

    if-nez v3, :cond_0

    .line 3104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->syncGetLinkLayerStats(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v19

    .line 3106
    :cond_0
    if-eqz v19, :cond_3

    .line 3107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    .line 3109
    .local v16, "rxIdleCurrent":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v14, v3

    .line 3111
    .local v14, "rxCurrent":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v20, v0

    .line 3113
    .local v20, "txCurrent":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e003d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-double v4, v3

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v22, v4, v6

    .line 3117
    .local v22, "voltage":D
    move-object/from16 v0, v19

    iget v3, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    move-object/from16 v0, v19

    iget v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v19

    iget v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    sub-int/2addr v3, v4

    int-to-long v10, v3

    .line 3118
    .local v10, "rxIdleTime":J
    move-object/from16 v0, v19

    iget v3, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    int-to-long v4, v3

    mul-long v4, v4, v20

    move-object/from16 v0, v19

    iget v3, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    int-to-long v6, v3

    mul-long/2addr v6, v14

    add-long/2addr v4, v6

    mul-long v6, v10, v16

    add-long/2addr v4, v6

    long-to-double v4, v4

    mul-double v4, v4, v22

    double-to-long v12, v4

    .line 3121
    .local v12, "energyUsed":J
    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-ltz v3, :cond_1

    move-object/from16 v0, v19

    iget v3, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    if-ltz v3, :cond_1

    move-object/from16 v0, v19

    iget v3, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    if-ltz v3, :cond_1

    move-object/from16 v0, v19

    iget v3, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    if-ltz v3, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-gez v3, :cond_2

    .line 3123
    :cond_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 3124
    .local v18, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " rxIdleCur="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " rxCur="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " txCur="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " voltage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " on_time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " tx_time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " rx_time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " rxIdleTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " energy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3133
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " reportActivityInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v2, Landroid/net/wifi/WifiActivityEnergyInfo;

    .end local v2    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x3

    move-object/from16 v0, v19

    iget v6, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    int-to-long v6, v6

    move-object/from16 v0, v19

    iget v8, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    int-to-long v8, v8

    invoke-direct/range {v2 .. v13}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(JIJJJJ)V

    .end local v10    # "rxIdleTime":J
    .end local v12    # "energyUsed":J
    .end local v14    # "rxCurrent":J
    .end local v16    # "rxIdleCurrent":J
    .end local v20    # "txCurrent":J
    .end local v22    # "voltage":D
    .restart local v2    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    :cond_3
    move-object v3, v2

    .line 3144
    :goto_0
    return-object v3

    .line 3143
    :cond_4
    const-string v3, "WifiService"

    const-string v4, "mWifiStateMachineChannel is not initialized"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    .locals 1
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 2186
    const/4 v0, 0x0

    return v0
.end method

.method public saveConfiguration()Z
    .locals 3

    .prologue
    .line 3512
    const/4 v0, 0x1

    .line 3513
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3514
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_0

    .line 3515
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v1

    .line 3518
    :goto_0
    return v1

    .line 3517
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveNetworkByMDM(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 5475
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 5476
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncSaveNetworkByMDM(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    .line 5479
    :goto_0
    return v0

    .line 5478
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5479
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAllowScansWithTraffic(I)V
    .locals 1
    .param p1, "enabled"    # I

    .prologue
    .line 5424
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 5425
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setAllowScansWithTraffic(I)V

    .line 5426
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    .line 3532
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService trying to set country code to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with persist set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3534
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 3535
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3537
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3539
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3541
    return-void

    .line 3539
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .locals 1
    .param p1, "countryRev"    # Ljava/lang/String;

    .prologue
    .line 3938
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3939
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncSetCountryRev(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setFrequencyBand(IZ)V
    .locals 5
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 3562
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3563
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isDualBandSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3572
    :goto_0
    return-void

    .line 3564
    :cond_0
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService trying to set frequency band to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with persist set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3568
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setFrequencyBand(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3570
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setFullRoamScanPeriod(I)Z
    .locals 1
    .param p1, "fullRoamScanPeriod"    # I

    .prologue
    .line 3902
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3903
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncSetFullRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public setHalBasedAutojoinOffload(I)V
    .locals 1
    .param p1, "enabled"    # I

    .prologue
    .line 5443
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 5444
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setHalBasedAutojoinOffload(I)V

    .line 5445
    return-void
.end method

.method public setIsFmcNetwork(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 3977
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3978
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    if-eqz v1, :cond_0

    .line 3979
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->setIsFmcNetwork(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setIsFmcNetwork(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 3981
    :cond_0
    return v0
.end method

.method public setProvisionSuccess(Z)Z
    .locals 3
    .param p1, "set"    # Z

    .prologue
    .line 5533
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provision variable set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5534
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->isProvisionSuccessful:Z

    .line 5535
    const/4 v0, 0x1

    return v0
.end method

.method public setRoamBand(I)Z
    .locals 1
    .param p1, "roamBand"    # I

    .prologue
    .line 3920
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3921
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncSetRoamBand(I)Z

    move-result v0

    return v0
.end method

.method public setRoamDelta(I)Z
    .locals 1
    .param p1, "roamDelta"    # I

    .prologue
    .line 3866
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3867
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncSetRoamDelta(I)Z

    move-result v0

    return v0
.end method

.method public setRoamScanPeriod(I)Z
    .locals 1
    .param p1, "roamScanPeriod"    # I

    .prologue
    .line 3884
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3885
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncSetRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public setRoamTrigger(I)Z
    .locals 1
    .param p1, "roamTrigger"    # I

    .prologue
    .line 3848
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3849
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncSetRoamTrigger(I)Z

    move-result v0

    return v0
.end method

.method public setWifiApConfigTxPower(I)V
    .locals 1
    .param p1, "txPowerMode"    # I

    .prologue
    .line 2986
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessSecuredPermission()V

    .line 2988
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setWifiApConfigTxPower(I)V

    .line 2992
    return-void
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 9
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v2, 0x0

    .line 2906
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 2907
    if-nez p1, :cond_0

    .line 2952
    :goto_0
    return-void

    .line 2909
    :cond_0
    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2911
    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2912
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isWifiApSettingUserModificationAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2914
    .local v6, "apsettingCr":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isOpenWifiApAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2917
    .local v7, "openapCr":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2919
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2920
    const-string v0, "isWifiApSettingUserModificationAllowed"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 2924
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2928
    :cond_2
    if-eqz v7, :cond_5

    .line 2930
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2932
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    if-nez v0, :cond_4

    .line 2933
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApEnabledState()I

    move-result v8

    .line 2934
    .local v8, "state":I
    const/16 v0, 0xd

    if-eq v8, v0, :cond_3

    const/16 v0, 0xc

    if-ne v8, v0, :cond_4

    :cond_3
    const-string v0, "isOpenWifiApAllowed"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_4

    .line 2940
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2924
    .end local v8    # "state":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2940
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2945
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 2940
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2950
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "apsettingCr":Landroid/database/Cursor;
    .end local v7    # "openapCr":Landroid/database/Cursor;
    :cond_6
    const-string v0, "WifiService"

    const-string v2, "Invalid WifiConfiguration"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setWifiApConfigurationToDefault()V
    .locals 1

    .prologue
    .line 2960
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApConfigurationToDefault()V

    .line 2961
    return-void
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 25
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    .line 2694
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 2695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    .line 2696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    const-string v4, "no_config_tethering"

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2697
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "DISALLOW_CONFIG_TETHERING is enabled for this user."

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2700
    :cond_0
    if-eqz p1, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2701
    :cond_1
    const-string v2, "SBM"

    const-string v4, "EUR"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 2702
    .local v14, "isSbm":Z
    const-string v2, "TFN"

    sget-object v4, Lcom/android/server/wifi/WifiServiceImpl;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 2703
    .local v15, "isTfn":Z
    if-nez v14, :cond_2

    if-eqz v15, :cond_7

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getRvfMode()I

    move-result v2

    if-nez v2, :cond_7

    .line 2704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 2705
    .local v9, "am":Landroid/app/ActivityManager;
    const-string v18, ""

    .line 2706
    .local v18, "packageName":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2707
    .local v21, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, v21

    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    if-ne v2, v4, :cond_3

    .line 2708
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v18, v0

    goto :goto_0

    .line 2712
    .end local v21    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    const-string v2, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiApEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 2716
    .local v20, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v19

    .line 2717
    .local v19, "pkgInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v2, v4, :cond_6

    .line 2718
    const-string v2, "WifiService"

    const-string v4, "NOT Allowed : pkg does not match uid"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    .end local v9    # "am":Landroid/app/ActivityManager;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "isSbm":Z
    .end local v15    # "isTfn":Z
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v19    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    :goto_1
    return-void

    .line 2722
    .restart local v9    # "am":Landroid/app/ActivityManager;
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "isSbm":Z
    .restart local v15    # "isTfn":Z
    .restart local v18    # "packageName":Ljava/lang/String;
    .restart local v19    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v20    # "pm":Landroid/content/pm/PackageManager;
    :cond_6
    const-string v2, "jp.softbank.mb.tether"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "com.android.settings"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "com.sec.android.emergencymode.service"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "com.android.systemui"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2724
    const-string v2, "WifiService"

    const-string v4, "setWifiApEnabled called by 3rd party app"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2727
    .end local v19    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v12

    .line 2728
    .local v12, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 2733
    .end local v9    # "am":Landroid/app/ActivityManager;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v18    # "packageName":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-class v6, Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WifiAp value has been changed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_8

    const-string v7, "enabled"

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2739
    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2740
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "isWifiTetheringEnabled"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 2742
    .local v16, "mhsCr":Landroid/database/Cursor;
    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "isOpenWifiApAllowed"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 2745
    .local v17, "openapCr":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "isWifiApSettingUserModificationAllowed"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2748
    .local v10, "apsettingCr":Landroid/database/Cursor;
    if-eqz v16, :cond_a

    .line 2750
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2751
    if-eqz p2, :cond_9

    const-string v2, "isWifiTetheringEnabled"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setWifiApState(II)V

    .line 2757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600a

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v4, v5, v6, v0}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2761
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 2733
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v10    # "apsettingCr":Landroid/database/Cursor;
    .end local v16    # "mhsCr":Landroid/database/Cursor;
    .end local v17    # "openapCr":Landroid/database/Cursor;
    :cond_8
    const-string v7, "disabled"

    goto/16 :goto_2

    .line 2761
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v10    # "apsettingCr":Landroid/database/Cursor;
    .restart local v16    # "mhsCr":Landroid/database/Cursor;
    .restart local v17    # "openapCr":Landroid/database/Cursor;
    :cond_9
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2764
    :cond_a
    if-eqz v17, :cond_d

    .line 2766
    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2767
    if-eqz p2, :cond_c

    .line 2768
    if-eqz p1, :cond_b

    move-object/from16 v22, p1

    .line 2769
    .local v22, "temp":Landroid/net/wifi/WifiConfiguration;
    :goto_3
    if-eqz v22, :cond_c

    .line 2770
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v11

    .line 2771
    .local v11, "authType":I
    if-nez v11, :cond_c

    const-string v2, "isOpenWifiApAllowed"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2772
    const-string v2, "WifiService"

    const-string v4, "Starting an Open HOTSPOT is NOT allowed."

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    new-instance v24, Landroid/content/Intent;

    const-string v2, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2774
    .local v24, "wifiToastIntent":Landroid/content/Intent;
    const-string v2, "info_type"

    const/16 v4, 0xa

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setWifiApState(II)V

    .line 2781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600a

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v4, v5, v6, v0}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2787
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 2761
    .end local v11    # "authType":I
    .end local v22    # "temp":Landroid/net/wifi/WifiConfiguration;
    .end local v24    # "wifiToastIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2768
    :cond_b
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v22

    goto :goto_3

    .line 2787
    :cond_c
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2790
    :cond_d
    if-eqz v10, :cond_f

    .line 2792
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2793
    const-string v2, "isWifiApSettingUserModificationAllowed"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v2

    if-eqz v2, :cond_e

    .line 2794
    const/16 p1, 0x0

    .line 2797
    :cond_e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2802
    :cond_f
    if-eqz p2, :cond_10

    .line 2803
    const/16 v23, 0x0

    .line 2805
    .local v23, "userId":I
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2813
    :goto_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    const/4 v4, 0x0

    move/from16 v0, v23

    invoke-interface {v2, v4, v0}, Landroid/app/admin/IDevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->allowWifiAp:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 2816
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->allowWifiAp:Z

    if-nez v2, :cond_10

    .line 2817
    const-string v2, "WifiService"

    const-string v4, "Wi-Fi AP is not allowed (Policy)"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    new-instance v24, Landroid/content/Intent;

    const-string v2, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2819
    .restart local v24    # "wifiToastIntent":Landroid/content/Intent;
    const-string v2, "info_type"

    const/4 v4, 0x3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const v4, 0x20130

    move-object/from16 v0, v24

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 2787
    .end local v23    # "userId":I
    .end local v24    # "wifiToastIntent":Landroid/content/Intent;
    :catchall_1
    move-exception v2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2797
    :catchall_2
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2806
    .restart local v23    # "userId":I
    :catch_1
    move-exception v12

    .line 2807
    .local v12, "e":Landroid/os/RemoteException;
    const-string v2, "WifiService"

    const-string v4, "Failed getting userId using ActivityManagerNative"

    invoke-static {v2, v4, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2808
    .end local v12    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v12

    .line 2809
    .local v12, "e":Ljava/lang/SecurityException;
    const-string v2, "WifiService"

    const-string v4, "Failed getting userId using ActivityManagerNative"

    invoke-static {v2, v4, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2827
    .end local v12    # "e":Ljava/lang/SecurityException;
    .end local v23    # "userId":I
    :cond_10
    if-nez p2, :cond_11

    const-string v2, "ro.build.characteristics"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "tablet"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "ATT"

    sget-object v4, Lcom/android/server/wifi/WifiServiceImpl;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->isHotspotTestMode()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_ap_saved_state"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    .line 2843
    :cond_11
    if-nez p2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->isWifiSharingEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2844
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->isProvisionSuccessful:Z

    .line 2846
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v5, 0x2600a

    if-eqz p2, :cond_13

    const/4 v2, 0x1

    :goto_6
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v2, v6, v0}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_13
    const/4 v2, 0x0

    goto :goto_6

    .line 2848
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v10    # "apsettingCr":Landroid/database/Cursor;
    .end local v14    # "isSbm":Z
    .end local v15    # "isTfn":Z
    .end local v16    # "mhsCr":Landroid/database/Cursor;
    .end local v17    # "openapCr":Landroid/database/Cursor;
    :cond_14
    const-string v2, "WifiService"

    const-string v4, "Invalid WifiConfiguration"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2814
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v10    # "apsettingCr":Landroid/database/Cursor;
    .restart local v14    # "isSbm":Z
    .restart local v15    # "isTfn":Z
    .restart local v16    # "mhsCr":Landroid/database/Cursor;
    .restart local v17    # "openapCr":Landroid/database/Cursor;
    .restart local v23    # "userId":I
    :catch_3
    move-exception v2

    goto/16 :goto_5
.end method

.method public setWifiApTimeOut(I)V
    .locals 4
    .param p1, "sec"    # I

    .prologue
    .line 2997
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_time_out_value"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2998
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiApTimeOut, sec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3000
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wifiap_power_mode_alarm_option"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3001
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3002
    return-void
.end method

.method public declared-synchronized setWifiEnabled(Z)Z
    .locals 31
    .param p1, "enable"    # Z

    .prologue
    .line 2326
    monitor-enter p0

    :try_start_0
    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2327
    .local v3, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "false"

    aput-object v4, v6, v2

    .line 2328
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "isWifiEnabled"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 2330
    .local v29, "wifiEnabledCr":Landroid/database/Cursor;
    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const-string v10, "isWifiStateChangeAllowed"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v30

    .line 2334
    .local v30, "wifiStateChangeCr":Landroid/database/Cursor;
    if-eqz v29, :cond_1

    .line 2336
    :try_start_1
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2337
    const-string v2, "isWifiEnabled"

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2338
    const-string v2, "WifiService"

    const-string v4, "Wi-Fi is not allowed by Restriction Policy"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2339
    const/4 v2, 0x0

    .line 2342
    :try_start_2
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2484
    :goto_0
    monitor-exit p0

    return v2

    .line 2342
    :cond_0
    :try_start_3
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2345
    :cond_1
    if-eqz v30, :cond_3

    .line 2347
    :try_start_4
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2348
    sget-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->mFirstWifiSavedStateCheck:Z

    if-eqz v2, :cond_2

    const-string v2, "isWifiStateChangeAllowed"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2349
    const-string v2, "WifiService"

    const-string v4, "Wi-Fi state change is not allowed by Wifi Policy"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2350
    const/4 v2, 0x0

    .line 2353
    const/4 v4, 0x1

    :try_start_5
    sput-boolean v4, Lcom/android/server/wifi/WifiServiceImpl;->mFirstWifiSavedStateCheck:Z

    .line 2354
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2326
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v29    # "wifiEnabledCr":Landroid/database/Cursor;
    .end local v30    # "wifiStateChangeCr":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2342
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v29    # "wifiEnabledCr":Landroid/database/Cursor;
    .restart local v30    # "wifiStateChangeCr":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2353
    :cond_2
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->mFirstWifiSavedStateCheck:Z

    .line 2354
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 2359
    :cond_3
    sget-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->NETWORK_RESTRICTION_MODE:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "toddler_mode_switch"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    if-eqz p1, :cond_4

    .line 2360
    const-string v2, "WifiService"

    const-string v4, "setWifiEnabled: Network Restriction BLOCKED "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    const/4 v2, 0x0

    goto :goto_0

    .line 2353
    :catchall_2
    move-exception v2

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/wifi/WifiServiceImpl;->mFirstWifiSavedStateCheck:Z

    .line 2354
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2364
    :cond_4
    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mIsShutdown:Z

    if-eqz v2, :cond_5

    .line 2365
    const-string v2, "WifiService"

    const-string v4, "Can\'t turn on wifi during shutdown."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    const/4 v2, 0x0

    goto :goto_0

    .line 2369
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 2371
    if-eqz p1, :cond_11

    .line 2373
    new-instance v20, Ljava/io/File;

    const-string v2, "/data/.agingtest.info"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2374
    .local v20, "mFilePath":Ljava/io/File;
    sget-object v2, Lcom/android/server/wifi/WifiServiceImpl;->CSC_WFA_CONFIG:Ljava/lang/String;

    const-string v4, "BRCM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    .line 2376
    .local v22, "makeWfaDriverConfigFile":Z
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v2

    if-eqz v2, :cond_8

    .line 2377
    const/16 v18, 0x0

    .line 2380
    .local v18, "in":Ljava/io/BufferedReader;
    :try_start_7
    new-instance v19, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2381
    .end local v18    # "in":Ljava/io/BufferedReader;
    .local v19, "in":Ljava/io/BufferedReader;
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 2382
    .local v15, "bufLine":Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 2383
    sget-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/.agingtest.info is ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    :cond_6
    const-string v2, "BRCM"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_22
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    move-result v2

    if-eqz v2, :cond_7

    .line 2385
    const/16 v22, 0x1

    .line 2391
    :cond_7
    if-eqz v19, :cond_8

    .line 2393
    :try_start_9
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2401
    .end local v15    # "bufLine":Ljava/lang/String;
    .end local v19    # "in":Ljava/io/BufferedReader;
    :cond_8
    :goto_1
    if-eqz v22, :cond_11

    .line 2402
    const/16 v23, 0x0

    .line 2403
    .local v23, "out_frameburstinfo":Ljava/io/FileOutputStream;
    const/16 v27, 0x0

    .line 2404
    .local v27, "out_roamoff":Ljava/io/FileOutputStream;
    const/16 v25, 0x0

    .line 2407
    .local v25, "out_proptxinfo":Ljava/io/FileOutputStream;
    const/4 v2, 0x1

    :try_start_a
    new-array v13, v2, [B

    const/4 v2, 0x0

    const/16 v4, 0x30

    aput-byte v4, v13, v2

    .line 2408
    .local v13, "WFA_BIN_FALSE":[B
    const/4 v2, 0x1

    new-array v14, v2, [B

    const/4 v2, 0x0

    const/16 v4, 0x31

    aput-byte v4, v14, v2

    .line 2410
    .local v14, "WFA_BIN_TRUE":[B
    new-instance v21, Ljava/io/File;

    const-string v2, "/data/.frameburst.info"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 2411
    .end local v20    # "mFilePath":Ljava/io/File;
    .local v21, "mFilePath":Ljava/io/File;
    :try_start_b
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2412
    sget-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v2, :cond_9

    const-string v2, "WifiService"

    const-string v4, " There is no /data/.frameburst.info file. So, create and fill data \'0\' "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    :cond_9
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->createNewFile()Z

    .line 2414
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v4, "chmod 664 /data/.frameburst.info"

    invoke-virtual {v2, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2415
    new-instance v24, Ljava/io/FileOutputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_1e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_16
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 2416
    .end local v23    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    .local v24, "out_frameburstinfo":Ljava/io/FileOutputStream;
    :try_start_c
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_17
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object/from16 v23, v24

    .line 2419
    .end local v24    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    .restart local v23    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    :cond_a
    :try_start_d
    new-instance v20, Ljava/io/File;

    const-string v2, "/data/.roamoff.info"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_1e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_16
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 2420
    .end local v21    # "mFilePath":Ljava/io/File;
    .restart local v20    # "mFilePath":Ljava/io/File;
    :try_start_e
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_c

    .line 2421
    sget-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "WifiService"

    const-string v4, " There is no /data/.roamoff.info  So, create and fill data \'1\'"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    :cond_b
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->createNewFile()Z

    .line 2423
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v4, "chmod 664 /data/.roamoff.info"

    invoke-virtual {v2, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2424
    new-instance v28, Ljava/io/FileOutputStream;

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 2425
    .end local v27    # "out_roamoff":Ljava/io/FileOutputStream;
    .local v28, "out_roamoff":Ljava/io/FileOutputStream;
    :try_start_f
    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_20
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_18
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    move-object/from16 v27, v28

    .line 2428
    .end local v28    # "out_roamoff":Ljava/io/FileOutputStream;
    .restart local v27    # "out_roamoff":Ljava/io/FileOutputStream;
    :cond_c
    :try_start_10
    new-instance v21, Ljava/io/File;

    const-string v2, "/data/.proptx.info"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 2429
    .end local v20    # "mFilePath":Ljava/io/File;
    .restart local v21    # "mFilePath":Ljava/io/File;
    :try_start_11
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    .line 2430
    sget-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v2, :cond_d

    const-string v2, "WifiService"

    const-string v4, " There is no /data/.proptx.info  So, create and fill data \'1\'"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    :cond_d
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->createNewFile()Z

    .line 2432
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v4, "chmod 664 /data/.proptx.info"

    invoke-virtual {v2, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2433
    new-instance v26, Ljava/io/FileOutputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_1e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_16
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 2434
    .end local v25    # "out_proptxinfo":Ljava/io/FileOutputStream;
    .local v26, "out_proptxinfo":Ljava/io/FileOutputStream;
    :try_start_12
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_21
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_19
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    move-object/from16 v25, v26

    .line 2444
    .end local v26    # "out_proptxinfo":Ljava/io/FileOutputStream;
    .restart local v25    # "out_proptxinfo":Ljava/io/FileOutputStream;
    :cond_e
    if-eqz v23, :cond_f

    :try_start_13
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 2449
    :cond_f
    :goto_2
    if-eqz v27, :cond_10

    :try_start_14
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 2454
    :cond_10
    :goto_3
    if-eqz v25, :cond_11

    :try_start_15
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 2463
    .end local v13    # "WFA_BIN_FALSE":[B
    .end local v14    # "WFA_BIN_TRUE":[B
    .end local v21    # "mFilePath":Ljava/io/File;
    .end local v22    # "makeWfaDriverConfigFile":Z
    .end local v23    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    .end local v25    # "out_proptxinfo":Ljava/io/FileOutputStream;
    .end local v27    # "out_roamoff":Ljava/io/FileOutputStream;
    :cond_11
    :goto_4
    const/4 v2, 0x0

    :try_start_16
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->isVehicle:Z

    .line 2464
    if-eqz p1, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mScreenOn:Z

    if-eqz v2, :cond_1f

    .line 2465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mActivityTrackerListener:Landroid/hardware/scontext/SContextListener;

    if-nez v2, :cond_12

    .line 2466
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->bPreScanMove:I

    .line 2467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/WifiServiceImpl;->checkSensorStatus(Landroid/content/Context;)Z

    .line 2468
    const-string v2, "WifiService"

    const-string v4, "Wi-Fi on and Screen on , checkSensorStatus !!"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    :cond_12
    :goto_5
    const-string v2, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiServiceImpl;->insertLogForWifiEnabled(ZI)V

    .line 2484
    const v2, 0x26008

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(ZI)Z

    move-result v2

    goto/16 :goto_0

    .line 2394
    .restart local v15    # "bufLine":Ljava/lang/String;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    .restart local v20    # "mFilePath":Ljava/io/File;
    .restart local v22    # "makeWfaDriverConfigFile":Z
    :catch_0
    move-exception v16

    .line 2395
    .local v16, "e":Ljava/io/IOException;
    const-string v2, "WifiService"

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_1

    .line 2388
    .end local v15    # "bufLine":Ljava/lang/String;
    .end local v16    # "e":Ljava/io/IOException;
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v16

    .line 2389
    .restart local v16    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_17
    const-string v2, "WifiService"

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 2391
    if-eqz v18, :cond_8

    .line 2393
    :try_start_18
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_1

    .line 2394
    :catch_2
    move-exception v16

    .line 2395
    :try_start_19
    const-string v2, "WifiService"

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_1

    .line 2391
    .end local v16    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v2

    :goto_7
    if-eqz v18, :cond_13

    .line 2393
    :try_start_1a
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 2396
    :cond_13
    :goto_8
    :try_start_1b
    throw v2

    .line 2394
    :catch_3
    move-exception v16

    .line 2395
    .restart local v16    # "e":Ljava/io/IOException;
    const-string v4, "WifiService"

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2445
    .end local v16    # "e":Ljava/io/IOException;
    .end local v18    # "in":Ljava/io/BufferedReader;
    .end local v20    # "mFilePath":Ljava/io/File;
    .restart local v13    # "WFA_BIN_FALSE":[B
    .restart local v14    # "WFA_BIN_TRUE":[B
    .restart local v21    # "mFilePath":Ljava/io/File;
    .restart local v23    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    .restart local v25    # "out_proptxinfo":Ljava/io/FileOutputStream;
    .restart local v27    # "out_roamoff":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v17

    .line 2446
    .local v17, "e2":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v2, :cond_f

    const-string v2, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSC_WFA_CONFIG: out_frameburstinfo.close error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2450
    .end local v17    # "e2":Ljava/lang/Exception;
    :catch_5
    move-exception v17

    .line 2451
    .restart local v17    # "e2":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v2, :cond_10

    const-string v2, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSC_WFA_CONFIG: out_roamoff.close error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2455
    .end local v17    # "e2":Ljava/lang/Exception;
    :catch_6
    move-exception v17

    .line 2456
    .restart local v17    # "e2":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v2, :cond_11

    const-string v2, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSC_WFA_CONFIG: out_proptxinfo.close error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_4

    .line 2436
    .end local v13    # "WFA_BIN_FALSE":[B
    .end local v14    # "WFA_BIN_TRUE":[B
    .end local v17    # "e2":Ljava/lang/Exception;
    .end local v21    # "mFilePath":Ljava/io/File;
    .restart local v20    # "mFilePath":Ljava/io/File;
    :catch_7
    move-exception v16

    .line 2437
    .local v16, "e":Ljava/io/FileNotFoundException;
    :goto_9
    :try_start_1c
    sget-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v2, :cond_14

    const-string v2, "WifiService"

    const-string v4, "CSC_WFA_CONFIG: File Create Not Found "

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 2444
    :cond_14
    if-eqz v23, :cond_15

    :try_start_1d
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_9
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 2449
    :cond_15
    :goto_a
    if-eqz v27, :cond_16

    :try_start_1e
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_a
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 2454
    :cond_16
    :goto_b
    if-eqz v25, :cond_11

    :try_start_1f
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_8
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto/16 :goto_4

    .line 2455
    :catch_8
    move-exception v17

    .line 2456
    .restart local v17    # "e2":Ljava/lang/Exception;
    :try_start_20
    sget-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v2, :cond_11

    const-string v2, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSC_WFA_CONFIG: out_proptxinfo.close error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2445
    .end local v17    # "e2":Ljava/lang/Exception;
    :catch_9
    move-exception v17

    .line 2446
    .restart local v17    # "e2":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v2, :cond_15

    const-string v2, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSC_WFA_CONFIG: out_frameburstinfo.close error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2450
    .end local v17    # "e2":Ljava/lang/Exception;
    :catch_a
    move-exception v17

    .line 2451
    .restart local v17    # "e2":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v2, :cond_16

    const-string v2, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSC_WFA_CONFIG: out_roamoff.close error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    goto :goto_b

    .line 2438
    .end local v16    # "e":Ljava/io/FileNotFoundException;
    .end local v17    # "e2":Ljava/lang/Exception;
    :catch_b
    move-exception v16

    .line 2439
    .local v16, "e":Ljava/io/IOException;
    :goto_c
    :try_start_21
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    .line 2444
    if-eqz v23, :cond_17

    :try_start_22
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_d
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 2449
    :cond_17
    :goto_d
    if-eqz v27, :cond_18

    :try_start_23
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_e
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 2454
    :cond_18
    :goto_e
    if-eqz v25, :cond_11

    :try_start_24
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_c
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    goto/16 :goto_4

    .line 2455
    :catch_c
    move-exception v17

    .line 2456
    .restart local v17    # "e2":Ljava/lang/Exception;
    :try_start_25
    sget-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v2, :cond_11

    const-string v2, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSC_WFA_CONFIG: out_proptxinfo.close error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2445
    .end local v17    # "e2":Ljava/lang/Exception;
    :catch_d
    move-exception v17

    .line 2446
    .restart local v17    # "e2":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v2, :cond_17

    const-string v2, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSC_WFA_CONFIG: out_frameburstinfo.close error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 2450
    .end local v17    # "e2":Ljava/lang/Exception;
    :catch_e
    move-exception v17

    .line 2451
    .restart local v17    # "e2":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v2, :cond_18

    const-string v2, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSC_WFA_CONFIG: out_roamoff.close error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    goto :goto_e

    .line 2440
    .end local v16    # "e":Ljava/io/IOException;
    .end local v17    # "e2":Ljava/lang/Exception;
    :catch_f
    move-exception v16

    .line 2441
    .local v16, "e":Ljava/lang/Exception;
    :goto_f
    :try_start_26
    sget-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v2, :cond_19

    const-string v2, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSC_WFA_CONFIG: create file failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_4

    .line 2444
    :cond_19
    if-eqz v23, :cond_1a

    :try_start_27
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_11
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 2449
    :cond_1a
    :goto_10
    if-eqz v27, :cond_1b

    :try_start_28
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_12
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 2454
    :cond_1b
    :goto_11
    if-eqz v25, :cond_11

    :try_start_29
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_10
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    goto/16 :goto_4

    .line 2455
    :catch_10
    move-exception v17

    .line 2456
    .restart local v17    # "e2":Ljava/lang/Exception;
    :try_start_2a
    sget-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v2, :cond_11

    const-string v2, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSC_WFA_CONFIG: out_proptxinfo.close error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2445
    .end local v17    # "e2":Ljava/lang/Exception;
    :catch_11
    move-exception v17

    .line 2446
    .restart local v17    # "e2":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v2, :cond_1a

    const-string v2, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSC_WFA_CONFIG: out_frameburstinfo.close error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 2450
    .end local v17    # "e2":Ljava/lang/Exception;
    :catch_12
    move-exception v17

    .line 2451
    .restart local v17    # "e2":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v2, :cond_1b

    const-string v2, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSC_WFA_CONFIG: out_roamoff.close error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    goto :goto_11

    .line 2443
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v17    # "e2":Ljava/lang/Exception;
    :catchall_4
    move-exception v2

    .line 2444
    :goto_12
    if-eqz v23, :cond_1c

    :try_start_2b
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_13
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    .line 2449
    :cond_1c
    :goto_13
    if-eqz v27, :cond_1d

    :try_start_2c
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_14
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    .line 2454
    :cond_1d
    :goto_14
    if-eqz v25, :cond_1e

    :try_start_2d
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_15
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    .line 2457
    :cond_1e
    :goto_15
    :try_start_2e
    throw v2

    .line 2445
    :catch_13
    move-exception v17

    .line 2446
    .restart local v17    # "e2":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v4, :cond_1c

    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CSC_WFA_CONFIG: out_frameburstinfo.close error : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 2450
    .end local v17    # "e2":Ljava/lang/Exception;
    :catch_14
    move-exception v17

    .line 2451
    .restart local v17    # "e2":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v4, :cond_1d

    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CSC_WFA_CONFIG: out_roamoff.close error : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 2455
    .end local v17    # "e2":Ljava/lang/Exception;
    :catch_15
    move-exception v17

    .line 2456
    .restart local v17    # "e2":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z

    if-eqz v4, :cond_1e

    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CSC_WFA_CONFIG: out_proptxinfo.close error : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 2471
    .end local v17    # "e2":Ljava/lang/Exception;
    .end local v20    # "mFilePath":Ljava/io/File;
    .end local v22    # "makeWfaDriverConfigFile":Z
    .end local v23    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    .end local v25    # "out_proptxinfo":Ljava/io/FileOutputStream;
    .end local v27    # "out_roamoff":Ljava/io/FileOutputStream;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mActivityTrackerListener:Landroid/hardware/scontext/SContextListener;

    if-eqz v2, :cond_12

    .line 2472
    const-string v2, "WifiService"

    const-string v4, "Wi-Fi off, mSContextManager.unregisterListener !!"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->bPreScanMove:I

    .line 2474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiServiceImpl;->mActivityTrackerListener:Landroid/hardware/scontext/SContextListener;

    const/16 v5, 0x19

    invoke-virtual {v2, v4, v5}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 2475
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mActivityTrackerListener:Landroid/hardware/scontext/SContextListener;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    goto/16 :goto_5

    .line 2443
    .restart local v13    # "WFA_BIN_FALSE":[B
    .restart local v14    # "WFA_BIN_TRUE":[B
    .restart local v21    # "mFilePath":Ljava/io/File;
    .restart local v22    # "makeWfaDriverConfigFile":Z
    .restart local v23    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    .restart local v25    # "out_proptxinfo":Ljava/io/FileOutputStream;
    .restart local v27    # "out_roamoff":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v2

    move-object/from16 v20, v21

    .end local v21    # "mFilePath":Ljava/io/File;
    .restart local v20    # "mFilePath":Ljava/io/File;
    goto/16 :goto_12

    .end local v20    # "mFilePath":Ljava/io/File;
    .end local v23    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    .restart local v21    # "mFilePath":Ljava/io/File;
    .restart local v24    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    :catchall_6
    move-exception v2

    move-object/from16 v23, v24

    .end local v24    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    .restart local v23    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    move-object/from16 v20, v21

    .end local v21    # "mFilePath":Ljava/io/File;
    .restart local v20    # "mFilePath":Ljava/io/File;
    goto/16 :goto_12

    .end local v27    # "out_roamoff":Ljava/io/FileOutputStream;
    .restart local v28    # "out_roamoff":Ljava/io/FileOutputStream;
    :catchall_7
    move-exception v2

    move-object/from16 v27, v28

    .end local v28    # "out_roamoff":Ljava/io/FileOutputStream;
    .restart local v27    # "out_roamoff":Ljava/io/FileOutputStream;
    goto/16 :goto_12

    .end local v20    # "mFilePath":Ljava/io/File;
    .end local v25    # "out_proptxinfo":Ljava/io/FileOutputStream;
    .restart local v21    # "mFilePath":Ljava/io/File;
    .restart local v26    # "out_proptxinfo":Ljava/io/FileOutputStream;
    :catchall_8
    move-exception v2

    move-object/from16 v25, v26

    .end local v26    # "out_proptxinfo":Ljava/io/FileOutputStream;
    .restart local v25    # "out_proptxinfo":Ljava/io/FileOutputStream;
    move-object/from16 v20, v21

    .end local v21    # "mFilePath":Ljava/io/File;
    .restart local v20    # "mFilePath":Ljava/io/File;
    goto/16 :goto_12

    .line 2440
    .end local v20    # "mFilePath":Ljava/io/File;
    .restart local v21    # "mFilePath":Ljava/io/File;
    :catch_16
    move-exception v16

    move-object/from16 v20, v21

    .end local v21    # "mFilePath":Ljava/io/File;
    .restart local v20    # "mFilePath":Ljava/io/File;
    goto/16 :goto_f

    .end local v20    # "mFilePath":Ljava/io/File;
    .end local v23    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    .restart local v21    # "mFilePath":Ljava/io/File;
    .restart local v24    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    :catch_17
    move-exception v16

    move-object/from16 v23, v24

    .end local v24    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    .restart local v23    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    move-object/from16 v20, v21

    .end local v21    # "mFilePath":Ljava/io/File;
    .restart local v20    # "mFilePath":Ljava/io/File;
    goto/16 :goto_f

    .end local v27    # "out_roamoff":Ljava/io/FileOutputStream;
    .restart local v28    # "out_roamoff":Ljava/io/FileOutputStream;
    :catch_18
    move-exception v16

    move-object/from16 v27, v28

    .end local v28    # "out_roamoff":Ljava/io/FileOutputStream;
    .restart local v27    # "out_roamoff":Ljava/io/FileOutputStream;
    goto/16 :goto_f

    .end local v20    # "mFilePath":Ljava/io/File;
    .end local v25    # "out_proptxinfo":Ljava/io/FileOutputStream;
    .restart local v21    # "mFilePath":Ljava/io/File;
    .restart local v26    # "out_proptxinfo":Ljava/io/FileOutputStream;
    :catch_19
    move-exception v16

    move-object/from16 v25, v26

    .end local v26    # "out_proptxinfo":Ljava/io/FileOutputStream;
    .restart local v25    # "out_proptxinfo":Ljava/io/FileOutputStream;
    move-object/from16 v20, v21

    .end local v21    # "mFilePath":Ljava/io/File;
    .restart local v20    # "mFilePath":Ljava/io/File;
    goto/16 :goto_f

    .line 2438
    .end local v20    # "mFilePath":Ljava/io/File;
    .restart local v21    # "mFilePath":Ljava/io/File;
    :catch_1a
    move-exception v16

    move-object/from16 v20, v21

    .end local v21    # "mFilePath":Ljava/io/File;
    .restart local v20    # "mFilePath":Ljava/io/File;
    goto/16 :goto_c

    .end local v20    # "mFilePath":Ljava/io/File;
    .end local v23    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    .restart local v21    # "mFilePath":Ljava/io/File;
    .restart local v24    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    :catch_1b
    move-exception v16

    move-object/from16 v23, v24

    .end local v24    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    .restart local v23    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    move-object/from16 v20, v21

    .end local v21    # "mFilePath":Ljava/io/File;
    .restart local v20    # "mFilePath":Ljava/io/File;
    goto/16 :goto_c

    .end local v27    # "out_roamoff":Ljava/io/FileOutputStream;
    .restart local v28    # "out_roamoff":Ljava/io/FileOutputStream;
    :catch_1c
    move-exception v16

    move-object/from16 v27, v28

    .end local v28    # "out_roamoff":Ljava/io/FileOutputStream;
    .restart local v27    # "out_roamoff":Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .end local v20    # "mFilePath":Ljava/io/File;
    .end local v25    # "out_proptxinfo":Ljava/io/FileOutputStream;
    .restart local v21    # "mFilePath":Ljava/io/File;
    .restart local v26    # "out_proptxinfo":Ljava/io/FileOutputStream;
    :catch_1d
    move-exception v16

    move-object/from16 v25, v26

    .end local v26    # "out_proptxinfo":Ljava/io/FileOutputStream;
    .restart local v25    # "out_proptxinfo":Ljava/io/FileOutputStream;
    move-object/from16 v20, v21

    .end local v21    # "mFilePath":Ljava/io/File;
    .restart local v20    # "mFilePath":Ljava/io/File;
    goto/16 :goto_c

    .line 2436
    .end local v20    # "mFilePath":Ljava/io/File;
    .restart local v21    # "mFilePath":Ljava/io/File;
    :catch_1e
    move-exception v16

    move-object/from16 v20, v21

    .end local v21    # "mFilePath":Ljava/io/File;
    .restart local v20    # "mFilePath":Ljava/io/File;
    goto/16 :goto_9

    .end local v20    # "mFilePath":Ljava/io/File;
    .end local v23    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    .restart local v21    # "mFilePath":Ljava/io/File;
    .restart local v24    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    :catch_1f
    move-exception v16

    move-object/from16 v23, v24

    .end local v24    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    .restart local v23    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    move-object/from16 v20, v21

    .end local v21    # "mFilePath":Ljava/io/File;
    .restart local v20    # "mFilePath":Ljava/io/File;
    goto/16 :goto_9

    .end local v27    # "out_roamoff":Ljava/io/FileOutputStream;
    .restart local v28    # "out_roamoff":Ljava/io/FileOutputStream;
    :catch_20
    move-exception v16

    move-object/from16 v27, v28

    .end local v28    # "out_roamoff":Ljava/io/FileOutputStream;
    .restart local v27    # "out_roamoff":Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .end local v20    # "mFilePath":Ljava/io/File;
    .end local v25    # "out_proptxinfo":Ljava/io/FileOutputStream;
    .restart local v21    # "mFilePath":Ljava/io/File;
    .restart local v26    # "out_proptxinfo":Ljava/io/FileOutputStream;
    :catch_21
    move-exception v16

    move-object/from16 v25, v26

    .end local v26    # "out_proptxinfo":Ljava/io/FileOutputStream;
    .restart local v25    # "out_proptxinfo":Ljava/io/FileOutputStream;
    move-object/from16 v20, v21

    .end local v21    # "mFilePath":Ljava/io/File;
    .restart local v20    # "mFilePath":Ljava/io/File;
    goto/16 :goto_9

    .line 2391
    .end local v13    # "WFA_BIN_FALSE":[B
    .end local v14    # "WFA_BIN_TRUE":[B
    .end local v23    # "out_frameburstinfo":Ljava/io/FileOutputStream;
    .end local v25    # "out_proptxinfo":Ljava/io/FileOutputStream;
    .end local v27    # "out_roamoff":Ljava/io/FileOutputStream;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :catchall_9
    move-exception v2

    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_7

    .line 2388
    .end local v18    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :catch_22
    move-exception v16

    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_6
.end method

.method public declared-synchronized setWifiIBSSEnabled(Z)Z
    .locals 17
    .param p1, "enable"    # Z

    .prologue
    .line 2266
    monitor-enter p0

    :try_start_0
    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2267
    .local v3, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "false"

    aput-object v4, v6, v2

    .line 2268
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "isWifiEnabled"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2270
    .local v13, "wifiEnabledCr":Landroid/database/Cursor;
    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const-string v10, "isWifiStateChangeAllowed"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 2274
    .local v16, "wifiStateChangeCr":Landroid/database/Cursor;
    if-eqz v13, :cond_1

    .line 2276
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2277
    const-string v2, "isWifiEnabled"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2278
    const-string v2, "WifiService"

    const-string v4, "Wi-Fi is not allowed by Restriction Policy"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2279
    const/4 v2, 0x0

    .line 2282
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2313
    :goto_0
    monitor-exit p0

    return v2

    .line 2282
    :cond_0
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2285
    :cond_1
    if-eqz v16, :cond_3

    .line 2287
    :try_start_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2288
    const-string v2, "isWifiStateChangeAllowed"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2289
    const-string v2, "WifiService"

    const-string v4, "Wi-Fi state change is not allowed by Wifi Policy"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2290
    const/4 v2, 0x0

    .line 2293
    :try_start_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2266
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "wifiEnabledCr":Landroid/database/Cursor;
    .end local v16    # "wifiStateChangeCr":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2282
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v13    # "wifiEnabledCr":Landroid/database/Cursor;
    .restart local v16    # "wifiStateChangeCr":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2293
    :cond_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2298
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 2302
    const-string v2, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiIBSSEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v14

    .line 2308
    .local v14, "ident":J
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiIbssToggled(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2310
    :try_start_8
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2313
    const v2, 0x26015

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(ZI)Z

    move-result v2

    goto/16 :goto_0

    .line 2293
    .end local v14    # "ident":J
    :catchall_2
    move-exception v2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2310
    .restart local v14    # "ident":J
    :catchall_3
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public setWifiScanWithSensor(I)Z
    .locals 4
    .param p1, "bMove"    # I

    .prologue
    const/4 v3, 0x1

    .line 4014
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiScanWithSensor bMove = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4015
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->isWifiScanWithSensor:Z

    .line 4016
    iput p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->bScanMove:I

    .line 4017
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiScanMove(I)Z

    .line 4018
    return v3
.end method

.method public startLocationRestrictedScan(Landroid/os/WorkSource;)V
    .locals 6
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 2081
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 2082
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceLocationHardwarePermission()V

    .line 2083
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getChannelList()Ljava/util/List;

    move-result-object v1

    .line 2084
    .local v1, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    if-nez v1, :cond_0

    .line 2085
    const-string v4, "WifiService"

    const-string v5, "startLocationRestrictedScan cant get channels"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    :goto_0
    return-void

    .line 2088
    :cond_0
    new-instance v3, Landroid/net/wifi/ScanSettings;

    invoke-direct {v3}, Landroid/net/wifi/ScanSettings;-><init>()V

    .line 2089
    .local v3, "settings":Landroid/net/wifi/ScanSettings;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiChannel;

    .line 2090
    .local v0, "channel":Landroid/net/wifi/WifiChannel;
    iget-boolean v4, v0, Landroid/net/wifi/WifiChannel;->isDFS:Z

    if-nez v4, :cond_1

    .line 2091
    iget-object v4, v3, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2094
    .end local v0    # "channel":Landroid/net/wifi/WifiChannel;
    :cond_2
    if-nez p1, :cond_3

    .line 2097
    new-instance p1, Landroid/os/WorkSource;

    .end local p1    # "workSource":Landroid/os/WorkSource;
    const/4 v4, -0x6

    invoke-direct {p1, v4}, Landroid/os/WorkSource;-><init>(I)V

    .line 2099
    .restart local p1    # "workSource":Landroid/os/WorkSource;
    :cond_3
    invoke-virtual {p0, v3, p1}, Lcom/android/server/wifi/WifiServiceImpl;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto :goto_0
.end method

.method public startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/PPPOEConfig;

    .prologue
    .line 3987
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    const v2, 0x70001

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3989
    return-void
.end method

.method public startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    .locals 10
    .param p1, "settings"    # Landroid/net/wifi/ScanSettings;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .prologue
    const/4 v3, 0x0

    .line 2110
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 2112
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startScan by pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->isBootCompleted:Z

    if-nez v0, :cond_1

    .line 2115
    const-string v0, "WifiService"

    const-string v1, "skip Scan : not yet getting BootCompleted in wifiservice"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    :cond_0
    :goto_0
    return-void

    .line 2118
    :cond_1
    monitor-enter p0

    .line 2119
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    if-eqz v0, :cond_2

    .line 2124
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 2126
    .local v6, "callingIdentity":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2129
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    .line 2132
    monitor-exit p0

    goto :goto_0

    .line 2134
    .end local v6    # "callingIdentity":J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2129
    .restart local v6    # "callingIdentity":J
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2134
    .end local v6    # "callingIdentity":J
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2135
    if-eqz p1, :cond_4

    .line 2136
    new-instance v9, Landroid/net/wifi/ScanSettings;

    invoke-direct {v9, p1}, Landroid/net/wifi/ScanSettings;-><init>(Landroid/net/wifi/ScanSettings;)V

    .line 2137
    .end local p1    # "settings":Landroid/net/wifi/ScanSettings;
    .local v9, "settings":Landroid/net/wifi/ScanSettings;
    invoke-virtual {v9}, Landroid/net/wifi/ScanSettings;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2138
    const-string v0, "WifiService"

    const-string v1, "invalid scan setting"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v9

    .line 2139
    .end local v9    # "settings":Landroid/net/wifi/ScanSettings;
    .restart local p1    # "settings":Landroid/net/wifi/ScanSettings;
    goto :goto_0

    .end local p1    # "settings":Landroid/net/wifi/ScanSettings;
    .restart local v9    # "settings":Landroid/net/wifi/ScanSettings;
    :cond_3
    move-object p1, v9

    .line 2142
    .end local v9    # "settings":Landroid/net/wifi/ScanSettings;
    .restart local p1    # "settings":Landroid/net/wifi/ScanSettings;
    :cond_4
    if-eqz p2, :cond_5

    .line 2143
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceWorkSourcePermission()V

    .line 2146
    invoke-virtual {p2}, Landroid/os/WorkSource;->clearNames()V

    .line 2149
    :cond_5
    const-string v0, "KTT"

    sget-object v1, Lcom/android/server/wifi/WifiServiceImpl;->mEnableAutoConnectHotspot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2150
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 2151
    .local v8, "msg":Landroid/os/Message;
    const/16 v0, 0x26

    iput v0, v8, Landroid/os/Message;->what:I

    .line 2152
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiStateMachine;->sendCallSECApiAsync(Landroid/os/Message;)V

    .line 2154
    .end local v8    # "msg":Landroid/os/Message;
    :cond_6
    sget-boolean v0, Lcom/android/server/wifi/WifiServiceImpl;->WIFI_STOP_SCAN_FOR_ETWS:Z

    if-eqz v0, :cond_7

    .line 2155
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBlockScanFromOthers:Z

    if-eqz v0, :cond_7

    .line 2156
    const-string v0, "WifiService"

    const-string v1, "ETWS: ignore scan"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBlockScanFromOthers:Z

    goto :goto_0

    .line 2162
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iget v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IIILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 2165
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    if-eqz v0, :cond_0

    .line 2166
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->scanStarted()V

    goto/16 :goto_0
.end method

.method public startWifi()V
    .locals 2

    .prologue
    .line 3640
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 3646
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setDriverStart(Z)V

    .line 3647
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reconnectCommand()V

    .line 3648
    return-void
.end method

.method public stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V
    .locals 0
    .param p1, "settings"    # Landroid/net/wifi/BatchedScanSettings;

    .prologue
    .line 2193
    return-void
.end method

.method public stopPPPOE()V
    .locals 3

    .prologue
    .line 3992
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    const v2, 0x70004

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3994
    return-void
.end method

.method public stopWifi()V
    .locals 2

    .prologue
    .line 3655
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 3660
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setDriverStart(Z)V

    .line 3661
    return-void
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 9
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 5191
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 5192
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 5193
    .local v3, "pid":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 5194
    const/4 p2, 0x0

    .line 5196
    :cond_0
    if-eqz p2, :cond_1

    .line 5197
    invoke-virtual {p0, v4, v3}, Lcom/android/server/wifi/WifiServiceImpl;->enforceWakeSourcePermission(II)V

    .line 5199
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5201
    .local v0, "ident":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    monitor-enter v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5202
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$LockList;->findLockByBinder(Landroid/os/IBinder;)I
    invoke-static {v6, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->access$5700(Lcom/android/server/wifi/WifiServiceImpl$LockList;Landroid/os/IBinder;)I

    move-result v2

    .line 5203
    .local v2, "index":I
    if-gez v2, :cond_2

    .line 5204
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wifi lock not active"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5210
    .end local v2    # "index":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5211
    :catch_0
    move-exception v6

    .line 5213
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5215
    :goto_0
    return-void

    .line 5206
    .restart local v2    # "index":I
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->access$5800(Lcom/android/server/wifi/WifiServiceImpl$LockList;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    .line 5207
    .local v5, "wl":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiServiceImpl;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    .line 5208
    if-eqz p2, :cond_3

    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_1
    iput-object v6, v5, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    .line 5209
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiServiceImpl;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    .line 5210
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5213
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 5208
    :cond_3
    :try_start_4
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, v4}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 5213
    .end local v2    # "index":I
    .end local v5    # "wl":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    :catchall_1
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method
