.class public final Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.super Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkAgent;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    }
.end annotation


# static fields
.field private static final ACTION_P2P_LO_TIMER_EXPIRED:Ljava/lang/String; = "com.samsung.android.net.wifi.p2p.LO_TIMER_EXPIRED"

.field private static final ACTION_P2P_STOPFIND_TIMER_EXPIRED:Ljava/lang/String; = "android.net.wifi.p2p.STOPFIND_TIMER_EXPIRED"

.field private static final BASE:I = 0x23000

.field public static final BLOCK_DISCOVERY:I = 0x2300f

.field private static final CMD_BOOT_COMPLETED:I = 0x23037

.field private static final CMD_UNLOAD_P2P_DRIVER_FAILURE:I = 0x23012

.field private static final CMD_UNLOAD_P2P_DRIVER_SUCCESS:I = 0x23011

.field private static final CONNECTION_TIMED_OUT:I = 0x1e

.field private static final CONTACT_CRC_LENGTH:I = 0x4

.field private static final CONTACT_HASH_LENGTH:I = 0x6

.field private static final DBG:Z = true

.field private static final DEFAULT_GROUP_OWNER_INTENT:I = 0x6

.field private static final DEFAULT_STATIC_IP:Ljava/lang/String; = "192.168.49.10"

.field private static final DHCP_RANGE:[Ljava/lang/String;

.field public static final DISABLED:I = 0x0

.field public static final DISABLE_P2P_TIMED_OUT:I = 0x23006

.field private static final DISABLE_P2P_WAIT_TIME_MS:I = 0x1388

.field public static final DISCONNECT_WIFI_REQUEST:I = 0x2300c

.field public static final DISCONNECT_WIFI_RESPONSE:I = 0x2300d

.field private static final DISCOVER_TIMEOUT_S:I = 0x78

.field private static final DROP_WIFI_USER_ACCEPT:I = 0x23004

.field private static final DROP_WIFI_USER_REJECT:I = 0x23005

.field public static final ENABLED:I = 0x1

.field private static final FORM_GROUP:Ljava/lang/Boolean;

.field public static final GROUP_CREATING_TIMED_OUT:I = 0x23001

.field private static final GROUP_CREATING_WAIT_TIME_MS:I = 0x88b8

.field private static final GROUP_IDLE_TIME_S:I = 0xa

.field private static final IDX_PHONE:I = 0x100

.field private static final IDX_TABLET:I = 0x200

.field private static final INVITATION_PROCEDURE_TIMED_OUT:I = 0x23033

.field private static final INVITATION_WAIT_TIME_MS:I = 0x7530

.field private static final JB_STYLE:Z = true

.field private static final JOIN_GROUP:Ljava/lang/Boolean;

.field private static final MAX_DEVICE_NAME_LENGTH:I = 0x20

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI_P2P"

.field private static final NFC_INTERFACE_DISCOVER_RETRY:I = 0x3

.field private static final NFC_INTERFACE_DISCOVER_TIMEOUT:I = 0x23036

.field private static final NFC_INTERFACE_DISCOVER_TIME_MS:I = 0x2710

.field private static final NFC_P2P_TAG_DETECT:Ljava/lang/String; = "android.btopp.intent.action.P2P_TAG_DETECT"

.field private static final NFC_REQUEST_TIMED_OUT:I = 0x23032

.field private static final NO_RELOAD:Ljava/lang/Boolean;

.field public static final P2P_CONNECTION_CHANGED:I = 0x2300b

.field public static final P2P_ENABLE_PENDING:I = 0x2300a

.field private static final P2P_EXPIRATION_TIME:I = 0x5

.field private static final P2P_GROUP_STARTED_TIMED_OUT:I = 0x23034

.field private static final P2P_INVITATION_WAKELOCK_DURATION:I = 0x7530

.field private static final P2P_LISTEN_EXPIRATION_TIME:I = 0x2

.field private static final P2P_LISTEN_OFFLOADING_CHAN_NUM:I = 0x1869f

.field private static final P2P_LISTEN_OFFLOADING_COUNT:I = 0x4

.field private static final P2P_LISTEN_OFFLOADING_FIND_TIMEOUT:I = 0x1

.field private static final P2P_LISTEN_OFFLOADING_INTERVAL:I = 0x7918

.field private static final PEER_CONNECTION_USER_ACCEPT:I = 0x23002

.field private static final PEER_CONNECTION_USER_REJECT:I = 0x23003

.field private static final PREFIX_PHONE:Ljava/lang/String; = "[Phone] "

.field private static final PREFIX_TABLET:Ljava/lang/String; = "[Tablet] "

.field private static final RELOAD:Ljava/lang/Boolean;

.field private static final SERVER_ADDRESS:Ljava/lang/String; = "192.168.49.1"

.field public static final SET_COUNTRY_CODE:I = 0x23010

.field public static final SET_MIRACAST_MODE:I = 0x2300e

.field private static final SIDESYNC_ACTION_SINK_CONNECTED:Ljava/lang/String; = "com.sec.android.sidesync.sink.SIDESYNC_CONNECTED"

.field private static final SIDESYNC_ACTION_SINK_DESTROYED:Ljava/lang/String; = "com.sec.android.sidesync.sink.SERVICE_DESTROY"

.field private static final SIDESYNC_ACTION_SOURCE_CONNECTED:Ljava/lang/String; = "com.sec.android.sidesync.source.SIDESYNC_CONNECTED"

.field private static final SIDESYNC_ACTION_SOURCE_DESTROYED:Ljava/lang/String; = "com.sec.android.sidesync.source.SERVICE_DESTROY"

.field private static final TAG:Ljava/lang/String; = "WifiP2pService"

.field private static final TIME_ELAPSED_AFTER_CONNECTED:I = 0x23035

.field public static final WIFI_ENABLE_PROCEED:I = 0x23013

.field private static hash2_byte:[B

.field private static hash_byte:[B

.field private static intentValue:I

.field private static mDisableP2pTimeoutIndex:I

.field private static mGroupCreatingTimeoutIndex:I

.field private static mNfcInterfaceDiscTimeoutIndex:I

.field private static mWpsSkip:Z

.field private static numofclients:I


# instance fields
.field private idxIcon:I

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mActivityMgr:Landroid/app/ActivityManager;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAutonomousGroup:Z

.field private mClientHandler:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;

.field private mClientInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectedDevicesCnt:I

.field private mConnectedNotification:Landroid/app/Notification;

.field private mContext:Landroid/content/Context;

.field private mCpuBooster:Landroid/os/DVFSHelper;

.field private mDelayedDiscoverPeers:Z

.field private mDelayedDiscoverPeersArg:I

.field private mDelayedDiscoverPeersCmd:I

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mDiscoveryBlocked:Z

.field private mDiscoveryPostponed:Z

.field private mDiscoveryStarted:Z

.field private mForegroundAppMessenger:Landroid/os/Messenger;

.field private mForegroundAppPkgName:Ljava/lang/String;

.field private mInterface:Ljava/lang/String;

.field private mInvitationDialog:Landroid/app/AlertDialog;

.field private mInvitationMsg:Landroid/widget/TextView;

.field private mJoinExistingGroup:Z

.field private mLOCount:I

.field private mLOTimerIntent:Landroid/app/PendingIntent;

.field private mLapseTime:I

.field private mLastSetCountryCode:Ljava/lang/String;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mListenOffloading:Z

.field private mMaximumConnectionDialog:Landroid/app/AlertDialog;

.field private mNetworkAgent:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkAgent;

.field private final mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

.field private mNetworkFactory:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNfcDevicePw:Ljava/lang/String;

.field private mNfcDevicePwId:Ljava/lang/String;

.field private mNfcHashkey:Ljava/lang/String;

.field private mNfcP2pChannel:I

.field private mNfcP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mNfcTriggered:Z

.field private mNotification:Landroid/app/Notification;

.field mNwService:Landroid/os/INetworkManagementService;

.field private mP2pInfoStr:Ljava/lang/String;

.field private mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

.field private final mP2pSupported:Z

.field public mP2pTrafficPoller:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

.field private mPersistentGroup:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mServiceDiscReqId:Ljava/lang/String;

.field private mServiceTransactionId:B

.field private mSoundNotification:Landroid/app/Notification;

.field private mTemporarilyDisconnectedWifi:Z

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mTimerIntent:Landroid/app/PendingIntent;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWfdDialog:Z

.field private mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiApState:I

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiState:I

.field private mWpsTimer:Landroid/os/CountDownTimer;

.field pin:Landroid/widget/EditText;

.field t_dialog:Landroid/app/AlertDialog;

.field private userRejected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->JOIN_GROUP:Ljava/lang/Boolean;

    .line 203
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->FORM_GROUP:Ljava/lang/Boolean;

    .line 205
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->RELOAD:Ljava/lang/Boolean;

    .line 206
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->NO_RELOAD:Ljava/lang/Boolean;

    .line 210
    sput v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    .line 215
    sput v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDisableP2pTimeoutIndex:I

    .line 312
    sput v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNfcInterfaceDiscTimeoutIndex:I

    .line 321
    sput v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    .line 322
    sput v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    .line 395
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "192.168.49.100"

    aput-object v1, v0, v2

    const-string v1, "192.168.49.199"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DHCP_RANGE:[Ljava/lang/String;

    .line 402
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hash_byte:[B

    .line 405
    new-array v0, v4, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hash2_byte:[B

    return-void

    .line 402
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 405
    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 589
    invoke-direct {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkAgent:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkAgent;

    .line 192
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    .line 196
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiState:I

    .line 197
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiApState:I

    .line 199
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInvitationDialog:Landroid/app/AlertDialog;

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMaximumConnectionDialog:Landroid/app/AlertDialog;

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->t_dialog:Landroid/app/AlertDialog;

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->pin:Landroid/widget/EditText;

    .line 339
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryBlocked:Z

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryPostponed:Z

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWfdDialog:Z

    .line 374
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    .line 381
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;

    .line 416
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->idxIcon:I

    .line 422
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNfcHashkey:Ljava/lang/String;

    .line 423
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNfcDevicePwId:Ljava/lang/String;

    .line 424
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNfcDevicePw:Ljava/lang/String;

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNfcTriggered:Z

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPersistentGroup:Z

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->userRejected:Z

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDelayedDiscoverPeers:Z

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mListenOffloading:Z

    .line 440
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLOCount:I

    .line 591
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "@android:style/Theme.DeviceDefault.Light"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 592
    .local v9, "resId":I
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    .line 595
    const-string v0, "p2p0"

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInterface:Ljava/lang/String;

    .line 596
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mActivityMgr:Landroid/app/ActivityManager;

    .line 598
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.direct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pSupported:Z

    .line 601
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 602
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 603
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 605
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 607
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "p2p-wlan0-0"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pTrafficPoller:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    .line 616
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 617
    new-instance v12, Landroid/content/Intent;

    const-string v0, "android.net.wifi.p2p.STOPFIND_TIMER_EXPIRED"

    const/4 v1, 0x0

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 618
    .local v12, "timerIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTimerIntent:Landroid/app/PendingIntent;

    .line 620
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.samsung.android.net.wifi.p2p.LO_TIMER_EXPIRED"

    const/4 v1, 0x0

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 622
    .local v8, "loTimerIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLOTimerIntent:Landroid/app/PendingIntent;

    .line 626
    :try_start_0
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "WIFI_P2P"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 627
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v11

    .line 629
    .local v11, "supportedCPUFreqTable":[I
    if-eqz v11, :cond_3

    .line 630
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget v3, v11, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    .end local v11    # "supportedCPUFreqTable":[I
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 641
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const-string v1, "1-0050F204-9"

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 646
    :goto_1
    new-instance v13, Landroid/os/HandlerThread;

    const-string v0, "WifiP2pService"

    invoke-direct {v13, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 647
    .local v13, "wifiP2pThread":Landroid/os/HandlerThread;
    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    .line 648
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientHandler:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;

    .line 650
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string v1, "WifiP2pService"

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pSupported:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;Landroid/os/Looper;Z)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .line 651
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->start()V

    .line 653
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0xd

    const/4 v2, 0x0

    const-string v3, "WIFI_P2P"

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 654
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 655
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 656
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 657
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    .line 658
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    .line 659
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLinkProperties:Landroid/net/LinkProperties;

    .line 661
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 662
    .local v10, "ssid":Ljava/lang/String;
    if-nez v10, :cond_1

    .line 663
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 666
    :cond_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 667
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getPersistedDeviceName()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Ljava/lang/String;

    move-result-object v10

    .line 668
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_p2p_device_name"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 671
    :cond_2
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 672
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 673
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 674
    const-string v0, "android.net.wifi.p2p.STOPFIND_TIMER_EXPIRED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    const-string v0, "com.samsung.android.net.wifi.p2p.LO_TIMER_EXPIRED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 678
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    const-string v0, "edm.intent.action.internal.RESTRICTION_DISABLE_WFD"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    const-string v0, "com.sec.android.sidesync.source.SIDESYNC_CONNECTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 683
    const-string v0, "com.sec.android.sidesync.sink.SIDESYNC_CONNECTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 684
    const-string v0, "com.sec.android.sidesync.source.SERVICE_DESTROY"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 685
    const-string v0, "com.sec.android.sidesync.sink.SERVICE_DESTROY"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 686
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 687
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiStateReceiver;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;)V

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 689
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 701
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$2;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$2;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settings.wifi.p2p.SETTINGS_STRATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 722
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$3;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$3;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 730
    return-void

    .line 632
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v10    # "ssid":Ljava/lang/String;
    .end local v13    # "wifiP2pThread":Landroid/os/HandlerThread;
    .restart local v11    # "supportedCPUFreqTable":[I
    :cond_3
    :try_start_1
    const-string v0, "WifiP2pService"

    const-string v1, "supportedCPUFreqTable = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 635
    .end local v11    # "supportedCPUFreqTable":[I
    :catch_0
    move-exception v6

    .line 636
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCpuBooster:Landroid/os/DVFSHelper;

    goto/16 :goto_0

    .line 643
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->setProp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10902(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12800()I
    .locals 1

    .prologue
    .line 170
    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$12804()I
    .locals 1

    .prologue
    .line 170
    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPersistentGroup:Z

    return v0
.end method

.method static synthetic access$14802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPersistentGroup:Z

    return p1
.end method

.method static synthetic access$14900()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->NO_RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$15200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/DhcpStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$15202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$16800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    return v0
.end method

.method static synthetic access$16802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryBlocked:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryBlocked:Z

    return p1
.end method

.method static synthetic access$17200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object v0
.end method

.method static synthetic access$17202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/wifi/WifiManager$WifiLock;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager$WifiLock;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object p1
.end method

.method static synthetic access$17600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnectedDevicesCnt:I

    return v0
.end method

.method static synthetic access$17602(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnectedDevicesCnt:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryPostponed:Z

    return v0
.end method

.method static synthetic access$18000()Z
    .locals 1

    .prologue
    .line 170
    sget-boolean v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWpsSkip:Z

    return v0
.end method

.method static synthetic access$18002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 170
    sput-boolean p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWpsSkip:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryPostponed:Z

    return p1
.end method

.method static synthetic access$18600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/DhcpResults;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpResults:Landroid/net/DhcpResults;

    return-object v0
.end method

.method static synthetic access$18602(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/net/DhcpResults;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpResults:Landroid/net/DhcpResults;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkFactory:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkFactory:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;

    return-object p1
.end method

.method static synthetic access$20200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/os/DVFSHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCpuBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic access$21700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkAgent:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkAgent;

    return-object v0
.end method

.method static synthetic access$21702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkAgent;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkAgent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkAgent;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkAgent:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkAgent;

    return-object p1
.end method

.method static synthetic access$21800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$21900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DHCP_RANGE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$22000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMaximumConnectionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$22002(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMaximumConnectionDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCm:Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method static synthetic access$22100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLapseTime:I

    return v0
.end method

.method static synthetic access$22102(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLapseTime:I

    return p1
.end method

.method static synthetic access$22106(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLapseTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLapseTime:I

    return v0
.end method

.method static synthetic access$22200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInvitationMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$22202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInvitationMsg:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$22300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$22400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$22402(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$22600()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$22700()Z
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->isTablet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$22800()[B
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hash_byte:[B

    return-object v0
.end method

.method static synthetic access$22802([B)[B
    .locals 0
    .param p0, "x0"    # [B

    .prologue
    .line 170
    sput-object p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hash_byte:[B

    return-object p0
.end method

.method static synthetic access$22900()[B
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hash2_byte:[B

    return-object v0
.end method

.method static synthetic access$22902([B)[B
    .locals 0
    .param p0, "x0"    # [B

    .prologue
    .line 170
    sput-object p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->hash2_byte:[B

    return-object p0
.end method

.method static synthetic access$23000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->idxIcon:I

    return v0
.end method

.method static synthetic access$23002(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->idxIcon:I

    return p1
.end method

.method static synthetic access$23100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$23200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-byte v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$23202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;B)B
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # B

    .prologue
    .line 170
    iput-byte p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    return p1
.end method

.method static synthetic access$23204(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-byte v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$23300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnectedNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$23302(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/app/Notification;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnectedNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$23400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mSoundNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$23402(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/app/Notification;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mSoundNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$23500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->auditLog(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$24000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mForegroundAppMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$24002(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mForegroundAppMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$24100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mForegroundAppPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24102(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mForegroundAppPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$24200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mActivityMgr:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;ZLjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->auditLog(ZLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->userRejected:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->userRejected:Z

    return p1
.end method

.method static synthetic access$4600()I
    .locals 1

    .prologue
    .line 170
    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDisableP2pTimeoutIndex:I

    return v0
.end method

.method static synthetic access$4604()I
    .locals 1

    .prologue
    .line 170
    sget v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDisableP2pTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDisableP2pTimeoutIndex:I

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDelayedDiscoverPeersCmd:I

    return v0
.end method

.method static synthetic access$5602(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDelayedDiscoverPeersCmd:I

    return p1
.end method

.method static synthetic access$5700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDelayedDiscoverPeersArg:I

    return v0
.end method

.method static synthetic access$5702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDelayedDiscoverPeersArg:I

    return p1
.end method

.method static synthetic access$5800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDelayedDiscoverPeers:Z

    return v0
.end method

.method static synthetic access$5802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDelayedDiscoverPeers:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiState:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiState:I

    return p1
.end method

.method static synthetic access$6900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiApState:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiApState:I

    return p1
.end method

.method static synthetic access$7700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWfdDialog:Z

    return v0
.end method

.method static synthetic access$7702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWfdDialog:Z

    return p1
.end method

.method static synthetic access$7800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInvitationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$7802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInvitationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$7900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z

    return v0
.end method

.method static synthetic access$7902(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLOCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLOCount:I

    return p1
.end method

.method static synthetic access$808(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLOCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLOCount:I

    return v0
.end method

.method static synthetic access$8200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mListenOffloading:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mListenOffloading:Z

    return p1
.end method

.method static synthetic access$9300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTimerIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLastSetCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9502(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLastSetCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mLOTimerIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWpsTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$9702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWpsTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$9800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAutonomousGroup:Z

    return v0
.end method

.method static synthetic access$9802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAutonomousGroup:Z

    return p1
.end method

.method static synthetic access$9900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mJoinExistingGroup:Z

    return v0
.end method

.method static synthetic access$9902(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mJoinExistingGroup:Z

    return p1
.end method

.method private auditLog(ZLjava/lang/String;)V
    .locals 1
    .param p1, "outcome"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 6113
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->auditLog(ZLjava/lang/String;I)V

    .line 6114
    return-void
.end method

.method private auditLog(ZLjava/lang/String;I)V
    .locals 5
    .param p1, "outcome"    # Z
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "group"    # I

    .prologue
    .line 6118
    :try_start_0
    const-string v3, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 6119
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6120
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "severity"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6121
    const-string v3, "group"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6122
    const-string v3, "outcome"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6123
    const-string v3, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6124
    const-string v3, "component"

    const-string v4, "WifiP2pServiceImpl"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6125
    const-string v3, "message"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6126
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6130
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 6127
    :catch_0
    move-exception v1

    .line 6128
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "WifiP2pService"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkConnectivityInternalPermission()I
    .locals 2

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private checkLocationHardwarePermission()I
    .locals 2

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    return-void
.end method

.method private enforceConnectivityInternalOrLocationHardwarePermission()V
    .locals 1

    .prologue
    .line 1062
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->checkConnectivityInternalPermission()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->checkLocationHardwarePermission()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceConnectivityInternalPermission()V

    .line 1066
    :cond_0
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    return-void
.end method

.method private static isTablet()Z
    .locals 2

    .prologue
    .line 6147
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6148
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendPingForArpUpdate(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 6135
    if-eqz p1, :cond_0

    .line 6136
    const/16 v1, 0x7d0

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6137
    const-string v1, "WifiP2pService"

    const-string v2, "sendPingForArpUpdate (SUCCESS)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6144
    :cond_0
    :goto_0
    return-void

    .line 6139
    :cond_1
    const-string v1, "WifiP2pService"

    const-string v2, "sendPingForArpUpdate (FAILED)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6141
    :catch_0
    move-exception v0

    .line 6142
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "WifiP2pService"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setProp(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 852
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v1, v2

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 890
    const-string v1, "wlan.p2p.chkintent"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const-string v1, "wlan.p2p.numclient"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :goto_1
    return-void

    .line 852
    :sswitch_0
    const-string v3, "sscon"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v1, "ssdis"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "sicon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "sidis"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "lcdon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "lcdoff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "apstacon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "apstadis"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "groupexit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    .line 854
    :pswitch_0
    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    or-int/lit8 v1, v1, 0x2

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    .line 855
    const-string v1, "wlan.p2p.chkintent"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 894
    :catch_0
    move-exception v0

    .line 895
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiP2pService"

    const-string v2, "setprop for GOPS is failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 858
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    and-int/lit8 v1, v1, -0x3

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    .line 859
    const-string v1, "wlan.p2p.chkintent"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 862
    :pswitch_2
    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    or-int/lit8 v1, v1, 0x4

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    .line 863
    const-string v1, "wlan.p2p.chkintent"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 866
    :pswitch_3
    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    and-int/lit8 v1, v1, -0x5

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    .line 867
    const-string v1, "wlan.p2p.chkintent"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 870
    :pswitch_4
    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    or-int/lit8 v1, v1, 0x8

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    .line 871
    const-string v1, "wlan.p2p.chkintent"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 874
    :pswitch_5
    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    and-int/lit8 v1, v1, -0x9

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    .line 875
    const-string v1, "wlan.p2p.chkintent"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->intentValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 878
    :pswitch_6
    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    if-ltz v1, :cond_1

    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    .line 879
    :cond_1
    const-string v1, "wlan.p2p.numclient"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 882
    :pswitch_7
    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    if-lez v1, :cond_2

    sget v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    .line 883
    :cond_2
    const-string v1, "wlan.p2p.numclient"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 886
    :pswitch_8
    const/4 v1, 0x0

    sput v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    .line 887
    const-string v1, "wlan.p2p.numclient"

    sget v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->numofclients:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 852
    :sswitch_data_0
    .sparse-switch
        -0x585ca7e3 -> :sswitch_8
        -0x4212637e -> :sswitch_5
        0x620706c -> :sswitch_4
        0x685cb6c -> :sswitch_2
        0x685ce78 -> :sswitch_3
        0x68a5722 -> :sswitch_0
        0x68a5a2e -> :sswitch_1
        0x4bd97c51 -> :sswitch_6
        0x4bd97f5d -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public connectivityServiceReady()V
    .locals 2

    .prologue
    .line 760
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 761
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    .line 762
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiP2pService from from pid="

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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    :goto_0
    return-void

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutonomousGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAutonomousGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mJoinExistingGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mJoinExistingGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDiscoveryStarted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTemporarilyDisconnectedWifi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceDiscReqId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1121
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pTrafficPoller:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1073
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceAccessPermission()V

    .line 1074
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceChangePermission()V

    .line 1075
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientHandler:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getP2pInfoFromNdef([BI)Ljava/lang/String;
    .locals 27
    .param p1, "payload"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 942
    move/from16 v12, p2

    .line 943
    .local v12, "i":I
    const/16 v21, 0x0

    .local v21, "type":I
    const/4 v13, 0x0

    .line 944
    .local v13, "len":I
    aget-byte v22, p1, v12

    shl-int/lit8 v22, v22, 0x8

    add-int/lit8 v23, v12, 0x1

    aget-byte v23, p1, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    or-int v20, v22, v23

    .line 945
    .local v20, "totalLength":I
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 946
    .local v7, "devCapa":Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    .line 947
    .local v11, "groupCapa":Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 948
    .local v6, "devAddr":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 949
    .local v5, "configMethod":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    .line 950
    .local v10, "devType":Ljava/lang/String;
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    .line 951
    .local v9, "devName":Ljava/lang/String;
    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    .line 953
    .local v16, "ssid":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x2

    .line 954
    :goto_0
    add-int v22, p2, v20

    move/from16 v0, v22

    if-ge v12, v0, :cond_5

    .line 955
    aget-byte v21, p1, v12

    .line 956
    add-int/lit8 v22, v12, 0x1

    aget-byte v22, p1, v22

    shl-int/lit8 v22, v22, 0x8

    add-int/lit8 v23, v12, 0x2

    aget-byte v23, p1, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    or-int v13, v22, v23

    .line 957
    add-int/lit8 v12, v12, 0x3

    .line 958
    const-string v22, "WifiP2pService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "type : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", len : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 960
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "0x%02x"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-byte v26, p1, v12

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->reverseByte(B)B

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 961
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "0x%02x"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    add-int/lit8 v26, v12, 0x1

    aget-byte v26, p1, v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->reverseByte(B)B

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 962
    add-int/2addr v12, v13

    goto/16 :goto_0

    .line 964
    :cond_0
    const/16 v22, 0xd

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 965
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02x:%02x:%02x:%02x:%02x:%02x"

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-byte v26, p1, v12

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    add-int/lit8 v26, v12, 0x1

    aget-byte v26, p1, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    add-int/lit8 v26, v12, 0x2

    aget-byte v26, p1, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    add-int/lit8 v26, v12, 0x3

    aget-byte v26, p1, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x4

    add-int/lit8 v26, v12, 0x4

    aget-byte v26, p1, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x5

    add-int/lit8 v26, v12, 0x5

    aget-byte v26, p1, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 967
    add-int/lit8 v12, v12, 0x6

    .line 968
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "0x%02x%02x"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-byte v26, p1, v12

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    add-int/lit8 v26, v12, 0x1

    aget-byte v26, p1, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 969
    add-int/lit8 v12, v12, 0x2

    .line 970
    aget-byte v22, p1, v12

    shl-int/lit8 v22, v22, 0x8

    add-int/lit8 v23, v12, 0x1

    aget-byte v23, p1, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    or-int v4, v22, v23

    .line 971
    .local v4, "categoryId":I
    const-string v22, "%02x%02x%02x%02x"

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    add-int/lit8 v25, v12, 0x2

    aget-byte v25, p1, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v25, v12, 0x3

    aget-byte v25, p1, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    add-int/lit8 v25, v12, 0x4

    aget-byte v25, p1, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x3

    add-int/lit8 v25, v12, 0x5

    aget-byte v25, p1, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 972
    .local v14, "oui":Ljava/lang/String;
    add-int/lit8 v22, v12, 0x6

    aget-byte v22, p1, v22

    shl-int/lit8 v22, v22, 0x8

    add-int/lit8 v23, v12, 0x7

    aget-byte v23, p1, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    or-int v17, v22, v23

    .line 973
    .local v17, "subCategoryId":I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%d-%s-%d"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v14, v24, v25

    const/16 v25, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 974
    add-int/lit8 v12, v12, 0xa

    .line 975
    aget-byte v22, p1, v12

    shl-int/lit8 v22, v22, 0x8

    add-int/lit8 v23, v12, 0x1

    aget-byte v23, p1, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    or-int v19, v22, v23

    .line 976
    .local v19, "subType":I
    add-int/lit8 v22, v12, 0x2

    aget-byte v22, p1, v22

    shl-int/lit8 v22, v22, 0x8

    add-int/lit8 v23, v12, 0x3

    aget-byte v23, p1, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    or-int v18, v22, v23

    .line 977
    .local v18, "subLen":I
    add-int/lit8 v12, v12, 0x4

    .line 978
    const/16 v22, 0x1011

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 979
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v12, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 981
    :cond_1
    add-int v12, v12, v18

    .line 982
    goto/16 :goto_0

    .line 983
    .end local v4    # "categoryId":I
    .end local v14    # "oui":Ljava/lang/String;
    .end local v17    # "subCategoryId":I
    .end local v18    # "subLen":I
    .end local v19    # "subType":I
    :cond_2
    const/16 v22, 0x13

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 984
    add-int/lit8 v22, v12, 0x4

    aget-byte v22, p1, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNfcP2pChannel:I

    .line 985
    add-int/lit8 v12, v12, 0x6

    .line 986
    const-string v22, "WifiP2pService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Channel : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNfcP2pChannel:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 988
    :cond_3
    const/16 v22, 0xf

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 989
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/lang/String;

    add-int/lit8 v24, v12, 0x6

    add-int/lit8 v25, v13, -0x6

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 990
    add-int/2addr v12, v13

    goto/16 :goto_0

    .line 993
    :cond_4
    add-int/2addr v12, v13

    goto/16 :goto_0

    .line 997
    :cond_5
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "P2P-DEVICE-FOUND"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " p2p_dev_addr="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " pri_dev_type="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " name=\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " config_methods="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " dev_capab="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " group_capab="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1004
    .local v8, "devData":Ljava/lang/String;
    new-instance v22, Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, v22

    invoke-direct {v0, v8}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNfcP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1006
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " freq="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNfcP2pChannel:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " p2p_dev_addr="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " name=\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " ssid=\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " config_methods="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " dev_capab="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " group_capab="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1015
    .local v15, "retData":Ljava/lang/String;
    return-object v15
.end method

.method public getP2pStateMachineMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1084
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceConnectivityInternalOrLocationHardwarePermission()V

    .line 1085
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceAccessPermission()V

    .line 1086
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceChangePermission()V

    .line 1087
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getPasswordInfoFromNdef([BI)I
    .locals 11
    .param p1, "payload"    # [B
    .param p2, "offset"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 910
    move v0, p2

    .line 911
    .local v0, "i":I
    const/4 v4, 0x0

    .local v4, "type":I
    const/4 v2, 0x0

    .line 913
    .local v2, "len":I
    aget-byte v5, p1, v0

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v3, v5, v6

    .line 915
    .local v3, "totalLength":I
    add-int/lit8 v0, v0, 0x2

    .line 916
    :goto_0
    if-ge v0, v3, :cond_2

    .line 917
    aget-byte v5, p1, v0

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v4, v5, v6

    .line 918
    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v2, v5, v6

    .line 919
    add-int/lit8 v0, v0, 0x4

    .line 920
    const-string v5, "WifiP2pService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", len : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const/16 v5, 0x102c

    if-ne v4, v5, :cond_3

    .line 922
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    const/16 v5, 0x20

    if-ge v1, v5, :cond_0

    .line 923
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNfcHashkey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02x"

    new-array v7, v10, [Ljava/lang/Object;

    add-int v8, v0, v1

    aget-byte v8, p1, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNfcHashkey:Ljava/lang/String;

    .line 922
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 925
    :cond_0
    add-int/lit8 v0, v0, 0x20

    .line 926
    const/4 v1, 0x0

    :goto_2
    const/4 v5, 0x2

    if-ge v1, v5, :cond_1

    .line 927
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNfcDevicePwId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%x"

    new-array v7, v10, [Ljava/lang/Object;

    add-int v8, v0, v1

    aget-byte v8, p1, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNfcDevicePwId:Ljava/lang/String;

    .line 926
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 928
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 929
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNfcDevicePw:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v2, -0x22

    invoke-direct {v6, p1, v0, v7}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNfcDevicePw:Ljava/lang/String;

    .line 930
    add-int/lit8 v5, v2, -0x22

    add-int/2addr v0, v5

    .line 938
    .end local v1    # "index":I
    :cond_2
    add-int/lit8 v5, v3, 0x2

    return v5

    .line 934
    :cond_3
    add-int/2addr v0, v2

    goto/16 :goto_0
.end method

.method public getWifiP2pState()I
    .locals 1

    .prologue
    .line 1040
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceAccessPermission()V

    .line 1041
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceChangePermission()V

    .line 1042
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pState:I
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)I

    move-result v0

    return v0
.end method

.method public initP2pNfcData()V
    .locals 1

    .prologue
    .line 901
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pInfoStr:Ljava/lang/String;

    .line 902
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNfcHashkey:Ljava/lang/String;

    .line 903
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNfcDevicePwId:Ljava/lang/String;

    .line 904
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNfcDevicePw:Ljava/lang/String;

    .line 905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNfcTriggered:Z

    .line 906
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNfcP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 907
    return-void
.end method

.method public isInactiveState()Z
    .locals 1

    .prologue
    .line 1034
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceAccessPermission()V

    .line 1035
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceChangePermission()V

    .line 1036
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mIsInactiveState:Z
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Z

    move-result v0

    return v0
.end method

.method public reverseByte(B)B
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 1019
    invoke-static {p1}, Ljava/lang/Integer;->reverse(I)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    return v0
.end method

.method public setMiracastMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 1100
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->enforceConnectivityInternalPermission()V

    .line 1101
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v1, 0x2300e

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(II)V

    .line 1102
    return-void
.end method
