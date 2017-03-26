.class Lcom/android/nfc/P2pLinkManager;
.super Ljava/lang/Object;
.source "P2pLinkManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/nfc/P2pEventListener$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/P2pLinkManager$SendTask;,
        Lcom/android/nfc/P2pLinkManager$ConnectTask;
    }
.end annotation


# static fields
.field static final ACTION_ABEAM_STATE_CHANGED:Ljava/lang/String; = "com.samsung.nfc.action.ABEAM_STATE_CHANGED"

.field static final ACTION_SBEAM_RECORD_DETECTED:Ljava/lang/String; = "com.samsung.nfc.action.SBEAM_RECORD_DETECTED"

.field static final DBG:Z

.field static final DISABLE_BEAM_DEFAULT:Ljava/lang/String; = "android.nfc.disable_beam_default"

.field static final ECHOSERVER_ENABLED:Z = false

.field static final EXTRA_ABEAM_STATE:Ljava/lang/String; = "com.samsung.nfc.extra.ABEAM_STATE"

.field public static final GSIM_ABEAM_STATUS:Ljava/lang/String; = "NF03"

.field public static final GSIM_NFC_OPERATION:Ljava/lang/String; = "NF04"

.field public static final GSIM_NFC_OPERATION_P2P:Ljava/lang/String; = "2"

.field public static final GSIM_STATUS_OFF:J = 0x0L

.field public static final GSIM_STATUS_ON:J = 0x3e8L

.field static final GSIM_SURVEY_MODE:Z

.field static final HANDOVER_BUSY:I = 0x3

.field static final HANDOVER_FAILURE:I = 0x1

.field static final HANDOVER_SAP:I = 0x14

.field static final HANDOVER_SUCCESS:I = 0x0

.field static final HANDOVER_UNSUPPORTED:I = 0x2

.field static final LINK_SEND_CANCELED_DEBOUNCE_MS:I = 0xfa

.field static final LINK_SEND_COMPLETE_DEBOUNCE_MS:I = 0x1f4

.field static final LINK_SEND_CONFIRMED_DEBOUNCE_MS:I = 0x1388

.field static final LINK_SEND_PENDING_DEBOUNCE_MS:I = 0xbb8

.field static final LINK_STATE_DEBOUNCE:I = 0x3

.field static final LINK_STATE_DOWN:I = 0x1

.field static final LINK_STATE_UP:I = 0x2

.field static final MSG_DEBOUNCE_TIMEOUT:I = 0x1

.field static final MSG_HANDOVER_BUSY:I = 0xa

.field static final MSG_HANDOVER_NOT_SUPPORTED:I = 0x7

.field static final MSG_RECEIVE_COMPLETE:I = 0x2

.field static final MSG_RECEIVE_HANDOVER:I = 0x3

.field static final MSG_SEC_SEND_MSG:I = 0x14

.field static final MSG_SEND_COMPLETE:I = 0x4

.field static final MSG_SHOW_CONFIRMATION_UI:I = 0x8

.field static final MSG_START_ECHOSERVER:I = 0x5

.field static final MSG_STOP_ECHOSERVER:I = 0x6

.field static final MSG_WAIT_FOR_LINK_TIMEOUT:I = 0x9

.field static final NDEFPUSH_SAP:I = 0x10

.field static final SEND_STATE_CANCELED:I = 0x6

.field static final SEND_STATE_COMPLETE:I = 0x5

.field static final SEND_STATE_NEED_CONFIRMATION:I = 0x2

.field static final SEND_STATE_NOTHING_TO_SEND:I = 0x1

.field static final SEND_STATE_PENDING:I = 0x3

.field static final SEND_STATE_SENDING:I = 0x4

.field static final SNEP_FAILURE:I = 0x1

.field static final SNEP_SUCCESS:I = 0x0

.field static final TAG:Ljava/lang/String; = "NfcP2pLinkManager"

.field static final WAIT_FOR_LINK_TIMEOUT_MS:I = 0x2710


# instance fields
.field final mActivityManager:Landroid/app/ActivityManager;

.field mAllValidCallbackPackages:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCallbackNdef:Landroid/nfc/IAppCallback;

.field mCallbackNdefs:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/IAppCallback;",
            ">;"
        }
    .end annotation
.end field

.field mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

.field final mContext:Landroid/content/Context;

.field final mDefaultMiu:I

.field final mDefaultRwSize:I

.field final mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

.field final mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

.field final mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

.field final mEventListener:Lcom/android/nfc/P2pEventListener;

.field final mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field final mHandler:Landroid/os/Handler;

.field final mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

.field mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

.field final mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field final mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

.field mIsOnManualInvokebySBeam:Z

.field mIsReceiveEnabled:Z

.field mIsSendEnabled:Z

.field mLastLlcpActivationTime:J

.field mLinkState:I

.field mLlcpServicesConnected:Z

.field mMessageToSend:Landroid/nfc/NdefMessage;

.field mNdefCallbackUid:I

.field mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

.field final mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

.field final mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mPeerLlcpVersion:B

.field mPrefs:Landroid/content/SharedPreferences;

.field private mSecNdefService:Lcom/android/nfc/secSend/SecNdefService;

.field mSendFlags:I

.field mSendState:I

.field mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

.field mSnepClient:Lcom/android/nfc/snep/SnepClient;

.field mUrisToSend:[Landroid/net/Uri;

.field mUserHandle:Landroid/os/UserHandle;

.field mValidCallbackPackages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 167
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    .line 286
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/P2pLinkManager;->GSIM_SURVEY_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverDataParser"    # Lcom/android/nfc/handover/HandoverDataParser;
    .param p3, "defaultMiu"    # I
    .param p4, "defaultRwSize"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    new-instance v0, Lcom/android/nfc/P2pLinkManager$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$1;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    .line 1077
    new-instance v0, Lcom/android/nfc/P2pLinkManager$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$2;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    .line 1084
    new-instance v0, Lcom/android/nfc/P2pLinkManager$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$3;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 300
    new-instance v0, Lcom/android/nfc/ndefpush/NdefPushServer;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/ndefpush/NdefPushServer;-><init>(ILcom/android/nfc/ndefpush/NdefPushServer$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    .line 301
    new-instance v0, Lcom/android/nfc/snep/SnepServer;

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-direct {v0, v1, p3, p4}, Lcom/android/nfc/snep/SnepServer;-><init>(Lcom/android/nfc/snep/SnepServer$Callback;II)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    .line 302
    new-instance v0, Lcom/android/nfc/handover/HandoverServer;

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/nfc/handover/HandoverServer;-><init>(Landroid/content/Context;ILcom/android/nfc/handover/HandoverDataParser;Lcom/android/nfc/handover/HandoverServer$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 310
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    .line 311
    new-instance v0, Lcom/android/nfc/P2pEventManager;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/P2pEventManager;-><init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    .line 312
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    .line 313
    iput v3, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 314
    iput v3, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 315
    iput-boolean v4, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    .line 317
    const-string v0, "NF03"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/nfc/P2pLinkManager;->insertStatusLog(Ljava/lang/String;J)V

    .line 318
    iput-boolean v4, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    .line 319
    const-string v0, "NfcServicePrefs"

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 320
    iput-object p2, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 321
    iput p3, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultMiu:I

    .line 322
    iput p4, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultRwSize:I

    .line 323
    iput-boolean v4, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 324
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    .line 325
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 327
    new-instance v0, Lcom/android/nfc/secSend/SecNdefService;

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    iget-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/nfc/secSend/SecNdefService;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSecNdefService:Lcom/android/nfc/secSend/SecNdefService;

    .line 329
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 330
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdefs:Ljava/util/Hashtable;

    .line 331
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mAllValidCallbackPackages:Ljava/util/Hashtable;

    .line 334
    iput-boolean v4, p0, Lcom/android/nfc/P2pLinkManager;->mIsOnManualInvokebySBeam:Z

    .line 337
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/P2pLinkManager;Landroid/nfc/NdefMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;
    .param p1, "x1"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/nfc/P2pLinkManager;->trySBeamRecord(Landroid/nfc/NdefMessage;)V

    return-void
.end method

.method private auditLog(ZLjava/lang/String;)V
    .locals 6
    .param p1, "flag"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1500
    :try_start_0
    const-string v3, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1501
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1502
    .local v0, "Cv":Landroid/content/ContentValues;
    const-string v3, "severity"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1503
    const-string v3, "group"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1504
    const-string v3, "outcome"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1505
    const-string v3, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1506
    const-string v3, "component"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    const-string v3, "message"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1512
    .end local v0    # "Cv":Landroid/content/ContentValues;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 1509
    :catch_0
    move-exception v1

    .line 1510
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "NfcP2pLinkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auditLog: errmsg=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isBeamDisabled(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 678
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 679
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 680
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    const-string v2, "no_outgoing_beam"

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    return v2
.end method

.method private isSBeamRecord(Landroid/nfc/NdefMessage;)Z
    .locals 6
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v3, 0x0

    .line 1536
    const-string v4, "NfcP2pLinkManager"

    const-string v5, "isSBeamRecord"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    if-nez p1, :cond_1

    .line 1547
    :cond_0
    :goto_0
    return v3

    .line 1540
    :cond_1
    invoke-static {p1}, Lcom/android/nfc/NfcDispatcher;->extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;

    move-result-object v0

    .line 1541
    .local v0, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1542
    .local v2, "pkg":Ljava/lang/String;
    const-string v4, "com.sec.android.directshare"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1543
    const-string v3, "NfcP2pLinkManager"

    const-string v4, "isSBeamRecord : msg contains directshare"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static linkStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1436
    packed-switch p0, :pswitch_data_0

    .line 1444
    const-string v0, "<error>"

    :goto_0
    return-object v0

    .line 1438
    :pswitch_0
    const-string v0, "LINK_STATE_DOWN"

    goto :goto_0

    .line 1440
    :pswitch_1
    const-string v0, "LINK_STATE_DEBOUNCE"

    goto :goto_0

    .line 1442
    :pswitch_2
    const-string v0, "LINK_STATE_UP"

    goto :goto_0

    .line 1436
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onP2pSendConfirmed(Z)V
    .locals 5
    .param p1, "requireConfirmation"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1368
    sget-boolean v0, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pSendConfirmed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :cond_0
    const-string v0, "NF04"

    const-string v1, "2"

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/P2pLinkManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lcom/android/nfc/NfcService;->makeP2pLog(II)V

    .line 1373
    monitor-enter p0

    .line 1374
    :try_start_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v0, v2, :cond_1

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v0, v3, :cond_2

    .line 1376
    :cond_1
    monitor-exit p0

    .line 1389
    :goto_0
    return-void

    .line 1378
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1379
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v3, :cond_4

    .line 1380
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    if-eqz v0, :cond_3

    .line 1381
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->sendNdefMessage()V

    .line 1388
    :cond_3
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1383
    :cond_4
    :try_start_1
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1385
    const/4 v0, 0x1

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 1386
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pSendDebounce()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static sendStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1419
    packed-switch p0, :pswitch_data_0

    .line 1431
    :pswitch_0
    const-string v0, "<error>"

    :goto_0
    return-object v0

    .line 1421
    :pswitch_1
    const-string v0, "SEND_STATE_NOTHING_TO_SEND"

    goto :goto_0

    .line 1423
    :pswitch_2
    const-string v0, "SEND_STATE_NEED_CONFIRMATION"

    goto :goto_0

    .line 1425
    :pswitch_3
    const-string v0, "SEND_STATE_SENDING"

    goto :goto_0

    .line 1427
    :pswitch_4
    const-string v0, "SEND_STATE_COMPLETE"

    goto :goto_0

    .line 1429
    :pswitch_5
    const-string v0, "SEND_STATE_CANCELED"

    goto :goto_0

    .line 1419
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private trySBeamRecord(Landroid/nfc/NdefMessage;)V
    .locals 7
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1516
    const-string v4, "NfcP2pLinkManager"

    const-string v5, "trySBeamRecord"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    if-nez p1, :cond_0

    .line 1532
    :goto_0
    return-void

    .line 1520
    :cond_0
    invoke-static {p1}, Lcom/android/nfc/NfcDispatcher;->extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;

    move-result-object v0

    .line 1521
    .local v0, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1522
    .local v3, "pkg":Ljava/lang/String;
    const-string v4, "com.sec.android.directshare"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1523
    const-string v4, "NfcP2pLinkManager"

    const-string v5, "trySBeamRecord : msg contains directshare"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.nfc.action.SBEAM_RECORD_DETECTED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1525
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1526
    const-string v4, "android.nfc.extra.NDEF_MESSAGES"

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/nfc/NdefMessage;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1527
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.permission.SBEAM_NDEF_MESSAGE"

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 1531
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_2
    const-string v4, "NfcP2pLinkManager"

    const-string v5, "trySBeamRecord : there\'s no sbeam record."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method beamDefaultDisabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 687
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 689
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 694
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 692
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.nfc.disable_beam_default"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 693
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 694
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method cancelSendNdefMessage()V
    .locals 2

    .prologue
    .line 800
    monitor-enter p0

    .line 801
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$SendTask;->cancel(Z)Z

    .line 804
    :cond_0
    monitor-exit p0

    .line 805
    return-void

    .line 804
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeSecNdefService(I)I
    .locals 2
    .param p1, "SAP"    # I

    .prologue
    const/4 v0, -0x1

    .line 1482
    sget-boolean v1, Lcom/android/nfc/NfcService;->mIsSecNdefEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mSecNdefService:Lcom/android/nfc/secSend/SecNdefService;

    if-nez v1, :cond_1

    .line 1486
    :cond_0
    :goto_0
    return v0

    .line 1484
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mSecNdefService:Lcom/android/nfc/secSend/SecNdefService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/secSend/SecNdefService;->closeSecNdefService(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1485
    const/4 v0, 0x0

    goto :goto_0
.end method

.method connectLlcpServices()V
    .locals 2

    .prologue
    .line 808
    monitor-enter p0

    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    if-eqz v0, :cond_0

    .line 810
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Still had a reference to mConnectTask!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_0
    new-instance v0, Lcom/android/nfc/P2pLinkManager$ConnectTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    .line 813
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 814
    monitor-exit p0

    .line 815
    return-void

    .line 814
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method createDefaultNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&feature=beam"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 701
    .local v1, "appUri":Landroid/nfc/NdefRecord;
    invoke-static {p1}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 702
    .local v0, "appRecord":Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v2
.end method

.method public createSecNdefService(Ljava/lang/String;ILjava/lang/String;[B[B)I
    .locals 8
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serverSap"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "type"    # [B
    .param p5, "id"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1464
    sget-boolean v0, Lcom/android/nfc/NfcService;->mIsSecNdefEnabled:Z

    if-nez v0, :cond_0

    .line 1465
    const/4 v7, -0x1

    .line 1472
    :goto_0
    return v7

    .line 1466
    :cond_0
    const/4 v7, 0x0

    .line 1468
    .local v7, "serviceId":I
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSecNdefService:Lcom/android/nfc/secSend/SecNdefService;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/secSend/SecNdefService;->createSecNdefService(Ljava/lang/String;ILjava/lang/String;[B[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    .line 1469
    :catch_0
    move-exception v6

    .line 1470
    .local v6, "e":Ljava/lang/Exception;
    throw v6
.end method

.method disconnectLlcpServices()V
    .locals 2

    .prologue
    .line 706
    monitor-enter p0

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->cancel(Z)Z

    .line 709
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushClient;->close()V

    .line 714
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v0, :cond_2

    .line 717
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepClient;->close()V

    .line 718
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    .line 720
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v0, :cond_3

    .line 721
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverClient;->close()V

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 724
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 725
    monitor-exit p0

    .line 726
    return-void

    .line 725
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1449
    monitor-enter p0

    .line 1450
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsSendEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsReceiveEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    invoke-static {v1}, Lcom/android/nfc/P2pLinkManager;->linkStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSendState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    invoke-static {v1}, Lcom/android/nfc/P2pLinkManager;->sendStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCallbackNdef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMessageToSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUrisToSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1458
    monitor-exit p0

    .line 1459
    return-void

    .line 1458
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableDisable(ZZ)V
    .locals 4
    .param p1, "sendEnable"    # Z
    .param p2, "receiveEnable"    # Z

    .prologue
    .line 344
    monitor-enter p0

    .line 345
    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 346
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer;->start()V

    .line 347
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer;->start()V

    .line 348
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer;->start()V

    .line 349
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 362
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    .line 364
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    if-eqz v0, :cond_3

    .line 365
    const-string v0, "NF03"

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/nfc/P2pLinkManager;->insertStatusLog(Ljava/lang/String;J)V

    .line 370
    :goto_1
    iput-boolean p2, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    .line 372
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSecNdefService:Lcom/android/nfc/secSend/SecNdefService;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/secSend/SecNdefService;->enableDisable(ZZ)V

    .line 373
    monitor-exit p0

    .line 374
    return-void

    .line 352
    :cond_1
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 353
    sget-boolean v0, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "NfcP2pLinkManager"

    const-string v1, "enableDisable: llcp deactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_2
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    .line 355
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer;->stop()V

    .line 356
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer;->stop()V

    .line 357
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer;->stop()V

    .line 358
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 367
    :cond_3
    :try_start_1
    const-string v0, "NF03"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/nfc/P2pLinkManager;->insertStatusLog(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method getMessageAarPresent(Landroid/nfc/NdefMessage;)I
    .locals 8
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x0

    .line 1346
    if-nez p1, :cond_1

    .line 1359
    :cond_0
    :goto_0
    return v5

    .line 1349
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    .line 1350
    .local v4, "records":[Landroid/nfc/NdefRecord;
    if-eqz v4, :cond_0

    .line 1353
    move-object v0, v4

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1354
    .local v3, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1356
    const/4 v5, 0x1

    goto :goto_0

    .line 1353
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method getMessageSize(Landroid/nfc/NdefMessage;)I
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1305
    if-eqz p1, :cond_0

    .line 1306
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    .line 1308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMessageTnf(Landroid/nfc/NdefMessage;)I
    .locals 3
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v1, 0x0

    .line 1313
    if-nez p1, :cond_1

    .line 1320
    :cond_0
    :goto_0
    return v1

    .line 1316
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 1317
    .local v0, "records":[Landroid/nfc/NdefRecord;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 1320
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v1

    goto :goto_0
.end method

.method getMessageType(Landroid/nfc/NdefMessage;)Ljava/lang/String;
    .locals 5
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1324
    if-nez p1, :cond_0

    .line 1325
    const-string v2, "null"

    .line 1341
    :goto_0
    return-object v2

    .line 1327
    :cond_0
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 1328
    .local v1, "records":[Landroid/nfc/NdefRecord;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_2

    .line 1329
    :cond_1
    const-string v2, "null"

    goto :goto_0

    .line 1331
    :cond_2
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 1332
    .local v0, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1341
    const-string v2, "unknown"

    goto :goto_0

    .line 1335
    :pswitch_0
    const-string v2, "uri"

    goto :goto_0

    .line 1339
    :pswitch_1
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 1332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x1

    .line 1122
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 1301
    :goto_0
    :pswitch_0
    return v9

    .line 1124
    :pswitch_1
    monitor-enter p0

    .line 1125
    :try_start_0
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v6}, Lcom/android/nfc/echoserver/EchoServer;->start()V

    .line 1126
    monitor-exit p0

    goto :goto_0

    .line 1127
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1131
    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/nfc/NdefMessage;

    .line 1132
    .local v5, "nm":Landroid/nfc/NdefMessage;
    monitor-enter p0

    .line 1133
    :try_start_1
    iget-boolean v6, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    if-ne v6, v9, :cond_2

    iget v6, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v6, v9, :cond_2

    .line 1135
    iput-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 1136
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1137
    sget-boolean v6, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "NfcP2pLinkManager"

    const-string v7, "onP2pSendConfirmationRequested()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_0
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v6}, Lcom/android/nfc/P2pEventListener;->onP2pSendConfirmationRequested()V

    .line 1143
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 1144
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    .line 1140
    :cond_2
    :try_start_2
    sget-boolean v6, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v6, :cond_3

    const-string v6, "NfcP2pLinkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLinkState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    invoke-static {v8}, Lcom/android/nfc/P2pLinkManager;->linkStateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_3
    sget-boolean v6, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "NfcP2pLinkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSendState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    invoke-static {v8}, Lcom/android/nfc/P2pLinkManager;->sendStateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 1148
    .end local v5    # "nm":Landroid/nfc/NdefMessage;
    :pswitch_3
    monitor-enter p0

    .line 1149
    :try_start_3
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v6}, Lcom/android/nfc/echoserver/EchoServer;->stop()V

    .line 1150
    monitor-exit p0

    goto :goto_0

    .line 1151
    :catchall_2
    move-exception v6

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v6

    .line 1153
    :pswitch_4
    monitor-enter p0

    .line 1155
    const/4 v6, 0x0

    :try_start_4
    iput-boolean v6, p0, Lcom/android/nfc/P2pLinkManager;->mIsOnManualInvokebySBeam:Z

    .line 1159
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1160
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v6}, Lcom/android/nfc/P2pEventListener;->onP2pTimeoutWaitingForLink()V

    .line 1161
    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v6

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v6

    .line 1164
    :pswitch_5
    monitor-enter p0

    .line 1165
    :try_start_5
    iget v6, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    .line 1166
    monitor-exit p0

    goto/16 :goto_0

    .line 1186
    :catchall_4
    move-exception v6

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v6

    .line 1168
    :cond_4
    :try_start_6
    iget v6, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v6, v8, :cond_5

    .line 1170
    const/4 v6, 0x0

    const-string v7, "Sending data through NFC failed"

    invoke-direct {p0, v6, v7}, Lcom/android/nfc/P2pLinkManager;->auditLog(ZLjava/lang/String;)V

    .line 1173
    :cond_5
    sget-boolean v6, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v6, :cond_6

    const-string v6, "NfcP2pLinkManager"

    const-string v7, "Debounce timeout"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_6
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 1175
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1176
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 1177
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 1178
    sget-boolean v6, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v6, :cond_7

    const-string v6, "NfcP2pLinkManager"

    const-string v7, "onP2pOutOfRange()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_7
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v6}, Lcom/android/nfc/P2pEventListener;->onP2pOutOfRange()V

    .line 1182
    sget-boolean v6, Lcom/android/nfc/NfcService;->mIsSecNdefEnabled:Z

    if-eqz v6, :cond_8

    .line 1183
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mSecNdefService:Lcom/android/nfc/secSend/SecNdefService;

    invoke-virtual {v6}, Lcom/android/nfc/secSend/SecNdefService;->onP2pOutOfRange()V

    .line 1186
    :cond_8
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/16 :goto_0

    .line 1190
    :pswitch_6
    monitor-enter p0

    .line 1191
    :try_start_7
    iget v6, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v6, v9, :cond_9

    .line 1192
    monitor-exit p0

    goto/16 :goto_0

    .line 1200
    :catchall_5
    move-exception v6

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v6

    .line 1194
    :cond_9
    :try_start_8
    iget v6, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v6, v8, :cond_a

    .line 1195
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 1197
    :cond_a
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1198
    sget-boolean v6, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v6, :cond_b

    const-string v6, "NfcP2pLinkManager"

    const-string v7, "onP2pReceiveComplete()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :cond_b
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/android/nfc/P2pEventListener;->onP2pReceiveComplete(Z)V

    .line 1200
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1202
    const-string v6, "NF04"

    const-string v7, "2"

    invoke-virtual {p0, v6, v7}, Lcom/android/nfc/P2pLinkManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v6

    invoke-virtual {v6, v8, v10}, Lcom/android/nfc/NfcService;->makeP2pLog(II)V

    goto/16 :goto_0

    .line 1207
    :pswitch_7
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/nfc/NdefMessage;

    .line 1208
    .local v4, "m":Landroid/nfc/NdefMessage;
    monitor-enter p0

    .line 1209
    :try_start_9
    iget v6, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v6, v9, :cond_c

    .line 1210
    monitor-exit p0

    goto/16 :goto_0

    .line 1219
    :catchall_6
    move-exception v6

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v6

    .line 1212
    :cond_c
    :try_start_a
    iget v6, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v6, v8, :cond_d

    .line 1213
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 1215
    :cond_d
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1216
    sget-boolean v6, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v6, :cond_e

    const-string v6, "NfcP2pLinkManager"

    const-string v7, "onP2pReceiveComplete()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_e
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/android/nfc/P2pEventListener;->onP2pReceiveComplete(Z)V

    .line 1218
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/nfc/NfcService;->sendMockNdefTag(Landroid/nfc/NdefMessage;)V

    .line 1219
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 1221
    const-string v6, "NF04"

    const-string v7, "2"

    invoke-virtual {p0, v6, v7}, Lcom/android/nfc/P2pLinkManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v6

    invoke-virtual {v6, v8, v10}, Lcom/android/nfc/NfcService;->makeP2pLog(II)V

    goto/16 :goto_0

    .line 1226
    .end local v4    # "m":Landroid/nfc/NdefMessage;
    :pswitch_8
    monitor-enter p0

    .line 1227
    const/4 v6, 0x0

    :try_start_b
    iput-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1229
    iget v6, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v6, v9, :cond_f

    iget v6, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v6, v8, :cond_10

    .line 1230
    :cond_f
    monitor-exit p0

    goto/16 :goto_0

    .line 1235
    :catchall_7
    move-exception v6

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v6

    .line 1232
    :cond_10
    const/4 v6, 0x1

    :try_start_c
    iput v6, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1233
    sget-boolean v6, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v6, :cond_11

    const-string v6, "NfcP2pLinkManager"

    const-string v7, "onP2pHandoverNotSupported()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_11
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v6}, Lcom/android/nfc/P2pEventListener;->onP2pHandoverNotSupported()V

    .line 1235
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto/16 :goto_0

    .line 1238
    :pswitch_9
    monitor-enter p0

    .line 1239
    const/4 v6, 0x0

    :try_start_d
    iput-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1241
    iget v6, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v6, v9, :cond_12

    iget v6, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v6, v8, :cond_16

    .line 1252
    :cond_12
    sget-boolean v6, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v6, :cond_13

    const-string v6, "NfcP2pLinkManager"

    const-string v7, "Send complete succefully, but state is chagned"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :cond_13
    const-string v0, "com.samsung.nfc.action.P2P_SEND_COMPLETE"

    .line 1256
    .local v0, "ACTION_P2P_SEND_COMPLETE":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.samsung.nfc.action.P2P_SEND_COMPLETE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1257
    .local v1, "SbeamIntent":Landroid/content/Intent;
    const-string v6, "com.sec.android.directshare"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1258
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1259
    sget-boolean v6, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v6, :cond_14

    const-string v6, "NfcP2pLinkManager"

    const-string v7, "send p2p send complete intent to directshare"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_14
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.nfc.action.P2P_SEND_COMPLETE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1262
    .local v2, "ShareShotIntent":Landroid/content/Intent;
    const-string v6, "com.sec.android.directconnect"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1263
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1264
    sget-boolean v6, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v6, :cond_15

    const-string v6, "NfcP2pLinkManager"

    const-string v7, "send p2p send complete intent to directconnect"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_15
    monitor-exit p0

    goto/16 :goto_0

    .line 1287
    .end local v0    # "ACTION_P2P_SEND_COMPLETE":Ljava/lang/String;
    .end local v1    # "SbeamIntent":Landroid/content/Intent;
    .end local v2    # "ShareShotIntent":Landroid/content/Intent;
    :catchall_8
    move-exception v6

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    throw v6

    .line 1269
    :cond_16
    const/4 v6, 0x5

    :try_start_e
    iput v6, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1270
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1272
    sget-boolean v6, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v6, :cond_17

    const-string v6, "NfcP2pLinkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onP2pSendComplete(), mIsOnManualInvokebySBeam = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/nfc/P2pLinkManager;->mIsOnManualInvokebySBeam:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_17
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v6}, Lcom/android/nfc/P2pEventListener;->onP2pSendComplete()V

    .line 1275
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    if-eqz v6, :cond_18

    .line 1278
    :try_start_f
    iget-boolean v6, p0, Lcom/android/nfc/P2pLinkManager;->mIsOnManualInvokebySBeam:Z

    if-nez v6, :cond_19

    .line 1279
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    iget-byte v7, p0, Lcom/android/nfc/P2pLinkManager;->mPeerLlcpVersion:B

    invoke-interface {v6, v7}, Landroid/nfc/IAppCallback;->onNdefPushComplete(B)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 1287
    :cond_18
    :goto_2
    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto/16 :goto_0

    .line 1281
    :cond_19
    const/4 v6, 0x0

    :try_start_11
    iput-boolean v6, p0, Lcom/android/nfc/P2pLinkManager;->mIsOnManualInvokebySBeam:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    goto :goto_2

    .line 1283
    :catch_0
    move-exception v3

    .line 1284
    .local v3, "e":Ljava/lang/Exception;
    :try_start_12
    const-string v6, "NfcP2pLinkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed NDEF completed callback: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    goto :goto_2

    .line 1290
    .end local v3    # "e":Ljava/lang/Exception;
    :pswitch_a
    monitor-enter p0

    .line 1291
    const/4 v6, 0x0

    :try_start_13
    iput-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1293
    iget v6, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v6, v9, :cond_1a

    iget v6, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v6, v8, :cond_1b

    .line 1294
    :cond_1a
    monitor-exit p0

    goto/16 :goto_0

    .line 1299
    :catchall_9
    move-exception v6

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    throw v6

    .line 1296
    :cond_1b
    const/4 v6, 0x1

    :try_start_14
    iput v6, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1297
    sget-boolean v6, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v6, :cond_1c

    const-string v6, "NfcP2pLinkManager"

    const-string v7, "onP2pHandoverBusy()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_1c
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v6}, Lcom/android/nfc/P2pEventListener;->onP2pHandoverBusy()V

    .line 1299
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    goto/16 :goto_0

    .line 1122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 1555
    sget-boolean v2, Lcom/android/nfc/P2pLinkManager;->GSIM_SURVEY_MODE:Z

    if-eqz v2, :cond_0

    .line 1556
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1557
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.nfc"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1562
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1563
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1564
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1566
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1568
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method insertStatusLog(Ljava/lang/String;J)V
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 1572
    sget-boolean v2, Lcom/android/nfc/P2pLinkManager;->GSIM_SURVEY_MODE:Z

    if-eqz v2, :cond_0

    .line 1573
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1574
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.nfc"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    const-string v2, "value"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1578
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1579
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1580
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1581
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1583
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1585
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public isLlcpActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 381
    monitor-enter p0

    .line 382
    :try_start_0
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onHandoverBusy()V
    .locals 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 781
    return-void
.end method

.method onHandoverUnsupported()V
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 777
    return-void
.end method

.method public onLlcpActivated(B)V
    .locals 10
    .param p1, "peerLlcpVersion"    # B

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    .line 486
    const-string v5, "NfcP2pLinkManager"

    const-string v6, "LLCP activated"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-static {}, Lcom/android/nfc/beam/BeamManager;->getInstance()Lcom/android/nfc/beam/BeamManager;

    move-result-object v0

    .line 490
    .local v0, "beamManager":Lcom/android/nfc/beam/BeamManager;
    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamManager;->isBeamInProgress()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 491
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 492
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v2, 0x0

    .line 493
    .local v2, "isRunningBeamService":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 494
    .local v4, "ra":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v6, "com.android.nfc:beam"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 495
    const-string v5, "NfcP2pLinkManager"

    const-string v6, "BeamService is still running."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v2, 0x1

    .line 500
    .end local v4    # "ra":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    if-nez v2, :cond_2

    .line 501
    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamManager;->setBeamInProgress()V

    .line 502
    const-string v5, "NfcP2pLinkManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "beamManager.isBeamInProgress() is wrong. So isBeamInProgress is set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamManager;->isBeamInProgress()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isRunningBeamService":Z
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2
    monitor-enter p0

    .line 508
    :try_start_0
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v5, :cond_3

    .line 509
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v5}, Lcom/android/nfc/echoserver/EchoServer;->onLlcpActivated()V

    .line 511
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/nfc/P2pLinkManager;->mLastLlcpActivationTime:J

    .line 512
    iput-byte p1, p0, Lcom/android/nfc/P2pLinkManager;->mPeerLlcpVersion:B

    .line 513
    iget v5, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    packed-switch v5, :pswitch_data_0

    .line 559
    :cond_4
    :goto_0
    monitor-exit p0

    .line 560
    :goto_1
    return-void

    .line 515
    :pswitch_0
    sget-boolean v5, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "NfcP2pLinkManager"

    const-string v6, "onP2pInRange()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_5
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v5}, Lcom/android/nfc/P2pEventListener;->onP2pInRange()V

    .line 518
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 521
    iget v5, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    .line 522
    const/4 v5, 0x4

    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 523
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 525
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    goto :goto_0

    .line 559
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 527
    :cond_6
    const/4 v5, 0x1

    :try_start_1
    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 529
    sget-boolean v5, Lcom/android/nfc/NfcService;->mIsSecNdefEnabled:Z

    if-eqz v5, :cond_7

    .line 530
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mSecNdefService:Lcom/android/nfc/secSend/SecNdefService;

    invoke-virtual {v5}, Lcom/android/nfc/secSend/SecNdefService;->onP2pInRange()V

    .line 532
    :cond_7
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/nfc/P2pLinkManager;->prepareMessageToSend(Z)V

    .line 533
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v5}, Lcom/android/nfc/handover/HandoverDataParser;->isHandoverSupported()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 536
    :cond_8
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    .line 537
    iget v5, p0, Lcom/android/nfc/P2pLinkManager;->mSendFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    .line 538
    const/4 v5, 0x4

    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    goto :goto_0

    .line 540
    :cond_9
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    goto :goto_0

    .line 546
    :pswitch_1
    sget-boolean v5, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v5, :cond_a

    const-string v5, "NfcP2pLinkManager"

    const-string v6, "Duplicate onLlcpActivated()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_a
    monitor-exit p0

    goto :goto_1

    .line 550
    :pswitch_2
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 551
    iget v5, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v5, v9, :cond_b

    iget v5, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v5, v8, :cond_c

    .line 554
    :cond_b
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    .line 556
    :cond_c
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 513
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onLlcpDeactivated()V
    .locals 3

    .prologue
    .line 732
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "LLCP deactivated."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    monitor-enter p0

    .line 734
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v1}, Lcom/android/nfc/echoserver/EchoServer;->onLlcpDeactivated()V

    .line 738
    :cond_0
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    packed-switch v1, :pswitch_data_0

    .line 772
    :goto_0
    monitor-exit p0

    .line 773
    return-void

    .line 741
    :pswitch_0
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "Duplicate onLlcpDectivated()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 772
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 745
    :pswitch_1
    const/4 v1, 0x3

    :try_start_1
    iput v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "debounceTimeout":I
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    packed-switch v1, :pswitch_data_1

    .line 763
    :goto_1
    :pswitch_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 764
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 765
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "onP2pSendDebounce()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v1}, Lcom/android/nfc/P2pEventListener;->onP2pSendDebounce()V

    .line 768
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 769
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->disconnectLlcpServices()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 749
    :pswitch_3
    const/4 v0, 0x0

    .line 750
    goto :goto_1

    .line 752
    :pswitch_4
    const/16 v0, 0xbb8

    .line 753
    goto :goto_1

    .line 755
    :pswitch_5
    const/16 v0, 0x1388

    .line 756
    goto :goto_1

    .line 758
    :pswitch_6
    const/16 v0, 0x1f4

    .line 759
    goto :goto_1

    .line 761
    :pswitch_7
    const/16 v0, 0xfa

    goto :goto_1

    .line 738
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 747
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onLlcpFirstPacketReceived()V
    .locals 6

    .prologue
    .line 566
    monitor-enter p0

    .line 567
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/nfc/P2pLinkManager;->mLastLlcpActivationTime:J

    sub-long v0, v2, v4

    .line 568
    .local v0, "totalTime":J
    sget-boolean v2, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NfcP2pLinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to get first LLCP PDU"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_0
    monitor-exit p0

    .line 570
    return-void

    .line 569
    .end local v0    # "totalTime":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method onLlcpServicesConnected()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 819
    sget-boolean v0, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onLlcpServicesConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_0
    monitor-enter p0

    .line 821
    :try_start_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v0, v2, :cond_1

    .line 822
    monitor-exit p0

    .line 835
    :goto_0
    return-void

    .line 824
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 825
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v0, v2, :cond_4

    .line 826
    sget-boolean v0, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pSendConfirmationRequested()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pSendConfirmationRequested()V

    .line 834
    :cond_3
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 828
    :cond_4
    :try_start_1
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 829
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pResumeSend()V

    .line 830
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->sendNdefMessage()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onManualBeamInvoke(Landroid/nfc/BeamShareData;)V
    .locals 4
    .param p1, "shareData"    # Landroid/nfc/BeamShareData;

    .prologue
    const/4 v3, 0x1

    .line 440
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "onManualBeamInvoke"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    monitor-enter p0

    .line 442
    :try_start_0
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v1, v3, :cond_0

    .line 443
    monitor-exit p0

    .line 480
    :goto_0
    return-void

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v1}, Lcom/android/nfc/ForegroundUtils;->getForegroundUids()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/nfc/P2pLinkManager;->prepareMessageToSend(Z)V

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-direct {p0, v1}, Lcom/android/nfc/P2pLinkManager;->isSBeamRecord(Landroid/nfc/NdefMessage;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 453
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsOnManualInvokebySBeam:Z

    .line 454
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 458
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-nez v1, :cond_6

    if-eqz p1, :cond_6

    .line 460
    iget-object v1, p1, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 461
    iget-object v1, p1, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 464
    sget-boolean v1, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "NfcP2pLinkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NFC shareData.uris["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 467
    .end local v0    # "i":I
    :cond_4
    iget-object v1, p1, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    if-eqz v1, :cond_5

    .line 468
    iget-object v1, p1, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 471
    :cond_5
    iget-object v1, p1, Landroid/nfc/BeamShareData;->userHandle:Landroid/os/UserHandle;

    iput-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mUserHandle:Landroid/os/UserHandle;

    .line 473
    :cond_6
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverDataParser;->isHandoverSupported()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 475
    :cond_7
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 476
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v1}, Lcom/android/nfc/P2pEventListener;->onP2pNfcTapRequested()V

    .line 477
    const/16 v1, 0x9

    const/16 v2, 0x2710

    invoke-virtual {p0, v1, v2}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 479
    :cond_8
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onP2pCanceled()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1394
    monitor-enter p0

    .line 1396
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsOnManualInvokebySBeam:Z

    .line 1398
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1399
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v1, :cond_1

    .line 1401
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1409
    :cond_0
    :goto_0
    monitor-exit p0

    .line 1410
    return-void

    .line 1402
    :cond_1
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1405
    const/4 v0, 0x1

    const/16 v1, 0xfa

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    goto :goto_0

    .line 1409
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onP2pSendConfirmed()V
    .locals 1

    .prologue
    .line 1364
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/nfc/P2pLinkManager;->onP2pSendConfirmed(Z)V

    .line 1365
    return-void
.end method

.method onReceiveComplete(Landroid/nfc/NdefMessage;)V
    .locals 2
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1114
    const/4 v0, 0x0

    const-string v1, "Receiving data through NFC succeeded"

    invoke-direct {p0, v0, v1}, Lcom/android/nfc/P2pLinkManager;->auditLog(ZLjava/lang/String;)V

    .line 1117
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1118
    return-void
.end method

.method onReceiveHandover()V
    .locals 2

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1110
    return-void
.end method

.method onSendComplete(Landroid/nfc/NdefMessage;J)V
    .locals 2
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "elapsedRealtime"    # J

    .prologue
    .line 785
    const/4 v0, 0x0

    const-string v1, "Sending data through NFC succeeded"

    invoke-direct {p0, v0, v1}, Lcom/android/nfc/P2pLinkManager;->auditLog(ZLjava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 789
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 574
    monitor-enter p0

    .line 576
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 582
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "Failed to retrieve PackageManager for user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 581
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method prepareMessageToSend(Z)V
    .locals 13
    .param p1, "generatePlayLink"    # Z

    .prologue
    .line 585
    const-string v10, "NfcP2pLinkManager"

    const-string v11, "prepareMessageToSend start"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    monitor-enter p0

    .line 587
    const/4 v10, 0x0

    :try_start_0
    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 588
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 589
    iget-boolean v10, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    if-nez v10, :cond_0

    .line 590
    monitor-exit p0

    .line 675
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v10}, Lcom/android/nfc/ForegroundUtils;->getForegroundUids()Ljava/util/List;

    move-result-object v3

    .line 594
    .local v3, "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 595
    const-string v10, "NfcP2pLinkManager"

    const-string v11, "Could not determine foreground UID."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    monitor-exit p0

    goto :goto_0

    .line 674
    .end local v3    # "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 600
    .restart local v3    # "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    const/4 v7, 0x0

    .line 601
    .local v7, "runningPackage":Ljava/lang/String;
    :try_start_1
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    .line 602
    .local v9, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 603
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 606
    :cond_2
    if-nez v7, :cond_3

    .line 607
    const-string v10, "NfcP2pLinkManager"

    const-string v11, "Could not determine running package."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 609
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 610
    monitor-exit p0

    goto :goto_0

    .line 614
    :cond_3
    const/4 v10, 0x0

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/nfc/P2pLinkManager;->isBeamDisabled(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 615
    const-string v10, "NfcP2pLinkManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Disabling default Beam behavior at UID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 617
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 618
    monitor-exit p0

    goto :goto_0

    .line 621
    :cond_4
    const-string v10, "NfcP2pLinkManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NFC prepareMessageToSend app is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdefs:Ljava/util/Hashtable;

    invoke-virtual {v10, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/IAppCallback;

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    .line 623
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mAllValidCallbackPackages:Ljava/util/Hashtable;

    invoke-virtual {v10, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mValidCallbackPackages:[Ljava/lang/String;

    .line 626
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    if-eqz v10, :cond_7

    .line 628
    const/4 v1, 0x0

    .line 630
    .local v1, "callbackValid":Z
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mValidCallbackPackages:[Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 631
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mValidCallbackPackages:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v6, v0, v4

    .line 632
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_6

    .line 633
    const/4 v1, 0x1

    .line 639
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_c

    .line 642
    :try_start_2
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    iget-byte v11, p0, Lcom/android/nfc/P2pLinkManager;->mPeerLlcpVersion:B

    invoke-interface {v10, v11}, Landroid/nfc/IAppCallback;->createBeamShareData(B)Landroid/nfc/BeamShareData;

    move-result-object v8

    .line 643
    .local v8, "shareData":Landroid/nfc/BeamShareData;
    iget-object v10, v8, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 644
    iget-object v10, v8, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 645
    iget-object v10, v8, Landroid/nfc/BeamShareData;->userHandle:Landroid/os/UserHandle;

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUserHandle:Landroid/os/UserHandle;

    .line 646
    iget v10, v8, Landroid/nfc/BeamShareData;->flags:I

    iput v10, p0, Lcom/android/nfc/P2pLinkManager;->mSendFlags:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 647
    :try_start_3
    monitor-exit p0

    goto/16 :goto_0

    .line 631
    .end local v8    # "shareData":Landroid/nfc/BeamShareData;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "pkg":Ljava/lang/String;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 648
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 649
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "NfcP2pLinkManager"

    const-string v11, "Failed NDEF callback: "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    .end local v1    # "callbackValid":Z
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_2
    if-eqz p1, :cond_8

    invoke-virtual {p0, v7}, Lcom/android/nfc/P2pLinkManager;->beamDefaultDisabled(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    const/4 v10, 0x0

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/nfc/P2pLinkManager;->isBeamDisabled(I)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "android"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 663
    :cond_8
    sget-boolean v10, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v10, :cond_9

    const-string v10, "NfcP2pLinkManager"

    const-string v11, "Disabling default Beam behavior"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_9
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 665
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 672
    :goto_3
    sget-boolean v10, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v10, :cond_a

    const-string v10, "NfcP2pLinkManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMessageToSend = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_a
    sget-boolean v10, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v10, :cond_b

    const-string v10, "NfcP2pLinkManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mUrisToSend = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_b
    monitor-exit p0

    goto/16 :goto_0

    .line 655
    .restart local v1    # "callbackValid":Z
    :cond_c
    sget-boolean v10, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v10, :cond_7

    const-string v10, "NfcP2pLinkManager"

    const-string v11, "Last registered callback is not running in the foreground."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 667
    .end local v1    # "callbackValid":Z
    :cond_d
    invoke-virtual {p0, v7}, Lcom/android/nfc/P2pLinkManager;->createDefaultNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v10

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 668
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method scheduleTimeoutLocked(II)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1415
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1416
    return-void
.end method

.method public secSendAbeamNdefMsg(Landroid/nfc/NdefMessage;)I
    .locals 2
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1490
    sget-boolean v0, Lcom/android/nfc/NfcService;->mIsSecNdefEnabled:Z

    if-nez v0, :cond_0

    .line 1491
    const/4 v0, -0x1

    .line 1493
    :goto_0
    return v0

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1493
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public secSendNdefMsg(ILandroid/nfc/NdefMessage;)I
    .locals 1
    .param p1, "SAP"    # I
    .param p2, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1476
    sget-boolean v0, Lcom/android/nfc/NfcService;->mIsSecNdefEnabled:Z

    if-nez v0, :cond_0

    .line 1477
    const/4 v0, -0x1

    .line 1478
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSecNdefService:Lcom/android/nfc/secSend/SecNdefService;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/secSend/SecNdefService;->secSendNdefMsg(ILandroid/nfc/NdefMessage;)I

    move-result v0

    goto :goto_0
.end method

.method public sendBeamChangeIntent(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 388
    sget-boolean v2, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NfcP2pLinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send Android beam state change intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.nfc.action.ABEAM_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.nfc.extra.ABEAM_STATE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 391
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 393
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.nfc.action.ABEAM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v1, "intent_old":Landroid/content/Intent;
    const-string v2, "android.nfc.extra.ABEAM_STATE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 395
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 397
    return-void
.end method

.method sendNdefMessage()V
    .locals 2

    .prologue
    .line 792
    monitor-enter p0

    .line 793
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 794
    new-instance v0, Lcom/android/nfc/P2pLinkManager$SendTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$SendTask;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 795
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$SendTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 796
    monitor-exit p0

    .line 797
    return-void

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNdefCallback(Landroid/nfc/IAppCallback;I)V
    .locals 11
    .param p1, "callbackNdef"    # Landroid/nfc/IAppCallback;
    .param p2, "callingUid"    # I

    .prologue
    .line 408
    monitor-enter p0

    .line 409
    :try_start_0
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    .line 410
    iput p2, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    .line 412
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v8, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/nfc/P2pLinkManager;->mValidCallbackPackages:[Ljava/lang/String;

    .line 413
    const/4 v5, 0x0

    .line 414
    .local v5, "runningPackage":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 415
    .local v6, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 416
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 419
    :cond_0
    const/4 v1, 0x0

    .line 420
    .local v1, "callbackValidCheck":Z
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mValidCallbackPackages:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 421
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 422
    const/4 v1, 0x1

    .line 427
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_4

    .line 428
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdefs:Ljava/util/Hashtable;

    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    invoke-virtual {v7, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager;->mAllValidCallbackPackages:Ljava/util/Hashtable;

    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager;->mValidCallbackPackages:[Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-boolean v7, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "NfcP2pLinkManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NFC runningPackage is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_2
    sget-boolean v7, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "NfcP2pLinkManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NFC mCallbackNdefs size"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdefs:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_3
    sget-boolean v7, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    if-eqz v7, :cond_4

    const-string v7, "NfcP2pLinkManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NFC mValidCallbackPackage[0] is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager;->mValidCallbackPackages:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_4
    monitor-exit p0

    .line 436
    return-void

    .line 420
    .restart local v4    # "pkg":Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 435
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "callbackValidCheck":Z
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "runningPackage":Ljava/lang/String;
    .end local v6    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method
