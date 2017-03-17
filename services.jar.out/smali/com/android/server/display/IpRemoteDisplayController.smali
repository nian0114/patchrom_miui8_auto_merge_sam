.class final Lcom/android/server/display/IpRemoteDisplayController;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;,
        Lcom/android/server/display/IpRemoteDisplayController$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final RTSP_TIMEOUT_SECONDS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "IpRemoteDisplayController"


# instance fields
.field private isRunningHomeSync:Z

.field private mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

.field private mAdvertisedDisplayFlags:I

.field private mAdvertisedDisplayHeight:I

.field private mAdvertisedDisplaySurface:Landroid/view/Surface;

.field private mAdvertisedDisplayWidth:I

.field private final mBridgeReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectState:I

.field private mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mContext:Landroid/content/Context;

.field private mDisconnectByUser:Z

.field private mHDMIConnected:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

.field private mPrevNativeDisposeCompleted:Z

.field private mRemoteDisplay:Landroid/media/RemoteDisplay;

.field private mRemoteDisplayConnected:Z

.field private mRemoteDisplayInterface:Ljava/lang/String;

.field private mRequestPendingSetup:Z

.field private final mRtspTimeout:Ljava/lang/Runnable;

.field private final mSupportsProtectedBuffers:Z

.field private mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

.field private mWfdUibcManager:Landroid/media/WFDUibcManager;

.field private mWifiDisplayOnSetting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/IpRemoteDisplayController$Listener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/display/IpRemoteDisplayController$Listener;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    iput-object v6, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    iput-boolean v5, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    iput-boolean v5, p0, Lcom/android/server/display/IpRemoteDisplayController;->isRunningHomeSync:Z

    iput-boolean v5, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mPrevNativeDisposeCompleted:Z

    iput-boolean v5, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHDMIConnected:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    new-instance v3, Lcom/android/server/display/IpRemoteDisplayController$2;

    invoke-direct {v3, p0}, Lcom/android/server/display/IpRemoteDisplayController$2;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    iput-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mBridgeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/display/IpRemoteDisplayController$13;

    invoke-direct {v3, p0}, Lcom/android/server/display/IpRemoteDisplayController$13;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    iput-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    new-instance v3, Landroid/media/WFDUibcManager;

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/media/WFDUibcManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.WIFI_DISPLAY_SINK_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mBridgeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v0, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$1;

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/server/display/IpRemoteDisplayController$1;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .local v2, "settingsObserver":Landroid/database/ContentObserver;
    const-string v3, "wifi_display_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112007e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mSupportsProtectedBuffers:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRequestPendingSetup:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mDisconnectByUser:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mDisconnectByUser:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/display/IpRemoteDisplayController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->disableWifiDisplay(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/IpRemoteDisplayController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/RemoteDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/IpRemoteDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/display/IpRemoteDisplayController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->requestScreenMirroringEnable(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/IpRemoteDisplayController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/IpRemoteDisplayController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->requestPopup(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/WFDUibcManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/IpRemoteDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "x2"    # Landroid/view/Surface;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/display/IpRemoteDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/display/IpRemoteDisplayController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->handleConnectionFailure(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/display/IpRemoteDisplayController;ILjava/net/InetAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/net/InetAddress;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->launchWfdPlayerByWBS(ILjava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/display/IpRemoteDisplayController;ILjava/net/InetAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/net/InetAddress;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->enableWifiDisplay(ILjava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/display/IpRemoteDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->reportFeatureState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHDMIConnected:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHDMIConnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/IpRemoteDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->disconnect()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/IpRemoteDisplayController;->enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
    .locals 15
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I
    .param p6, "devicetype"    # I

    .prologue
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "advertiseDisplay = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " surface: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " display: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " flags: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    move-object/from16 v0, p2

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayWidth:I

    move/from16 v0, p3

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayHeight:I

    move/from16 v0, p4

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayFlags:I

    move/from16 v0, p5

    if-eq v1, v0, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .local v5, "oldDisplay":Landroid/hardware/display/WifiDisplay;
    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .local v3, "oldSurface":Landroid/view/Surface;
    iget v7, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayWidth:I

    .local v7, "oldDisplayWidth":I
    iget v8, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayHeight:I

    .local v8, "oldDisplayHeight":I
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    move/from16 v0, p3

    iput v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayWidth:I

    move/from16 v0, p4

    iput v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayHeight:I

    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayFlags:I

    move/from16 v9, p6

    .local v9, "connectedMode":I
    iget-boolean v10, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRequestPendingSetup:Z

    .local v10, "requestPendingSetup":Z
    iget-object v14, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$11;

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p1

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-direct/range {v1 .. v13}, Lcom/android/server/display/IpRemoteDisplayController$11;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;IIIZIII)V

    invoke-virtual {v14, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .end local v3    # "oldSurface":Landroid/view/Surface;
    .end local v5    # "oldDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v7    # "oldDisplayWidth":I
    .end local v8    # "oldDisplayHeight":I
    .end local v9    # "connectedMode":I
    .end local v10    # "requestPendingSetup":Z
    :cond_2
    return-void
.end method

.method private computeFeatureState()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 8
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    const/4 v5, 0x0

    new-instance v0, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v7, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    move v6, v5

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    return-object v0
.end method

.method private disableWifiDisplay(I)V
    .locals 4
    .param p1, "connectedMode"    # I

    .prologue
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableWifiDisplay currenct mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->disconnect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized disconnect()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mPrevNativeDisposeCompleted:Z

    if-eqz v0, :cond_1

    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Disconnect is called with disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    invoke-interface {v0}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayDisconnecting()V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    invoke-virtual {v0}, Landroid/media/WFDUibcManager;->stop()Z

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/WFDUibcManager;->setCoupleShotMode(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/IpRemoteDisplayController;->broadcastWfdState(I)V

    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/IpRemoteDisplayController;->requestScreenMirroringEnable(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mPrevNativeDisposeCompleted:Z

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->dispose()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mPrevNativeDisposeCompleted:Z

    const-string v0, "IpRemoteDisplayController"

    const-string v1, "mRemoteDisplay.dispose() is finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->unadvertiseDisplay()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->unadvertiseDisplay()V

    :cond_2
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "finish disconnect : exit synchronized"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private enableWifiDisplay(ILjava/net/InetAddress;)V
    .locals 3
    .param p1, "deviceType"    # I
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    if-gez p1, :cond_0

    const-string v1, "IpRemoteDisplayController"

    const-string v2, "Failed to enable WifiDisplay "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->setSourceState(I)V

    move v0, p1

    .local v0, "reqDevType":I
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$10;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/server/display/IpRemoteDisplayController$10;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "reqDevType":I
    :cond_1
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "WfdBridge is null, then failed to enable WifiDisplay"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    const-string v0, "IpRemoteDisplayController"

    const-string v2, "enableWifiDisplay mRemoteDisplay already existed."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableWifiDisplay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " deviceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    const/4 v0, 0x1

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v0}, Lcom/android/server/display/IpRemoteDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/hardware/display/WifiDisplay;->setDeviceInfo(I)V

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/IpRemoteDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$6;

    invoke-direct {v2, p0}, Lcom/android/server/display/IpRemoteDisplayController$6;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    invoke-static {v0, v2}, Landroid/media/RemoteDisplayCallback;->setContext(Landroid/content/Context;Landroid/media/RemoteDisplayCallback$Listener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/display/IpRemoteDisplayController;->broadcastWfdState(I)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    invoke-virtual {v0}, Landroid/media/WFDUibcManager;->start()Z

    const-string v0, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestEnable processing init option :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_3

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .local v7, "initParam":Lorg/json/JSONObject;
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    invoke-direct {p0, v7, v0}, Lcom/android/server/display/IpRemoteDisplayController;->requestDataSetting(Lorg/json/JSONObject;I)V

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    .end local v7    # "initParam":Lorg/json/JSONObject;
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRequestPendingSetup:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v0}, Lcom/android/server/display/IpRemoteDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .restart local v1    # "display":Landroid/hardware/display/WifiDisplay;
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_4

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/hardware/display/WifiDisplay;->setDeviceInfo(I)V

    :cond_4
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    iget v6, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/IpRemoteDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    const-string v0, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRemoteDIsplayInterface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initParam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$7;

    invoke-direct {v2, p0}, Lcom/android/server/display/IpRemoteDisplayController$7;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4, p4}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Landroid/media/RemoteDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRequestPendingSetup:Z

    if-eqz v0, :cond_6

    const-string v0, "IpRemoteDisplayController"

    const-string v2, "Request PendingSetup. Skip to set RTSP timeout."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRequestPendingSetup:Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private handleConnectionFailure(Z)V
    .locals 4
    .param p1, "b"    # Z

    .prologue
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "Wifi display connection failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->disconnect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occured"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private launchWfdPlayer(ILjava/net/InetAddress;)V
    .locals 3
    .param p1, "deviceType"    # I
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    const-string v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchWfdPlayer deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/IpRemoteDisplayController$8;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private launchWfdPlayerByWBS(ILjava/net/InetAddress;)V
    .locals 2
    .param p1, "deviceType"    # I
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    if-ltz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Failed to launch WfdPlayer"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->setSinkState(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->launchWfdPlayer(ILjava/net/InetAddress;)V

    goto :goto_0

    :cond_2
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WfdBridge is null, then failed to launch WfdPlayer"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reportFeatureState()V
    .locals 3

    .prologue
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "reportFeatureState"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->computeFeatureState()I

    move-result v0

    .local v0, "featureState":I
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$9;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/IpRemoteDisplayController$9;-><init>(Lcom/android/server/display/IpRemoteDisplayController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private requestDataSetting(Lorg/json/JSONObject;I)V
    .locals 17
    .param p1, "initParam"    # Lorg/json/JSONObject;
    .param p2, "deviceType"    # I

    .prologue
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestDataSetting static : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/16 v7, 0x3c0

    const/16 v8, 0x21c

    const/16 v9, 0x1e

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    const/16 v3, 0x500

    const/16 v4, 0x2d0

    const/16 v5, 0x1e

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .local v16, "wm":Landroid/view/WindowManager;
    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v3, 0x500

    .local v3, "wmWidth":I
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    .local v4, "wmHeight":I
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device\'s window height:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v4, :sswitch_data_0

    const/16 v4, 0x2d0

    :goto_1
    const/16 v5, 0x1e

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto :goto_0

    :sswitch_0
    const/16 v4, 0x320

    goto :goto_1

    .end local v3    # "wmWidth":I
    .end local v4    # "wmHeight":I
    .end local v16    # "wm":Landroid/view/WindowManager;
    :pswitch_3
    const/16 v7, 0x780

    const/16 v8, 0x438

    const/16 v9, 0x1e

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto :goto_0

    :pswitch_4
    const/16 v7, 0x3c0

    const/16 v8, 0x21c

    const/16 v9, 0x1e

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto/16 :goto_0

    :pswitch_5
    const/16 v7, 0x356

    const/16 v8, 0x1e0

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto/16 :goto_0

    :pswitch_6
    const/16 v7, 0x2d0

    const/16 v8, 0x1e0

    const/16 v9, 0x3c

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0xa

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto/16 :goto_0

    :pswitch_7
    const/16 v7, 0x780

    const/16 v8, 0x438

    const/16 v9, 0x1e

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x320 -> :sswitch_0
        0x640 -> :sswitch_0
    .end sparse-switch
.end method

.method private requestPopup(I)V
    .locals 4
    .param p1, "cause"    # I

    .prologue
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "cause"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "IpRemoteDisplayController"

    const-string v3, "unable to start WfdBroker activity "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private requestScreenMirroringEnable(Z)V
    .locals 3
    .param p1, "status"    # Z

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "boostIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "ScreenMirroring_enable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "PackageName"

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendDisplayEventToExtendedListener(II)V
    .locals 2
    .param p1, "param"    # I
    .param p2, "event"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController$12;-><init>(Lcom/android/server/display/IpRemoteDisplayController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setParamData(Lorg/json/JSONObject;IIIZZIZZI)V
    .locals 4
    .param p1, "initParam"    # Lorg/json/JSONObject;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "fps"    # I
    .param p5, "use_hdcp"    # Z
    .param p6, "use_audio"    # Z
    .param p7, "qoslevel"    # I
    .param p8, "use_uibc"    # Z
    .param p9, "use_pdm"    # Z
    .param p10, "deviceType"    # I

    .prologue
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParamData deviceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "width"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-virtual {p1, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fps"

    invoke-virtual {p1, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "use_hdcp"

    invoke-virtual {p1, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "use_audio"

    invoke-virtual {p1, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "qoslevel"

    invoke-virtual {p1, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "use_uibc"

    invoke-virtual {p1, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "use_pdm"

    invoke-virtual {p1, v1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "device_type"

    invoke-virtual {p1, v1, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "supportsProtectedBuffers"

    iget-boolean v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mSupportsProtectedBuffers:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRequestPendingSetup:Z

    if-eqz v1, :cond_0

    const-string v1, "pending_setup"

    iget-boolean v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRequestPendingSetup:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "IpRemoteDisplayController"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tryCommunication(I)V
    .locals 3
    .param p1, "requestType"    # I

    .prologue
    move v0, p1

    .local v0, "requestDevType":I
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1, v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->requestSource(I)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "WfdBridgeServer is not avaiable!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tryCommunication(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .locals 3
    .param p1, "sinkDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "requestType"    # I

    .prologue
    move v0, p2

    .local v0, "requestDevType":I
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->requestSink(Landroid/net/wifi/p2p/WifiP2pDevice;I)I

    :goto_0
    return-void

    :cond_1
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "Wrong sinkDevice info. Check the parameter..."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "WfdBridgeServer is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unadvertiseDisplay()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/IpRemoteDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    return-void
.end method


# virtual methods
.method public broadcastWfdState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastWfdState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "Intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public connectWfdBridgeServer(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "inet"    # Ljava/net/InetAddress;

    .prologue
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "connectWfdBridgeServer"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .local v0, "inetAddr":Ljava/net/InetAddress;
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/net/InetAddress;)V

    iput-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->connect()V

    :cond_0
    return-void
.end method

.method public disconnectWfdBridgeServer()V
    .locals 2

    .prologue
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "disconnectWfdBridgeServer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_0

    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WfdBridgeServer stop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    :goto_0
    return-void

    :cond_0
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WfdBridgeServer is already null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiDisplayBridgeStatus()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiDisplayBridgeStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isDongleRenameAvailable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->isDongleRenameAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWfdEngineRunning()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isWfdEngineRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiDisplayBridgeAvailable()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WifiDisplayBridge is available"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WifiDisplayBridge is unavailable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyBridgeStatus(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V

    return-void
.end method

.method public notifyEnterHomeSyncApp()V
    .locals 2

    .prologue
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Entering HomeSync Application"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->isRunningHomeSync:Z

    return-void
.end method

.method public notifyExitHomeSyncApp()V
    .locals 2

    .prologue
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Exiting HomeSync Application"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->isRunningHomeSync:Z

    return-void
.end method

.method public requestDisableWifiDisplay(I)I
    .locals 2
    .param p1, "connectedMode"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/IpRemoteDisplayController$5;-><init>(Lcom/android/server/display/IpRemoteDisplayController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public requestEnableWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .locals 2
    .param p1, "sinkDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "deviceType"    # I

    .prologue
    packed-switch p2, :pswitch_data_0

    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Wrong device Type! Check your device type"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/WFDUibcManager;->setCoupleShotMode(Z)V

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->tryCommunication(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/display/IpRemoteDisplayController;->tryCommunication(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public requestEnableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;

    .prologue
    iget-object v6, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/IpRemoteDisplayController$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/IpRemoteDisplayController$3;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestEnableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "remoteP2pMacAddr"    # Ljava/lang/String;
    .param p7, "isPendingRequest"    # Z

    .prologue
    iget-object v9, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/IpRemoteDisplayController$4;

    move-object v1, p0

    move-object/from16 v2, p6

    move-object v3, p5

    move/from16 v4, p7

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/IpRemoteDisplayController$4;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestPause()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/IpRemoteDisplayController;->requestScreenMirroringEnable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->pause()V

    :cond_1
    return-void
.end method

.method public requestResume()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/IpRemoteDisplayController;->requestScreenMirroringEnable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->resume()V

    :cond_1
    return-void
.end method

.method public updateClientDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2
    .param p1, "client"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0, p1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->updateClientDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-nez v0, :cond_1

    const-string v0, "IpRemoteDisplayController"

    const-string v1, "updateClientDevice mWfdBridgeServer is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "updateClientDevice SEC_PRODUCT_FEATURE_WLAN_WIFIDISPLAY_SINK is false."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
