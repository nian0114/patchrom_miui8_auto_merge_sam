.class public Landroid/net/wifi/p2p/WifiP2pManager;
.super Ljava/lang/Object;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pManager$Channel;,
        Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    }
.end annotation


# static fields
.field public static final ADD_LOCAL_SERVICE:I = 0x2201c

.field public static final ADD_LOCAL_SERVICE_FAILED:I = 0x2201d

.field public static final ADD_LOCAL_SERVICE_SUCCEEDED:I = 0x2201e

.field public static final ADD_SERVICE_REQUEST:I = 0x22025

.field public static final ADD_SERVICE_REQUEST_FAILED:I = 0x22026

.field public static final ADD_SERVICE_REQUEST_SUCCEEDED:I = 0x22027

.field public static final APP_PKG_BUNDLE_KEY:Ljava/lang/String; = "appPkgName"

.field private static final BASE:I = 0x22000

.field public static final BUSY:I = 0x2

.field public static final CANCEL_CONNECT:I = 0x2200a

.field public static final CANCEL_CONNECT_FAILED:I = 0x2200b

.field public static final CANCEL_CONNECT_SUCCEEDED:I = 0x2200c

.field public static final CLEAR_LOCAL_SERVICES:I = 0x22022

.field public static final CLEAR_LOCAL_SERVICES_FAILED:I = 0x22023

.field public static final CLEAR_LOCAL_SERVICES_SUCCEEDED:I = 0x22024

.field public static final CLEAR_SERVICE_REQUESTS:I = 0x2202b

.field public static final CLEAR_SERVICE_REQUESTS_FAILED:I = 0x2202c

.field public static final CLEAR_SERVICE_REQUESTS_SUCCEEDED:I = 0x2202d

.field public static final CONNECT:I = 0x22007

.field public static final CONNECTION_REQUESTED:I = 0x22077

.field public static final CONNECT_FAILED:I = 0x22008

.field public static final CONNECT_INVITE_LIST:I = 0x2206e

.field public static final CONNECT_PERSISTENT:I = 0x22071

.field public static final CONNECT_SUCCEEDED:I = 0x22009

.field public static final CREATE_GROUP:I = 0x2200d

.field public static final CREATE_GROUP_FAILED:I = 0x2200e

.field public static final CREATE_GROUP_SUCCEEDED:I = 0x2200f

.field private static final DBG:Z

.field public static final DELETE_PERSISTENT_GROUP:I = 0x22036

.field public static final DELETE_PERSISTENT_GROUP_FAILED:I = 0x22037

.field public static final DELETE_PERSISTENT_GROUP_SUCCEEDED:I = 0x22038

.field public static final DIALOG_LISTENER_ATTACHED:I = 0x22076

.field public static final DIALOG_LISTENER_DETACHED:I = 0x22075

.field public static final DISABLE_P2P:I = 0x22068

.field public static final DISABLE_P2P_SUCCEEDED:I = 0x22069

.field public static final DISCOVER_PEERS:I = 0x22001

.field public static final DISCOVER_PEERS_FAILED:I = 0x22002

.field public static final DISCOVER_PEERS_SUCCEEDED:I = 0x22003

.field public static final DISCOVER_PEERS_WITH_FLUSH:I = 0x2206b

.field public static final DISCOVER_SERVICES:I = 0x2202e

.field public static final DISCOVER_SERVICES_FAILED:I = 0x2202f

.field public static final DISCOVER_SERVICES_SUCCEEDED:I = 0x22030

.field public static final ENABLE_P2P:I = 0x22065

.field public static final ENABLE_P2P_SUCCEEDED:I = 0x22067

.field public static final ERROR:I = 0x0

.field public static final EXTRA_CONNECTED_DEV_ADDR:Ljava/lang/String; = "connectedDevAddress"

.field public static final EXTRA_CONNECTED_DEV_INTF_ADDR:Ljava/lang/String; = "connectedDevIntfAddress"

.field public static final EXTRA_DISCOVERY_STATE:Ljava/lang/String; = "discoveryState"

.field public static final EXTRA_HANDOVER_MESSAGE:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

.field public static final EXTRA_LINK_CAPABILITIES:Ljava/lang/String; = "linkCapabilities"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NFC_TRIGGERED:Ljava/lang/String; = "wifiP2pNfcTriggered"

.field public static final EXTRA_P2P_DEVICE_LIST:Ljava/lang/String; = "wifiP2pDeviceList"

.field public static final EXTRA_REQUEST_STATE:Ljava/lang/String; = "requestState"

.field public static final EXTRA_WIFI_P2P_DEVICE:Ljava/lang/String; = "wifiP2pDevice"

.field public static final EXTRA_WIFI_P2P_GROUP:Ljava/lang/String; = "p2pGroupInfo"

.field public static final EXTRA_WIFI_P2P_GROUP_INFO:Ljava/lang/String; = "p2pGroupInfo"

.field public static final EXTRA_WIFI_P2P_INFO:Ljava/lang/String; = "wifiP2pInfo"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_p2p_state"

.field public static final GET_HANDOVER_REQUEST:I = 0x2204b

.field public static final GET_HANDOVER_SELECT:I = 0x2204c

.field public static final INITIATOR_REPORT_NFC_HANDOVER:I = 0x2204e

.field public static final MAX_CLIENT_SUPPORT:I

.field public static final MIRACAST_DISABLED:I = 0x0

.field public static final MIRACAST_SINK:I = 0x2

.field public static final MIRACAST_SOURCE:I = 0x1

.field public static final NFC_TAG_INITIATED:I = 0x2208c

.field public static final NOT_IN_FOREGROUND:I = 0x4

.field public static final NO_SERVICE_REQUESTS:I = 0x3

.field public static final P2P_CONFIG_BUNDLE_KEY:Ljava/lang/String; = "wifiP2pConfig"

.field public static final P2P_DEV_BUNDLE_KEY:Ljava/lang/String; = "wifiP2pDevice"

.field public static final P2P_LISTEN:I = 0x2206c

.field public static final P2P_UNSUPPORTED:I = 0x1

.field public static final PING:I = 0x22031

.field public static final REMOVE_GROUP:I = 0x22010

.field public static final REMOVE_GROUP_FAILED:I = 0x22011

.field public static final REMOVE_GROUP_SUCCEEDED:I = 0x22012

.field public static final REMOVE_LOCAL_SERVICE:I = 0x2201f

.field public static final REMOVE_LOCAL_SERVICE_FAILED:I = 0x22020

.field public static final REMOVE_LOCAL_SERVICE_SUCCEEDED:I = 0x22021

.field public static final REMOVE_P2P_CLIENT:I = 0x22090

.field public static final REMOVE_P2P_CLIENT_FAILED:I = 0x22091

.field public static final REMOVE_P2P_CLIENT_SUCCEEDED:I = 0x22092

.field public static final REMOVE_SERVICE_REQUEST:I = 0x22028

.field public static final REMOVE_SERVICE_REQUEST_FAILED:I = 0x22029

.field public static final REMOVE_SERVICE_REQUEST_SUCCEEDED:I = 0x2202a

.field public static final REPORT_NFC_HANDOVER_FAILED:I = 0x22051

.field public static final REPORT_NFC_HANDOVER_SUCCEEDED:I = 0x22050

.field public static final REQUEST_CONFIG_LIST:I = 0x22072

.field public static final REQUEST_CONNECTION_INFO:I = 0x22015

.field public static final REQUEST_GROUP_INFO:I = 0x22017

.field public static final REQUEST_NFC_CONNECT:I = 0x22070

.field public static final REQUEST_PEERS:I = 0x22013

.field public static final REQUEST_PERSISTENT_GROUP_INFO:I = 0x22039

.field public static final RESET_DIALOG_LISTENER_BUNDLE_KEY:Ljava/lang/String; = "dialogResetFlag"

.field public static final RESPONDER_REPORT_NFC_HANDOVER:I = 0x2204f

.field public static final RESPONSE_CONFIG_LIST:I = 0x22073

.field public static final RESPONSE_CONNECTION_INFO:I = 0x22016

.field public static final RESPONSE_GET_HANDOVER_MESSAGE:I = 0x2204d

.field public static final RESPONSE_GROUP_INFO:I = 0x22018

.field public static final RESPONSE_PEERS:I = 0x22014

.field public static final RESPONSE_PERSISTENT_GROUP_INFO:I = 0x2203a

.field public static final RESPONSE_SERVICE:I = 0x22032

.field public static final SEC_COMMAND_ID_ADD_HISTORICAL_DUMPLOG:I = 0x22094

.field public static final SEC_COMMAND_ID_P2P_STOP_DISCOVERY_NO_FLUSH:I = 0x2208f

.field public static final SEC_COMMAND_ID_REJECT_CONNECT:I = 0x22082

.field public static final SEC_COMMAND_ID_SECONNECT_PREQ:I = 0x2208d

.field public static final SEC_COMMAND_ID_SECONNECT_PRESP:I = 0x2208e

.field public static final SEC_COMMAND_ID_SET_MIRACAST:I = 0x22093

.field public static final SET_CHANNEL:I = 0x22047

.field public static final SET_CHANNEL_FAILED:I = 0x22048

.field public static final SET_CHANNEL_SUCCEEDED:I = 0x22049

.field public static final SET_DEVICE_NAME:I = 0x22033

.field public static final SET_DEVICE_NAME_FAILED:I = 0x22034

.field public static final SET_DEVICE_NAME_SUCCEEDED:I = 0x22035

.field public static final SET_DIALOG_LISTENER:I = 0x22074

.field public static final SET_LISTEN_OFFLOADING:I = 0x22097

.field public static final SET_LISTEN_OFFLOADING_TIMER:I = 0x22096

.field public static final SET_P2P_TIMER:I = 0x2206d

.field public static final SET_STOPFIND_TIMER:I = 0x2206f

.field public static final SET_WFD_INFO:I = 0x2203b

.field public static final SET_WFD_INFO_FAILED:I = 0x2203c

.field public static final SET_WFD_INFO_SUCCEEDED:I = 0x2203d

.field public static final SHOW_PIN_REQUESTED:I = 0x22078

.field public static final START_LISTEN:I = 0x22041

.field public static final START_LISTEN_FAILED:I = 0x22042

.field public static final START_LISTEN_SUCCEEDED:I = 0x22043

.field public static final START_WPS:I = 0x2203e

.field public static final START_WPS_FAILED:I = 0x2203f

.field public static final START_WPS_SUCCEEDED:I = 0x22040

.field public static final STOP_DISCOVERY:I = 0x22004

.field public static final STOP_DISCOVERY_FAILED:I = 0x22005

.field public static final STOP_DISCOVERY_SUCCEEDED:I = 0x22006

.field public static final STOP_LISTEN:I = 0x22044

.field public static final STOP_LISTEN_FAILED:I = 0x22045

.field public static final STOP_LISTEN_SUCCEEDED:I = 0x22046

.field private static final TAG:Ljava/lang/String; = "WifiP2pManager"

.field public static final WIFI_P2P_CONNECTION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

.field public static final WIFI_P2P_DISCOVERY_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

.field public static final WIFI_P2P_DISCOVERY_STARTED:I = 0x2

.field public static final WIFI_P2P_DISCOVERY_STOPPED:I = 0x1

.field public static final WIFI_P2P_PEERS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.PEERS_CHANGED"

.field public static final WIFI_P2P_PERSISTENT_GROUPS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

.field public static final WIFI_P2P_REQUEST_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

.field public static final WIFI_P2P_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.STATE_CHANGED"

.field public static final WIFI_P2P_STATE_CONNECTED:I = 0x3

.field public static final WIFI_P2P_STATE_DISABLED:I = 0x1

.field public static final WIFI_P2P_STATE_ENABLED:I = 0x2

.field public static final WIFI_P2P_THIS_DEVICE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

.field public static final WPS_PIN_BUNDLE_KEY:Ljava/lang/String; = "wpsPin"


# instance fields
.field mService:Landroid/net/wifi/p2p/IWifiP2pManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 142
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/net/wifi/p2p/WifiP2pManager;->DBG:Z

    .line 188
    const-string v0, "4"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/IWifiP2pManager;)V
    .locals 0
    .param p1, "service"    # Landroid/net/wifi/p2p/IWifiP2pManager;

    .prologue
    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    .line 673
    return-void
.end method

.method private static checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 2
    .param p0, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .prologue
    .line 1171
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1172
    :cond_0
    return-void
.end method

.method private static checkP2pConfig(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 2
    .param p0, "c"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 1183
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1184
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1187
    :cond_1
    return-void
.end method

.method private static checkServiceInfo(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    .locals 2
    .param p0, "info"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 1175
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service info is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1176
    :cond_0
    return-void
.end method

.method private static checkServiceRequest(Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 2
    .param p0, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    .line 1179
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service request is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1180
    :cond_0
    return-void
.end method

.method private initalizeChannel(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Messenger;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 4
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .param p4, "messenger"    # Landroid/os/Messenger;

    .prologue
    const/4 v1, 0x0

    .line 1229
    if-nez p4, :cond_1

    move-object v0, v1

    .line 1236
    :cond_0
    :goto_0
    return-object v0

    .line 1231
    :cond_1
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)V

    .line 1232
    .local v0, "c":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p4}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1236
    goto :goto_0
.end method

.method private static sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V
    .locals 8
    .param p0, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p1, "f"    # Ljava/lang/String;

    .prologue
    .line 1190
    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Channel needs to be initialized"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1192
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1193
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1195
    .local v1, "currentTimeStamp":Ljava/lang/String;
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1196
    .local v3, "msg":Landroid/os/Message;
    const v4, 0x22094

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1198
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "extra_log"

    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiP2pManager."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " called by ---> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1202
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 1203
    return-void
.end method


# virtual methods
.method public addLocalService(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1459
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1460
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceInfo(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    .line 1461
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2201c

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1462
    return-void
.end method

.method public addServiceRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1609
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1610
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceRequest(Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    .line 1611
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22025

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1613
    return-void
.end method

.method public callSECApi(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Message;)I
    .locals 9
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 2074
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2075
    if-nez p2, :cond_1

    .line 2122
    :cond_0
    :goto_0
    return v5

    .line 2078
    :cond_1
    iget v7, p2, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 2119
    const-string v6, "WifiP2pManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p2, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2080
    :sswitch_0
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    const v7, 0x22082

    invoke-virtual {v5, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move v5, v6

    .line 2081
    goto :goto_0

    .line 2083
    :sswitch_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 2084
    .local v2, "req_msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2085
    .local v1, "req_bundle":Landroid/os/Bundle;
    const-string v7, "REQ_DATA"

    iget-object v5, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    const v5, 0x2208d

    iput v5, v2, Landroid/os/Message;->what:I

    .line 2087
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2088
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    move v5, v6

    .line 2089
    goto :goto_0

    .line 2091
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    .end local v2    # "req_msg":Landroid/os/Message;
    :sswitch_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 2092
    .local v4, "resp_msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2093
    .local v3, "resp_bundle":Landroid/os/Bundle;
    const-string v7, "RESP_DATA"

    iget-object v5, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    const v5, 0x2208e

    iput v5, v4, Landroid/os/Message;->what:I

    .line 2095
    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2096
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    move v5, v6

    .line 2097
    goto :goto_0

    .line 2099
    .end local v3    # "resp_bundle":Landroid/os/Bundle;
    .end local v4    # "resp_msg":Landroid/os/Message;
    :sswitch_3
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    const v7, 0x2208f

    invoke-virtual {v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0

    .line 2102
    :sswitch_4
    const/4 v0, -0x1

    .line 2103
    .local v0, "mode":I
    iget v7, p2, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_3

    .line 2104
    const/4 v0, 0x0

    .line 2109
    :cond_2
    :goto_1
    if-eq v0, v5, :cond_0

    .line 2111
    :try_start_0
    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v7, v0}, Landroid/net/wifi/p2p/IWifiP2pManager;->setMiracastMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 2112
    goto/16 :goto_0

    .line 2105
    :cond_3
    iget v7, p2, Landroid/os/Message;->arg1:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 2106
    const/4 v0, 0x1

    goto :goto_1

    .line 2107
    :cond_4
    iget v7, p2, Landroid/os/Message;->arg1:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 2108
    const/4 v0, 0x2

    goto :goto_1

    .line 2113
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 2078
    :sswitch_data_0
    .sparse-switch
        0x22082 -> :sswitch_0
        0x2208d -> :sswitch_1
        0x2208e -> :sswitch_2
        0x2208f -> :sswitch_3
        0x22093 -> :sswitch_4
    .end sparse-switch
.end method

.method public cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1335
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1336
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2200a

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1337
    return-void
.end method

.method public clearLocalServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1495
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1496
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22022

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1497
    return-void
.end method

.method public clearServiceRequests(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1647
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1648
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2202b

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1650
    return-void
.end method

.method public connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "freq"    # I
    .param p3, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p4, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 2045
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2046
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22071

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2, p3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2047
    return-void
.end method

.method public connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1318
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1319
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkP2pConfig(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 1320
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22007

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1321
    return-void
.end method

.method public connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfigList;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "configs"    # Landroid/net/wifi/p2p/WifiP2pConfigList;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1890
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1891
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2206e

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1892
    return-void
.end method

.method public createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1359
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1360
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2200d

    const/4 v2, -0x2

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1362
    return-void
.end method

.method public deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "netId"    # I
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1773
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1774
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22036

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1775
    return-void
.end method

.method public disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 2
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .prologue
    .line 1833
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1834
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22068

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1835
    sget-boolean v0, Landroid/net/wifi/p2p/WifiP2pManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    :cond_0
    return-void
.end method

.method public discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "channelNum"    # I
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1274
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1275
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22001

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "discoverPeers("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    .line 1277
    return-void
.end method

.method public discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1260
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1261
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22001

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1262
    const-string v0, "discoverPeers()"

    invoke-static {p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    .line 1263
    return-void
.end method

.method public discoverPeersWithFlush(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "timeout"    # I
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1846
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1847
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2206b

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1848
    const-string v0, "discoverPeersWithFlush()"

    invoke-static {p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    .line 1849
    return-void
.end method

.method public discoverServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "channelNum"    # I
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1583
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1584
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2202e

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "discoverServices("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    .line 1586
    return-void
.end method

.method public discoverServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1568
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1569
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2202e

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1570
    const-string v0, "discoverServices()"

    invoke-static {p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    .line 1571
    return-void
.end method

.method public enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 2
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .prologue
    .line 1817
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1818
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22065

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1819
    sget-boolean v0, Landroid/net/wifi/p2p/WifiP2pManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    :cond_0
    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 2010
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->getMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2012
    :goto_0
    return-object v1

    .line 2011
    :catch_0
    move-exception v0

    .line 2012
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNfcHandoverRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    .prologue
    .line 2145
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2146
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2204b

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2147
    return-void
.end method

.method public getNfcHandoverSelect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    .prologue
    .line 2155
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2156
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2204c

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2157
    return-void
.end method

.method public getP2pStateMachineMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 2134
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->getP2pStateMachineMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2136
    :goto_0
    return-object v1

    .line 2135
    :catch_0
    move-exception v0

    .line 2136
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    .prologue
    .line 1215
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->initalizeChannel(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Messenger;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    return-object v0
.end method

.method public initializeInternal(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    .prologue
    .line 1224
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->getP2pStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->initalizeChannel(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Messenger;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    return-object v0
.end method

.method public initiatorReportNfcHandover(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "handoverSelect"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 2164
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2166
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x2204e

    const/4 v3, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2169
    return-void
.end method

.method public isInactiveState()Z
    .locals 2

    .prologue
    .line 1928
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->isInactiveState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1930
    :goto_0
    return v1

    .line 1929
    :catch_0
    move-exception v0

    .line 1930
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiP2pConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1961
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v2}, Landroid/net/wifi/p2p/IWifiP2pManager;->getWifiP2pState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1962
    const/4 v1, 0x1

    .line 1966
    :cond_0
    :goto_0
    return v1

    .line 1965
    :catch_0
    move-exception v0

    .line 1966
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isWifiP2pEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1943
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v3}, Landroid/net/wifi/p2p/IWifiP2pManager;->getWifiP2pState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1948
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1946
    goto :goto_0

    .line 1947
    :catch_0
    move-exception v0

    .line 1948
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "enable"    # Z
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1408
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1409
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    if-eqz p2, :cond_0

    const v0, 0x22041

    :goto_0
    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1411
    return-void

    .line 1409
    :cond_0
    const v0, 0x22044

    goto :goto_0
.end method

.method public removeClient(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1400
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1401
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkP2pConfig(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 1402
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22090

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1403
    sget-boolean v0, Landroid/net/wifi/p2p/WifiP2pManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_0
    return-void
.end method

.method public removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1376
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1377
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22010

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1378
    sget-boolean v0, Landroid/net/wifi/p2p/WifiP2pManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_0
    return-void
.end method

.method public removeLocalService(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1478
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1479
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceInfo(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    .line 1480
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2201f

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1481
    return-void
.end method

.method public removeServiceRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1629
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1630
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceRequest(Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    .line 1631
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22028

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1633
    return-void
.end method

.method public requestConfigList(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;

    .prologue
    .line 2061
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2062
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22072

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2063
    return-void
.end method

.method public requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .prologue
    .line 1670
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1671
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22015

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1672
    return-void
.end method

.method public requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .prologue
    .line 1681
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1682
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22017

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1683
    return-void
.end method

.method public requestNfcConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1982
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1983
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22070

    const/4 v2, 0x1

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1984
    return-void
.end method

.method public requestNfcConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "enable"    # Z
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1998
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1999
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x22070

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2000
    return-void

    .line 1999
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestP2pListen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1903
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1904
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2206c

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1905
    return-void
.end method

.method public requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    .prologue
    .line 1659
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1660
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22013

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1661
    return-void
.end method

.method public requestPersistentGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;

    .prologue
    .line 1785
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1786
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22039

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1787
    return-void
.end method

.method public responderReportNfcHandover(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "handoverRequest"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 2177
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2179
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x2204f

    const/4 v3, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2182
    return-void
.end method

.method public setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "devName"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1692
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1693
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 1694
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    iput-object p2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1695
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x22033

    const/4 v3, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1696
    return-void
.end method

.method public setDialogListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    .prologue
    .line 1738
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1739
    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->setDialogListener(Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;)V
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$1100(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;)V

    .line 1746
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1747
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1748
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "appPkgName"

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    const-string v3, "dialogResetFlag"

    if-nez p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1750
    const v2, 0x22074

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1751
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1752
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 1753
    return-void

    .line 1749
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setDnsSdResponseListeners(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;)V
    .locals 0
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "servListener"    # Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;
    .param p3, "txtListener"    # Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    .prologue
    .line 1528
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1529
    # setter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$802(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

    .line 1530
    # setter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$902(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;)Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    .line 1531
    return-void
.end method

.method public setListenOffloading(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IIIILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "channel"    # I
    .param p3, "period"    # I
    .param p4, "interval"    # I
    .param p5, "count"    # I
    .param p6, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1873
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1874
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1875
    .local v0, "p2pLOParams":Landroid/os/Bundle;
    const-string v1, "channel"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1876
    const-string/jumbo v1, "period"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1877
    const-string/jumbo v1, "interval"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1878
    const-string v1, "count"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1879
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x22097

    const/4 v3, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p6}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1880
    return-void
.end method

.method public setListenOffloadingTimer(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Z)V
    .locals 3
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "start"    # Z

    .prologue
    .line 1860
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1861
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x22096

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 1862
    return-void

    .line 1861
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMiracastMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1800
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/IWifiP2pManager;->setMiracastMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1804
    :goto_0
    return-void

    .line 1801
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setServiceResponseListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;)V
    .locals 0
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    .prologue
    .line 1512
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1513
    # setter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$702(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    .line 1514
    return-void
.end method

.method public setStopfindTimer(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Z)V
    .locals 3
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "start"    # Z

    .prologue
    .line 1915
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1916
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x2206f

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 1917
    return-void

    .line 1916
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setUpnpServiceResponseListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;)V
    .locals 0
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    .prologue
    .line 1544
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1545
    # setter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$1002(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    .line 1546
    return-void
.end method

.method public setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "wfdInfo"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1708
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1709
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2203b

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1710
    return-void
.end method

.method public setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "lc"    # I
    .param p3, "oc"    # I
    .param p4, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1415
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1416
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1417
    .local v0, "p2pChannels":Landroid/os/Bundle;
    const-string/jumbo v1, "lc"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1418
    const-string/jumbo v1, "oc"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1419
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x22047

    const/4 v3, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1420
    return-void
.end method

.method public startWps(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/WpsInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "wps"    # Landroid/net/wifi/WpsInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1433
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1434
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2203e

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1435
    return-void
.end method

.method public stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1291
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1292
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22004

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$600(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1293
    return-void
.end method
