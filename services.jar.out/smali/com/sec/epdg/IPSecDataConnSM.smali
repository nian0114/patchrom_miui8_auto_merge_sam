.class public Lcom/sec/epdg/IPSecDataConnSM;
.super Lcom/android/internal/util/StateMachine;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IPSecDataConnSM$1;,
        Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;,
        Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;,
        Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;,
        Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;,
        Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;,
        Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;,
        Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;,
        Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;,
        Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    }
.end annotation


# static fields
.field private static final CHECK_HO_W2L_DELAY:I = 0x1388

.field private static final DPD_DELAYED_MASSAGE_TIMEOUT:I = 0x1

.field private static final INTENT_EPDG_IKE_AUTHFAIL_3TIMES:Ljava/lang/String; = "com.sec.epdgservice.IKE_AUTHFAIL_3TIMES"

.field private static final MAX_DNS_AND_L2W_TIMEOUT:I = 0xea60

.field private static final MAX_L2W_TIMEOUT:I = 0x4e20

.field private static final MAX_W2L_TIMEOUT:I = 0x27100

.field private static final TAG:Ljava/lang/String; = "[IPSECDATACONNSM]"

.field private static mIWlanInactiveState:Lcom/sec/epdg/IWlanState;

.field private static mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

.field private static mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# instance fields
.field private final mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSsid:Ljava/lang/String;

.field private final mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

.field private final mDisConnectingState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

.field private mExpiredTimeTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

.field private final mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

.field private final mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

.field private final mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

.field private final mInitialConnectingState:Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

.field private mIsHandOver:Z

.field private mIsNeededL2WHO:Z

.field private mIsW2LRequested:Z

.field private mIsWifiConnected:Z

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

.field private mRetryCount:I

.field private mRilCid:I

.field private final mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

.field private final mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

.field private final mePdgHandler:Landroid/os/Handler;

.field private final smHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/sec/epdg/IWlanState;

    invoke-direct {v0}, Lcom/sec/epdg/IWlanState;-><init>()V

    sput-object v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanInactiveState:Lcom/sec/epdg/IWlanState;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "apnContext"    # Lcom/sec/epdg/IWlanApnContext;
    .param p4, "hdlr"    # Landroid/os/Handler;
    .param p5, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 229
    invoke-direct {p0, p1, p5}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 62
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    .line 63
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInitialConnectingState:Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

    .line 65
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    .line 67
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    .line 68
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    .line 70
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    .line 72
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    .line 73
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectingState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    .line 75
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    .line 85
    iput-boolean v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsHandOver:Z

    .line 86
    iput-boolean v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsW2LRequested:Z

    .line 87
    iput-boolean v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsWifiConnected:Z

    .line 88
    iput-boolean v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    .line 230
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->smHandler:Landroid/os/Handler;

    .line 231
    iput-object p2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mContext:Landroid/content/Context;

    .line 232
    iput-object p4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    .line 234
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecAdapter;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/IPSecAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

    .line 235
    iput-object p3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 236
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->initConnectionParams()V

    .line 238
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mCurrentSsid:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 241
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInitialConnectingState:Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 242
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 243
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 244
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 245
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectingState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 246
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 247
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 248
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 250
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->setInitialState(Lcom/android/internal/util/State;)V

    .line 251
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 252
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 253
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mNMService:Landroid/os/INetworkManagementService;

    .line 254
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v1

    sput-object v1, Lcom/sec/epdg/IPSecDataConnSM;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 255
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v1

    sput-object v1, Lcom/sec/epdg/IPSecDataConnSM;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .line 256
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->configureApnContext(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/epdg/IPSecDataConnSM;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->checkDnsRetryRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/epdg/IPSecDataConnSM;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->handleConnectRequest()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->handleDnsResolutionFail()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->disconnectEpdgConnection()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->handleWifiStateChange(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/epdg/IPSecDataConnSM;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/IPSecDataConnSM;->setEpdgInterfaceDropRule(ZI)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->resetThrottleState()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->updatePermanentFail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->sendEpdgPermanantFailBroadcast()V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFrameworkWOIntent(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sec/epdg/IPSecDataConnSM;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mRilCid:I

    return v0
.end method

.method static synthetic access$4200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/epdg/IPSecDataConnSM;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/sec/epdg/IPSecDataConnSM;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/epdg/IPSecDataConnSM;III)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/epdg/IPSecDataConnSM;->handleEnableEpdgFailure(III)V

    return-void
.end method

.method static synthetic access$4600(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5100()Lcom/sec/epdg/handover/EpdgImsListener;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSM;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sec/epdg/IPSecDataConnSM;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->sendWifiRssiIntentDelayToEpdg(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5400(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5900(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->checkConnection()V

    return-void
.end method

.method static synthetic access$6000(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->sendKeepAlive()V

    return-void
.end method

.method static synthetic access$6100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6600(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6700(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7000(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$7100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7200(Lcom/sec/epdg/IPSecDataConnSM;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z

    return v0
.end method

.method static synthetic access$7202(Lcom/sec/epdg/IPSecDataConnSM;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7400(Lcom/sec/epdg/IPSecDataConnSM;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$7500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7800(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$7900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->initConnectionParams()V

    return-void
.end method

.method static synthetic access$9000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method private checkConnection()V
    .locals 4

    .prologue
    .line 1468
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1469
    .local v0, "conncid":I
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

    sget v2, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/epdg/IPSecAdapter;->postCheckConnectionMessage(IILjava/lang/Object;)V

    .line 1470
    return-void
.end method

.method private checkDnsRetryRequired()Z
    .locals 4

    .prologue
    .line 1443
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Enter checkDnsRetryRequired"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/throttle/ThrottleController;->getThrottleCount(Ljava/lang/String;)I

    move-result v0

    .line 1446
    .local v0, "count":I
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Throttle Count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 1448
    const-string v1, "[IPSECDATACONNSM]"

    const-string/jumbo v2, "mCurrentTimer not correctly updated inside Throttle Manager."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    :cond_0
    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 1451
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "DNS RESET might be REQUIRED.Posting Message to EPDG service for additional checks"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgCommands;->postDnsRetryRequest(I)V

    .line 1454
    const/4 v1, 0x1

    .line 1457
    :goto_0
    return v1

    .line 1456
    :cond_1
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Exit checkDnsRetryRequired: DNS RESET NOT REQUIRED"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private configureApnContext(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1503
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1504
    .local v2, "cid":I
    const/4 v0, 0x0

    .line 1507
    .local v0, "apnName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->initConnectionParams()V

    .line 1512
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1513
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "apnName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1525
    .restart local v0    # "apnName":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 1526
    const-string v4, "[IPSECDATACONNSM]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed Connect request for Cid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(no apnname)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    :cond_1
    :goto_1
    return-void

    .line 1514
    :cond_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Landroid/os/AsyncResult;

    if-eqz v4, :cond_0

    .line 1515
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1516
    .local v1, "asyncRes":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    .line 1517
    .local v3, "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    if-eqz v3, :cond_0

    .line 1518
    invoke-virtual {v3}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->getApnName()Ljava/lang/String;

    move-result-object v0

    .line 1519
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4, v2}, Lcom/sec/epdg/IWlanApnContext;->setmRilCid(I)V

    .line 1520
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->getIpv6Addr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->getIpv4Addr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/epdg/IWlanApnContext;->setRequestIpAddress(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1530
    .end local v1    # "asyncRes":Landroid/os/AsyncResult;
    .end local v3    # "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    :cond_3
    const-string v4, "[IPSECDATACONNSM]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connect request is received for cid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apnName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/sec/epdg/IWlanApnContext;->configureAPNSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v4}, Lcom/sec/epdg/IPSecDataConnSM;->setmRilCid(I)V

    .line 1535
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0.0.0.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v4

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1540
    :cond_5
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    goto/16 :goto_1
.end method

.method private disconnectEpdgConnection()V
    .locals 4

    .prologue
    .line 1461
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1462
    .local v0, "conncid":I
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/epdg/IPSecAdapter;->postDisconnectMessage(IILjava/lang/Object;)V

    .line 1463
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Moving to Disconnecting State"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectingState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1465
    return-void
.end method

.method public static getNewStateMachineInstance(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mApnContext"    # Lcom/sec/epdg/IWlanApnContext;
    .param p3, "mEpdgHandler"    # Landroid/os/Handler;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    .line 261
    new-instance v0, Lcom/sec/epdg/IPSecDataConnSM;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/IPSecDataConnSM;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;)V

    return-object v0
.end method

.method private handleConnectRequest()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1545
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Enter handleConnectRequest()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1547
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, " No APN settings to drive the State machine in Inactive state. Critical Failure !!"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    new-instance v0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v1

    move v4, v3

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;-><init>(ILjava/lang/String;ZZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;)V

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->post()V

    .line 1598
    :goto_0
    return v3

    .line 1552
    :cond_0
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/throttle/ThrottleController;->isThrottleTimerRunning(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1555
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1556
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "HandOver Request Received"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    sget-object v7, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 1561
    .local v7, "mIpSecIpType":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0.0.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1564
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Setting IP type as v4"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    sget-object v7, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 1567
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1570
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    if-eq v7, v0, :cond_4

    .line 1571
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Setting IP type as v6"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    sget-object v7, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 1578
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/epdg/IWlanApnSetting;->setmIpSecIpType(Lcom/sec/epdg/IWlanEnum$IPSecIpType;)V

    .line 1582
    .end local v7    # "mIpSecIpType":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->clone()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v4

    .line 1584
    .local v4, "wlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1585
    .local v2, "conncid":I
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/sec/epdg/IPSecAdapter;->postConnectMessage(IILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1589
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    .line 1574
    .end local v2    # "conncid":I
    .end local v4    # "wlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    .restart local v7    # "mIpSecIpType":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    :cond_4
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Setting IP type as v4v6"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    sget-object v7, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto :goto_1

    .line 1591
    .end local v7    # "mIpSecIpType":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .restart local v2    # "conncid":I
    .restart local v4    # "wlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    :cond_5
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInitialConnectingState:Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    .line 1594
    .end local v2    # "conncid":I
    .end local v4    # "wlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    :cond_6
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Connect Request is Throttled in InActive State."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V

    .line 1596
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0
.end method

.method private handleDnsResolutionFail()V
    .locals 2

    .prologue
    .line 1602
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "DNS resolution failed"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V

    .line 1604
    invoke-static {}, Lcom/sec/epdg/EpdgCommands;->postEpdgNotAvailableForDnsFailure()V

    .line 1605
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1606
    return-void
.end method

.method private handleEnableEpdgFailure(III)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "handoverAct"    # I
    .param p3, "handoverState"    # I

    .prologue
    .line 220
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside handleEnableEpdgFailure, cid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "handoverAct "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "handoverState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z

    .line 224
    invoke-static {p1}, Lcom/sec/epdg/EpdgCommands;->postEnableEpdgFailure(I)V

    .line 225
    return-void
.end method

.method private handleTCRules(ZI)Z
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "cid"    # I

    .prologue
    const/4 v5, 0x1

    .line 1637
    const/4 v1, 0x0

    .line 1638
    .local v1, "error":Z
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    if-nez v2, :cond_0

    .line 1639
    const-string v2, "[IPSECDATACONNSM]"

    const-string/jumbo v3, "mIWlanApnContext null"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    :goto_0
    return v1

    .line 1641
    :cond_0
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending iptables rules mIWlanApnContext.getbIprulesStatus() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getTCRulesStatus()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    if-ne v5, p1, :cond_2

    .line 1646
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getTCRulesStatus()Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 1647
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "TCRules are enable"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1649
    :cond_1
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling enable EPDG for cid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    :try_start_0
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2, p1}, Lcom/sec/epdg/IWlanApnContext;->setTCRulesStatus(Z)V

    .line 1652
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mNMService:Landroid/os/INetworkManagementService;

    add-int/lit8 v3, p2, -0x1

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfaceName(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->enableEpdg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1654
    :catch_0
    move-exception v0

    .line 1655
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "IllegalStateException while enabling epdg routes"

    invoke-static {v2, v3, v0}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1656
    const/4 v1, 0x1

    .line 1659
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1660
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 1661
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "RemoteException while enabling epdg routes"

    invoke-static {v2, v3, v0}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1662
    const/4 v1, 0x1

    .line 1665
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1671
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getTCRulesStatus()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1672
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "TCRules are not enable"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1674
    :cond_3
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling disable EPDG for cid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    :try_start_1
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2, p1}, Lcom/sec/epdg/IWlanApnContext;->setTCRulesStatus(Z)V

    .line 1677
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mNMService:Landroid/os/INetworkManagementService;

    add-int/lit8 v3, p2, -0x1

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfaceName(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->disableEpdg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 1679
    :catch_2
    move-exception v0

    .line 1680
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "IllegalStateException while disabling epdg routes"

    invoke-static {v2, v3, v0}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1681
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 1682
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 1683
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "RemoteException while disabling epdg routes"

    invoke-static {v2, v3, v0}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1684
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private handleWifiConnect(ZLjava/lang/String;)V
    .locals 4
    .param p1, "isSsidChanged"    # Z
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1483
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleWifiConnect: SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSsidChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1485
    if-eqz p1, :cond_0

    .line 1486
    iput-object p2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mCurrentSsid:Ljava/lang/String;

    .line 1487
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSID changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1489
    :cond_0
    return-void
.end method

.method private handleWifiStateChange(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1492
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 1493
    .local v1, "isWifiConnected":Z
    :goto_0
    iput-boolean v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsWifiConnected:Z

    .line 1494
    if-nez v1, :cond_1

    .line 1500
    :goto_1
    return-void

    .end local v1    # "isWifiConnected":Z
    :cond_0
    move v1, v3

    .line 1492
    goto :goto_0

    .line 1497
    .restart local v1    # "isWifiConnected":Z
    :cond_1
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v2, :cond_2

    move v0, v2

    .line 1498
    .local v0, "isSsidChanged":Z
    :goto_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/sec/epdg/IPSecDataConnSM;->handleWifiConnect(ZLjava/lang/String;)V

    goto :goto_1

    .end local v0    # "isSsidChanged":Z
    :cond_2
    move v0, v3

    .line 1497
    goto :goto_2
.end method

.method private informHandoverFailureToRilAndFramework(I)V
    .locals 6
    .param p1, "cid"    # I

    .prologue
    const/4 v3, 0x0

    .line 187
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Enter informHandoverFailureToRilAndFramework:  Sending Call Status failed to RIL"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v4

    const/4 v5, 0x0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;-><init>(ILjava/lang/String;ZZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;)V

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->post()V

    .line 190
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V

    .line 192
    invoke-direct {p0, v3}, Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V

    .line 196
    invoke-virtual {p0, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    .line 198
    :cond_0
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Exit informHandoverFailureToRilAndFramework"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method private informHandoverFailureToRilAndFrameworkWOIntent(I)V
    .locals 6
    .param p1, "cid"    # I

    .prologue
    const/4 v3, 0x0

    .line 203
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Enter informHandoverFailureToRilAndFrameworkWOIntent:  Sending Call Status failed to RIL"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v4

    const/4 v5, 0x0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;-><init>(ILjava/lang/String;ZZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;)V

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->post()V

    .line 206
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    .line 208
    invoke-direct {p0, v3}, Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V

    .line 210
    :cond_0
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Exit informHandoverFailureToRilAndFrameworkWOIntent"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private initConnectionParams()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 265
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->setmRilCid(I)V

    .line 266
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->setmRetryCount(I)V

    .line 267
    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    .line 268
    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->setIsW2LRequested(Z)V

    .line 269
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setIWlanSetting(Lcom/sec/epdg/IWlanApnSetting;)V

    .line 270
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 271
    return-void
.end method

.method private notifyL2WRegistrant(Z)V
    .locals 4
    .param p1, "result"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1616
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyL2WRegistrant : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/EpdgCommands;->postNotifyRegistrants(IILjava/lang/String;)V

    .line 1620
    return-void

    .line 1617
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyW2LRegistrant(Z)V
    .locals 3
    .param p1, "result"    # Z

    .prologue
    .line 1609
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyW2LRegistrant : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/EpdgCommands;->postNotifyRegistrants(IILjava/lang/String;)V

    .line 1613
    return-void

    .line 1610
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetThrottleState()V
    .locals 2

    .prologue
    .line 1478
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Reset throttle state of State Machine"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/throttle/ThrottleController;->resetThrottleState(Ljava/lang/String;)V

    .line 1480
    return-void
.end method

.method private sendEpdgPermanantFailBroadcast()V
    .locals 3

    .prologue
    .line 1719
    const-string v1, "[IPSECDATACONNSM]"

    const-string/jumbo v2, "sendEpdgPermanantFailBroadcast 3times Fail"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.epdgservice.IKE_AUTHFAIL_3TIMES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1721
    .local v0, "permantFailIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1722
    return-void
.end method

.method private sendKeepAlive()V
    .locals 3

    .prologue
    .line 1473
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1474
    .local v0, "conncid":I
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/epdg/IPSecAdapter;->postSendKeepAliveMessage(I)V

    .line 1475
    return-void
.end method

.method private sendWifiRssiIntentDelayToEpdg(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 1706
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiIntentDelayTimer()I

    move-result v1

    if-gtz v1, :cond_0

    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v1, :cond_1

    .line 1708
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1709
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendWifiRssiIntentDelayToEpdg: value is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1711
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x49

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1712
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1713
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1716
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .line 1712
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setEpdgInterfaceDropRule(ZI)V
    .locals 3
    .param p1, "add"    # Z
    .param p2, "cid"    # I

    .prologue
    .line 1697
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mNMService:Landroid/os/INetworkManagementService;

    add-int/lit8 v2, p2, -0x1

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfaceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/os/INetworkManagementService;->setEpdgInterfaceDropRule(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1702
    :goto_0
    return-void

    .line 1698
    :catch_0
    move-exception v0

    .line 1699
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Exception while setEpdgInterfaceDropRule"

    invoke-static {v1, v2, v0}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1700
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private transition(Lcom/android/internal/util/State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/util/State;

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 183
    return-void
.end method

.method private updatePermanentFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    .line 1623
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePermanentFail, apnName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->isEpdgNotAvailableRequired(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    invoke-static {p1}, Lcom/sec/epdg/EpdgCommands;->postEpdgNotAvailableForOnDemandFailure(Ljava/lang/String;)V

    .line 1627
    :cond_0
    return-void
.end method


# virtual methods
.method public IsExistExpiredTimeTable(I)Z
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 120
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 121
    .local v0, "isExist":Z
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isExist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return v0
.end method

.method public IsTimerExpired(I)Z
    .locals 8
    .param p1, "key"    # I

    .prologue
    .line 126
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 127
    .local v2, "leftTime":J
    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 128
    .local v0, "isExpired":Z
    :goto_0
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " leftTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isExpired: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return v0

    .line 127
    .end local v0    # "isExpired":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected deferTransitionTo(Lcom/android/internal/util/State;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/State;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 179
    return-void
.end method

.method public getApnContextDump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 167
    :cond_0
    const-string v0, "[IPSECDATACONNSM]"

    const-string/jumbo v1, "getApnName(), mIWlanApnContext.getIWlanSetting() is null, returning apn name as null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApnType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    .line 157
    :cond_0
    const-string v0, "[IPSECDATACONNSM]"

    const-string/jumbo v1, "getApnType(), mIWlanApnContext.getIWlanSetting() is null, returning apn type as null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentIWlanState()Lcom/sec/epdg/IWlanState;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    .line 136
    :cond_0
    const-string v0, "[IPSECDATACONNSM]"

    const-string/jumbo v1, "getCurrentIWlanState: mIWlanApnContext  is null, IWanState as Inactive"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanInactiveState:Lcom/sec/epdg/IWlanState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanState;->setState(I)V

    .line 139
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanInactiveState:Lcom/sec/epdg/IWlanState;

    goto :goto_0
.end method

.method public getDataConnectionHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->smHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getExpiredTime(I)J
    .locals 5
    .param p1, "key"    # I

    .prologue
    .line 114
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 115
    .local v0, "expiredTime":J
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expiredTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-wide v0
.end method

.method public declared-synchronized getIsW2LRequested()Z
    .locals 1

    .prologue
    .line 1630
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsW2LRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPeriodicDpdTimer()I
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->getPeriodicDpdTimer()I

    move-result v0

    .line 149
    :goto_0
    return v0

    .line 147
    :cond_0
    const-string v0, "[IPSECDATACONNSM]"

    const-string/jumbo v1, "getPeriodicDpdTimer: mIWlanApnContext.getIWlanSetting()  is null, dpd value as 0"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getmRetryCount()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mRetryCount:I

    return v0
.end method

.method public getmRilCid()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mRilCid:I

    return v0
.end method

.method public isHandOver()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsHandOver:Z

    return v0
.end method

.method public setIsHandOver(Z)V
    .locals 0
    .param p1, "isHandOver"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsHandOver:Z

    .line 111
    return-void
.end method

.method public declared-synchronized setIsW2LRequested(Z)V
    .locals 1
    .param p1, "mIsW2LRequested"    # Z

    .prologue
    .line 1634
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsW2LRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1635
    monitor-exit p0

    return-void

    .line 1634
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setmRetryCount(I)V
    .locals 0
    .param p1, "mRetryCount"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mRetryCount:I

    .line 103
    return-void
.end method

.method public setmRilCid(I)V
    .locals 0
    .param p1, "mRilCid"    # I

    .prologue
    .line 278
    iput p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mRilCid:I

    .line 279
    return-void
.end method
