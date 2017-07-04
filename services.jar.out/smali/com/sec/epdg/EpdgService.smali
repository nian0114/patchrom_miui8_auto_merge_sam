.class public Lcom/sec/epdg/EpdgService;
.super Lcom/sec/epdg/IEpdgManager$Stub;
.source "EpdgService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WorldReadableFiles"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgService$WfcProfileTask;,
        Lcom/sec/epdg/EpdgService$DatabaseAccessTask;,
        Lcom/sec/epdg/EpdgService$MapconDatabaseTask;,
        Lcom/sec/epdg/EpdgService$ServiceStatusChangedRunnable;,
        Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;,
        Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;,
        Lcom/sec/epdg/EpdgService$WifiCallHandover;,
        Lcom/sec/epdg/EpdgService$WifiCallEnabler;,
        Lcom/sec/epdg/EpdgService$LteToWifiHOFailureRunnable;,
        Lcom/sec/epdg/EpdgService$LteToWifiHOSuccessRunnable;,
        Lcom/sec/epdg/EpdgService$WifiToLteHOFailureRunnable;,
        Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;,
        Lcom/sec/epdg/EpdgService$HORunnable;,
        Lcom/sec/epdg/EpdgService$EpdgHandler;,
        Lcom/sec/epdg/EpdgService$EpdgDelayedInit;,
        Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;,
        Lcom/sec/epdg/EpdgService$EpdgSettingObserver;,
        Lcom/sec/epdg/EpdgService$EpdgContentObserver;,
        Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;,
        Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;,
        Lcom/sec/epdg/EpdgService$HoDelayStatus;,
        Lcom/sec/epdg/EpdgService$PolicyUpdateReason;,
        Lcom/sec/epdg/EpdgService$VoWifiStatus;,
        Lcom/sec/epdg/EpdgService$IpType;,
        Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;,
        Lcom/sec/epdg/EpdgService$DnsRetryReason;
    }
.end annotation


# static fields
.field private static final ACTION_IMS_ON_SIMLOADED:Ljava/lang/String; = "com.samsung.ims.action.onsimloaded"

.field private static final EVENT_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final EXTRA_APNTYPE:Ljava/lang/String; = "apntype"

.field public static final EXTRA_APN_NAME:Ljava/lang/String; = "apn_name"

.field public static final EXTRA_CDMAAVAILABILITY:Ljava/lang/String; = "cdmaAvailability"

.field public static final EXTRA_IKEERROR:Ljava/lang/String; = "ikeerror"

.field private static final EXTRA_IPSECEVENT:Ljava/lang/String; = "ipsecevent"

.field private static final EXTRA_NETWORKTYPE:Ljava/lang/String; = "networkType"

.field private static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_RETRY_REQUIRED:Ljava/lang/String; = "retry_required"

.field public static final EXTRA_SSID:Ljava/lang/String; = "ssid"

.field private static final HANDOFF_TAG:Ljava/lang/String; = "[HANDOFF]"

.field private static final INCOMING_IPSEC:Ljava/lang/String; = "[IPSEC->EPDGService]"

.field private static final INCOMING_RIL:Ljava/lang/String; = "[RIL->EPDGService]"

.field private static final INTENT_ADB_IP_CALL_SETTING_CHANGE:Ljava/lang/String; = "com.sec.commands.ipcall.action_ip_setting_change"

.field private static final INTENT_ADB_IP_CALL_SETTING_NAME:Ljava/lang/String; = "com.sec.commands.ipcall.setting"

.field private static final INTENT_ADB_IP_CALL_SETTING_STATE:Ljava/lang/String; = "com.sec.commands.ipcall.state"

.field private static final INTENT_AIRPLANE_MODE:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field private static final INTENT_DEFAULT_DATA_SUB_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

.field public static final INTENT_EMERGENCY_CALLBACK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

.field public static final INTENT_EMERGENCY_CALLBACK_MODE_CHANGED_END:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_IMS"

.field static final INTENT_EPDG_AVAILABLE:Ljava/lang/String; = "com.sec.epdg.EPDG_AVAILABLE"

.field private static final INTENT_EPDG_DEREGISTER_EVENT:Ljava/lang/String; = "com.sec.epdgservice.EPDG_DEREGISTER"

.field static final INTENT_EPDG_NOT_AVAILABLE:Ljava/lang/String; = "com.sec.epdg.EPDG_NOTAVAILABLE"

.field private static final INTENT_EPDG_REGISTER_EVENT:Ljava/lang/String; = "com.sec.epdgservice.EPDG_REGISTER"

.field static final INTENT_INTERNET_KEEP_ALIVE:Ljava/lang/String; = "com.sec.epdg.INTERNET_KEEP_ALIVE"

.field public static final INTENT_IPSEC_CONNECTION_EVENT:Ljava/lang/String; = "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_ADMIN:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_ADMIN"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_APP:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_APP"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_EPDN:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_EPDN"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_IMS:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_IMS"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_INTERNET:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_INTERNET"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_MMS:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_MMS"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_XCAP:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_XCAP"

.field private static final INTENT_ISIM_LOADED:Ljava/lang/String; = "android.intent.action.ISIM_LOADED"

.field public static final INTENT_NATT_KEEP_ALIVE_TIMER_EXPIRED:Ljava/lang/String; = "com.sec.epdg.NATT_KEEP_ALIVE_TIMER_EXPIRED"

.field public static final INTENT_PERIODIC_DNS_TIMER_EXPIRED:Ljava/lang/String; = "com.sec.epdg.PERIODIC_DNS_TIMER_EXPIRED"

.field public static final INTENT_PERIODIC_DPD_TIMER_EXPIRED:Ljava/lang/String; = "com.sec.epdg.PERIODIC_DPD_TIMER_EXPIRED"

.field public static final INTENT_RETRY_TIMER_EXPIRED:Ljava/lang/String; = "com.sec.epdg.RETRY_TIMER_EXPIRED"

.field private static final INTENT_SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field private static final INTENT_SCREEN_ON:Ljava/lang/String; = "android.intent.action.SCREEN_ON"

.field private static final INTENT_SIM_STATE:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final INTENT_WFC_SWITCH_PROFILE:Ljava/lang/String; = "action_wfc_switch_profile_broadcast"

.field private static final INTENT_WIFI_CALL_ENABLE:Ljava/lang/String; = "action_wifi_call_enable_broadcast"

.field private static final INTENT_WIFI_LINK_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.net.wifi.LINK_CONFIGURATION_CHANGED"

.field public static final INTENT_WIFI_SCAN_TIMER_EXPIRED:Ljava/lang/String; = "com.sec.epdg.INTENT_WIFI_SCAN_TIMER_EXPIRED"

.field private static final MAX_FQDN_RETRY_COUNT:I = 0x5

.field private static final NETWORK_PING_PONG_DELAY:I = 0x3e8

.field static final NOTIFY_L2W_REGISTRANT:I = 0x1

.field static final NOTIFY_W2L_REGISTRANT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[EPDGService]"

.field private static final VIDEO_SETTING:I = 0x1

.field private static final VOICECALL_TYPE_CS:I = 0x1

.field private static final VOICECALL_TYPE_KEY:Ljava/lang/String; = "voicecall_type"

.field private static final VOICECALL_TYPE_VOLTE:I = 0x0

.field private static final VOLTE_SETTING:I = 0x0

.field private static final VOWIFI_MDN_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field private static final WIFI_CALL_ENABLE_DEFAULT_VALUE:I = 0x0

.field private static final WIFI_DISABLED:I = 0x0

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field private static final WIFI_RSSI_DISABLE:I = -0x64

.field private static bIsSim2Ready:Z

.field private static bIsSimReady:Z

.field private static isCpThresholdTurnOn:Z

.field private static isNotRequiredTimer:Z

.field private static isOnDemandApnConnectionFailed:Z

.field private static mActiveRat:I

.field private static mCellularAvailable:Z

.field private static mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

.field private static mConnMgr:Landroid/net/ConnectivityManager;

.field private static mContext:Landroid/content/Context;

.field private static mCopyLogCnt:I

.field private static mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

.field private static mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mDefaultEnableEpdg:I

.field private static mDefaultSubID:I

.field private static mDeregiForHOFail:Z

.field private static mDisabledByNoRan:Z

.field private static mDisconnectRequired:Z

.field private static mEnableEpdg:Z

.field private static mEnableEpdgHandOver:Z

.field private static mEnableVolte:Z

.field private static mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

.field private static mEpdgHandler:Landroid/os/Handler;

.field private static mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

.field private static mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

.field private static mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

.field private static mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

.field private static mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

.field private static mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

.field private static final mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

.field private static mIsAirplaneMode:Z

.field private static mIsCsAvailable:Z

.field private static mIsEpdgInitialized:Z

.field private static mIsIsimReady:Z

.field private static mIsLteAvailable:Z

.field private static mIsRequiredToSendCdmaIndication:Z

.field private static mIsRssiDisabledForProfiling:Z

.field private static mIsScreenOn:Z

.field private static mIsSimCardRemoved:Z

.field private static mIsVoPSEnabled:Z

.field private static mIsWifiRssiInPollingZone:Z

.field private static mL2WAfterEpdgStatusQuery:Z

.field private static mPreviousE911CallCount:I

.field private static mPreviousNonE911CallCount:I

.field private static mRoaming:Z

.field private static mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

.field private static mSsacVoiceEnabled:Z

.field private static mW2LAfterEpdgStatusQuery:Z

.field private static mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

.field private static mWifiCallingPrefState:I

.field private static mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;


# instance fields
.field public final CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

.field public final CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

.field private ROAMING_MODE_SETTING:Ljava/lang/String;

.field private final W2LHANDOFFAILURE:Ljava/lang/String;

.field private anArray:[I

.field private final mAirplaneModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mBlackListCountry:Ljava/lang/String;

.field private final mBootCompletedReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mCdmaOff:Ljava/lang/Runnable;

.field private final mCdmaOn:Ljava/lang/Runnable;

.field private mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

.field private mCurrentNetwork:Landroid/net/Network;

.field private mCurrentSim2Imsi:Ljava/lang/String;

.field private mCurrentSimImsi:Ljava/lang/String;

.field private final mDataRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mDefaultDataSubChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mDnsPinger:Lcom/sec/epdg/DnsPinger;

.field private final mDnsRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mEcbmIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

.field private mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

.field private mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

.field private mFqdnRetryCount:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mIPCallAdbCommandReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mIfaceObserver:Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

.field private mImsCallListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

.field private mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

.field private final mImsReadyReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

.field private mInternetIntfName:Ljava/lang/String;

.field private mInternetKeepAlive:Landroid/content/Intent;

.field private final mInternetKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mKeepAliveExpired:Z

.field private mKeepAliveRunning:Z

.field private final mL2WHandoverProfilingOn:Ljava/lang/Runnable;

.field private mLastSsid:Ljava/lang/String;

.field private final mLteOff:Ljava/lang/Runnable;

.field private final mLteOn:Ljava/lang/Runnable;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private final mNattKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPingerHandlerThread:Landroid/os/HandlerThread;

.field private final mPollingRssiOff:Ljava/lang/Runnable;

.field private final mPollingRssiOn:Ljava/lang/Runnable;

.field private final mPreferedModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mPrevSim2Imsi:Ljava/lang/String;

.field private mPrevSimImsi:Ljava/lang/String;

.field private mRegistedNetworkStateChangeReceiver:Z

.field private mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

.field private final mRoamingUri:Landroid/net/Uri;

.field private final mScreenOffIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mScreenOnIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mShutdownIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private mUpdateNetRegiRetryCount:I

.field private final mWiFiCallEnableIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mWiFiScanIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mWifiCallingOff:Ljava/lang/Runnable;

.field private final mWifiLinkChangedIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mWifiMgrState:I

.field private final mWifiOff:Ljava/lang/Runnable;

.field private final mWifiOn:Ljava/lang/Runnable;

.field private final mWifiOnUri:Landroid/net/Uri;

.field private final mWifiRssiIntentReceived:Ljava/lang/Runnable;

.field private final mWifiStateIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 159
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsScreenOn:Z

    .line 161
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsAirplaneMode:Z

    .line 163
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsVoPSEnabled:Z

    .line 165
    sput v1, Lcom/sec/epdg/EpdgService;->mPreviousE911CallCount:I

    .line 167
    sput v1, Lcom/sec/epdg/EpdgService;->mPreviousNonE911CallCount:I

    .line 169
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsWifiRssiInPollingZone:Z

    .line 171
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsRssiDisabledForProfiling:Z

    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    .line 273
    sget v0, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    new-array v0, v0, [Lcom/sec/epdg/IPSecDataConnSM;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .line 275
    sput v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    .line 276
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    .line 277
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mRoaming:Z

    .line 278
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z

    .line 284
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    .line 285
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsIsimReady:Z

    .line 286
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    .line 287
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mEnableEpdgHandOver:Z

    .line 288
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mEnableVolte:Z

    .line 289
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsSimCardRemoved:Z

    .line 290
    sput v1, Lcom/sec/epdg/EpdgService;->mDefaultEnableEpdg:I

    .line 294
    sput v2, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    .line 295
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    .line 299
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    .line 304
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isOnDemandApnConnectionFailed:Z

    .line 305
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    .line 310
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z

    .line 311
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z

    .line 312
    sput v1, Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I

    .line 313
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsRequiredToSendCdmaIndication:Z

    .line 314
    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mSsacVoiceEnabled:Z

    .line 330
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    .line 332
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mDisabledByNoRan:Z

    .line 334
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z

    .line 362
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    .line 363
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    .line 610
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsLteAvailable:Z

    .line 687
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsCsAvailable:Z

    .line 1109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3442
    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .line 4281
    const/4 v0, -0x1

    sput v0, Lcom/sec/epdg/EpdgService;->mWifiCallingPrefState:I

    .line 4304
    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 4520
    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 5712
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6085
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2449
    invoke-direct {p0}, Lcom/sec/epdg/IEpdgManager$Stub;-><init>()V

    .line 191
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 248
    const-string/jumbo v0, "wifi_call_when_roaming"

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->ROAMING_MODE_SETTING:Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->ROAMING_MODE_SETTING:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mRoamingUri:Landroid/net/Uri;

    .line 250
    const-string/jumbo v0, "wifi_on"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOnUri:Landroid/net/Uri;

    .line 283
    const-string v0, "N/w Issue: W2L handoff failure"

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->W2LHANDOFFAILURE:Ljava/lang/String;

    .line 291
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mPrevSimImsi:Ljava/lang/String;

    .line 292
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    .line 296
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mPrevSim2Imsi:Ljava/lang/String;

    .line 297
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    .line 301
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveRunning:Z

    .line 302
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveExpired:Z

    .line 303
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgService;->mRegistedNetworkStateChangeReceiver:Z

    .line 306
    const-string v0, "content://iwlansettings/todos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

    .line 307
    const-string v0, "content://iwlansettings/todos/epdgsettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

    .line 308
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    .line 315
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 316
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    .line 323
    iput v2, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    .line 325
    iput v2, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    .line 1304
    new-instance v0, Lcom/sec/epdg/EpdgService$1;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$1;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1316
    new-instance v0, Lcom/sec/epdg/EpdgService$2;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$2;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsReadyReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1336
    new-instance v0, Lcom/sec/epdg/EpdgService$3;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$3;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    .line 1354
    new-instance v0, Lcom/sec/epdg/EpdgService$4;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$4;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsCallListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    .line 1375
    new-instance v0, Lcom/sec/epdg/EpdgService$5;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$5;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mDefaultDataSubChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1388
    new-instance v0, Lcom/sec/epdg/EpdgService$6;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$6;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mDataRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1420
    new-instance v0, Lcom/sec/epdg/EpdgService$7;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$7;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mDnsRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1440
    new-instance v0, Lcom/sec/epdg/EpdgService$8;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$8;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mNattKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1471
    new-instance v0, Lcom/sec/epdg/EpdgService$9;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$9;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWiFiScanIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1514
    new-instance v0, Lcom/sec/epdg/EpdgService$10;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$10;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mInternetKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1528
    new-instance v0, Lcom/sec/epdg/EpdgService$11;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$11;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mScreenOffIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1548
    new-instance v0, Lcom/sec/epdg/EpdgService$12;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$12;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mScreenOnIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1571
    new-instance v0, Lcom/sec/epdg/EpdgService$13;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$13;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mAirplaneModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1599
    new-instance v0, Lcom/sec/epdg/EpdgService$14;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$14;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiLinkChangedIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1630
    new-instance v0, Lcom/sec/epdg/EpdgService$15;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$15;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mPreferedModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1661
    new-instance v0, Lcom/sec/epdg/EpdgService$16;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$16;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWiFiCallEnableIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1681
    new-instance v0, Lcom/sec/epdg/EpdgService$17;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$17;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mIPCallAdbCommandReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1723
    new-instance v0, Lcom/sec/epdg/EpdgService$18;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$18;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mEcbmIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1763
    new-instance v0, Lcom/sec/epdg/EpdgService$19;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$19;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mShutdownIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1783
    new-instance v0, Lcom/sec/epdg/EpdgService$20;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$20;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiStateIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 2066
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    .line 2102
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    .line 2144
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;-><init>(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$1;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mIfaceObserver:Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

    .line 4275
    iput v2, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    .line 4521
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mBlackListCountry:Ljava/lang/String;

    .line 4522
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    .line 4635
    new-instance v0, Lcom/sec/epdg/EpdgService$21;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$21;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mBootCompletedReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 4647
    new-instance v0, Lcom/sec/epdg/EpdgService$22;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$22;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 5042
    new-instance v0, Lcom/sec/epdg/EpdgService$23;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$23;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mL2WHandoverProfilingOn:Ljava/lang/Runnable;

    .line 5053
    new-instance v0, Lcom/sec/epdg/EpdgService$24;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$24;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiRssiIntentReceived:Ljava/lang/Runnable;

    .line 5064
    new-instance v0, Lcom/sec/epdg/EpdgService$25;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$25;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mPollingRssiOn:Ljava/lang/Runnable;

    .line 5090
    new-instance v0, Lcom/sec/epdg/EpdgService$26;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$26;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mPollingRssiOff:Ljava/lang/Runnable;

    .line 5108
    new-instance v0, Lcom/sec/epdg/EpdgService$27;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$27;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOn:Ljava/lang/Runnable;

    .line 5145
    new-instance v0, Lcom/sec/epdg/EpdgService$28;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$28;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    .line 5248
    new-instance v0, Lcom/sec/epdg/EpdgService$29;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$29;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mLteOn:Ljava/lang/Runnable;

    .line 5257
    new-instance v0, Lcom/sec/epdg/EpdgService$30;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$30;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mLteOff:Ljava/lang/Runnable;

    .line 5277
    new-instance v0, Lcom/sec/epdg/EpdgService$31;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$31;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mCdmaOn:Ljava/lang/Runnable;

    .line 5306
    new-instance v0, Lcom/sec/epdg/EpdgService$32;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$32;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mCdmaOff:Ljava/lang/Runnable;

    .line 5409
    new-instance v0, Lcom/sec/epdg/EpdgService$33;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$33;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiCallingOff:Ljava/lang/Runnable;

    .line 5431
    new-instance v0, Lcom/sec/epdg/EpdgService$34;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$34;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

    .line 5971
    new-instance v0, Lcom/sec/epdg/EpdgService$35;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$35;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2450
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->criticalInit(Landroid/content/Context;)V

    .line 2451
    return-void
.end method

.method private IsNeedDeregi()Z
    .locals 2

    .prologue
    .line 5383
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-ne v0, v1, :cond_2

    :cond_0
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgService;->IsVoLteAvailableNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ril.epdg.handover.enable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5388
    :cond_2
    const/4 v0, 0x1

    .line 5390
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized MoveToBasedOnSettings(I)V
    .locals 3
    .param p1, "voLte"    # I

    .prologue
    .line 3257
    monitor-enter p0

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoveToBasedOnSettings : volte or vops("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") VoWifi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") 1x available ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    sget-object v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOLTE_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    .line 3261
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3263
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3264
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3265
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3280
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3269
    :cond_1
    :try_start_1
    const-string v0, "[EPDGService]"

    const-string v1, "Volte Off or vops disabled, Cdma scanning will start. Start the TEPDG1XSCANNING timer"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3272
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 3274
    :cond_2
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 3275
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3276
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized MoveToBasedOnVopsOrSsac(I)V
    .locals 3
    .param p1, "networkSetting"    # I

    .prologue
    .line 3283
    monitor-enter p0

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoveToBasedOnVopsOrSsac :  VoWifi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") VOPS ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsVoPSEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") SSAC Voice("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSsacVoiceEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3288
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3289
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3290
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3297
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3293
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3294
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ReadEpdgSettingFromIMS()V
    .locals 8

    .prologue
    .line 1965
    const-string v5, "[EPDGService]"

    const-string v6, "ReadEpdgSettingFromIMS"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    const-string v2, ""

    .line 1967
    .local v2, "strEpgdEnabled":Ljava/lang/String;
    const-string v3, ""

    .line 1968
    .local v3, "strEpgdHandoverEnabled":Ljava/lang/String;
    const-string v4, ""

    .line 1971
    .local v4, "strVolteEnabled":Ljava/lang/String;
    const/4 v5, 0x3

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    .line 1972
    .local v0, "reqField":[I
    iget-object v5, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v5, :cond_0

    .line 1973
    iget-object v5, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v5, v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getIMSSettingValues([I)Landroid/util/SparseArray;

    move-result-object v1

    .line 1974
    .local v1, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 1975
    const/16 v5, 0x7a

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "strEpgdEnabled":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1976
    .restart local v2    # "strEpgdEnabled":Ljava/lang/String;
    const/16 v5, 0x7b

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "strEpgdHandoverEnabled":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1977
    .restart local v3    # "strEpgdHandoverEnabled":Ljava/lang/String;
    const/16 v5, 0x60

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "strVolteEnabled":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1981
    .end local v1    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v4    # "strVolteEnabled":Ljava/lang/String;
    :cond_0
    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "strEpgdEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "strEpgdHandoverEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    .line 1984
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableVolte:Z

    .line 1985
    sget-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-eqz v5, :cond_2

    .line 1986
    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableEpdgHandOver:Z

    .line 1988
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorDT()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorDTCZ()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1989
    :cond_1
    sget-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableVolte:Z

    if-eqz v5, :cond_4

    .line 1990
    const-string/jumbo v6, "ril.epdg.handover.enable"

    sget-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableEpdgHandOver:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "true"

    :goto_0
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    :cond_2
    :goto_1
    return-void

    .line 1990
    :cond_3
    const-string/jumbo v5, "false"

    goto :goto_0

    .line 1992
    :cond_4
    const-string/jumbo v5, "ril.epdg.handover.enable"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1995
    :cond_5
    const-string/jumbo v6, "ril.epdg.handover.enable"

    sget-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableEpdgHandOver:Z

    if-eqz v5, :cond_6

    const-string/jumbo v5, "true"

    :goto_2
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string/jumbo v5, "false"

    goto :goto_2

    .line 1971
    nop

    :array_0
    .array-data 4
        0x7a
        0x7b
        0x60
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 133
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/epdg/EpdgService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->is3gNetwork(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10000()Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/sec/epdg/EpdgService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10102(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10200()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgTemporaryBlocked()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10300(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 133
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setIsWifiRssiInPollingZone(Z)V

    return-void
.end method

.method static synthetic access$10400(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isEpdgAvailabilityRecommended()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10500(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiGoodEnough()V

    return-void
.end method

.method static synthetic access$10600(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startTimersIfNeeded()V

    return-void
.end method

.method static synthetic access$10700(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->updateCpEpdgHoThreshold(Z)V

    return-void
.end method

.method static synthetic access$10800(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->sendWifiStatusChangedNotification(Z)V

    return-void
.end method

.method static synthetic access$10900(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onNetworkStatusChanged()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/epdg/EpdgService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->is2gNetwork(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11000(Lcom/sec/epdg/EpdgService;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->onServiceStatusChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$11100(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onDbAccessCompleted()V

    return-void
.end method

.method static synthetic access$11300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setVowifiSetting(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/epdg/EpdgService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->handleSimStateChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->handleImsStateChange(I)V

    return-void
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    return v0
.end method

.method static synthetic access$1600()Landroid/content/Context;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onSystemSelectTimerFinish()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/epdg/EpdgService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget v0, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/epdg/EpdgService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->getSMForApnType(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onInternetKeepAliveTimerExpiry()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setIsScreenOn(Z)V

    return-void
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSimCardRemoved()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$DnsRetryReason;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->performDnsAndGetResult(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700()Lcom/sec/epdg/EpdgTimers;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/epdg/EpdgService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->sendEpdgDeregisterBroadcastIfRequired(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->moveToLteBasedOnMapcon()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->IsNeedDeregi()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200()Lcom/sec/epdg/EpdgService$WfcProfileTask;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/sec/epdg/EpdgService$WfcProfileTask;)Lcom/sec/epdg/EpdgService$WfcProfileTask;
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService$WfcProfileTask;

    .prologue
    .line 133
    sput-object p0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/sec/epdg/EpdgService;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRoamingUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/epdg/EpdgService;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOnUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->sendWifiDelayRequest(Z)V

    return-void
.end method

.method static synthetic access$3800()[Lcom/sec/epdg/IPSecDataConnSM;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->isValidAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isKeepAliveRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000()Lcom/sec/epdg/EpdgService$IpType;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getConfiguredWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startTimerOrPerformDns(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/epdg/EpdgService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->initEpdgService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/sec/epdg/EpdgService;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Landroid/os/Message;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/epdg/EpdgService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToTestApp(II)V

    return-void
.end method

.method static synthetic access$4600()I
    .locals 1

    .prologue
    .line 133
    sget v0, Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I

    return v0
.end method

.method static synthetic access$4602(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 133
    sput p0, Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I

    return p0
.end method

.method static synthetic access$4700()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z

    return v0
.end method

.method static synthetic access$4702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 133
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z

    return p0
.end method

.method static synthetic access$4800(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->movePdnFromWifi()V

    return-void
.end method

.method static synthetic access$4900()I
    .locals 1

    .prologue
    .line 133
    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    return v0
.end method

.method static synthetic access$500()Lcom/sec/epdg/EpdgRilSharedData;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    return-object v0
.end method

.method static synthetic access$5000()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z

    return v0
.end method

.method static synthetic access$5002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 133
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z

    return p0
.end method

.method static synthetic access$5100(Lcom/sec/epdg/EpdgService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startHandOverWifiToLte(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->handleRetryTimerExpired(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgRilInterface;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sec/epdg/EpdgService;)Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->notifyL2WHandoverResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->notifyW2LHandoverResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->handleEpdgSettingsReadEvent()V

    return-void
.end method

.method static synthetic access$5800(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->handleMapconChange()V

    return-void
.end method

.method static synthetic access$5900(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->pingAsyncInternet()V

    return-void
.end method

.method static synthetic access$6000(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isHandoverRequiredOnCdmaIndication()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    return-void
.end method

.method static synthetic access$6200()Lcom/sec/epdg/EpdgService$IpType;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300(Lcom/sec/epdg/EpdgService$IpType;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService$IpType;

    .prologue
    .line 133
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    return-void
.end method

.method static synthetic access$6500(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    return-void
.end method

.method static synthetic access$6600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->stopPeriodicDpdIfNecessary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startPeriodicDpdIfNecessary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->startWifiRssiIntentDelayTimerIfRequired(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900()V
    .locals 0

    .prologue
    .line 133
    invoke-static {}, Lcom/sec/epdg/EpdgService;->stopWifiRssiIntentDelayTimerIfRequired()V

    return-void
.end method

.method static synthetic access$700()Lcom/sec/epdg/EpdgContentReader;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->getSMForApnName(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/epdg/EpdgContentReader;)Lcom/sec/epdg/EpdgContentReader;
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgContentReader;

    .prologue
    .line 133
    sput-object p0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/sec/epdg/EpdgService;ZZZZZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 133
    invoke-direct/range {p0 .. p5}, Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->MoveToBasedOnSettings(I)V

    return-void
.end method

.method static synthetic access$7300(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->onVolteProvisioningStateChanged(I)V

    return-void
.end method

.method static synthetic access$7400(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->onVoWifiProvisioningStateChanged(I)V

    return-void
.end method

.method static synthetic access$7500()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z

    return v0
.end method

.method static synthetic access$7502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 133
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z

    return p0
.end method

.method static synthetic access$7600()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z

    return v0
.end method

.method static synthetic access$7602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 133
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z

    return p0
.end method

.method static synthetic access$7700(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setEpdgTemporaryBlocked(Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V

    return-void
.end method

.method static synthetic access$7800()Lcom/sec/epdg/EpdgService$HoDelayStatus;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->onVopsStatusChanged(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/epdg/EpdgService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # J

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    return-void
.end method

.method static synthetic access$8000(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getHasPendingCdmaIndication()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8100(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setHasPendingCdmaIndication(Z)V

    return-void
.end method

.method static synthetic access$8200()Z
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsImsCallConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8300()Z
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsWifiRssiInPollingZone()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8400()Z
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSsacVoiceEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8500(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 133
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setIsSsacVoiceEnabled(Z)V

    return-void
.end method

.method static synthetic access$8600(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->MoveToBasedOnVopsOrSsac(I)V

    return-void
.end method

.method static synthetic access$8700(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->changeApBlocking(Z)V

    return-void
.end method

.method static synthetic access$8800(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->initAfterimsReady()V

    return-void
.end method

.method static synthetic access$8900(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->updateNetRegist()V

    return-void
.end method

.method static synthetic access$900()Lcom/sec/epdg/handover/EpdgImsListener;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/sec/epdg/EpdgService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->handleDefaultSubChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$VoWifiStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiCallingOff:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 133
    sput p0, Lcom/sec/epdg/EpdgService;->mWifiCallingPrefState:I

    return p0
.end method

.method static synthetic access$9400(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9500(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->updateMapconTable(Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/sec/epdg/EpdgService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mBlackListCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/sec/epdg/EpdgService$IpType;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService$IpType;

    .prologue
    .line 133
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/sec/epdg/EpdgService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget v0, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    return v0
.end method

.method static synthetic access$9902(Lcom/sec/epdg/EpdgService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    return p1
.end method

.method private changeApBlocking(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 4574
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-nez v0, :cond_0

    .line 4597
    :goto_0
    return-void

    .line 4577
    :cond_0
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeApBlocking :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wifiConnected  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "blocking State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4579
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4580
    if-eqz p1, :cond_2

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->BLACKLIST_COUNTRY:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-eq v0, v1, :cond_2

    .line 4581
    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 4582
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4583
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    .line 4596
    :cond_1
    :goto_1
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeApBlocking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4585
    :cond_2
    if-nez p1, :cond_1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-ne v0, v1, :cond_1

    .line 4586
    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->AP_NOT_ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 4587
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    .line 4589
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->sendEpdgDeregisterBroadcastIfRequired(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4590
    const-string v0, "[EPDGService]"

    const-string v1, "AP blocked - do not need de-register "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4591
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4593
    :cond_3
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    goto :goto_1
.end method

.method private checkAndUpdateWifiAvailability()V
    .locals 3

    .prologue
    .line 3389
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSimCardRemoved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3390
    const-string v0, "[EPDGService]"

    const-string v1, "checkAndUpdateWifiAvailability: No Sim card. Ignore all notifications"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3404
    :cond_0
    :goto_0
    return-void

    .line 3393
    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3394
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v0, :cond_2

    .line 3395
    sget-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    if-nez v0, :cond_0

    .line 3396
    const-string v0, "[EPDGService]"

    const-string v1, "check AP is allowed for EPDG service first"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3397
    new-instance v0, Lcom/sec/epdg/EpdgService$WfcProfileTask;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/epdg/EpdgService$WfcProfileTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    .line 3398
    sget-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 3401
    :cond_2
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    goto :goto_0
.end method

.method private checkVopsStatus(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v1, 0x1

    .line 5958
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVopsStatus: service state is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5959
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getVoPS(Landroid/telephony/ServiceState;)I

    move-result v0

    .line 5960
    .local v0, "vops":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 5961
    const-string v2, "[EPDGService]"

    const-string v3, "checkVopsStatus: Inappropriate vops status, returning"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5969
    :cond_0
    :goto_0
    return-void

    .line 5964
    :cond_1
    if-ne v0, v1, :cond_2

    .line 5965
    .local v1, "vopsEnabled":Z
    :goto_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsVoPSEnabled()Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 5966
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVopsStatus: Vops status is changed to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5967
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->onVopsStatusChanged(I)V

    goto :goto_0

    .line 5964
    .end local v1    # "vopsEnabled":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static copyVpnLog(I)V
    .locals 12
    .param p0, "num"    # I

    .prologue
    .line 3542
    const/4 v3, 0x0

    .line 3543
    .local v3, "fin":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 3544
    .local v6, "fout":Ljava/io/FileOutputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/log/vpnclientpm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3546
    .local v1, "dest":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v9, "/data/data/com.ipsec.service/vpnclientpm.txt"

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3547
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v4, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3549
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .local v7, "fout":Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    :try_start_2
    new-array v0, v9, [B

    .line 3552
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .local v8, "len":I
    if-lez v8, :cond_2

    .line 3553
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 3556
    .end local v0    # "buffer":[B
    .end local v8    # "len":I
    :catch_0
    move-exception v5

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 3557
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .local v5, "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v9, "[EPDGService]"

    const-string v10, "FileNotFoundException "

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3561
    if-eqz v3, :cond_0

    .line 3563
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 3568
    :cond_0
    :goto_2
    if-eqz v6, :cond_1

    .line 3570
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 3577
    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    return-void

    .line 3555
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "len":I
    :cond_2
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3561
    if-eqz v4, :cond_3

    .line 3563
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 3568
    :cond_3
    :goto_4
    if-eqz v7, :cond_7

    .line 3570
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 3573
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .line 3564
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 3565
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 3571
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 3572
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 3573
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .line 3564
    .end local v0    # "buffer":[B
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "len":I
    .restart local v5    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 3565
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3571
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 3572
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3558
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v2

    .line 3559
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_9
    const-string v9, "[EPDGService]"

    const-string v10, "Exception occured"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3561
    if-eqz v3, :cond_4

    .line 3563
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 3568
    :cond_4
    :goto_6
    if-eqz v6, :cond_1

    .line 3570
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_3

    .line 3571
    :catch_6
    move-exception v2

    .line 3572
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3564
    :catch_7
    move-exception v2

    .line 3565
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 3561
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_7
    if-eqz v3, :cond_5

    .line 3563
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 3568
    :cond_5
    :goto_8
    if-eqz v6, :cond_6

    .line 3570
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 3573
    :cond_6
    :goto_9
    throw v9

    .line 3564
    :catch_8
    move-exception v2

    .line 3565
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "[EPDGService]"

    const-string v11, "Exception : close exception"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 3571
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v2

    .line 3572
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "[EPDGService]"

    const-string v11, "Exception : close exception"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 3561
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_7

    .line 3558
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v2

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_5

    .line 3556
    :catch_c
    move-exception v5

    goto/16 :goto_1

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_d
    move-exception v5

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "len":I
    :cond_7
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private criticalInit(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2440
    const-string v0, "[EPDGService]"

    const-string v1, "Enter step 1 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    sput-object p1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    .line 2442
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EpdgServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2443
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2444
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgHandler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$EpdgHandler;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Looper;)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    .line 2445
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$EpdgDelayedInit;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/EpdgService$EpdgDelayedInit;-><init>(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2446
    const-string v0, "[EPDGService]"

    const-string v1, "Exit step 1 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2447
    return-void
.end method

.method public static getAllApnSettings()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/IWlanApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 748
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getIWlanApnList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "epdgApnType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 4040
    const/4 v2, 0x0

    .line 4042
    .local v2, "apnName":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 4043
    const-string v7, "[EPDGService]"

    const-string v8, "(null apnType)"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4061
    :goto_0
    return-object v6

    .line 4047
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v0

    .line 4048
    .local v0, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4049
    .local v1, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4050
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/epdg/IWlanApnSetting;

    .line 4051
    .local v4, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v5

    .line 4052
    .local v5, "remoteUri":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v3

    .line 4053
    .local v3, "apnType":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4054
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 4055
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apnType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mapped to apnName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    .line 4057
    goto :goto_0

    .line 4060
    .end local v3    # "apnType":Ljava/lang/String;
    .end local v4    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    .end local v5    # "remoteUri":Ljava/lang/String;
    :cond_2
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find apnName for apnType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getConfiguredWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;
    .locals 3

    .prologue
    .line 600
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getConfiguredWifiIntfIpType: returning ip type as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    sget-object v0, Lcom/sec/epdg/EpdgService;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    return-object v0
.end method

.method public static getConnMgrInstance()Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 444
    sget-object v0, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getCpThresholdConditionForHandover()Z
    .locals 3

    .prologue
    const/16 v2, 0x12

    const/4 v0, 0x1

    .line 637
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVod()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v1, v2, :cond_0

    .line 638
    const-string v1, "[EPDGService]"

    const-string v2, "It is true that CpThresholdCondition for handover for VOD"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :goto_0
    return v0

    .line 641
    :cond_0
    sget-boolean v1, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/sec/epdg/EpdgService;->mEnableEpdgHandOver:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v1, v2, :cond_1

    .line 642
    const-string v1, "[EPDGService]"

    const-string v2, "It is true that CpThresholdCondition for handover"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 645
    :cond_1
    const-string v0, "[EPDGService]"

    const-string v1, "It is false that CpThresholdCondition for handover"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 5628
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 5630
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 5631
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 5632
    .local v0, "newSsid":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current Ssid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 5634
    return-object v0
.end method

.method private static getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;
    .locals 3

    .prologue
    .line 590
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentWifiIntfIpType: returning ip type as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    sget-object v0, Lcom/sec/epdg/EpdgService;->mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    return-object v0
.end method

.method public static getEpdgFqdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 756
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getEpdgFQDN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEpdgServiceContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 1173
    const-string v0, "[EPDGService]"

    const-string v1, "Returning epdg service context"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getEpdgServiceHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2396
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getEpdgSettings()Lcom/sec/epdg/EpdgSettings;
    .locals 1

    .prologue
    .line 752
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    return-object v0
.end method

.method private static getEpdgTemporaryBlocked()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;
    .locals 1

    .prologue
    .line 4525
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-nez v0, :cond_0

    .line 4526
    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 4528
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    goto :goto_0
.end method

.method private getHasPendingCdmaIndication()Z
    .locals 1

    .prologue
    .line 3526
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-nez v0, :cond_0

    .line 3527
    const/4 v0, 0x0

    .line 3529
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsRequiredToSendCdmaIndication:Z

    goto :goto_0
.end method

.method public static getIpmeStatus()Z
    .locals 1

    .prologue
    .line 606
    sget-object v0, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 607
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getIpmeStatus()Z

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized getIsAirplaneMode()Z
    .locals 4

    .prologue
    .line 507
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsAirplaneMode: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->mIsAirplaneMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsAirplaneMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getIsCellularAvailable()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 650
    const-class v7, Lcom/sec/epdg/EpdgService;

    monitor-enter v7

    :try_start_0
    sget-object v8, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 651
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 653
    .local v1, "isRoaming":Z
    const/4 v0, 0x0

    .line 654
    .local v0, "bIsCellularAvailable":Z
    const-string/jumbo v8, "gsm.sim.state"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 655
    .local v3, "simState":Ljava/lang/String;
    const-string v8, "READY"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "true"

    const-string/jumbo v9, "gsm.operator.isroaming"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 656
    const/4 v1, 0x1

    .line 658
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataRoamingEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_1

    .line 680
    :goto_0
    monitor-exit v7

    return v5

    .line 662
    :cond_1
    :try_start_1
    sget v8, Lcom/sec/epdg/EpdgService;->mWifiCallingPrefState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 663
    const-string v6, "[EPDGService]"

    const-string/jumbo v8, "mWifiCallingPrefState is NEVER_USE_CS"

    invoke-static {v6, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 650
    .end local v3    # "simState":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5

    .line 667
    .restart local v3    # "simState":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 668
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/telephony/TelephonyManager;->getServiceState(I)I

    move-result v8

    if-nez v8, :cond_5

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v8

    if-nez v8, :cond_5

    move v0, v6

    .line 669
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    sget v9, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    .line 675
    .local v2, "netType":I
    :goto_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 676
    if-nez v2, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_8

    :cond_3
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v8

    if-nez v8, :cond_8

    move v0, v6

    :cond_4
    :goto_3
    move v5, v0

    .line 680
    goto :goto_0

    .end local v2    # "netType":I
    :cond_5
    move v0, v5

    .line 668
    goto :goto_1

    .line 671
    :cond_6
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v8

    if-nez v8, :cond_7

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v8

    if-nez v8, :cond_7

    move v0, v6

    .line 672
    :goto_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .restart local v2    # "netType":I
    goto :goto_2

    .end local v2    # "netType":I
    :cond_7
    move v0, v5

    .line 671
    goto :goto_4

    .restart local v2    # "netType":I
    :cond_8
    move v0, v5

    .line 676
    goto :goto_3
.end method

.method public static declared-synchronized getIsCsAvailable()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 690
    const-class v2, Lcom/sec/epdg/EpdgService;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartCdmaRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 691
    sget-boolean v3, Lcom/sec/epdg/EpdgService;->mIsCsAvailable:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 695
    :goto_0
    monitor-exit v2

    return v0

    :cond_0
    move v0, v1

    .line 691
    goto :goto_0

    .line 695
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    :cond_2
    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getIsDynamicFqdn()Z
    .locals 1

    .prologue
    .line 760
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getIsDynamicFQDN()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getIsEpdgAvailable()Z
    .locals 6

    .prologue
    .line 713
    const-class v3, Lcom/sec/epdg/EpdgService;

    monitor-enter v3

    const/4 v1, 0x0

    .line 714
    .local v1, "result":Z
    :try_start_0
    const-string/jumbo v2, "ril.epdg.available"

    const-string/jumbo v4, "false"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "epdgAvailable":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 716
    const/4 v1, 0x1

    .line 718
    :cond_0
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getIsEpdgAvailable: returning: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    monitor-exit v3

    return v1

    .line 713
    .end local v0    # "epdgAvailable":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static getIsImsCallConnected()Z
    .locals 4

    .prologue
    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, "result":Z
    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_BLOCKHANDOFF:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_0

    .line 579
    const/4 v0, 0x1

    .line 581
    :cond_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsImsCallConnected: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    return v0
.end method

.method public static declared-synchronized getIsLteAvailable()Z
    .locals 3

    .prologue
    .line 614
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartLteRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getIsLteAvailable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 617
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsVoPSEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSsacVoiceEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getIsNetworkRoaming()Z
    .locals 1

    .prologue
    .line 4301
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method private static getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1232
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->isOnDemandApnConnectionFailed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static getIsRssiDisabledForProfiling()Z
    .locals 3

    .prologue
    .line 566
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIsRssiDisabledForProfiling: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsRssiDisabledForProfiling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsRssiDisabledForProfiling:Z

    return v0
.end method

.method public static declared-synchronized getIsScreenOn()Z
    .locals 4

    .prologue
    .line 498
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsScreenOn: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->mIsScreenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getIsSimCardRemoved()Z
    .locals 3

    .prologue
    .line 738
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIsSimCardRemoved: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsSimCardRemoved:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsSimCardRemoved:Z

    return v0
.end method

.method private static declared-synchronized getIsSsacVoiceEnabled()Z
    .locals 4

    .prologue
    .line 526
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsSsacVoiceEnabled: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->mSsacVoiceEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mSsacVoiceEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getIsVoPSEnabled()Z
    .locals 4

    .prologue
    .line 516
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsVoPSEnabled: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->mIsVoPSEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsVoPSEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getIsWiFiPreferredInRoaming()Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 4

    .prologue
    .line 4283
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    if-eqz v1, :cond_0

    .line 4289
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->ROAMING_MODE_SETTING:Ljava/lang/String;

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgConstants$TriState;->getValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4293
    .local v0, "prefWifi":I
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsWiFiPreferredInRoaming :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4294
    invoke-static {v0}, Lcom/sec/epdg/EpdgConstants$TriState;->get(I)Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v1

    .line 4296
    .end local v0    # "prefWifi":I
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0
.end method

.method private static getIsWifiRssiInPollingZone()Z
    .locals 3

    .prologue
    .line 556
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIsWifiRssiInPollingZone: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsWifiRssiInPollingZone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsWifiRssiInPollingZone:Z

    return v0
.end method

.method public static declared-synchronized getIsimState()Z
    .locals 2

    .prologue
    .line 729
    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/sec/epdg/EpdgService;->mIsIsimReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getIwlanContextState(Ljava/lang/String;)Lcom/sec/epdg/IWlanState;
    .locals 4
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 3847
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIwlanContextState() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3848
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v1, :cond_1

    .line 3849
    sget-object v1, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3851
    sget-object v1, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v1

    .line 3854
    :goto_1
    return-object v1

    .line 3848
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3854
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getPreviousE911CallCount()I
    .locals 4

    .prologue
    .line 536
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPreviousE911CallCount: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/epdg/EpdgService;->mPreviousE911CallCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    sget v0, Lcom/sec/epdg/EpdgService;->mPreviousE911CallCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPreviousNonE911CallCount()I
    .locals 4

    .prologue
    .line 546
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPreviousNonE911CallCount: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/epdg/EpdgService;->mPreviousNonE911CallCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    sget v0, Lcom/sec/epdg/EpdgService;->mPreviousNonE911CallCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getRegistedNetworkStateChangeReceiver()Z
    .locals 1

    .prologue
    .line 436
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mRegistedNetworkStateChangeReceiver:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSMForApnName(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 7
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    .line 1506
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1507
    .local v3, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1512
    .end local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :goto_1
    return-object v3

    .line 1506
    .restart local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1511
    .end local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No SM for apnName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getSMForApnType(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 7
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1496
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1497
    .local v3, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1502
    .end local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :goto_1
    return-object v3

    .line 1496
    .restart local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1501
    .end local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No SM for apnType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getSimState()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 723
    const-class v2, Lcom/sec/epdg/EpdgService;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getSimState() SimState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SimState2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 724
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    if-eq v3, v0, :cond_1

    :cond_0
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v3

    if-ne v3, v0, :cond_2

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit v2

    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getTargetRilNetwork()I
    .locals 4

    .prologue
    .line 5943
    const/16 v0, 0xff

    .line 5944
    .local v0, "mTargetRilNetwork":I
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current mActiveRat is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5946
    sget v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    .line 5947
    const/16 v0, 0x19

    .line 5953
    :goto_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning mTargetRilNetwork is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5954
    return v0

    .line 5948
    :cond_0
    sget v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 5949
    const/16 v0, 0x21

    goto :goto_0

    .line 5951
    :cond_1
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private getVoWifiStatus()Lcom/sec/epdg/EpdgService$VoWifiStatus;
    .locals 6

    .prologue
    .line 1085
    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_call_enable"

    sget v5, Lcom/sec/epdg/EpdgService;->mDefaultEnableEpdg:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1087
    .local v2, "settingState":I
    invoke-static {v2}, Lcom/sec/epdg/EpdgConstants$TriState;->get(I)Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v1

    .line 1088
    .local v1, "isWifiCallEnableSetting":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v3, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsSettings;->readVolteProvisionedState()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    .line 1089
    .local v0, "isVolteProvisioned":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v0, :cond_0

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v1, :cond_0

    .line 1091
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 1104
    :goto_0
    return-object v3

    .line 1092
    :cond_0
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v0, :cond_2

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-eq v3, v1, :cond_2

    .line 1095
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v1, :cond_1

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    .line 1097
    :cond_2
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-eq v3, v0, :cond_4

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v1, :cond_4

    .line 1100
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v0, :cond_3

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    .line 1104
    :cond_4
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v0, :cond_5

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v1, :cond_5

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0
.end method

.method private handleDefaultSubChange(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 1862
    const-string v2, "[EPDGService]"

    const-string v3, "Inside handleDefaultSubChange: "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    const-string/jumbo v2, "subscription"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1864
    .local v1, "subscription":I
    if-le v1, v4, :cond_0

    const v2, 0x7ffffffb

    if-ge v1, v2, :cond_0

    .line 1865
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDefaultSubChange() subscription is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1867
    .local v0, "phoneID":I
    const-string/jumbo v2, "sys.default.data.phoneid"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDefaultSubChange() phoneID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    sput v1, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    .line 1870
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/throttle/ThrottleController;->onSimChanged()V

    .line 1873
    .end local v0    # "phoneID":I
    :cond_0
    new-instance v2, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1874
    return-void
.end method

.method private handleEpdgSettingsReadEvent()V
    .locals 28

    .prologue
    .line 775
    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-nez v2, :cond_1

    .line 776
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "handleEpdgSettingsReadEvent() mEnableEpdg is false. Stop to init."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v2, :cond_15

    .line 780
    invoke-static {}, Lcom/sec/epdg/EpdgOmadmSettings;->init()V

    .line 781
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/epdg/EpdgRilSharedData;->makeInstance(I)Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    .line 783
    const-string v2, "[EPDGService]"

    const-string v3, "Using EpdgRilAdapter "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgRilAdapter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgRilAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    .line 786
    invoke-static {}, Lcom/sec/epdg/ipc/EpdgModem;->getInstance()Lcom/sec/epdg/ipc/EpdgModem;

    .line 787
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .line 789
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v4

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getHoDelayTimer()I

    move-result v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getHoDelayTimer()I

    move-result v7

    sget-object v8, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xScanTimer()I

    move-result v8

    sget-object v9, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiIntentDelayTimer()I

    move-result v9

    sget-object v10, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v10}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/epdg/EpdgSettings;->getWifiIpConfigTimer()I

    move-result v10

    invoke-static/range {v2 .. v10}, Lcom/sec/epdg/EpdgTimers;->getInstance(Landroid/os/Handler;IIIIIIII)Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    .line 799
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TepdgLteTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tepdg1xTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tepdg1xScanTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xScanTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 804
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/epdg/EpdgService$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    :goto_1
    sput-object v2, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0xe1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->makeEpdgServiceUp()V

    .line 813
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isDataRetryEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDataRetryEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->isRetryEnabledForAlwaysOnApn()Z

    move-result v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/throttle/ThrottleController;->createInstance(Landroid/content/Context;ZZ)V

    .line 817
    const-string v2, "[EPDGService]"

    const-string v3, "Creating the Handover State machines"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    sget v2, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_3

    .line 819
    invoke-static/range {v18 .. v18}, Lcom/sec/epdg/IWlanApnContext;->getNewIWlanApnContextInstance(I)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v22

    .line 821
    .local v22, "iwlanApnContext":Lcom/sec/epdg/IWlanApnContext;
    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-static {v3, v4, v0, v5, v6}, Lcom/sec/epdg/IPSecDataConnSM;->getNewStateMachineInstance(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v3

    aput-object v3, v2, v18

    .line 818
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 804
    .end local v18    # "i":I
    .end local v22    # "iwlanApnContext":Lcom/sec/epdg/IWlanApnContext;
    :cond_2
    sget-object v2, Lcom/sec/epdg/EpdgService$HoDelayStatus;->DONOT_WAIT:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    goto/16 :goto_1

    .line 826
    .restart local v18    # "i":I
    :cond_3
    const-string/jumbo v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    .line 828
    .local v13, "b":Landroid/os/IBinder;
    invoke-static {v13}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/epdg/EpdgService;->mNMService:Landroid/os/INetworkManagementService;

    .line 831
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mNMService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mIfaceObserver:Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :goto_3
    new-instance v17, Landroid/content/IntentFilter;

    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    .line 837
    .local v17, "filter":Landroid/content/IntentFilter;
    new-instance v25, Landroid/content/IntentFilter;

    invoke-direct/range {v25 .. v25}, Landroid/content/IntentFilter;-><init>()V

    .line 838
    .local v25, "periodicDpdFilter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v11

    .line 839
    .local v11, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 840
    .local v12, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :cond_4
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 841
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/epdg/IWlanApnSetting;

    .line 842
    .local v23, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual/range {v23 .. v23}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v26

    .line 843
    .local v26, "remoteUri":Ljava/lang/String;
    if-eqz v26, :cond_4

    .line 844
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.sec.epdg.RETRY_TIMER_EXPIRED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_4

    .line 832
    .end local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v17    # "filter":Landroid/content/IntentFilter;
    .end local v23    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    .end local v25    # "periodicDpdFilter":Landroid/content/IntentFilter;
    .end local v26    # "remoteUri":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 833
    .local v14, "e":Landroid/os/RemoteException;
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not register InterfaceObserver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 848
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v17    # "filter":Landroid/content/IntentFilter;
    .restart local v25    # "periodicDpdFilter":Landroid/content/IntentFilter;
    :cond_5
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mDataRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 849
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mNattKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.epdg.NATT_KEEP_ALIVE_TIMER_EXPIRED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 851
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mWiFiScanIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.epdg.INTENT_WIFI_SCAN_TIMER_EXPIRED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 853
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mDnsRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.epdg.PERIODIC_DNS_TIMER_EXPIRED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 856
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getRegistedNetworkStateChangeReceiver()Z

    move-result v2

    if-nez v2, :cond_6

    .line 857
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 859
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 861
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/epdg/EpdgService;->setRegistedNetworkStateChangeReceiver(Z)V

    .line 864
    :cond_6
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isInternetKeepAliveEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 865
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mInternetKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.epdg.INTERNET_KEEP_ALIVE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 867
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "PingerHandlerThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/epdg/EpdgService;->mPingerHandlerThread:Landroid/os/HandlerThread;

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mPingerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 869
    new-instance v2, Lcom/sec/epdg/DnsPinger;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v4, "[EPDGService]"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/epdg/EpdgService;->mPingerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/epdg/DnsPinger;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/epdg/EpdgService;->mDnsPinger:Lcom/sec/epdg/DnsPinger;

    .line 872
    :cond_7
    new-instance v24, Landroid/content/IntentFilter;

    invoke-direct/range {v24 .. v24}, Landroid/content/IntentFilter;-><init>()V

    .line 873
    .local v24, "mWifiStateIntentReceiverFilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 874
    const-string v2, "com.samsung.android.net.wifi.SEC_NETWORK_STATE_CHANGED"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 875
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mWifiStateIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 877
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mScreenOnIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 879
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mScreenOffIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 881
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mAirplaneModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 883
    const/4 v2, 0x0

    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    .line 884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    if-eqz v2, :cond_8

    .line 885
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "registerForCallStateChange..."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mImsCallListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->registerForCallStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_1
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_1 .. :try_end_1} :catch_1

    .line 892
    :cond_8
    :goto_5
    sget-object v2, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->registerListener()V

    .line 893
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    if-eqz v2, :cond_9

    .line 894
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mEcbmIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 896
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mEcbmIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_IMS"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 899
    :cond_9
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    if-eqz v2, :cond_a

    .line 900
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mShutdownIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 904
    :cond_a
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v2, :cond_d

    .line 905
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_mdn"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    .line 907
    const-string v2, "[EPDGService]"

    const-string v3, "Parameter is not present, create it with default value"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_mdn"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 911
    :cond_b
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEpdgSettingsReadEvent(): MDN is set, value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vowifi_mdn"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :try_start_2
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_call_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_c

    .line 917
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "vowifi enable parameter is not present, create it with default value"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_call_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 921
    :cond_c
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEpdgSettingsReadEvent(): wifi call enable is set, value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_call_enable"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 929
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_mdn"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "vowifi_mdn"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 933
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->resetVowifiMdnCache(Landroid/content/Context;)V

    .line 934
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_call_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 936
    const-string v2, "[EPDGService]"

    const-string v3, "Turning off vowifi as SIM mdn and vowifi mdn parameter is different"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_call_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 949
    :cond_d
    :goto_7
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_13

    const/16 v19, 0x1

    .line 951
    .local v19, "isAirplaneModeEnabled":Z
    :goto_8
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEpdgSettingsReadEvent(): isAirplaneModeEnabled is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    invoke-static/range {v19 .. v19}, Lcom/sec/epdg/EpdgService;->setIsAirplaneMode(Z)V

    .line 955
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_mdn"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    .line 957
    const-string v2, "[EPDGService]"

    const-string v3, "Parameter is not present, create it with default value"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_mdn"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 961
    :cond_e
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEpdgSettingsReadEvent(): MDN is set, value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vowifi_mdn"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v2

    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mRoaming:Z

    .line 964
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 965
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    sput v2, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    .line 966
    const-string/jumbo v2, "sys.default.data.phoneid"

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEpdgSettingsReadEvent(): mDefaultDataPhoneID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDefaultSubID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    :cond_f
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    .line 973
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_SupportWifiCall"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    :goto_9
    sput v2, Lcom/sec/epdg/EpdgService;->mDefaultEnableEpdg:I

    .line 974
    sget-object v2, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v27

    .line 975
    .local v27, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 976
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    .line 978
    :cond_10
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSharePreferredModeViaProperty()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 979
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_call_preferred"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 980
    .local v15, "epdgPrefMode":I
    const-string/jumbo v2, "ril.epdg.preferred.mode"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    .end local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v13    # "b":Landroid/os/IBinder;
    .end local v15    # "epdgPrefMode":I
    .end local v17    # "filter":Landroid/content/IntentFilter;
    .end local v18    # "i":I
    .end local v19    # "isAirplaneModeEnabled":Z
    .end local v24    # "mWifiStateIntentReceiverFilter":Landroid/content/IntentFilter;
    .end local v25    # "periodicDpdFilter":Landroid/content/IntentFilter;
    .end local v27    # "wifi":Landroid/net/NetworkInfo;
    :cond_11
    :goto_a
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    .line 1015
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSupportCpThresholdFuncion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1016
    const-string/jumbo v2, "ril.epdg.cpthreshold.enable"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 888
    .restart local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v13    # "b":Landroid/os/IBinder;
    .restart local v17    # "filter":Landroid/content/IntentFilter;
    .restart local v18    # "i":I
    .restart local v24    # "mWifiStateIntentReceiverFilter":Landroid/content/IntentFilter;
    .restart local v25    # "periodicDpdFilter":Landroid/content/IntentFilter;
    :catch_1
    move-exception v14

    .line 889
    .local v14, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v14}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto/16 :goto_5

    .line 923
    .end local v14    # "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    :catch_2
    move-exception v16

    .line 924
    .local v16, "exception":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "[EPDGService]"

    const-string v3, "In catch block, setting not found exception"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 941
    .end local v16    # "exception":Landroid/provider/Settings$SettingNotFoundException;
    :cond_12
    const-string v2, "[EPDGService]"

    const-string v3, "Vowifi is already turned off"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 949
    :cond_13
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 973
    .restart local v19    # "isAirplaneModeEnabled":Z
    :cond_14
    const/4 v2, 0x1

    goto :goto_9

    .line 983
    .end local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v13    # "b":Landroid/os/IBinder;
    .end local v17    # "filter":Landroid/content/IntentFilter;
    .end local v18    # "i":I
    .end local v19    # "isAirplaneModeEnabled":Z
    .end local v24    # "mWifiStateIntentReceiverFilter":Landroid/content/IntentFilter;
    .end local v25    # "periodicDpdFilter":Landroid/content/IntentFilter;
    :cond_15
    invoke-static {}, Lcom/sec/epdg/EpdgOmadmSettings;->writeToEFSFile()V

    .line 984
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v4

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getHoDelayTimer()I

    move-result v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getHoDelayTimer()I

    move-result v7

    sget-object v8, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xScanTimer()I

    move-result v8

    sget-object v9, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiIntentDelayTimer()I

    move-result v9

    sget-object v10, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v10}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/epdg/EpdgSettings;->getWifiIpConfigTimer()I

    move-result v10

    invoke-static/range {v2 .. v10}, Lcom/sec/epdg/EpdgTimers;->getInstance(Landroid/os/Handler;IIIIIIII)Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    .line 995
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TepdgLteTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tepdg1xTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tepdg1xScanTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xScanTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1000
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 1001
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    .line 1004
    :cond_16
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isRetryEnabledForAlwaysOnApn()Z

    move-result v20

    .line 1006
    .local v20, "isDataRetryEnabled":Z
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v21

    .line 1008
    .local v21, "isThrottlingEnabled":Z
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After db read: isDataRetryEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/sec/epdg/throttle/ThrottleController;->onSettingUpdated(ZZ)V

    .line 1011
    sget-object v2, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/handover/EpdgImsListener;->onEpdgSettingChanged(Lcom/sec/epdg/EpdgSettings;)V

    goto/16 :goto_a
.end method

.method private handleImsStateChange(I)V
    .locals 4
    .param p1, "action"    # I

    .prologue
    .line 2001
    const-string v0, "[EPDGService]"

    const-string v1, "Inside handleImsStateChange: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS_STATE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    .line 2005
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->ReadEpdgSettingFromIMS()V

    .line 2006
    const/4 v0, 0x0

    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCurrentSimImsi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2007
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEnableEpdg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-eqz v0, :cond_1

    .line 2010
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2012
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 2013
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    .line 2014
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bIsSimReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsEpdgInitialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->notifySimChangedEvent()V

    .line 2021
    :cond_0
    :goto_0
    return-void

    .line 2019
    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->stopEpdgService()V

    goto :goto_0
.end method

.method private handleMapconChange()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3581
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    .line 3584
    .local v0, "apnType":Ljava/lang/String;
    sget-object v2, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 3586
    .local v1, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3587
    iput v4, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    .line 3590
    :cond_0
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3591
    const-string v2, "[EPDGService]"

    const-string v3, "CellularAvailable & LTE preferred or LTE only, disable wifi profiling"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3592
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3593
    sput-boolean v4, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    .line 3594
    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 3596
    :cond_1
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 3619
    :cond_2
    :goto_0
    return-void

    .line 3599
    :cond_3
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3600
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 3601
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    .line 3615
    :cond_4
    :goto_1
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsWifiOnlyAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3616
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_0

    .line 3602
    :cond_5
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3603
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3604
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgService$DnsRetryReason;->MAPCON_CHANGE:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3606
    const-string v2, "[EPDGService]"

    const-string v3, "DNS is successful, start profiling"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3607
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_1

    .line 3609
    :cond_6
    const-string v2, "[EPDGService]"

    const-string v3, "DNS failed for all tries"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3612
    :cond_7
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_1
.end method

.method private handleRetryTimerExpired(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1831
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1832
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->getSMForApnName(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v1

    .line 1833
    .local v1, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    if-nez v1, :cond_0

    .line 1834
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid SM found for apnName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    .end local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :goto_0
    return-void

    .line 1838
    .restart local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_0
    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1839
    .local v0, "dataRetryExpired":Landroid/os/Message;
    if-eqz v0, :cond_2

    .line 1840
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "handleRetryTimerExpired: Sending DATA_RETRY_TIMER_EXPIRED to state machine"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    const/16 v2, 0xd

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1843
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1854
    .end local v0    # "dataRetryExpired":Landroid/os/Message;
    .end local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    :goto_1
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1855
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_0

    .line 1845
    .restart local v0    # "dataRetryExpired":Landroid/os/Message;
    .restart local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_2
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleRetryTimerExpired: Unable to obtain message for SM with apnName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1857
    .end local v0    # "dataRetryExpired":Landroid/os/Message;
    .end local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_3
    const-string v2, "[EPDGService]"

    const-string v3, "Do not retry L2W handover. SSID changed: "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSimInsertChange()V
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 1051
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSimCardRemoved()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1052
    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->setIsSimCardRemoved(Z)V

    .line 1057
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-eqz v0, :cond_4

    .line 1058
    sget-object v0, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 1059
    .local v6, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1060
    iput v3, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    .line 1064
    :goto_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1067
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1068
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    .line 1070
    :cond_1
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prev imsi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mPrevSimImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Prev imsi2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mPrevSim2Imsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Current IMSI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Current IMSI2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mPrevSimImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mPrevSim2Imsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1074
    :cond_3
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleController;->onSimChanged()V

    .line 1078
    .end local v6    # "wifi":Landroid/net/NetworkInfo;
    :cond_4
    new-instance v0, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1080
    new-instance v0, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    move-object v1, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;ZZZ)V

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1082
    :cond_5
    return-void

    .line 1062
    .restart local v6    # "wifi":Landroid/net/NetworkInfo;
    :cond_6
    iput v7, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    goto/16 :goto_0
.end method

.method private handleSimRemovedChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1021
    const-string v1, "[EPDGService]"

    const-string v2, "Inside handleSimRemovedChange()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    sget-boolean v1, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-eqz v1, :cond_2

    .line 1023
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1024
    sget-object v1, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 1025
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 1028
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1030
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1031
    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 1032
    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 1034
    :cond_0
    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V

    .line 1035
    iput v3, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    .line 1036
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1037
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1039
    :cond_1
    sget-boolean v1, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-eqz v1, :cond_2

    .line 1041
    :try_start_0
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    :goto_0
    sput-boolean v3, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    .line 1048
    :cond_2
    return-void

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "mSimStateChangeReceiver was not registered."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSimStateChange(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 1877
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1878
    .local v1, "action":Ljava/lang/String;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSimStateChange: action is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    const/4 v3, -0x1

    .line 1880
    .local v3, "simSlot":I
    const/4 v5, -0x1

    .line 1881
    .local v5, "subscription":I
    sget-object v6, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1882
    const-string v6, "android.intent.action.ISIM_LOADED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1884
    invoke-static {v9}, Lcom/sec/epdg/EpdgService;->setIsimState(Z)V

    .line 1885
    sget-boolean v6, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v6, :cond_0

    invoke-static {v11}, Lcom/sec/epdg/EpdgService;->setIsSimCardRemoved(Z)V

    .line 1886
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getSimState()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1887
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "handleSimStateChange: SIM is already loaded"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    if-ne v3, v9, :cond_2

    .line 1889
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    .line 1893
    :goto_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->notifySimChangedEvent()V

    .line 1962
    :cond_1
    :goto_1
    return-void

    .line 1891
    :cond_2
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    goto :goto_0

    .line 1895
    :cond_3
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1896
    const-string/jumbo v6, "ss"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1897
    .local v4, "simState":Ljava/lang/String;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_STATE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    const-string v2, "LOADED"

    .line 1899
    .local v2, "loadedstate":Ljava/lang/String;
    const-string v0, "ABSENT"

    .line 1900
    .local v0, "absentState":Ljava/lang/String;
    if-eqz v4, :cond_d

    .line 1901
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1902
    const-string/jumbo v6, "slot"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1903
    const-string/jumbo v6, "subscription"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1904
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_SLOT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "subscription: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    :cond_4
    const-string v6, "LOADED"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1908
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSimStateChange() Sim State is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    sget-boolean v6, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v6, :cond_5

    invoke-static {v11}, Lcom/sec/epdg/EpdgService;->setIsSimCardRemoved(Z)V

    .line 1910
    :cond_5
    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    if-eqz v6, :cond_8

    .line 1914
    if-ne v3, v9, :cond_6

    .line 1915
    sput-boolean v9, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    .line 1919
    :goto_2
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsimState()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1920
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "handleSimStateChange: Isim is already loaded"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    if-ne v3, v9, :cond_7

    .line 1922
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    .line 1926
    :goto_3
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->notifySimChangedEvent()V

    goto/16 :goto_1

    .line 1917
    :cond_6
    sput-boolean v9, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    goto :goto_2

    .line 1924
    :cond_7
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    goto :goto_3

    .line 1929
    :cond_8
    if-ne v3, v9, :cond_9

    .line 1930
    sput-boolean v9, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    .line 1931
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    .line 1936
    :goto_4
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->notifySimChangedEvent()V

    goto/16 :goto_1

    .line 1933
    :cond_9
    sput-boolean v9, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    .line 1934
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    goto :goto_4

    .line 1938
    :cond_a
    const-string v6, "ABSENT"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1939
    if-ne v3, v9, :cond_b

    .line 1940
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mPrevSim2Imsi:Ljava/lang/String;

    .line 1941
    iput-object v12, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    .line 1946
    :goto_5
    invoke-static {v9}, Lcom/sec/epdg/EpdgService;->setIsSimCardRemoved(Z)V

    .line 1947
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1948
    sget v6, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    if-ne v6, v5, :cond_1

    .line 1949
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->handleSimRemovedChange()V

    goto/16 :goto_1

    .line 1943
    :cond_b
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mPrevSimImsi:Ljava/lang/String;

    .line 1944
    iput-object v12, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    goto :goto_5

    .line 1952
    :cond_c
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->handleSimRemovedChange()V

    goto/16 :goto_1

    .line 1956
    :cond_d
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSimStateChange() Sim State is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1960
    .end local v0    # "absentState":Ljava/lang/String;
    .end local v2    # "loadedstate":Ljava/lang/String;
    .end local v4    # "simState":Ljava/lang/String;
    :cond_e
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSimStateChange: Invalid action received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private initAfterimsReady()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3243
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getVoWifiStatus()Lcom/sec/epdg/EpdgService$VoWifiStatus;

    move-result-object v0

    .line 3244
    .local v0, "status":Lcom/sec/epdg/EpdgService$VoWifiStatus;
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V

    .line 3245
    new-instance v1, Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/EpdgService$EpdgSettingObserver;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    .line 3246
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiOnUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3247
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v1, :cond_0

    .line 3248
    sget-object v1, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->BOOTUP_CHECKING:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    .line 3249
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mRoamingUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3252
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3253
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    .line 3254
    :cond_1
    return-void
.end method

.method private initEpdgService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2400
    const-string v0, "[EPDGService]"

    const-string v1, "Enter step 2 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2402
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 2404
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 2407
    sget-object v0, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2408
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    if-eqz v0, :cond_0

    .line 2409
    sget-object v0, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ISIM_LOADED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2412
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isIndependentEpdg()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2413
    const-string v0, "[EPDGService]"

    const-string v1, "EPDG service was started without ims service."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2415
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    .line 2429
    :cond_1
    :goto_0
    const-string v0, "[EPDGService]"

    const-string v1, "Exit step 2 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    return-void

    .line 2416
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableIMS"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2417
    const/4 v0, 0x7

    invoke-static {v0, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 2418
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v0, :cond_1

    .line 2419
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "registerForServiceStateChange..."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->registerForServiceStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    .line 2421
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mImsReadyReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.ims.action.onsimloaded"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 2424
    :cond_3
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "imsservice is not installed."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static is1xAvailable()Z
    .locals 2

    .prologue
    .line 626
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 627
    const-string v0, "[EPDGService]"

    const-string v1, "1x is available"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const/4 v0, 0x1

    .line 631
    :goto_0
    return v0

    .line 630
    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "1x is NOT available"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private is2gNetwork(I)Z
    .locals 2
    .param p1, "netType"    # I

    .prologue
    const/4 v0, 0x1

    .line 5779
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    .line 5783
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private is3gNetwork(I)Z
    .locals 1
    .param p1, "netType"    # I

    .prologue
    .line 5768
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    .line 5773
    :cond_0
    const/4 v0, 0x1

    .line 5775
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAnyPdnConnectedOverWifi()Z
    .locals 5

    .prologue
    .line 5667
    const/4 v1, 0x0

    .line 5668
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v2, :cond_1

    .line 5669
    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 5671
    const/4 v1, 0x1

    .line 5668
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5674
    :cond_1
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAnyPdnConnectedOverWifi: returning result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5675
    return v1
.end method

.method private static isBlockHandOverApn(Ljava/lang/String;)Z
    .locals 5
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1183
    const/4 v1, 0x0

    .line 1184
    .local v1, "result":Z
    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1185
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 1187
    .local v0, "operator":Ljava/lang/String;
    const-string v3, "26201"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "mms"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "xcap"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1190
    :cond_0
    const/4 v1, 0x1

    .line 1193
    :cond_1
    return v1
.end method

.method private isEpdgAvailabilityRecommended()Z
    .locals 3

    .prologue
    .line 5131
    const/4 v0, 0x0

    .line 5132
    .local v0, "result":Z
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_0

    .line 5134
    const-string v1, "[EPDGService]"

    const-string v2, "TEpdg timer running..  wait for it to expire. No timers starting."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5142
    :goto_0
    return v0

    .line 5135
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5136
    const-string v1, "[EPDGService]"

    const-string v2, "OnDemand PDN connection failed. Waiting for the state to be reset."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5137
    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5138
    const-string v1, "[EPDGService]"

    const-string v2, "Wifi signal is good from monitor. But wifi is not connected"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5140
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEpdgAvailable()Z
    .locals 2

    .prologue
    .line 1178
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHandoverRequiredOnCdmaIndication()Z
    .locals 2

    .prologue
    .line 3515
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIPv6AddressScopeGlobal(Ljava/lang/String;)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2347
    const/4 v2, 0x1

    .line 2349
    .local v2, "result":Z
    const-string v4, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isIPv6AddressScopeGlobal: Received address is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Suppressed"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 2353
    .local v1, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCGlobal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCLinkLocal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCNodeLocal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCOrgLocal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCSiteLocal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2358
    :cond_0
    const/4 v2, 0x0

    .line 2360
    :cond_1
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isIPv6AddressScopeGlobal(): returning result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 2364
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :goto_1
    return v3

    :cond_2
    move-object v3, p1

    .line 2349
    goto :goto_0

    .line 2362
    :catch_0
    move-exception v0

    .line 2363
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v3, "[EPDGService]"

    const-string v4, "Address is not proper ip address"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private declared-synchronized isKeepAliveExpired()Z
    .locals 1

    .prologue
    .line 424
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveExpired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isKeepAliveRunning()Z
    .locals 1

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static isOngoingConnectionOverWifi(Ljava/lang/String;)Z
    .locals 8
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 5679
    const/4 v3, 0x0

    .line 5680
    .local v3, "result":Z
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v4, v0, v1

    .line 5681
    .local v4, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5682
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 5684
    const/4 v3, 0x1

    .line 5680
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5685
    :cond_1
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 5688
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 5689
    :cond_3
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/throttle/ThrottleController;->isThrottleTimerRunning(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5692
    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    .line 5696
    .end local v4    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_5
    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isOngoingConnectionOverWifi: returning result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5697
    return v3
.end method

.method public static isPdnConnectedOverWifi(Ljava/lang/String;)Z
    .locals 8
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 5652
    const/4 v3, 0x0

    .line 5653
    .local v3, "result":Z
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 5654
    .local v4, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5655
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 5656
    const/4 v3, 0x1

    .line 5661
    .end local v4    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_0
    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isPdnConnectedOverWifi: returning result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for apnType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5663
    return v3

    .line 5653
    .restart local v4    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isRegistrationRequired(ZZZZZ)Z
    .locals 4
    .param p1, "vowifiChanged"    # Z
    .param p2, "newValueW"    # Z
    .param p3, "voLteChanged"    # Z
    .param p4, "newValueL"    # Z
    .param p5, "vopsOrSsacChanged"    # Z

    .prologue
    const/16 v3, 0xd

    const/4 v1, 0x0

    .line 3473
    move v0, p1

    .line 3475
    .local v0, "bVowifiChanged":Z
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v2

    if-ne v2, p2, :cond_0

    .line 3476
    const/4 v0, 0x0

    .line 3480
    :cond_0
    if-eqz v0, :cond_2

    .line 3481
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3483
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. IMS on LTE and VoLTE is on"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3511
    :goto_0
    return v1

    .line 3485
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3487
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. voice is 1x"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3490
    :cond_2
    if-eqz p3, :cond_4

    .line 3491
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 3492
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. No LTE"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3494
    :cond_3
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3495
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. wifi preferred"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3498
    :cond_4
    if-eqz p5, :cond_6

    .line 3499
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 3500
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. No LTE"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3502
    :cond_5
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3503
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. wifi preferred"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3506
    :cond_6
    if-nez v0, :cond_7

    if-nez p3, :cond_7

    if-nez p5, :cond_7

    .line 3507
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. nothing changed"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3510
    :cond_7
    const-string v1, "[EPDGService]"

    const-string v2, "IMS RegistrationRequired - HO delay"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3511
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private isValidAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2271
    const/4 v0, 0x0

    .line 2273
    .local v0, "result":Z
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2275
    :goto_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidAddress: returning result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    return v0

    .line 2273
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoEnabled()Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 4

    .prologue
    .line 4626
    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->readCurrentVideoSettingState()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    .line 4627
    .local v0, "videoSetting":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v1, v0, :cond_0

    .line 4628
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    .line 4631
    :goto_0
    return-object v1

    .line 4630
    :cond_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "videoSetting("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4631
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v1, v0, :cond_1

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0
.end method

.method public static isVoWifiEnabled()Z
    .locals 2

    .prologue
    .line 4611
    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVolteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 4

    .prologue
    .line 4615
    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->readCurrentVolteSettingState()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    .line 4616
    .local v0, "volteSetting":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v1, v0, :cond_0

    .line 4617
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    .line 4621
    :goto_0
    return-object v1

    .line 4620
    :cond_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "volteSetting("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4621
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v1, v0, :cond_1

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0
.end method

.method public static isW2LRecommended(I)Z
    .locals 5
    .param p0, "rilCid"    # I

    .prologue
    .line 6164
    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v3, p0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 6165
    .local v0, "apnType":Ljava/lang/String;
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isW2LRecommended: rilCid is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apnType is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6167
    const/4 v1, 0x0

    .line 6168
    .local v1, "result":Z
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->isBlockHandOverApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6169
    :cond_0
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "isW2LRecommended: null apnType"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6180
    :goto_0
    return v1

    .line 6170
    :cond_1
    const-string v2, "cbs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "mms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6172
    :cond_2
    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v3, p0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getIsW2LRequested()Z

    move-result v1

    .line 6173
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isW2LRecommended: result is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6174
    :cond_3
    sget-object v2, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getVoWifiSessionConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6175
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isW2LRecommended: VoWifi Session Connected result is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6177
    :cond_4
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->isW2LRecommended(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isWifiCallingEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4600
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v4, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-eq v3, v4, :cond_0

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v4, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v3, v4, :cond_3

    :cond_0
    move v0, v2

    .line 4602
    .local v0, "bVoWifi":Z
    :goto_0
    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_4

    :cond_1
    move v2, v0

    .line 4606
    :cond_2
    :goto_1
    return v2

    .end local v0    # "bVoWifi":Z
    :cond_3
    move v0, v1

    .line 4600
    goto :goto_0

    .line 4606
    .restart local v0    # "bVoWifi":Z
    :cond_4
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgTemporaryBlocked()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-eq v3, v4, :cond_2

    move v2, v1

    goto :goto_1
.end method

.method private isWifiConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4278
    iget v1, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private movePdnFromWifi()V
    .locals 6

    .prologue
    .line 5638
    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "movePdnFromWifi()"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5639
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v1, v3, :cond_1

    .line 5640
    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 5642
    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 5643
    .local v0, "apnType":Ljava/lang/String;
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "movePdnFromWifi, apnType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5644
    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 5645
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 5646
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 5639
    .end local v0    # "apnType":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5649
    :cond_1
    return-void
.end method

.method private moveToLteBasedOnMapcon()V
    .locals 4

    .prologue
    .line 1240
    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v2, :cond_1

    .line 1248
    :cond_0
    return-void

    .line 1242
    :cond_1
    const/4 v1, 0x1

    .local v1, "cid":I
    :goto_0
    sget v2, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-gt v1, v2, :cond_0

    .line 1243
    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 1244
    .local v0, "apnType":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1245
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    .line 1242
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private notifyL2WHandoverResult(ZLjava/lang/String;)V
    .locals 6
    .param p1, "result"    # Z
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 6154
    if-eqz p2, :cond_0

    .line 6155
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getIsBroadcastHONotiEnabled()Z

    move-result v5

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/epdg/mapcon/MapconTable;->notifyHandoverResult(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;ZZ)V

    .line 6161
    :goto_0
    return-void

    .line 6159
    :cond_0
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "notifyL2WHandoverResult(): APN is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifySimChangedEvent()V
    .locals 2

    .prologue
    .line 2059
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v0, :cond_0

    .line 2060
    const-string v0, "[EPDGService]"

    const-string v1, "Epdg service is not yet initialized, calling epdg initialization"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgService;->bootCompleted()V

    .line 2065
    :goto_0
    return-void

    .line 2063
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->handleSimInsertChange()V

    goto :goto_0
.end method

.method private notifyW2LHandoverResult(ZLjava/lang/String;)V
    .locals 6
    .param p1, "result"    # Z
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 6145
    if-eqz p2, :cond_0

    .line 6146
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getIsBroadcastHONotiEnabled()Z

    move-result v5

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/epdg/mapcon/MapconTable;->notifyHandoverResult(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;ZZ)V

    .line 6152
    :goto_0
    return-void

    .line 6150
    :cond_0
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "notifyW2LHandoverResult(): APN is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDbAccessCompleted()V
    .locals 2

    .prologue
    .line 764
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 765
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 766
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 767
    return-void
.end method

.method private onInternetKeepAliveTimerExpiry()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v2, 0xd

    .line 1197
    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive: onInternetKeepAliveTimerExpiry()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setKeepAliveRunning(Z)V

    .line 1199
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    if-ne v0, v4, :cond_1

    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v0, v2, :cond_1

    .line 1201
    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:Timer=Expired,EPDG=AVAILABLE,RAT=LTE so Send keep alive packet+start the timer again"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->pingAsyncInternet()V

    .line 1204
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1205
    :cond_1
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    if-ne v0, v4, :cond_2

    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-eq v0, v2, :cond_2

    .line 1207
    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:Timer=Expired,EPDG=AVAILABLE,RAT!=LTE so Start keep alive timer again"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    goto :goto_0

    .line 1210
    :cond_2
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    if-ne v0, v3, :cond_0

    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v0, v2, :cond_0

    .line 1212
    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:Timer=Expired,EPDG=UNAVAILABLE,RAT=LTE so Set keep alive expired flag"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    invoke-direct {p0, v3}, Lcom/sec/epdg/EpdgService;->setKeepAliveExpired(Z)V

    goto :goto_0
.end method

.method private onNetworkStatusChanged()V
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 5797
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSimCardRemoved()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5798
    const-string v4, "[EPDGService]"

    const-string/jumbo v5, "onNetworkStatusChanged: No Sim card. Ignore all notifications"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5940
    :cond_0
    :goto_0
    return-void

    .line 5802
    :cond_1
    sget v2, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    .line 5808
    .local v2, "mExistingActiveRat":I
    const-string v4, "[EPDGService]"

    const-string/jumbo v5, "onNetworkStatusChanged"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5809
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5810
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5811
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    sget v5, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v3

    .line 5822
    .local v3, "netType":I
    :goto_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v1

    .line 5823
    .local v1, "currentCellular":Z
    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_5

    .line 5824
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgService;->bootCompleted()V

    goto :goto_0

    .line 5813
    .end local v1    # "currentCellular":Z
    .end local v3    # "netType":I
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v3

    .restart local v3    # "netType":I
    goto :goto_1

    .line 5816
    .end local v3    # "netType":I
    :cond_3
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5817
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    sget v5, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v3

    .restart local v3    # "netType":I
    goto :goto_1

    .line 5819
    .end local v3    # "netType":I
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v3

    .restart local v3    # "netType":I
    goto :goto_1

    .line 5828
    .restart local v1    # "currentCellular":Z
    :cond_5
    sget-boolean v4, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v4, :cond_6

    .line 5829
    const-string v4, "[EPDGService]"

    const-string v5, "Epdg service is not yet initialized, ignore onNetworkStatusChanged"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5833
    :cond_6
    sget-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v4, :cond_7

    .line 5834
    sget-boolean v4, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    if-eq v4, v1, :cond_7

    .line 5835
    if-nez v1, :cond_10

    .line 5836
    const-string v4, "[EPDGService]"

    const-string v5, "Celluler is not available, disable Wifi thresholds if Idle"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5837
    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v4, v5, :cond_7

    .line 5838
    invoke-static {v6}, Lcom/sec/epdg/EpdgService;->setIsRssiDisabledForProfiling(Z)V

    .line 5839
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5840
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 5841
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    .line 5857
    :cond_7
    :goto_2
    sget v4, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v3, v4, :cond_8

    sget-boolean v4, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    if-eq v4, v1, :cond_f

    .line 5858
    :cond_8
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    .line 5859
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    .line 5863
    .local v0, "apnType":Ljava/lang/String;
    if-eqz v3, :cond_9

    if-nez v1, :cond_15

    .line 5864
    :cond_9
    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v5, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v4, v5}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 5865
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 5866
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5867
    const-string v4, "[EPDGService]"

    const-string v5, "OoS & LTE preferred, enable wifi profiling"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5868
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    .line 5897
    :cond_a
    :goto_3
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v4

    sget-boolean v5, Lcom/sec/epdg/EpdgService;->mRoaming:Z

    if-eq v4, v5, :cond_b

    .line 5898
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v4

    sput-boolean v4, Lcom/sec/epdg/EpdgService;->mRoaming:Z

    .line 5899
    sget-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v4, :cond_b

    .line 5900
    sget-object v4, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->ROAMING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    .line 5903
    :cond_b
    const-string v4, "ATT"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-boolean v4, Lcom/sec/epdg/EpdgService;->mDisabledByNoRan:Z

    if-eqz v4, :cond_c

    if-eqz v3, :cond_c

    if-ne v1, v6, :cond_c

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v4

    if-nez v4, :cond_c

    .line 5906
    const-string v4, "[EPDGService]"

    const-string v5, "ATT IR94,RAN is available, enable wifi profiling"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5907
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    .line 5908
    sput-boolean v7, Lcom/sec/epdg/EpdgService;->mDisabledByNoRan:Z

    .line 5910
    :cond_c
    invoke-direct {p0, v3}, Lcom/sec/epdg/EpdgService;->is3gNetwork(I)Z

    move-result v4

    if-eqz v4, :cond_d

    sget v4, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgService;->is3gNetwork(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5913
    :cond_d
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Active Rat Changed from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5918
    sput v3, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    .line 5919
    const-wide/16 v4, 0x3e8

    invoke-direct {p0, v4, v5, v3}, Lcom/sec/epdg/EpdgService;->startTimerForPdnXfer(JI)V

    .line 5920
    sget-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    if-eqz v4, :cond_e

    .line 5921
    sget v4, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v4, v8, :cond_18

    .line 5922
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartLteRunning()Z

    move-result v4

    if-nez v4, :cond_17

    .line 5923
    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mLteOn:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 5934
    :cond_e
    :goto_4
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isWiFiScanStart()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 5935
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForPeriodicWiFiScan()V

    .line 5938
    .end local v0    # "apnType":Ljava/lang/String;
    :cond_f
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    .line 5939
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCellularAvailable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5845
    :cond_10
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsRssiDisabledForProfiling()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5846
    const-string v4, "[EPDGService]"

    const-string v5, "Celluler is available, enable Wifi thresholds"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5847
    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->setIsRssiDisabledForProfiling(Z)V

    .line 5848
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5849
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 5850
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto/16 :goto_2

    .line 5870
    .restart local v0    # "apnType":Ljava/lang/String;
    :cond_11
    const-string v4, "ATT"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 5871
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isVoWifiWave2()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_12

    sget-object v4, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_call_enable"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_a

    .line 5873
    :cond_12
    const-string v4, "[EPDGService]"

    const-string v5, "ATT IR94, no RAN, disable Wifi Call"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5874
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 5875
    sput-boolean v6, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    .line 5876
    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 5878
    :cond_13
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5879
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 5880
    sput-boolean v6, Lcom/sec/epdg/EpdgService;->mDisabledByNoRan:Z

    goto/16 :goto_3

    .line 5883
    :cond_14
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5884
    const-string v4, "[EPDGService]"

    const-string v5, "Rat us unknown, enable wifi profiling"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5885
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    goto/16 :goto_3

    .line 5887
    :cond_15
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x12

    if-eq v3, v4, :cond_a

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5890
    const-string v4, "[EPDGService]"

    const-string v5, "CellularAvailable & LTE preferred, disable wifi profiling"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5891
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 5892
    sput-boolean v6, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    .line 5893
    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 5895
    :cond_16
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    goto/16 :goto_3

    .line 5925
    :cond_17
    const-string v4, "[EPDGService]"

    const-string v5, "When LTE becomes available, smart lte is running, so in connected mode, smart lte decides the lte availability based upon signal strength"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 5929
    :cond_18
    if-ne v2, v8, :cond_e

    .line 5930
    const-string v4, "[EPDGService]"

    const-string v5, "RAT change from LTE to other RAT, calling LTE off"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5931
    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mLteOff:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_4
.end method

.method private onServiceStatusChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 5787
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSimCardRemoved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5788
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "onServiceStatusChanged: No Sim card. Ignore all notifications"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5795
    :cond_0
    :goto_0
    return-void

    .line 5791
    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onNetworkStatusChanged()V

    .line 5792
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5793
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->checkVopsStatus(Landroid/telephony/ServiceState;)V

    goto :goto_0
.end method

.method private onSystemSelectTimerFinish()V
    .locals 4

    .prologue
    .line 3819
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3820
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi connected when TEpdg timer done"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3821
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3825
    const-string v0, "[EPDGService]"

    const-string v1, "Smart Wifi already running"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3827
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiOn:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->islteToWifiHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 3844
    :goto_0
    return-void

    .line 3828
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3829
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->TEPDG_TIMER_EXPIRED:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3832
    const-string v0, "[EPDGService]"

    const-string v1, "DNS is successful, adding routes"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3833
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_0

    .line 3835
    :cond_1
    const-string v0, "[EPDGService]"

    const-string v1, "DNS failed for all tries"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3838
    :cond_2
    const-string v0, "[EPDGService]"

    const-string v1, "Epdg FQDN is already resolved, received duplicate wifi connect"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3842
    :cond_3
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi not connected when TEpdg timer done"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onVoWifiProvisioningStateChanged(I)V
    .locals 1
    .param p1, "isProvisioned"    # I

    .prologue
    .line 3433
    if-nez p1, :cond_0

    .line 3437
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->resetVowifiMdnCache(Landroid/content/Context;)V

    .line 3438
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setVowifiSetting(I)V

    .line 3440
    :cond_0
    return-void
.end method

.method private onVolteProvisioningStateChanged(I)V
    .locals 3
    .param p1, "isProvisioned"    # I

    .prologue
    .line 3415
    if-nez p1, :cond_0

    .line 3419
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->resetVowifiMdnCache(Landroid/content/Context;)V

    .line 3420
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setVowifiSetting(I)V

    .line 3430
    :goto_0
    return-void

    .line 3426
    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_call_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_1
.end method

.method private onVopsStatusChanged(I)V
    .locals 6
    .param p1, "vops_enabled"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 3235
    if-ne p1, v5, :cond_1

    move v0, v5

    :goto_0
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setIsVoPSEnabled(Z)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    .line 3236
    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3237
    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    .line 3239
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->MoveToBasedOnVopsOrSsac(I)V

    .line 3240
    return-void

    :cond_1
    move v0, v1

    .line 3235
    goto :goto_0
.end method

.method private onWifiConnected()V
    .locals 3

    .prologue
    .line 4828
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4830
    const-string v1, "[EPDGService]"

    const-string v2, "IPv6 support is enabled and wifi ip config timer is running, no need to perform wifi connected. It will happen after config timer expiry"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4859
    :goto_0
    return-void

    .line 4834
    :cond_0
    const-string v1, "[EPDGService]"

    const-string v2, "Wifi is Connected"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4835
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_1

    .line 4837
    const-string v1, "[EPDGService]"

    const-string v2, "TEpdg timer running"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4838
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4839
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService$DnsRetryReason;->WIFI_RECONNECT:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4841
    const-string v1, "[EPDGService]"

    const-string v2, "DNS is successful, start profiling"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4842
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_0

    .line 4844
    :cond_2
    const-string v1, "[EPDGService]"

    const-string v2, "DNS failed for all tries"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4845
    iget v1, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    .line 4846
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 4847
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x36

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4848
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 4851
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    sget-object v1, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4852
    const-string v1, "[EPDGService]"

    const-string v2, "DNS resolved, start WiFi profiling"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4853
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_0

    .line 4855
    :cond_4
    const-string v1, "[EPDGService]"

    const-string v2, "Epdg FQDN is already resolved, received duplicate wifi connect"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onWifiGoodEnough()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 4916
    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-interface {v2, v0}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgAvailability(Z)V

    .line 4917
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->updateCpEpdgHoThreshold(Z)V

    .line 4918
    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgService;->sendEpdgAvailableIntent(ZZ)V

    .line 4919
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->sendWifiStatusChangedNotification(Z)V

    .line 4920
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v2, :cond_3

    .line 4921
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsWifiRssiInPollingZone()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    .line 4926
    :goto_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isInternetKeepAliveEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4927
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isKeepAliveExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    .line 4929
    const-string v0, "[EPDGService]"

    const-string v2, "InternetKeepAlive:onWifiGoodEnough:RAT=LTE,EPDG=AVAILABLE so send keep alive packet"

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4931
    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setKeepAliveExpired(Z)V

    .line 4932
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->pingAsyncInternet()V

    .line 4933
    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:onWifiGoodEnough:Starting the keep alive timer for Internet PDN"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4935
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    .line 4937
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isKeepAliveRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4938
    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:onWifiGoodEnough:Starting the keep alive timer for Internet PDN"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4940
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    .line 4943
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 4921
    goto :goto_0

    .line 4923
    :cond_3
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    goto :goto_1
.end method

.method private performDnsAndGetResult(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z
    .locals 3
    .param p1, "reason"    # Lcom/sec/epdg/EpdgService$DnsRetryReason;

    .prologue
    .line 1817
    const/4 v0, 0x0

    .line 1818
    .local v0, "result":Z
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1820
    const-string v1, "[EPDGService]"

    const-string v2, "DNS is successful, start wifi profiling"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    const/4 v0, 0x1

    .line 1822
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    .line 1826
    :goto_0
    return v0

    .line 1824
    :cond_0
    const-string v1, "[EPDGService]"

    const-string v2, "DNS failed in all tries"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private performDnsIfPossible()V
    .locals 3

    .prologue
    .line 2369
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2370
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v0, :cond_1

    .line 2371
    sget-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    if-nez v0, :cond_0

    .line 2372
    const-string v0, "[EPDGService]"

    const-string v1, "check AP is allowed for EPDG service first"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2373
    new-instance v0, Lcom/sec/epdg/EpdgService$WfcProfileTask;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/epdg/EpdgService$WfcProfileTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    .line 2374
    sget-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2393
    :cond_0
    :goto_0
    return-void

    .line 2376
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getConfiguredWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2379
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2380
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->WIFI_IPTYPE_CHANGE:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2382
    const-string v0, "[EPDGService]"

    const-string v1, "DNS is successful, start profiling"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_0

    .line 2386
    :cond_2
    const-string v0, "[EPDGService]"

    const-string v1, "DNS fail in all attempts"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2389
    :cond_3
    const-string v0, "[EPDGService]"

    const-string v1, "Configured ip type is already ipv4v6, no need to perform DNS"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pingAsyncInternet()V
    .locals 5

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mDnsPinger:Lcom/sec/epdg/DnsPinger;

    if-nez v0, :cond_0

    .line 1220
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "mDnsPigner not intialized"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    :goto_0
    return-void

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentNetwork:Landroid/net/Network;

    if-nez v0, :cond_1

    .line 1224
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "mCurrentNetwork is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1227
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mDnsPinger:Lcom/sec/epdg/DnsPinger;

    const-string v1, "8.8.8.8"

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mCurrentNetwork:Landroid/net/Network;

    const/16 v3, 0xbb8

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/epdg/DnsPinger;->pingDnsAsync(Ljava/net/InetAddress;Landroid/net/Network;II)I

    goto :goto_0
.end method

.method private printEpdgSettingsThreshold()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWifiRssiA :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiRoveInWifiOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInWifiOnly()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiRoveOutWifiOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveOutWifiOnly()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiRoveInVoice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInVoice()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLteRsrp1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLteRsrp2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLteRsrp3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static resetDataDependency()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 5716
    invoke-static {v0, v0}, Lcom/sec/epdg/EpdgService;->setDataDependency(ZZ)V

    .line 5717
    return-void
.end method

.method public static resetVowifiMdnCache(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 770
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vowifi_mdn"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 772
    return-void
.end method

.method private retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    .locals 11
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0xd

    const/4 v9, -0x1

    .line 5561
    const/4 v3, 0x0

    .line 5562
    .local v3, "result":Z
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->printEpdgSettingsThreshold()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v8}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->printProfilingState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "TimerStatus :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgTimers;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5563
    if-nez p1, :cond_0

    .line 5564
    const-string v6, "[EPDGService]"

    const-string v7, "L2W handover failed : (null apnType)"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    .line 5624
    :goto_0
    return v6

    .line 5568
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5569
    sget-object v6, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v6}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-eq v6, v7, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v6

    if-ne v6, v10, :cond_1

    sget-object v6, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v6}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v6, v7, :cond_1

    .line 5573
    const-string v6, "[EPDGService]"

    const-string v7, "Block L2W as registration is not done"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    .line 5574
    goto :goto_0

    .line 5577
    :cond_1
    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v7, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v6, v7}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5578
    const-string v6, "[EPDGService]"

    const-string v7, "1x scanning is on, wait for TEPDG1XSCANNING"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    .line 5579
    goto :goto_0

    .line 5583
    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorORO()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5584
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 5585
    .local v0, "callState":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v5

    .line 5586
    .local v5, "voiceNetType":I
    if-eqz v0, :cond_3

    if-eq v5, v10, :cond_3

    .line 5588
    const-string v6, "[EPDGService]"

    const-string v7, "Block L2W on CS calling"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    .line 5589
    goto :goto_0

    .line 5593
    .end local v0    # "callState":I
    .end local v5    # "voiceNetType":I
    :cond_3
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v2

    .line 5599
    .local v2, "networkType":I
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retryL2WHandoverIfRequired(): apnType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " networkType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5601
    if-eq v9, v2, :cond_7

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 5602
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/sec/epdg/mapcon/PolicyManager;->isL2WRecommended(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5604
    sget-object v6, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sget-object v7, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne v6, v7, :cond_4

    .line 5605
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "delay L2W handover until regi-done"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5606
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 5609
    :cond_4
    :try_start_0
    const-string v6, "[EPDGService]"

    const-string v7, "Firing L2W handover"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5610
    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->startHandoverLteToWifi(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 5611
    .local v4, "ret":I
    if-eq v4, v9, :cond_5

    .line 5612
    const/4 v3, 0x1

    .end local v4    # "ret":I
    :cond_5
    :goto_1
    move v6, v3

    .line 5624
    goto/16 :goto_0

    .line 5614
    :catch_0
    move-exception v1

    .line 5615
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "L2W Handover not required."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5618
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6
    const-string v6, "[EPDGService]"

    const-string v7, "L2W is not recommended"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5621
    :cond_7
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Do not retry L2W handover. apnType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " networkType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    .locals 8
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 5508
    const/4 v2, 0x0

    .line 5509
    .local v2, "result":Z
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->printEpdgSettingsThreshold()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->printProfilingState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "TimerStatus :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgTimers;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5510
    if-nez p1, :cond_0

    .line 5511
    const-string v4, "[EPDGService]"

    const-string v5, "W2L handover failed : (null apnType)"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 5557
    :goto_0
    return v4

    .line 5514
    :cond_0
    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v5, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v4, v5}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5515
    const-string v4, "[EPDGService]"

    const-string v5, "TEPDGLTE timer running, W2L not recommended"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 5516
    goto :goto_0

    .line 5519
    :cond_1
    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getVoWifiSessionConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5520
    const-string v4, "[EPDGService]"

    const-string v5, "VoWIFI session is connected. So skip W2L Handover."

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 5521
    goto :goto_0

    .line 5524
    :cond_2
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v1

    .line 5525
    .local v1, "networkType":I
    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5526
    .local v3, "rule":Ljava/lang/String;
    const/4 v4, -0x1

    if-eq v4, v1, :cond_7

    .line 5527
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->isW2LRecommended(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5528
    sget-object v4, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sget-object v5, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne v4, v5, :cond_3

    .line 5529
    const-string v4, "[EPDGService]"

    const-string/jumbo v5, "delay W2L handover until regi-done"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5530
    const/4 v4, 0x1

    goto :goto_0

    .line 5532
    :cond_3
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getHasPendingCdmaIndication()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 5534
    const-string v4, "[EPDGService]"

    const-string v5, "W2L recommended but LTE is not available, send cdma availability to IMS"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5535
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V

    .line 5536
    invoke-direct {p0, v7}, Lcom/sec/epdg/EpdgService;->setHasPendingCdmaIndication(Z)V

    .line 5539
    :cond_4
    :try_start_0
    const-string v4, "[EPDGService]"

    const-string v5, "Firing W2L handover"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5540
    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->startHandOverWifiToLte(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5541
    const/4 v2, 0x1

    :goto_1
    move v4, v2

    .line 5557
    goto/16 :goto_0

    .line 5542
    :catch_0
    move-exception v0

    .line 5543
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "W2L handover not required."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5546
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getHasPendingCdmaIndication()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5547
    const-string v4, "[EPDGService]"

    const-string v5, "W2L not recommended, still send cdma availability to IMS"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5548
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V

    .line 5549
    invoke-direct {p0, v7}, Lcom/sec/epdg/EpdgService;->setHasPendingCdmaIndication(Z)V

    .line 5551
    :cond_6
    const-string v4, "[EPDGService]"

    const-string v5, "W2L handover not recommended"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5554
    :cond_7
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Do not retry W2L handover. apnType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " networkType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendEpdgAvailableIntent(ZZ)V
    .locals 5
    .param p1, "videoHandoverAllow"    # Z
    .param p2, "forced"    # Z

    .prologue
    .line 4984
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendEpdgAvailableIntent: videoHandoverAllow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " forced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4986
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4987
    .local v1, "wifiIntent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 4988
    .local v0, "videoHandover":Z
    if-eqz p2, :cond_0

    .line 4989
    move v0, p1

    .line 4993
    :goto_0
    const-string v2, "com.sec.epdg.EPDG_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4994
    const-string v2, "EPDG_AVAILABLE"

    invoke-static {v2}, Lcom/sec/epdg/EpdgDumpState;->dumpLastEpdgState(Ljava/lang/String;)V

    .line 4995
    const-string v2, "VIDEO_HANDOVER_ALLOW"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4996
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send EPDG Available broadcast with video handover: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4997
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4998
    return-void

    .line 4991
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsWifiRssiInPollingZone()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private sendEpdgDeregisterBroadcastIfRequired(Z)Z
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5352
    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    if-nez v3, :cond_1

    .line 5368
    :cond_0
    :goto_0
    return v1

    .line 5355
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-eq v3, v4, :cond_3

    :cond_2
    if-eqz p1, :cond_0

    .line 5357
    :cond_3
    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "sendEpdgDeregisterBroadcast: send deregi"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5358
    if-eqz p1, :cond_4

    .line 5359
    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z

    .line 5363
    :goto_1
    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z

    .line 5364
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.epdgservice.EPDG_DEREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5365
    .local v0, "deregiIntent":Landroid/content/Intent;
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    move v1, v2

    .line 5366
    goto :goto_0

    .line 5361
    .end local v0    # "deregiIntent":Landroid/content/Intent;
    :cond_4
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z

    goto :goto_1
.end method

.method private sendEpdgRegisterBroadcast(Z)V
    .locals 4
    .param p1, "cdmaAvailability"    # Z

    .prologue
    .line 5338
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-nez v1, :cond_0

    .line 5349
    :goto_0
    return-void

    .line 5341
    :cond_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendEpdgRegisterBroadcast with cdmaAvailability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5342
    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_1

    .line 5343
    const-string v1, "[EPDGService]"

    const-string v2, "Call in progress, dont send cdmaAvailability to IMS"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5346
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.epdgservice.EPDG_REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5347
    .local v0, "epdgRegisterIntent":Landroid/content/Intent;
    const-string v1, "cdmaAvailability"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5348
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static sendIpsecConnFailIntent(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)V
    .locals 3
    .param p0, "apnType"    # Ljava/lang/String;
    .param p1, "error"    # Lcom/sec/epdg/IWlanError;

    .prologue
    .line 3533
    if-eqz p1, :cond_0

    .line 3534
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3535
    .local v0, "infoToIMSCII":Landroid/content/Intent;
    const-string v1, "apntype"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3536
    const-string/jumbo v1, "ikeerror"

    invoke-static {p1}, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->getWFCErrorCode(Lcom/sec/epdg/IWlanError;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3537
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3539
    .end local v0    # "infoToIMSCII":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V
    .locals 4
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "destMsg"    # Landroid/os/Message;

    .prologue
    .line 3622
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3623
    .local v0, "cid":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 3624
    const-string v1, "[IPSEC->EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event received for cid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3626
    iput v0, p2, Landroid/os/Message;->arg1:I

    .line 3627
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3628
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3632
    :goto_0
    return-void

    .line 3630
    :cond_0
    const-string v1, "[IPSEC->EPDGService]"

    const-string v2, "Event received for invalid cid neglect it"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendIpsecConnResultToTestApp(II)V
    .locals 15
    .param p1, "cid"    # I
    .param p2, "event"    # I

    .prologue
    .line 3635
    const/4 v0, 0x0

    .local v0, "apnType":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3636
    .local v10, "ipsecEvent":Ljava/lang/String;
    const/4 v11, -0x1

    .line 3637
    .local v11, "networkType":I
    sget-object v12, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v13, p1, -0x1

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 3638
    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "apnName after getIwlanApnNameFromCid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3639
    if-eqz v0, :cond_0

    .line 3640
    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v11

    .line 3641
    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "networkType returned:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3644
    :cond_0
    if-eqz v0, :cond_1

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    .line 3645
    :cond_1
    const-string v10, "Unknown"

    .line 3646
    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " apnName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ipsecEvent:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3651
    :goto_0
    sparse-switch v11, :sswitch_data_0

    .line 3718
    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Illegal NetworkType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3720
    :cond_2
    :goto_1
    return-void

    .line 3648
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/sec/epdg/IWlanEnum;->toTestAppEventStatus(I)Ljava/lang/String;

    move-result-object v10

    .line 3649
    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "ipsecEvent returned to UI:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3653
    :sswitch_0
    new-instance v5, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_INTERNET"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3655
    .local v5, "infoToUiForInternet":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v5, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3656
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v5, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3657
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v5}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 3660
    .end local v5    # "infoToUiForInternet":Landroid/content/Intent;
    :sswitch_1
    new-instance v4, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_IMS"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3662
    .local v4, "infoToUiForIms":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v4, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3663
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v4, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3664
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v4}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 3667
    .end local v4    # "infoToUiForIms":Landroid/content/Intent;
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_APP"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3669
    .local v2, "infoToUiForApp":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v2, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3670
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v2, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3671
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v2}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 3674
    .end local v2    # "infoToUiForApp":Landroid/content/Intent;
    :sswitch_3
    new-instance v6, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_MMS"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3676
    .local v6, "infoToUiForMms":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v6, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3677
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v6, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3678
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v6}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3679
    const-string/jumbo v12, "mms"

    invoke-static {v12}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "xcap"

    invoke-static {v13}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3681
    new-instance v9, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_XCAP"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3683
    .local v9, "infoToUiForXcap1":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3684
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v9, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3685
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v9}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3689
    .end local v6    # "infoToUiForMms":Landroid/content/Intent;
    .end local v9    # "infoToUiForXcap1":Landroid/content/Intent;
    :sswitch_4
    new-instance v8, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_XCAP"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3691
    .local v8, "infoToUiForXcap":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v8, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3692
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v8, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3693
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v8}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3694
    const-string/jumbo v12, "xcap"

    invoke-static {v12}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "mms"

    invoke-static {v13}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3696
    new-instance v7, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_MMS"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3698
    .local v7, "infoToUiForMms1":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v7, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3699
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v7, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3700
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v7}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3704
    .end local v7    # "infoToUiForMms1":Landroid/content/Intent;
    .end local v8    # "infoToUiForXcap":Landroid/content/Intent;
    :sswitch_5
    new-instance v3, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_EPDN"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3706
    .local v3, "infoToUiForEpdn":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v3, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3707
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v3, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3708
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v3}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3711
    .end local v3    # "infoToUiForEpdn":Landroid/content/Intent;
    :sswitch_6
    new-instance v1, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_ADMIN"

    invoke-direct {v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3713
    .local v1, "infoToUiForAdmin":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v1, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3714
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v1, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3715
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v1}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3651
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_3
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xf -> :sswitch_5
        0x17 -> :sswitch_6
        0x1b -> :sswitch_4
    .end sparse-switch
.end method

.method private sendWifiDelayRequest(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 5395
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendWifiDelayRequest "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5396
    if-nez p1, :cond_0

    .line 5397
    sput-boolean v3, Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z

    .line 5399
    :cond_0
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    if-eqz v2, :cond_2

    .line 5400
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 5401
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 5402
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x51

    iput v2, v0, Landroid/os/Message;->what:I

    .line 5403
    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 5404
    if-eqz p1, :cond_1

    const/16 v3, 0xfa0

    :cond_1
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 5405
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 5407
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    return-void

    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3
    move v2, v3

    .line 5403
    goto :goto_0
.end method

.method private sendWifiStatusChangedNotification(Z)V
    .locals 12
    .param p1, "isWifiConnected"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 5453
    const/4 v6, 0x0

    .line 5454
    .local v6, "newSsid":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 5455
    sget-object v7, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 5458
    :cond_0
    const/4 v3, 0x0

    .line 5459
    .local v3, "isSsidChanged":Z
    iget-object v7, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    if-nez v7, :cond_3

    if-eqz v6, :cond_3

    .line 5461
    :cond_2
    const-string v7, "[EPDGService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SSID changed. Old Ssid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", New SSID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v7, v10}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 5463
    const/4 v3, 0x1

    .line 5466
    :cond_3
    const-string v7, "[EPDGService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wifi connected: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Ssid changed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5470
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v7

    invoke-virtual {v7, p1, v6}, Lcom/sec/epdg/throttle/ThrottleController;->handleWifiStatusChanged(ZLjava/lang/String;)V

    .line 5472
    const-string v7, "[EPDGService]"

    const-string v10, "Send Wifi status changed event to State Machines"

    invoke-static {v7, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5473
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_7

    aget-object v1, v0, v2

    .line 5474
    .local v1, "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-static {v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v5

    .line 5475
    .local v5, "msg":Landroid/os/Message;
    const/16 v7, 0xa

    iput v7, v5, Landroid/os/Message;->what:I

    .line 5476
    if-eqz p1, :cond_5

    move v7, v8

    :goto_1
    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 5477
    if-eqz p1, :cond_4

    .line 5478
    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5479
    if-eqz v3, :cond_6

    move v7, v8

    :goto_2
    iput v7, v5, Landroid/os/Message;->arg2:I

    .line 5481
    :cond_4
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 5473
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v7, v9

    .line 5476
    goto :goto_1

    :cond_6
    move v7, v9

    .line 5479
    goto :goto_2

    .line 5483
    .end local v1    # "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_7
    if-eqz p1, :cond_8

    .line 5486
    sget-boolean v7, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    if-eqz v7, :cond_9

    .line 5487
    sput-boolean v8, Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z

    .line 5491
    :goto_3
    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    .line 5493
    :cond_8
    return-void

    .line 5489
    :cond_9
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_3
.end method

.method private static setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V
    .locals 0
    .param p0, "ipType"    # Lcom/sec/epdg/EpdgService$IpType;

    .prologue
    .line 596
    sput-object p0, Lcom/sec/epdg/EpdgService;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    .line 597
    return-void
.end method

.method private static setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V
    .locals 0
    .param p0, "ipType"    # Lcom/sec/epdg/EpdgService$IpType;

    .prologue
    .line 586
    sput-object p0, Lcom/sec/epdg/EpdgService;->mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    .line 587
    return-void
.end method

.method private static setDataDependency(ZZ)V
    .locals 3
    .param p0, "value"    # Z
    .param p1, "force"    # Z

    .prologue
    .line 5720
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Dependency from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5723
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p0, :cond_1

    .line 5726
    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5732
    :cond_1
    return-void
.end method

.method private static setDataDependencyIfRequired()V
    .locals 4

    .prologue
    .line 5758
    sget-object v1, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 5760
    .local v0, "mobileNetInfo":Landroid/net/NetworkInfo;
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current NetworkInfo for Mobile Internet PDN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5762
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5763
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->setDataDependencyIfRequired(I)V

    .line 5765
    :cond_0
    return-void
.end method

.method private static setDataDependencyIfRequired(I)V
    .locals 5
    .param p0, "ratType"    # I

    .prologue
    .line 5735
    sget-object v2, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 5737
    .local v1, "wifi":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5738
    const/4 v0, 0x1

    .line 5739
    .local v0, "dataDependency":Z
    sparse-switch p0, :sswitch_data_0

    .line 5747
    const/4 v0, 0x0

    .line 5750
    :sswitch_0
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Dependency : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5753
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/epdg/EpdgService;->setDataDependency(ZZ)V

    .line 5755
    .end local v0    # "dataDependency":Z
    :cond_0
    return-void

    .line 5739
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private setEpdgTemporaryBlocked(Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V
    .locals 5
    .param p1, "reason"    # Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .prologue
    .line 4531
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-nez v2, :cond_0

    .line 4548
    :goto_0
    return-void

    .line 4534
    :cond_0
    sput-object p1, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 4535
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sget-object v3, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->BLACKLIST_COUNTRY:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-ne v2, v3, :cond_2

    .line 4537
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "country_detector"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 4538
    .local v1, "countryDetector":Landroid/location/CountryDetector;
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 4540
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mBlackListCountry:Ljava/lang/String;

    .line 4541
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blacklist country code :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mBlackListCountry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4542
    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    if-nez v2, :cond_1

    .line 4543
    new-instance v2, Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    invoke-direct {v2, p0}, Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    .line 4545
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    .line 4547
    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "countryDetector":Landroid/location/CountryDetector;
    :cond_2
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEpdgTemporaryBlocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4540
    .restart local v0    # "country":Landroid/location/Country;
    .restart local v1    # "countryDetector":Landroid/location/CountryDetector;
    :cond_3
    const-string v2, "UNKNOWN"

    goto :goto_1
.end method

.method private setHasPendingCdmaIndication(Z)V
    .locals 1
    .param p1, "isRequiredToSendCdmaIndication"    # Z

    .prologue
    .line 3519
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-nez v0, :cond_0

    .line 3523
    :goto_0
    return-void

    .line 3522
    :cond_0
    sput-boolean p1, Lcom/sec/epdg/EpdgService;->mIsRequiredToSendCdmaIndication:Z

    goto :goto_0
.end method

.method private setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .prologue
    .line 3444
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sget-object v1, Lcom/sec/epdg/EpdgService$HoDelayStatus;->DONOT_WAIT:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-eq v0, v1, :cond_0

    .line 3445
    sput-object p1, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .line 3446
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHoDelay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3447
    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne p1, v0, :cond_2

    .line 3448
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3450
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3451
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 3469
    :cond_0
    :goto_0
    return-void

    .line 3455
    :cond_1
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3456
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    .line 3459
    :cond_2
    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->REGISTRATION_FINISHED:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne p1, v0, :cond_0

    .line 3460
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3461
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 3462
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_0

    .line 3463
    :cond_3
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3464
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 3465
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static declared-synchronized setIsAirplaneMode(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 512
    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsAirplaneMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    monitor-exit v0

    return-void

    .line 512
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setIsCsAvailable(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 704
    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsCsAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    monitor-exit v0

    return-void

    .line 704
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setIsEpdgAvailable(Z)V
    .locals 4
    .param p0, "value"    # Z

    .prologue
    .line 708
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsEpdgAvailable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string/jumbo v2, "ril.epdg.available"

    if-eqz p0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    monitor-exit v1

    return-void

    .line 709
    :cond_0
    :try_start_1
    const-string/jumbo v0, "false"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 708
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setIsLteAvailable(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 684
    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsLteAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    monitor-exit v0

    return-void

    .line 684
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static setIsOnDemandApnConnectionFailed(Z)V
    .locals 0
    .param p0, "isOnDemandApnConnectionFailedStatus"    # Z

    .prologue
    .line 1236
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->isOnDemandApnConnectionFailed:Z

    .line 1237
    return-void
.end method

.method private static setIsRssiDisabledForProfiling(Z)V
    .locals 3
    .param p0, "value"    # Z

    .prologue
    .line 571
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsRssiDisabledForProfiling: value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsRssiDisabledForProfiling:Z

    .line 573
    return-void
.end method

.method private declared-synchronized setIsScreenOn(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 503
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/sec/epdg/EpdgService;->mIsScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    monitor-exit p0

    return-void

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static setIsSimCardRemoved(Z)V
    .locals 3
    .param p0, "state"    # Z

    .prologue
    .line 743
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsSimCardRemoved: state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsSimCardRemoved:Z

    .line 745
    return-void
.end method

.method private static declared-synchronized setIsSsacVoiceEnabled(Z)V
    .locals 4
    .param p0, "value"    # Z

    .prologue
    .line 531
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsSsacVoiceEnabled: value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mSsacVoiceEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    monitor-exit v1

    return-void

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized setIsVoPSEnabled(Z)V
    .locals 4
    .param p0, "value"    # Z

    .prologue
    .line 521
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsVoPSEnabled: value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsVoPSEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    monitor-exit v1

    return-void

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static setIsWifiRssiInPollingZone(Z)V
    .locals 3
    .param p0, "value"    # Z

    .prologue
    .line 561
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsWifiRssiInPollingZone: value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsWifiRssiInPollingZone:Z

    .line 563
    return-void
.end method

.method private static declared-synchronized setIsimState(Z)V
    .locals 4
    .param p0, "state"    # Z

    .prologue
    .line 733
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsimState: state is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsIsimReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    monitor-exit v1

    return-void

    .line 733
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setKeepAliveExpired(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 432
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveExpired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    monitor-exit p0

    return-void

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setKeepAliveRunning(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 428
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    monitor-exit p0

    return-void

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V
    .locals 16
    .param p1, "reason"    # Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    .prologue
    .line 4324
    sget-object v12, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 4325
    .local v12, "status":Lcom/sec/epdg/EpdgService$VoWifiStatus;
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_1

    sget-object v11, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->LTE_IWLAN_EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 4329
    .local v11, "mcPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :goto_0
    sget-object v10, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 4330
    .local v10, "emPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_2

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4331
    .local v2, "appPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    :goto_1
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4332
    .local v3, "appPrfOrd2":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_3

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_CELLULAR_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4333
    .local v4, "appPrfOrd3":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    :goto_2
    const/4 v9, 0x0

    .line 4334
    .local v9, "bootupChangeRequired":Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVolteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v7

    .line 4335
    .local v7, "bVolteTriState":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v13, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v13, v7, :cond_4

    .line 4436
    :cond_0
    :goto_3
    return-void

    .line 4325
    .end local v2    # "appPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .end local v3    # "appPrfOrd2":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .end local v4    # "appPrfOrd3":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .end local v7    # "bVolteTriState":Lcom/sec/epdg/EpdgConstants$TriState;
    .end local v9    # "bootupChangeRequired":Z
    .end local v10    # "emPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    .end local v11    # "mcPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :cond_1
    sget-object v11, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    goto :goto_0

    .line 4330
    .restart local v10    # "emPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    .restart local v11    # "mcPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :cond_2
    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_1

    .line 4332
    .restart local v2    # "appPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .restart local v3    # "appPrfOrd2":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    :cond_3
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_2

    .line 4339
    .restart local v4    # "appPrfOrd3":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .restart local v7    # "bVolteTriState":Lcom/sec/epdg/EpdgConstants$TriState;
    .restart local v9    # "bootupChangeRequired":Z
    :cond_4
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    if-eqz v13, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v5

    .line 4341
    .local v5, "bRoaming":Z
    :goto_4
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    if-eqz v13, :cond_6

    sget-object v13, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getIsWiFiPreferredInRoaming()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v14

    if-ne v13, v14, :cond_6

    const/4 v8, 0x1

    .line 4343
    .local v8, "bWifiPf":Z
    :goto_5
    sget-object v13, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v13, v7, :cond_7

    const/4 v6, 0x1

    .line 4346
    .local v6, "bVolteState":Z
    :goto_6
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->PREFERRED_MODE_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_8

    if-nez v5, :cond_8

    .line 4347
    const-string v13, "[EPDGService]"

    const-string/jumbo v14, "setPolicyTable - policy changed but it is home"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 4339
    .end local v5    # "bRoaming":Z
    .end local v6    # "bVolteState":Z
    .end local v8    # "bWifiPf":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    .line 4341
    .restart local v5    # "bRoaming":Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_5

    .line 4343
    .restart local v8    # "bWifiPf":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_6

    .line 4350
    .restart local v6    # "bVolteState":Z
    :cond_8
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    if-eqz v13, :cond_9

    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->BOOTUP_CHECKING:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_9

    .line 4355
    if-eqz v5, :cond_12

    if-eqz v8, :cond_12

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v13

    const-string/jumbo v14, "ims"

    invoke-virtual {v13, v14}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 4357
    const/4 v9, 0x1

    .line 4358
    const-string v13, "[EPDGService]"

    const-string/jumbo v14, "setPolicyTable - need update :power down at home and boot up in roaming area and WIFI preferred"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4373
    :cond_9
    :goto_7
    const-string v13, "[EPDGService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setPolicyTable- VoWIFI :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "roaming : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "reason :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Volte status: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4376
    sget-object v13, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v13, v12, :cond_1c

    .line 4377
    if-eqz v6, :cond_17

    .line 4378
    if-eqz v8, :cond_15

    if-eqz v5, :cond_15

    .line 4379
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_14

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4390
    :cond_a
    :goto_8
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "imsvoicecall"

    invoke-virtual {v13, v14, v15, v4}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4393
    if-eqz v8, :cond_b

    if-eqz v5, :cond_b

    .line 4394
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_1a

    sget-object v11, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN_LTE_EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 4395
    :goto_9
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_1b

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4398
    :cond_b
    :goto_a
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "idle"

    invoke-virtual {v13, v14, v15, v2}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4400
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-eq v0, v13, :cond_c

    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOLTE_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_d

    .line 4403
    :cond_c
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "imsvideovoicecall"

    invoke-virtual {v13, v14, v15, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4425
    :cond_d
    :goto_b
    if-nez v9, :cond_10

    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->PREFERRED_MODE_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_e

    if-nez v5, :cond_10

    :cond_e
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_f

    if-nez v5, :cond_10

    :cond_f
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->ROAMING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_11

    if-eqz v8, :cond_11

    .line 4429
    :cond_10
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "ims"

    invoke-virtual {v13, v14, v15, v11}, Lcom/sec/epdg/mapcon/PolicyManager;->updateMapconTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    .line 4432
    :cond_11
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_0

    .line 4433
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "emergency"

    invoke-virtual {v13, v14, v15, v10}, Lcom/sec/epdg/mapcon/PolicyManager;->updateMapconTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    goto/16 :goto_3

    .line 4362
    :cond_12
    if-nez v5, :cond_13

    if-eqz v8, :cond_13

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v13

    const-string/jumbo v14, "ims"

    invoke-virtual {v13, v14}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 4364
    const/4 v9, 0x1

    .line 4365
    const-string v13, "[EPDGService]"

    const-string/jumbo v14, "setPolicyTable - need update :power down in roaming + WIFI perferred and boot up in home area"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 4369
    :cond_13
    const-string v13, "[EPDGService]"

    const-string/jumbo v14, "setPolicyTable- skip "

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4379
    :cond_14
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto/16 :goto_8

    .line 4381
    :cond_15
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_16

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    :goto_c
    goto/16 :goto_8

    :cond_16
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_c

    .line 4384
    :cond_17
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_18

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4385
    :goto_d
    if-eqz v8, :cond_a

    if-eqz v5, :cond_a

    .line 4386
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_19

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    :goto_e
    goto/16 :goto_8

    .line 4384
    :cond_18
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_d

    .line 4386
    :cond_19
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_e

    .line 4394
    :cond_1a
    sget-object v11, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    goto/16 :goto_9

    .line 4395
    :cond_1b
    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto/16 :goto_a

    .line 4408
    :cond_1c
    sget-object v13, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v13, v12, :cond_d

    .line 4410
    if-eqz v6, :cond_1e

    .line 4411
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_1d

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4415
    :goto_f
    const/4 v13, 0x2

    new-array v1, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "imsvoicecall"

    aput-object v14, v1, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "imsvideovoicecall"

    aput-object v14, v1, v13

    .line 4418
    .local v1, "appList":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14, v1, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4420
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "idle"

    invoke-virtual {v13, v14, v15, v2}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4423
    sget-object v10, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    goto/16 :goto_b

    .line 4411
    .end local v1    # "appList":[Ljava/lang/String;
    :cond_1d
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_f

    .line 4413
    :cond_1e
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_1f

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    :goto_10
    goto :goto_f

    :cond_1f
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_10
.end method

.method public static declared-synchronized setPreviousE911CallCount(I)V
    .locals 4
    .param p0, "count"    # I

    .prologue
    .line 541
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreviousE911CallCount: count is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    sput p0, Lcom/sec/epdg/EpdgService;->mPreviousE911CallCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    monitor-exit v1

    return-void

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setPreviousNonE911CallCount(I)V
    .locals 4
    .param p0, "count"    # I

    .prologue
    .line 551
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreviousNonE911CallCount: count is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    sput p0, Lcom/sec/epdg/EpdgService;->mPreviousNonE911CallCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    monitor-exit v1

    return-void

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setRegistedNetworkStateChangeReceiver(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgService;->mRegistedNetworkStateChangeReceiver:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit p0

    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V
    .locals 7
    .param p1, "status"    # Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4441
    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne p1, v2, :cond_6

    .line 4442
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v2, :cond_5

    .line 4443
    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sput-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 4444
    sget-object v2, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    .line 4456
    :cond_0
    :goto_0
    const-string v2, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isWiFiCallEnabled is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4458
    sget-object v5, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v6, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-eq v2, v6, :cond_7

    move v2, v3

    :goto_1
    invoke-static {v5, v2}, Lcom/sec/epdg/EpdgService;->setWifiRssiPollSate(Landroid/content/Context;Z)V

    .line 4462
    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v5, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v2, v5, :cond_8

    .line 4463
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4464
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->IsNeedDeregi()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4465
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4467
    :cond_1
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 4470
    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 4472
    invoke-static {v4}, Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V

    .line 4474
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getRegistedNetworkStateChangeReceiver()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4475
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4476
    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgService;->setRegistedNetworkStateChangeReceiver(Z)V

    .line 4478
    :cond_3
    sget-object v2, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->unregisterListener()V

    .line 4518
    :cond_4
    :goto_2
    return-void

    .line 4446
    :cond_5
    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sput-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    .line 4449
    :cond_6
    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne p1, v2, :cond_0

    .line 4451
    sput-object p1, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 4452
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v2, :cond_0

    .line 4453
    sget-object v2, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    goto :goto_0

    :cond_7
    move v2, v4

    .line 4458
    goto :goto_1

    .line 4480
    :cond_8
    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v4, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v2, v4, :cond_a

    .line 4485
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4486
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    goto :goto_2

    .line 4489
    :cond_9
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    goto :goto_2

    .line 4492
    :cond_a
    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v4, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v2, v4, :cond_4

    .line 4494
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v2, :cond_c

    .line 4495
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4496
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v0

    .line 4497
    .local v0, "BEST_RSRP":I
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v1

    .line 4498
    .local v1, "LOW_RSRP":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4499
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v2

    if-nez v2, :cond_b

    .line 4500
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v1

    .line 4502
    :cond_b
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    goto/16 :goto_2

    .line 4506
    .end local v0    # "BEST_RSRP":I
    .end local v1    # "LOW_RSRP":I
    :cond_c
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    .line 4507
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getRegistedNetworkStateChangeReceiver()Z

    move-result v2

    if-nez v2, :cond_d

    .line 4508
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4510
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4512
    invoke-direct {p0, v3}, Lcom/sec/epdg/EpdgService;->setRegistedNetworkStateChangeReceiver(Z)V

    .line 4514
    :cond_d
    sget-object v2, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->registerListener()V

    goto/16 :goto_2
.end method

.method private setVowifiSetting(I)V
    .locals 3
    .param p1, "enable"    # I

    .prologue
    .line 3407
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_call_enable"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_wifi_call_enable_broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3410
    .local v0, "wifiCall":Landroid/content/Intent;
    const-string/jumbo v1, "wifi_call_enable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3411
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3412
    return-void
.end method

.method private static setWifiRssiPollSate(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 6205
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setImsRssiPollSate(): enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6206
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 6208
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6209
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "state"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6210
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 6211
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x18

    iput v3, v1, Landroid/os/Message;->what:I

    .line 6212
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6214
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v3

    if-nez v3, :cond_0

    .line 6215
    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "setImsRssiPollSate(): IMS RSSI poll state has been changed"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6219
    :goto_0
    return-void

    .line 6217
    :cond_0
    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "setImsRssiPollSate(): Failed to change IMS RSSI poll state"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startAlarmForInternetKeepAlive(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    .line 4801
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAlarmForInternetKeepAlive: Updating the alarm with delay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4804
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setKeepAliveRunning(Z)V

    .line 4805
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4807
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.epdg.INTERNET_KEEP_ALIVE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mInternetKeepAlive:Landroid/content/Intent;

    .line 4808
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mInternetKeepAlive:Landroid/content/Intent;

    const/high16 v4, 0x8000000

    invoke-static {v1, v2, v3, v4}, Lcom/sec/epdg/EpdgUtils;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    .line 4810
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 4813
    return-void
.end method

.method private startHandOverWifiToLte(I)I
    .locals 4
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4236
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Wifi RSSI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4237
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved Wifi RSSI Level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getSavedWifiRssiLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4239
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    new-instance v1, Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;

    invoke-direct {v1, p0, p1}, Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    new-instance v2, Lcom/sec/epdg/EpdgService$WifiToLteHOFailureRunnable;

    invoke-direct {v2, p0, p1}, Lcom/sec/epdg/EpdgService$WifiToLteHOFailureRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isWifiTolteHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 4243
    const/4 v0, 0x0

    return v0
.end method

.method private startHandoverLteToWifi(I)I
    .locals 8
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 4168
    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v4

    if-ne v7, v4, :cond_0

    .line 4170
    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot trigger L2W HO: (EPDG NOT AVAILABLE) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4232
    :goto_0
    return v2

    .line 4177
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4178
    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot trigger L2W HO: (WIFI NOT CONNECTED) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4183
    :cond_1
    sget-object v4, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 4184
    .local v0, "nwkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4185
    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot trigger L2W HO: (PDN Not active on other RAT) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " networkInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4193
    :cond_2
    sget-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v4, :cond_7

    .line 4194
    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v4, v5, :cond_9

    .line 4195
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call status is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v6}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " check for LTE availability"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4196
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_8

    .line 4198
    const-string v4, "[EPDGService]"

    const-string v5, "LTE is available, now check for wifi strength"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4199
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v5, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v1

    .line 4200
    .local v1, "rssi":I
    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v4, v5, :cond_3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v4, v5, :cond_4

    :cond_3
    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInVoice()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 4203
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Voice call and wifi rssi is below handover threshold, no need to do L2W handover. rssi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handover rssi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInVoice()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4206
    sget-object v3, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInVoice()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startL2WHandoverProfiling(I)V

    goto/16 :goto_0

    .line 4208
    :cond_4
    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v4, v5, :cond_5

    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v4, v5, :cond_6

    :cond_5
    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 4211
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video call and wifi rssi is below handover threshold, no need to do L2W handover. rssi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " handover rssi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4214
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startL2WHandoverProfiling(I)V

    .line 4215
    invoke-direct {p0, v3, v7}, Lcom/sec/epdg/EpdgService;->sendEpdgAvailableIntent(ZZ)V

    goto/16 :goto_0

    .line 4218
    :cond_6
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifi rssi is good for handover. rssi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " wifi rssi A: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4228
    .end local v1    # "rssi":I
    :cond_7
    :goto_1
    const-string v2, "[HANDOFF]"

    const-string v4, "Starting HandOver To Wifi"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4229
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    new-instance v4, Lcom/sec/epdg/EpdgService$LteToWifiHOSuccessRunnable;

    invoke-direct {v4, p0, p1}, Lcom/sec/epdg/EpdgService$LteToWifiHOSuccessRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    new-instance v5, Lcom/sec/epdg/EpdgService$LteToWifiHOFailureRunnable;

    invoke-direct {v5, p0, p1}, Lcom/sec/epdg/EpdgService$LteToWifiHOFailureRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    invoke-virtual {v2, p1, v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->islteToWifiHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    move v2, v3

    .line 4232
    goto/16 :goto_0

    .line 4222
    :cond_8
    const-string v2, "[EPDGService]"

    const-string v4, "Connected mode but LTE is lost, perform L2W handover"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4225
    :cond_9
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call status is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v5}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " perform L2W handover"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    .locals 10
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 3330
    const/4 v4, 0x0

    .line 3331
    .local v4, "retVal":Z
    if-nez p1, :cond_0

    .line 3332
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startPeriodicDpdIfNecessary: apnType is null, returning: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 3358
    .end local v4    # "retVal":Z
    .local v5, "retVal":I
    :goto_0
    return v5

    .line 3335
    .end local v5    # "retVal":I
    .restart local v4    # "retVal":Z
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->isConnectedModeDpdAllow()Z

    move-result v7

    if-nez v7, :cond_5

    .line 3336
    invoke-static {p1}, Lcom/sec/epdg/EpdgService;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3337
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 3338
    .local v6, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3339
    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getPeriodicDpdTimer()I

    move-result v1

    .line 3340
    .local v1, "dpdTimer":I
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startPeriodicDpdIfNecessary: dpd time is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3341
    if-lez v1, :cond_2

    .line 3342
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v8

    mul-int/lit16 v9, v1, 0x3e8

    invoke-virtual {v7, v8, v9}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForPeriodicDpd(Ljava/lang/String;I)V

    .line 3344
    const/4 v4, 0x1

    .line 3357
    .end local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .end local v1    # "dpdTimer":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    :goto_2
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startPeriodicDpdIfNecessary: returning: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 3358
    .restart local v5    # "retVal":I
    goto :goto_0

    .line 3346
    .end local v5    # "retVal":I
    .restart local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .restart local v1    # "dpdTimer":I
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v6    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_2
    const-string v7, "[EPDGService]"

    const-string/jumbo v8, "startPeriodicDpdIfNecessary: dpd timer is 0"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3337
    .end local v1    # "dpdTimer":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3352
    .end local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_4
    const-string v7, "[EPDGService]"

    const-string/jumbo v8, "startPeriodicDpdIfNecessary: PDN is not connected on wifi"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3355
    :cond_5
    const-string v7, "[EPDGService]"

    const-string/jumbo v8, "startPeriodicDpdIfNecessary: DPD is allowed in connected mode"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private startTimerForPdnXfer(JI)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "networkType"    # I

    .prologue
    .line 5701
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTimerForPdnXfer: Updating the alarm with delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5703
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    if-eqz v0, :cond_0

    .line 5704
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5706
    :cond_0
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    invoke-direct {v0, p0, p3}, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    .line 5707
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5708
    return-void
.end method

.method private startTimerOrPerformDns(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2280
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    if-ne v0, v1, :cond_3

    .line 2281
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2282
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is none and ipv4 address is now configured, wait for ipv6 address configuration"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2286
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 2344
    :cond_0
    :goto_0
    return-void

    .line 2287
    :cond_1
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->isIPv6AddressScopeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2289
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is none and ipv6 address is now configured, wait for ipv4 address configuration"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2293
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    .line 2295
    :cond_2
    const-string v0, "[EPDGService]"

    const-string v1, "Link local ipv6 address is configured, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2297
    :cond_3
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4:Lcom/sec/epdg/EpdgService$IpType;

    if-ne v0, v1, :cond_7

    .line 2298
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->isIPv6AddressScopeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2300
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2301
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2302
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type was ipv4 and now ipv6 address is configured, stopping the timer and starting DNS"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 2305
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2307
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    goto :goto_0

    .line 2309
    :cond_4
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi ip config timer is already expired when ipv6 address configured"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->performDnsIfPossible()V

    goto :goto_0

    .line 2313
    :cond_5
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2314
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is v4, again v4 address is received, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2317
    :cond_6
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is v4, link local ipv6 address is configured, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2320
    :cond_7
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V6:Lcom/sec/epdg/EpdgService$IpType;

    if-ne v0, v1, :cond_0

    .line 2321
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2322
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2323
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2324
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type was ipv6 and now ipv4 address is configured, stopping the timer and starting DNS"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2326
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 2327
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2329
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    goto/16 :goto_0

    .line 2331
    :cond_8
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi ip config timer is already expired when ipv4 address configured"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->performDnsIfPossible()V

    goto/16 :goto_0

    .line 2335
    :cond_9
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->isIPv6AddressScopeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2337
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is v6, again v6 address is received, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2340
    :cond_a
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is v6, link local ipv6 address is configured, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private startTimersIfNeeded()V
    .locals 3

    .prologue
    .line 4250
    sget-boolean v1, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    if-nez v1, :cond_3

    .line 4252
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->isWifiSettingOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4254
    const-string v1, "[EPDGService]"

    const-string v2, "Wifi Setting on"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4255
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->shouldTEpdgTimerBeStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4256
    const-string v1, "[EPDGService]"

    const-string v2, "IMS PDN connected when wifi off"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4257
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4258
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "XFA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4259
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    .line 4273
    .end local v0    # "salesCode":Ljava/lang/String;
    :goto_0
    return-void

    .line 4261
    .restart local v0    # "salesCode":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    .line 4264
    .end local v0    # "salesCode":Ljava/lang/String;
    :cond_1
    const-string v1, "[EPDGService]"

    const-string v2, "IMS PDN not connected when wifi off"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4267
    :cond_2
    const-string v1, "[EPDGService]"

    const-string v2, "Wifi Setting off"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4270
    :cond_3
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "isNotRequireTimer is true. reset it"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4271
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    goto :goto_0
.end method

.method private startWifiProfiling()V
    .locals 26

    .prologue
    .line 4862
    const/16 v25, 0x0

    .line 4863
    .local v25, "disableRSSI":Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v24

    .line 4866
    .local v24, "apnType":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4867
    const-string v1, "[EPDGService]"

    const-string v2, "Don\'t start wifi profiling.MAPCON is LTE"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4913
    :goto_0
    return-void

    .line 4870
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    .line 4873
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsWifiOnlyAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    if-eqz v1, :cond_1

    .line 4875
    const/16 v25, 0x1

    .line 4877
    :cond_1
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v1, :cond_2

    .line 4878
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsRssiDisabledForProfiling()Z

    move-result v25

    .line 4880
    :cond_2
    const-string v1, "FTM"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ORO"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4881
    :cond_3
    const/16 v25, 0x0

    .line 4884
    :cond_4
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startWifiProfiling() disableRSSI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4887
    if-eqz v25, :cond_8

    const/16 v13, -0x64

    .line 4888
    .local v13, "goodDB":I
    :goto_1
    if-eqz v25, :cond_9

    const/16 v14, -0x64

    .line 4889
    .local v14, "badDB":I
    :goto_2
    if-eqz v25, :cond_a

    const/16 v15, -0x64

    .line 4890
    .local v15, "thresholdDB":I
    :goto_3
    if-eqz v25, :cond_b

    const/16 v16, -0x64

    .line 4891
    .local v16, "goodDBWifiOnly":I
    :goto_4
    if-eqz v25, :cond_c

    const/16 v17, -0x64

    .line 4892
    .local v17, "badDBWifiOnly":I
    :goto_5
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v18

    .line 4893
    .local v18, "BEST_RSRP":I
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v19

    .line 4894
    .local v19, "LOWEST_RSRP":I
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getCdmaRssi()I

    move-result v20

    .line 4895
    .local v20, "cdmaRssi":I
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v23

    .line 4898
    .local v23, "isCsPrefMode":Z
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->isHandoverRequiredOnCdmaIndication()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4899
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 4901
    :cond_5
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4902
    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_6

    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_7

    .line 4904
    :cond_6
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v18

    .line 4906
    :cond_7
    sget-object v1, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->getEpdgServerIp()Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mWifiOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/epdg/EpdgService;->mLteOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/epdg/EpdgService;->mLteOff:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/epdg/EpdgService;->mCdmaOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/epdg/EpdgService;->mCdmaOff:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/epdg/EpdgService;->mL2WHandoverProfilingOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/epdg/EpdgService;->mWifiRssiIntentReceived:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/epdg/EpdgService;->mPollingRssiOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/epdg/EpdgService;->mPollingRssiOff:Ljava/lang/Runnable;

    sget-object v21, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/EpdgSettings;->getPktLossPercent()I

    move-result v21

    sget-object v22, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgSettings;->getSmartWifiTimer()I

    move-result v22

    invoke-virtual/range {v1 .. v23}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startProfiling(Ljava/net/InetAddress;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;IIIIIIIIIIZ)V

    goto/16 :goto_0

    .line 4887
    .end local v13    # "goodDB":I
    .end local v14    # "badDB":I
    .end local v15    # "thresholdDB":I
    .end local v16    # "goodDBWifiOnly":I
    .end local v17    # "badDBWifiOnly":I
    .end local v18    # "BEST_RSRP":I
    .end local v19    # "LOWEST_RSRP":I
    .end local v20    # "cdmaRssi":I
    .end local v23    # "isCsPrefMode":Z
    :cond_8
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v13

    goto/16 :goto_1

    .line 4888
    .restart local v13    # "goodDB":I
    :cond_9
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v14

    goto/16 :goto_2

    .line 4889
    .restart local v14    # "badDB":I
    :cond_a
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v15

    goto/16 :goto_3

    .line 4890
    .restart local v15    # "thresholdDB":I
    :cond_b
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInWifiOnly()I

    move-result v16

    goto/16 :goto_4

    .line 4891
    .restart local v16    # "goodDBWifiOnly":I
    :cond_c
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveOutWifiOnly()I

    move-result v17

    goto/16 :goto_5
.end method

.method private static startWifiRssiIntentDelayTimerIfRequired(Ljava/lang/String;)V
    .locals 3
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 3300
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startWifiRssiIntentDelayTimerIfRequired: apn type is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3301
    if-nez p0, :cond_1

    .line 3314
    :cond_0
    :goto_0
    return-void

    .line 3304
    :cond_1
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiIntentDelayTimer()I

    move-result v0

    if-lez v0, :cond_0

    .line 3305
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsWifiRssiInPollingZone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsImsCallConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3306
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3307
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "startWifiRssiIntentDelayTimerIfRequired: Wifi Rssi intent delay timer started"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3308
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    .line 3310
    :cond_2
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "startWifiRssiIntentDelayTimerIfRequired: Wifi Rssi intent delay timer already running"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopEpdgService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2024
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "stopEpdgService"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    sget-boolean v1, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-eqz v1, :cond_1

    .line 2026
    const-string v1, "[EPDGService]"

    const-string v2, "WifiCall is disabled"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    const-string v1, "EVR"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2028
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiCallingOff:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2032
    :goto_0
    sget-object v1, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 2033
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 2036
    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V

    .line 2037
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2039
    :try_start_0
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2040
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setRegistedNetworkStateChangeReceiver(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2045
    :cond_0
    :goto_1
    sput-boolean v3, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    .line 2048
    :cond_1
    sget-boolean v1, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-eqz v1, :cond_2

    .line 2050
    :try_start_1
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2054
    :goto_2
    sput-boolean v3, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    .line 2056
    :cond_2
    return-void

    .line 2030
    :cond_3
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2041
    :catch_0
    move-exception v0

    .line 2042
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "mNetworkStateChangeReceiver was not registered."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2051
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 2052
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "mSimStateChangeReceiver was not registered."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private stopInternetKeepAlive()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4816
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "stopInternetKeepAlive()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4817
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setKeepAliveRunning(Z)V

    .line 4818
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 4819
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4821
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4822
    iput-object v3, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    .line 4823
    iput-object v3, p0, Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;

    .line 4825
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_0
    return-void
.end method

.method private stopPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    .locals 9
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 3362
    const/4 v3, 0x0

    .line 3363
    .local v3, "retVal":Z
    if-nez p1, :cond_0

    .line 3364
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopPeriodicDpdIfNecessary: apnType is null, returning: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 3385
    .end local v3    # "retVal":Z
    .local v4, "retVal":I
    :goto_0
    return v4

    .line 3367
    .end local v4    # "retVal":I
    .restart local v3    # "retVal":Z
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->isConnectedModeDpdAllow()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3368
    invoke-static {p1}, Lcom/sec/epdg/EpdgService;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3369
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 3370
    .local v5, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3371
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "stopPeriodicDpdIfNecessary: removing periodic dpd intent"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3372
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/epdg/EpdgPeriodicDpd;->removePeriodicDpdPendingIntent(Ljava/lang/String;)V

    .line 3374
    const/4 v3, 0x1

    .line 3384
    .end local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    :goto_2
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopPeriodicDpdIfNecessary: returning: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 3385
    .restart local v4    # "retVal":I
    goto :goto_0

    .line 3369
    .end local v4    # "retVal":I
    .restart local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v5    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3379
    .end local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_3
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "stopPeriodicDpdIfNecessary: PDN is not connected on wifi"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3382
    :cond_4
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "stopPeriodicDpdIfNecessary: DPD is allowed in connected mode"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static stopWifiRssiIntentDelayTimerIfRequired()V
    .locals 2

    .prologue
    .line 3317
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiIntentDelayTimer()I

    move-result v0

    if-lez v0, :cond_0

    .line 3318
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3319
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "stopWifiRssiIntentDelayTimerIfRequired: Wifi Rssi intent delay timer is running, stop it!"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3321
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 3327
    :cond_0
    :goto_0
    return-void

    .line 3323
    :cond_1
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "stopWifiRssiIntentDelayTimerIfRequired: Wifi Rssi intent delay timer already stopped"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCpEpdgHoThreshold(Z)V
    .locals 9
    .param p1, "isAvailable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4953
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold4gRoveIn()I

    move-result v2

    .line 4954
    .local v2, "threshold4gRoveIn":I
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold4gRoveOut()I

    move-result v3

    .line 4955
    .local v3, "threshold4gRoveOut":I
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold3gRoveIn()I

    move-result v4

    .line 4956
    .local v4, "threshold3gRoveIn":I
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold3gRoveOut()I

    move-result v5

    .line 4957
    .local v5, "threshold3gRoveOut":I
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold2gRoveIn()I

    move-result v6

    .line 4958
    .local v6, "threshold2gRoveIn":I
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold2gRoveOut()I

    move-result v7

    .line 4960
    .local v7, "threshold2gRoveOut":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-nez v7, :cond_2

    .line 4963
    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "Do not support CP threshold function"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4981
    :cond_1
    :goto_0
    return-void

    .line 4967
    :cond_2
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    const-string/jumbo v8, "ims"

    invoke-virtual {v0, v8}, Lcom/sec/epdg/mapcon/MapconTable;->isVoWifiPref(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4968
    const-string v0, "[EPDGService]"

    const-string v1, "Cellular preferred mode set threshold"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4969
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    if-eq v0, p1, :cond_1

    .line 4970
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    move v1, p1

    invoke-interface/range {v0 .. v7}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgHoThreshold(ZIIIIII)V

    .line 4972
    sput-boolean p1, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    goto :goto_0

    .line 4975
    :cond_3
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    const/4 v8, 0x1

    if-ne v0, v8, :cond_1

    .line 4976
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-interface/range {v0 .. v7}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgHoThreshold(ZIIIIII)V

    .line 4978
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    goto :goto_0
.end method

.method private updateMapconTable(Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    .locals 9
    .param p1, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .prologue
    .line 6184
    if-nez p1, :cond_0

    .line 6185
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "prefered Order is NULL"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6202
    :goto_0
    return-void

    .line 6189
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v0

    .line 6190
    .local v0, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 6191
    .local v2, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6192
    .local v5, "updateApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6193
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/epdg/IWlanApnSetting;

    .line 6194
    .local v4, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v1

    .line 6195
    .local v1, "apn":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 6196
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6199
    .end local v1    # "apn":Ljava/lang/String;
    .end local v4    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 6200
    .local v3, "apnList":[Ljava/lang/String;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "prefered Order for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6201
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v3, p1}, Lcom/sec/epdg/mapcon/MapconTable;->updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    goto :goto_0
.end method

.method private updateNetRegist()V
    .locals 4

    .prologue
    .line 3221
    iget v0, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    .line 3222
    iget v0, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 3223
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgAvailability(Z)V

    .line 3224
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "don`t retry more."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3225
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    .line 3232
    :goto_0
    return-void

    .line 3229
    :cond_0
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update netRegist cnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3230
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgAvailability(Z)V

    .line 3231
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    const/16 v2, 0x50

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method


# virtual methods
.method public IsVoLteAvailableNetwork()Z
    .locals 5

    .prologue
    const/16 v4, 0xd

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5372
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5373
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/16 v3, 0xe

    if-eq v2, v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    if-ne v2, v4, :cond_1

    :cond_0
    move v0, v1

    .line 5378
    :cond_1
    :goto_0
    return v0

    .line 5375
    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5376
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v0

    goto :goto_0

    .line 5378
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    if-ne v2, v4, :cond_4

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method public bootCompleted()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 1112
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bootCompleted: bIsSimReady is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mEpdgReady is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-nez v0, :cond_1

    .line 1116
    const-string v0, "[EPDGService]"

    const-string v1, "EPDG is not ready yet."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :cond_0
    :goto_0
    return-void

    .line 1120
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isNeededToBlockIkeAuthentication()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1121
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->stopEpdgService()V

    goto :goto_0

    .line 1125
    :cond_2
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    if-eq v0, v3, :cond_4

    :cond_3
    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    if-ne v0, v3, :cond_0

    .line 1128
    :cond_4
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1129
    new-instance v0, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public connect(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 7
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 4066
    const/4 v2, -0x1

    .line 4067
    .local v2, "profileId":I
    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 4068
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x2b

    iput v3, v1, Landroid/os/Message;->what:I

    .line 4069
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getProfileIdbyApnType(Ljava/lang/String;)I

    move-result v2

    .line 4070
    if-ne v2, v6, :cond_0

    .line 4071
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect() Unable to get cid for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4072
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v3, :cond_0

    .line 4073
    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4075
    add-int/lit8 v2, v0, 0x1

    .line 4076
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect() find SM for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4082
    .end local v0    # "i":I
    :cond_0
    if-ne v2, v6, :cond_1

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    instance-of v3, v3, Lcom/sec/epdg/EpdgTestRilAdapter;

    if-eqz v3, :cond_1

    .line 4083
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getTestNetInterfaceNum()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 4084
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect() with EpdgTestRilAdapter - find dummyid for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4087
    :cond_1
    if-eq v2, v6, :cond_2

    .line 4088
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 4089
    invoke-static {p1}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4090
    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Post event RIL_CONNECT_REQ for profileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4092
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4094
    :cond_2
    const/4 v3, 0x0

    return v3

    .line 4072
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public disconnect(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 8
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 4100
    const/4 v2, -0x1

    .line 4101
    .local v2, "profileId":I
    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 4102
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x2c

    iput v3, v1, Landroid/os/Message;->what:I

    .line 4103
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getProfileIdbyApnType(Ljava/lang/String;)I

    move-result v2

    .line 4104
    if-ne v2, v6, :cond_0

    .line 4105
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnect() Unable to get cid for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v3, :cond_0

    .line 4107
    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4109
    add-int/lit8 v2, v0, 0x1

    .line 4110
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnect() find SM for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4116
    .end local v0    # "i":I
    :cond_0
    if-eq v2, v6, :cond_2

    .line 4117
    new-instance v3, Landroid/os/AsyncResult;

    new-instance v4, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    invoke-direct {v4, v2}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;-><init>(I)V

    invoke-direct {v3, v7, v4, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4118
    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Post event RIL_DISCONNECT_REQ for profileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4120
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4125
    :goto_1
    const/4 v3, 0x0

    return v3

    .line 4106
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4122
    .end local v0    # "i":I
    :cond_2
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnect() can\'t be triggered for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 449
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 452
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump EpdgService from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    :goto_0
    return-void

    .line 457
    :cond_0
    const-string v6, "[EPDGService]"

    const-string v7, "EpdgService dump started"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v6, "EpdgService Dumpstate"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v0, v4

    .line 460
    .local v3, "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    if-eqz v3, :cond_1

    .line 461
    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnContextDump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 465
    .end local v3    # "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v1

    .line 466
    .local v1, "data":Lcom/sec/epdg/EpdgRilSharedData;
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgRilSharedData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    .end local v1    # "data":Lcom/sec/epdg/EpdgRilSharedData;
    :goto_2
    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    if-eqz v6, :cond_3

    .line 471
    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    :cond_3
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 474
    const-string v6, "EPDG server last DNS status"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "UNSUCCESSFUL"

    :goto_3
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EPDG Enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    sget-object v6, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    if-eqz v6, :cond_5

    .line 479
    sget-object v6, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v6}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 480
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Volte is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " VoWifi is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ims Listener : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsListener;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    :cond_5
    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v6, :cond_6

    .line 486
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Vowifi MDN : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "vowifi_mdn"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    :cond_6
    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    if-eqz v6, :cond_7

    .line 490
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VoWifi Timers :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgTimers;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    :cond_7
    invoke-static {}, Lcom/sec/epdg/Log;->dump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    invoke-static {p2}, Lcom/sec/epdg/EpdgDumpState;->dump(Ljava/io/PrintWriter;)V

    .line 494
    const-string v6, "[EPDGService]"

    const-string v7, "EpdgService dump finished"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 467
    :catch_0
    move-exception v2

    .line 468
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v6, "EpdgRilSharedData : null"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 475
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_8
    const-string v6, "SUCCESSFUL"

    goto/16 :goto_3
.end method

.method public enableTestRilAdapter(Z)I
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4131
    if-eqz p1, :cond_0

    .line 4132
    const-string v0, "[EPDGService]"

    const-string v1, "Changing the RIL Operating Mode using TesRilAdapter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgTestRilAdapter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgTestRilAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    .line 4138
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 4135
    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "Changing the RIL Operating Mode using RilAdapter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4136
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRilAdapter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgRilAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    goto :goto_0
.end method

.method public isDuringHandoverForIMS()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4143
    const/16 v4, 0xb

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v1

    .line 4144
    .local v1, "cid":I
    if-gez v1, :cond_1

    .line 4145
    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "invalid cid for ims"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4164
    :cond_0
    :goto_0
    return v2

    .line 4148
    :cond_1
    sget-boolean v4, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v4, :cond_2

    .line 4149
    const-string v3, "[EPDGService]"

    const-string v4, "EpdgService not initialized."

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4153
    :cond_2
    sget-object v4, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v0

    .line 4154
    .local v0, "apnState":I
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isDuringHandoverForIMS(), cid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apnState is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4156
    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x6

    if-eq v0, v4, :cond_3

    const/4 v4, 0x7

    if-eq v0, v4, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    :cond_3
    move v2, v3

    .line 4162
    goto :goto_0
.end method

.method public makeEpdgServiceUp()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1135
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    .line 1136
    .local v6, "context":Landroid/content/Context;
    new-instance v0, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;ZZZ)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1137
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mDefaultDataSubChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1142
    :cond_0
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$EpdgContentObserver;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    .line 1143
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1145
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1147
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1150
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1153
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v0, :cond_1

    .line 1154
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgWfcProfileReader;->CONTENT_URI_WFCPROFILE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1159
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1160
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mIPCallAdbCommandReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.commands.ipcall.action_ip_setting_change"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1163
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWiFiCallEnableIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "action_wifi_call_enable_broadcast"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1166
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 1167
    .local v7, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "action_wfc_switch_profile_broadcast"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1168
    const/16 v0, -0x64

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1169
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mPreferedModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1170
    return-void
.end method

.method public sendEventToStateMachine(IILandroid/os/IBinder;)I
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "event"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4034
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;-><init>(Lcom/sec/epdg/EpdgService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4036
    const/4 v0, 0x0

    return v0
.end method

.method public startForceToHandOverToEPDG(ZILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .locals 11
    .param p1, "isEpdg"    # Z
    .param p2, "networkType"    # I
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3983
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    if-nez v0, :cond_0

    .line 3984
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "startForceToHandOverToEPDG : mSmartWifiAdapter is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3985
    const/4 v0, -0x1

    .line 3997
    :goto_0
    return v0

    .line 3987
    :cond_0
    const-string v0, "[HANDOFF]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startForceToHandOverToEPDG : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3988
    if-eqz p1, :cond_1

    const/4 v8, 0x1

    .line 3989
    .local v8, "wificallenable":I
    :goto_1
    const/4 v9, -0x1

    .line 3990
    .local v9, "wificallpreferred":I
    if-eqz p1, :cond_2

    .line 3991
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$WifiCallEnabler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v8, v9, v2}, Lcom/sec/epdg/EpdgService$WifiCallEnabler;-><init>(Lcom/sec/epdg/EpdgService;IIZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3992
    sget-object v10, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/epdg/EpdgService$WifiCallHandover;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/epdg/EpdgService$WifiCallHandover;-><init>(Lcom/sec/epdg/EpdgService;ZIILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3997
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3988
    .end local v8    # "wificallenable":I
    .end local v9    # "wificallpreferred":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 3994
    .restart local v8    # "wificallenable":I
    .restart local v9    # "wificallpreferred":I
    :cond_2
    sget-object v10, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/epdg/EpdgService$WifiCallHandover;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/epdg/EpdgService$WifiCallHandover;-><init>(Lcom/sec/epdg/EpdgService;ZIILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3995
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$WifiCallEnabler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v8, v9, v2}, Lcom/sec/epdg/EpdgService$WifiCallEnabler;-><init>(Lcom/sec/epdg/EpdgService;IIZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public startHandOverLteToWifi(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4017
    const-string v0, "[HANDOFF]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHandOverLteToWifi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4022
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p4}, Lcom/sec/epdg/mapcon/MapconTable;->setAppPolicy(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Landroid/app/PendingIntent;)V

    .line 4025
    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sec/epdg/EpdgDumpState;->addL2WApiCall(ILjava/lang/String;Ljava/lang/String;)V

    .line 4028
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startHandoverLteToWifi(I)I

    move-result v0

    return v0
.end method

.method public startHandOverWifiToLte(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4003
    const-string v0, "[HANDOFF]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHandOverWifiToLte : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4005
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p4}, Lcom/sec/epdg/mapcon/MapconTable;->setAppPolicy(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Landroid/app/PendingIntent;)V

    .line 4008
    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sec/epdg/EpdgDumpState;->addW2LApiCall(ILjava/lang/String;Ljava/lang/String;)V

    .line 4011
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startHandOverWifiToLte(I)I

    move-result v0

    return v0
.end method
