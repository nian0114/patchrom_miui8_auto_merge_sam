.class public Lcom/android/nfc/HciEventControl;
.super Ljava/lang/Object;
.source "HciEventControl.java"


# static fields
.field private static final ADMIN_PERM:Ljava/lang/String; = "android.permission.WRITE_SECURE_SETTINGS"

.field private static final ADMIN_PERM_ERROR:Ljava/lang/String; = "WRITE_SECURE_SETTINGS permission required"

.field static final DBG:Z

.field private static final ESE:Ljava/lang/String; = "eSE"

.field private static final HOT_SWAP:Ljava/lang/String; = "com.samsung.intent.action.QCOMHOTSWAP"

.field private static final LEGACY_ACTION_TRANSACTION_EVENT:Ljava/lang/String; = "android.nfc.action.TRANSACTION_DETECTED"

.field private static final LEGACY_TRANSACTION_EXTRA_AID:Ljava/lang/String; = "android.nfc.extra.AID"

.field private static final LEGACY_TRANSACTION_EXTRA_DATA:Ljava/lang/String; = "android.nfc.extra.DATA"

.field private static final LEGACY_TRANSACTION_PERMISSION:Ljava/lang/String; = "android.permission.NFC_TRANSACTION"

.field private static final MPOS_ACTION_TRANSACTION_EVENT:Ljava/lang/String; = "com.samsung.nfc.mpos.action.TRANSACTION_EVENT"

.field private static final MPOS_TRANSACTION_EXTRA_AID:Ljava/lang/String; = "com.samsung.nfc.mpos.extra.AID"

.field private static final MPOS_TRANSACTION_EXTRA_DATA:Ljava/lang/String; = "com.samsung.nfc.mpos.extra.DATA"

.field private static final NFC_PERMISSION:Ljava/lang/String; = "android.permission.NFC"

.field static final READER_ESE:I = 0x1

.field static READER_ESE_S:Ljava/lang/String; = null

.field static final READER_SIM:I = 0x0

.field static READER_SIM_S:Ljava/lang/String; = null

.field private static final SIM:Ljava/lang/String; = "SIM"

.field static final TAG:Ljava/lang/String; = "NfcServiceHciEventControl"


# instance fields
.field private ACTION_TRANSACTION_EVENT:Ljava/lang/String;

.field private TRANSACTION_EXTRA_AID:Ljava/lang/String;

.field private TRANSACTION_EXTRA_DATA:Ljava/lang/String;

.field private TRANSACTION_PERMISSION:Ljava/lang/String;

.field private final mAM:Landroid/app/ActivityManager;

.field private final mBroadcastReceiverReceiver:Landroid/content/BroadcastReceiver;

.field private final mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

.field private final mCertCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIAM:Landroid/app/IActivityManager;

.field private mIsLegacy:Z

.field private final mMultiEvt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPM:Landroid/content/pm/PackageManager;

.field private mSecureEventType:Ljava/lang/String;

.field private mServiceBinded:Z

.field private final mSmartcardConnection:Landroid/content/ServiceConnection;

.field private volatile mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

.field private mStaticBinding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/HciEventControl;->DBG:Z

    .line 96
    const-string v0, "SIM1"

    sput-object v0, Lcom/android/nfc/HciEventControl;->READER_SIM_S:Ljava/lang/String;

    .line 97
    const-string v0, "eSE1"

    sput-object v0, Lcom/android/nfc/HciEventControl;->READER_ESE_S:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/CardEmulationManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cardEmulationManager"    # Lcom/android/nfc/cardemulation/CardEmulationManager;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v1, "com.gsma.services.nfc.permission.TRANSACTION_EVENT"

    iput-object v1, p0, Lcom/android/nfc/HciEventControl;->TRANSACTION_PERMISSION:Ljava/lang/String;

    .line 79
    const-string v1, "com.gsma.services.nfc.action.TRANSACTION_EVENT"

    iput-object v1, p0, Lcom/android/nfc/HciEventControl;->ACTION_TRANSACTION_EVENT:Ljava/lang/String;

    .line 80
    const-string v1, "com.gsma.services.nfc.extra.AID"

    iput-object v1, p0, Lcom/android/nfc/HciEventControl;->TRANSACTION_EXTRA_AID:Ljava/lang/String;

    .line 81
    const-string v1, "com.gsma.services.nfc.extra.DATA"

    iput-object v1, p0, Lcom/android/nfc/HciEventControl;->TRANSACTION_EXTRA_DATA:Ljava/lang/String;

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/HciEventControl;->mSecureEventType:Ljava/lang/String;

    .line 108
    iput-boolean v3, p0, Lcom/android/nfc/HciEventControl;->mIsLegacy:Z

    .line 109
    iput-boolean v2, p0, Lcom/android/nfc/HciEventControl;->mStaticBinding:Z

    .line 110
    iput-boolean v3, p0, Lcom/android/nfc/HciEventControl;->mServiceBinded:Z

    .line 111
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/HciEventControl;->mMultiEvt:Ljava/util/HashMap;

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/HciEventControl;->mCertCache:Ljava/util/HashMap;

    .line 114
    new-instance v1, Lcom/android/nfc/HciEventControl$1;

    invoke-direct {v1, p0}, Lcom/android/nfc/HciEventControl$1;-><init>(Lcom/android/nfc/HciEventControl;)V

    iput-object v1, p0, Lcom/android/nfc/HciEventControl;->mSmartcardConnection:Landroid/content/ServiceConnection;

    .line 134
    new-instance v1, Lcom/android/nfc/HciEventControl$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/HciEventControl$2;-><init>(Lcom/android/nfc/HciEventControl;)V

    iput-object v1, p0, Lcom/android/nfc/HciEventControl;->mBroadcastReceiverReceiver:Landroid/content/BroadcastReceiver;

    .line 168
    iput-object p1, p0, Lcom/android/nfc/HciEventControl;->mContext:Landroid/content/Context;

    .line 169
    iput-object p2, p0, Lcom/android/nfc/HciEventControl;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 170
    iget-object v1, p0, Lcom/android/nfc/HciEventControl;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/nfc/HciEventControl;->mAM:Landroid/app/ActivityManager;

    .line 172
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/HciEventControl;->mIAM:Landroid/app/IActivityManager;

    .line 173
    iget-object v1, p0, Lcom/android/nfc/HciEventControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/HciEventControl;->mPM:Landroid/content/pm/PackageManager;

    .line 174
    const-string v1, "static"

    const-string v4, "persist.nfc.smartcard.bind"

    const-string v5, "static"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/nfc/HciEventControl;->mStaticBinding:Z

    .line 176
    invoke-static {}, Lcom/android/nfc/NfcFeatureUtil;->getInstance()Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->getSecureEventType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/HciEventControl;->mSecureEventType:Ljava/lang/String;

    .line 177
    iget-object v1, p0, Lcom/android/nfc/HciEventControl;->mSecureEventType:Ljava/lang/String;

    const-string v2, "GSMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/nfc/HciEventControl;->mIsLegacy:Z

    .line 179
    iget-object v1, p0, Lcom/android/nfc/HciEventControl;->mSecureEventType:Ljava/lang/String;

    const-string v2, "ISIS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/nfc/NfcFeatureUtil;->getInstance()Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcFeatureUtil;->supportFelica()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    const-string v1, "SIM - UICC"

    sput-object v1, Lcom/android/nfc/HciEventControl;->READER_SIM_S:Ljava/lang/String;

    .line 182
    const-string v1, "eSE - SmartMX"

    sput-object v1, Lcom/android/nfc/HciEventControl;->READER_ESE_S:Ljava/lang/String;

    .line 185
    :cond_1
    iget-boolean v1, p0, Lcom/android/nfc/HciEventControl;->mIsLegacy:Z

    if-eqz v1, :cond_2

    .line 186
    const-string v1, "NfcServiceHciEventControl"

    const-string v2, "use a legacy name"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v1, "android.permission.NFC_TRANSACTION"

    iput-object v1, p0, Lcom/android/nfc/HciEventControl;->TRANSACTION_PERMISSION:Ljava/lang/String;

    .line 188
    const-string v1, "android.nfc.action.TRANSACTION_DETECTED"

    iput-object v1, p0, Lcom/android/nfc/HciEventControl;->ACTION_TRANSACTION_EVENT:Ljava/lang/String;

    .line 189
    const-string v1, "android.nfc.extra.AID"

    iput-object v1, p0, Lcom/android/nfc/HciEventControl;->TRANSACTION_EXTRA_AID:Ljava/lang/String;

    .line 190
    const-string v1, "android.nfc.extra.DATA"

    iput-object v1, p0, Lcom/android/nfc/HciEventControl;->TRANSACTION_EXTRA_DATA:Ljava/lang/String;

    .line 193
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v1, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/android/nfc/HciEventControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/HciEventControl;->mBroadcastReceiverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    iget-boolean v1, p0, Lcom/android/nfc/HciEventControl;->mStaticBinding:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/nfc/HciEventControl;->bindSmartcardService()V

    .line 198
    :cond_3
    return-void

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_4
    move v1, v3

    .line 174
    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/nfc/HciEventControl;Lorg/simalliance/openmobileapi/service/ISmartcardService;)Lorg/simalliance/openmobileapi/service/ISmartcardService;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/HciEventControl;
    .param p1, "x1"    # Lorg/simalliance/openmobileapi/service/ISmartcardService;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/nfc/HciEventControl;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/nfc/HciEventControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/HciEventControl;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/nfc/HciEventControl;->mServiceBinded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/nfc/HciEventControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/HciEventControl;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/nfc/HciEventControl;->mStaticBinding:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/nfc/HciEventControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/HciEventControl;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/nfc/HciEventControl;->bindSmartcardService()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/nfc/HciEventControl;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/HciEventControl;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/nfc/HciEventControl;->mCertCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/nfc/HciEventControl;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/HciEventControl;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/nfc/HciEventControl;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private bindSmartcardService()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 213
    sget-boolean v2, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NfcServiceHciEventControl"

    const-string v3, "bindSmartcardService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    const-string v0, "org.simalliance.openmobileapi.service"

    .line 215
    .local v0, "PACKAGE":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.simalliance.openmobileapi.BIND_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget-object v2, p0, Lcom/android/nfc/HciEventControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/HciEventControl;->mSmartcardConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 219
    sget-boolean v2, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "NfcServiceHciEventControl"

    const-string v3, "bindService success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    iput-boolean v4, p0, Lcom/android/nfc/HciEventControl;->mServiceBinded:Z

    .line 234
    :goto_0
    iget-boolean v2, p0, Lcom/android/nfc/HciEventControl;->mServiceBinded:Z

    if-eqz v2, :cond_2

    .line 235
    const-string v2, "nfc.smartcard.binded"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_2
    return-void

    .line 223
    :cond_3
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v2, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v2, p0, Lcom/android/nfc/HciEventControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/HciEventControl;->mSmartcardConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 227
    sget-boolean v2, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "NfcServiceHciEventControl"

    const-string v3, "bindService success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_4
    iput-boolean v4, p0, Lcom/android/nfc/HciEventControl;->mServiceBinded:Z

    goto :goto_0

    .line 230
    :cond_5
    sget-boolean v2, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "NfcServiceHciEventControl"

    const-string v3, "bindService failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/nfc/HciEventControl;->mServiceBinded:Z

    goto :goto_0
.end method

.method private buildIntent(Ljava/lang/String;[B[B)Landroid/content/Intent;
    .locals 4
    .param p1, "reader"    # Ljava/lang/String;
    .param p2, "aid"    # [B
    .param p3, "param"    # [B

    .prologue
    .line 637
    const/4 v1, 0x0

    .line 638
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/nfc/HciEventControl;->ACTION_TRANSACTION_EVENT:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/nfc/HciEventControl;->TRANSACTION_EXTRA_AID:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 640
    iget-object v2, p0, Lcom/android/nfc/HciEventControl;->TRANSACTION_EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 641
    iget-boolean v2, p0, Lcom/android/nfc/HciEventControl;->mIsLegacy:Z

    if-eqz v2, :cond_1

    .line 642
    sget-object v2, Lcom/android/nfc/HciEventControl;->READER_SIM_S:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nfc://secure:0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/nfc/HciEventControl;->bytesToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 662
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 663
    return-object v0

    .line 647
    :cond_1
    sget-object v2, Lcom/android/nfc/HciEventControl;->READER_SIM_S:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 649
    invoke-static {}, Lcom/android/nfc/NfcFeatureUtil;->getInstance()Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcFeatureUtil;->supportFelica()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nfc://secure:0/SIM - UICC/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/nfc/HciEventControl;->bytesToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 653
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nfc://secure:0/SIM1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/nfc/HciEventControl;->bytesToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 657
    :cond_3
    sget-object v2, Lcom/android/nfc/HciEventControl;->READER_ESE_S:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nfc://secure:0/eSE1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/nfc/HciEventControl;->bytesToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private buildPartIntent(Ljava/lang/String;[B[B)Landroid/content/Intent;
    .locals 3
    .param p1, "reader"    # Ljava/lang/String;
    .param p2, "aid"    # [B
    .param p3, "param"    # [B

    .prologue
    .line 667
    const/4 v1, 0x0

    .line 668
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 669
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/android/nfc/HciEventControl;->mIsLegacy:Z

    if-eqz v2, :cond_1

    .line 670
    sget-object v2, Lcom/android/nfc/HciEventControl;->READER_SIM_S:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 671
    const-string v2, "nfc://secure:0/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 691
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 692
    return-object v0

    .line 674
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/HciEventControl;->ACTION_TRANSACTION_EVENT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    iget-object v2, p0, Lcom/android/nfc/HciEventControl;->TRANSACTION_EXTRA_AID:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 676
    iget-object v2, p0, Lcom/android/nfc/HciEventControl;->TRANSACTION_EXTRA_DATA:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 677
    sget-object v2, Lcom/android/nfc/HciEventControl;->READER_SIM_S:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 679
    invoke-static {}, Lcom/android/nfc/NfcFeatureUtil;->getInstance()Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcFeatureUtil;->supportFelica()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 680
    const-string v2, "nfc://secure:0/SIM - UICC"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 682
    :cond_2
    const-string v2, "nfc://secure:0/SIM1"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 685
    :cond_3
    sget-object v2, Lcom/android/nfc/HciEventControl;->READER_ESE_S:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 686
    const-string v2, "nfc://secure:0/eSE1"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 688
    :cond_4
    const-string v2, "nfc://secure:0/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private buildResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 737
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 738
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 739
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iput-object p1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 740
    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 741
    return-object v1
.end method

.method private bytesToString([B)Ljava/lang/String;
    .locals 9
    .param p1, "bytes"    # [B

    .prologue
    .line 728
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 729
    :cond_0
    new-instance v5, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 733
    :goto_0
    return-object v5

    .line 730
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 731
    .local v2, "buffer":Ljava/lang/StringBuffer;
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-byte v1, v0, v3

    .line 732
    .local v1, "b":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    and-int/lit16 v8, v1, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 731
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 733
    .end local v1    # "b":B
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private checkCdfApproved(Ljava/lang/String;)V
    .locals 8
    .param p1, "reader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 824
    const/4 v4, 0x0

    .line 825
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/android/nfc/HciEventControl;->mAM:Landroid/app/ActivityManager;

    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 826
    .local v1, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 827
    .local v0, "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 830
    :try_start_0
    iget-object v5, p0, Lcom/android/nfc/HciEventControl;->mPM:Landroid/content/pm/PackageManager;

    iget-object v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 835
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 836
    const-string v5, "NfcServiceHciEventControl"

    const-string v6, "package does not match uid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "certificate authorization failed"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 831
    :catch_0
    move-exception v2

    .line 832
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "NfcServiceHciEventControl"

    const-string v6, "NameNotFoundException"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 833
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "certificate authorization failed"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 839
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/android/nfc/HciEventControl;->isAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 840
    sget-boolean v5, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "NfcServiceHciEventControl"

    const-string v6, "authorization success"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_2
    return-void

    .line 843
    :cond_3
    const-string v5, "NfcServiceHciEventControl"

    const-string v6, "authorization failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "certificate authorization failed"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 847
    .end local v0    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    const-string v5, "NfcServiceHciEventControl"

    const-string v6, "caller package name cannot be determined"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "certificate authorization failed"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)Ljava/lang/String;
    .locals 2
    .param p1, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;

    .prologue
    .line 720
    :try_start_0
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->throwException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, "exp":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private dispatchSecureEvent(Ljava/lang/String;[B[B)V
    .locals 12
    .param p1, "reader"    # Ljava/lang/String;
    .param p2, "aid"    # [B
    .param p3, "param"    # [B

    .prologue
    .line 376
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/HciEventControl;->buildIntent(Ljava/lang/String;[B[B)Landroid/content/Intent;

    move-result-object v4

    .line 377
    .local v4, "intent":Landroid/content/Intent;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/HciEventControl;->buildPartIntent(Ljava/lang/String;[B[B)Landroid/content/Intent;

    move-result-object v7

    .line 380
    .local v7, "partIntent":Landroid/content/Intent;
    :try_start_0
    iget-object v10, p0, Lcom/android/nfc/HciEventControl;->mIAM:Landroid/app/IActivityManager;

    invoke-interface {v10}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 384
    :goto_0
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v11, p0, Lcom/android/nfc/HciEventControl;->mMultiEvt:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 385
    iget-object v10, p0, Lcom/android/nfc/HciEventControl;->mPM:Landroid/content/pm/PackageManager;

    const v11, 0x10040

    invoke-virtual {v10, v4, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 388
    .local v9, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v10, p0, Lcom/android/nfc/HciEventControl;->mPM:Landroid/content/pm/PackageManager;

    const v11, 0x10040

    invoke-virtual {v10, v7, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 392
    :try_start_1
    iget-object v10, p0, Lcom/android/nfc/HciEventControl;->mAM:Landroid/app/ActivityManager;

    invoke-virtual {v10, v4}, Landroid/app/ActivityManager;->queryRegisteredReceiverPackages(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object v8

    .line 394
    .local v8, "result":[Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v6, v0, v3

    .line 395
    .local v6, "packageName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/nfc/HciEventControl;->buildResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 396
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/android/nfc/HciEventControl;->mAM:Landroid/app/ActivityManager;

    invoke-virtual {v10, v7}, Landroid/app/ActivityManager;->queryRegisteredReceiverPackages(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object v8

    .line 397
    move-object v0, v8

    array-length v5, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_1

    aget-object v6, v0, v3

    .line 398
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/nfc/HciEventControl;->buildResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 397
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 399
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "result":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 400
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "NfcServiceHciEventControl"

    const-string v11, "Exception"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, v9}, Lcom/android/nfc/HciEventControl;->removeDuplicateService(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 403
    sget-boolean v10, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v10, :cond_2

    invoke-direct {p0, v9}, Lcom/android/nfc/HciEventControl;->logPackages(Ljava/util/List;)V

    .line 405
    :cond_2
    :try_start_2
    invoke-direct {p0, p1, v4, p2, v9}, Lcom/android/nfc/HciEventControl;->findAndSendBroadcast(Ljava/lang/String;Landroid/content/Intent;[BLjava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 453
    :cond_3
    :goto_3
    return-void

    .line 406
    :catch_1
    move-exception v2

    .line 407
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "NfcServiceHciEventControl"

    const-string v11, "Exception"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 412
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v9    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    iget-object v10, p0, Lcom/android/nfc/HciEventControl;->mPM:Landroid/content/pm/PackageManager;

    const v11, 0x10040

    invoke-virtual {v10, v4, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 415
    .restart local v9    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v10, p0, Lcom/android/nfc/HciEventControl;->mPM:Landroid/content/pm/PackageManager;

    const v11, 0x10040

    invoke-virtual {v10, v7, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 423
    new-instance v1, Lcom/android/nfc/HciEventControl$4;

    invoke-direct {v1, p0}, Lcom/android/nfc/HciEventControl$4;-><init>(Lcom/android/nfc/HciEventControl;)V

    .line 442
    .local v1, "comp":Ljava/util/Comparator;
    invoke-static {v9, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 444
    sget-boolean v10, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v10, :cond_5

    invoke-direct {p0, v9}, Lcom/android/nfc/HciEventControl;->logPackages(Ljava/util/List;)V

    .line 447
    :cond_5
    :try_start_3
    invoke-direct {p0, p1, v4, p2, v9}, Lcom/android/nfc/HciEventControl;->findAndStartActivity(Ljava/lang/String;Landroid/content/Intent;[BLjava/util/List;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v10

    if-nez v10, :cond_3

    .line 452
    :goto_4
    const-string v10, "NfcServiceHciEventControl"

    const-string v11, "there\'s no activity for a SE"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 449
    :catch_2
    move-exception v2

    .line 450
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "NfcServiceHciEventControl"

    const-string v11, "Exception"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 381
    .end local v1    # "comp":Ljava/util/Comparator;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v9    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_3
    move-exception v10

    goto/16 :goto_0
.end method

.method private findAndSendBroadcast(Ljava/lang/String;Landroid/content/Intent;[BLjava/util/List;)V
    .locals 10
    .param p1, "reader"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "aid"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "[B",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 531
    .local p4, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v7, "NfcServiceHciEventControl"

    const-string v8, "trying to send a broadcast"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 533
    :cond_0
    const-string v7, "NfcServiceHciEventControl"

    const-string v8, "ri is null or size is 0"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_1
    return-void

    .line 536
    :cond_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 537
    .local v6, "packageNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 538
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v3

    .line 537
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 539
    :cond_3
    invoke-direct {p0, p1, p2, v6}, Lcom/android/nfc/HciEventControl;->isConnectionAllowed(Ljava/lang/String;Landroid/content/Intent;[Ljava/lang/String;)[Z

    move-result-object v0

    .line 541
    .local v0, "access":[Z
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 542
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 543
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 544
    .local v1, "activityName":Ljava/lang/String;
    sget-boolean v7, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v7, :cond_4

    .line 546
    :try_start_0
    iget-object v7, p0, Lcom/android/nfc/HciEventControl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x1000

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 549
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v7, "NfcServiceHciEventControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v7, "NfcServiceHciEventControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "activity = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v7, "NfcServiceHciEventControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "access   = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-boolean v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v7, "NfcServiceHciEventControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestedPermissions="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_2
    iget-object v7, p0, Lcom/android/nfc/HciEventControl;->mPM:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/android/nfc/HciEventControl;->TRANSACTION_PERMISSION:Ljava/lang/String;

    invoke-virtual {v7, v8, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_4

    .line 559
    const-string v7, "NfcServiceHciEventControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/nfc/HciEventControl;->TRANSACTION_PERMISSION:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " doesn\'t exist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_4
    iget-object v7, p0, Lcom/android/nfc/HciEventControl;->mPM:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/android/nfc/HciEventControl;->TRANSACTION_PERMISSION:Ljava/lang/String;

    invoke-virtual {v7, v8, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/nfc/HciEventControl;->mPM:Landroid/content/pm/PackageManager;

    const-string v8, "android.permission.NFC"

    invoke-virtual {v7, v8, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_5

    aget-boolean v7, v0, v3

    if-nez v7, :cond_6

    .line 565
    :cond_5
    const-string v7, "NfcServiceHciEventControl"

    const-string v8, "permission denied"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 555
    :catch_0
    move-exception v2

    .line 556
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "NfcServiceHciEventControl"

    const-string v8, "NameNotFoundException"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 569
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    invoke-virtual {p2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    iget-object v7, p0, Lcom/android/nfc/HciEventControl;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 571
    const-string v7, "NfcServiceHciEventControl"

    const-string v8, "sent broadcast intent"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private findAndStartActivity(Ljava/lang/String;Landroid/content/Intent;[BLjava/util/List;)Z
    .locals 11
    .param p1, "reader"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "aid"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "[B",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p4, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x0

    .line 577
    const-string v7, "NfcServiceHciEventControl"

    const-string v9, "trying to start a normal activity"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 579
    :cond_0
    const-string v7, "NfcServiceHciEventControl"

    const-string v9, "ri is null or size is 0"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 619
    :goto_0
    return v7

    .line 582
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 583
    .local v6, "packageNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 584
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v3

    .line 583
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 585
    :cond_2
    invoke-direct {p0, p1, p2, v6}, Lcom/android/nfc/HciEventControl;->isConnectionAllowed(Ljava/lang/String;Landroid/content/Intent;[Ljava/lang/String;)[Z

    move-result-object v0

    .line 587
    .local v0, "access":[Z
    const/4 v3, 0x0

    :goto_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_7

    .line 588
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 589
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 591
    .local v1, "activityName":Ljava/lang/String;
    sget-boolean v7, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v7, :cond_3

    .line 593
    :try_start_0
    iget-object v7, p0, Lcom/android/nfc/HciEventControl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v9, 0x1000

    invoke-virtual {v7, v5, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 596
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v7, "NfcServiceHciEventControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "package  = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v7, "NfcServiceHciEventControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "activity = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v7, "NfcServiceHciEventControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "access   = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-boolean v10, v0, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v7, "NfcServiceHciEventControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestedPermissions="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_3
    iget-object v7, p0, Lcom/android/nfc/HciEventControl;->mPM:Landroid/content/pm/PackageManager;

    iget-object v9, p0, Lcom/android/nfc/HciEventControl;->TRANSACTION_PERMISSION:Ljava/lang/String;

    invoke-virtual {v7, v9, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_3

    .line 607
    const-string v7, "NfcServiceHciEventControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/nfc/HciEventControl;->TRANSACTION_PERMISSION:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doesn\'t exist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_3
    iget-object v7, p0, Lcom/android/nfc/HciEventControl;->mPM:Landroid/content/pm/PackageManager;

    iget-object v9, p0, Lcom/android/nfc/HciEventControl;->TRANSACTION_PERMISSION:Ljava/lang/String;

    invoke-virtual {v7, v9, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    aget-boolean v7, v0, v3

    if-nez v7, :cond_6

    .line 612
    :cond_4
    const-string v7, "NfcServiceHciEventControl"

    const-string v9, "permission denied"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 603
    :catch_0
    move-exception v2

    .line 604
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "NfcServiceHciEventControl"

    const-string v9, "NameNotFoundException"

    invoke-static {v7, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 615
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    invoke-direct {p0, p2, v5, v1}, Lcom/android/nfc/HciEventControl;->startActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 616
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 618
    .end local v1    # "activityName":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_7
    const-string v7, "NfcServiceHciEventControl"

    const-string v9, "there\'s no activity that is allowed to handle SE"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 619
    goto/16 :goto_0
.end method

.method private isAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "reader"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 890
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/HciEventControl;->mCertCache:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/HciEventControl;->loadCerts()V

    .line 891
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/HciEventControl;->mCertCache:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/HciEventControl;->mCertCache:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_2

    .line 893
    :cond_1
    const-string v13, "NfcServiceHciEventControl"

    const-string v14, "no signatures"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/4 v13, 0x0

    .line 933
    :goto_0
    return v13

    .line 897
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/HciEventControl;->mPM:Landroid/content/pm/PackageManager;

    const/16 v14, 0x40

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 899
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v8, :cond_3

    iget-object v13, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v13, :cond_3

    iget-object v13, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v13, v13

    if-nez v13, :cond_4

    .line 901
    :cond_3
    const-string v13, "NfcServiceHciEventControl"

    const-string v14, "no application signatures"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v13, 0x0

    goto :goto_0

    .line 904
    :cond_4
    sget-boolean v13, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v13, :cond_5

    const-string v13, "NfcServiceHciEventControl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "an app has "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " signatures"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_5
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v5    # "i$":I
    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_b

    aget-object v10, v1, v6

    .line 906
    .local v10, "pkgSig":Landroid/content/pm/Signature;
    if-nez v10, :cond_7

    .line 905
    .end local v6    # "i$":I
    :cond_6
    add-int/lit8 v5, v6, 0x1

    .restart local v5    # "i$":I
    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_1

    .line 907
    :cond_7
    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v11

    .line 908
    .local v11, "pkgSigBytes":[B
    const-string v13, "X.509"

    invoke-static {v13}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 910
    .local v4, "factory":Ljava/security/cert/CertificateFactory;
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4, v13}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    .line 913
    .local v12, "pkgX509":Ljava/security/cert/X509Certificate;
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v9

    .line 914
    .local v9, "pkgCertBytes":[B
    sget-boolean v13, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v13, :cond_8

    const-string v13, "NfcServiceHciEventControl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "pkgCert="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/nfc/HciEventControl;->bytesToString([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/HciEventControl;->mCertCache:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v6    # "i$":I
    .local v5, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 916
    .local v2, "cdfCertBytes":[B
    if-eqz v2, :cond_9

    .line 917
    sget-boolean v13, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v13, :cond_a

    const-string v13, "NfcServiceHciEventControl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cdfCert="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/nfc/HciEventControl;->bytesToString([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_a
    invoke-static {v9, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 919
    const-string v13, "NfcServiceHciEventControl"

    const-string v14, "signatures match"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 924
    .end local v2    # "cdfCertBytes":[B
    .end local v4    # "factory":Ljava/security/cert/CertificateFactory;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "pkgCertBytes":[B
    .end local v10    # "pkgSig":Landroid/content/pm/Signature;
    .end local v11    # "pkgSigBytes":[B
    .end local v12    # "pkgX509":Ljava/security/cert/X509Certificate;
    .restart local v6    # "i$":I
    :cond_b
    const-string v13, "NfcServiceHciEventControl"

    const-string v14, "signatures do not match"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 925
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 926
    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    .line 927
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "NfcServiceHciEventControl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " package could not be found"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 933
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 928
    :catch_1
    move-exception v3

    .line 929
    .local v3, "e":Ljava/security/cert/CertificateException;
    const-string v13, "NfcServiceHciEventControl"

    const-string v14, "specified certificate is not available at any provider"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 930
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v3

    .line 931
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "NfcServiceHciEventControl"

    const-string v14, "Exception"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private isConnectionAllowed(Ljava/lang/String;Landroid/content/Intent;[Ljava/lang/String;)[Z
    .locals 8
    .param p1, "reader"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "packageNames"    # [Ljava/lang/String;

    .prologue
    .line 697
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 698
    :cond_0
    const-string v0, "NfcServiceHciEventControl"

    const-string v1, "reader or intent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    array-length v0, p3

    new-array v7, v0, [Z

    .line 715
    :cond_1
    :goto_0
    return-object v7

    .line 701
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/HciEventControl;->TRANSACTION_EXTRA_AID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 703
    .local v2, "aid":[B
    :try_start_0
    new-instance v4, Lcom/android/nfc/HciEventControl$5;

    invoke-direct {v4, p0}, Lcom/android/nfc/HciEventControl$5;-><init>(Lcom/android/nfc/HciEventControl;)V

    .line 704
    .local v4, "callback":Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    new-instance v5, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v5}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 705
    .local v5, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    iget-object v0, p0, Lcom/android/nfc/HciEventControl;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    move-object v1, p1

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->isNFCEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)[Z

    move-result-object v7

    .line 707
    .local v7, "result":[Z
    if-nez v7, :cond_1

    .line 708
    const-string v0, "NfcServiceHciEventControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return null by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v5}, Lcom/android/nfc/HciEventControl;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    array-length v0, p3

    new-array v7, v0, [Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 712
    .end local v4    # "callback":Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .end local v5    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v7    # "result":[Z
    :catch_0
    move-exception v6

    .line 713
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "NfcServiceHciEventControl"

    const-string v1, "there was a problem during executing isNFCEventAllowed"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 715
    array-length v0, p3

    new-array v7, v0, [Z

    goto :goto_0
.end method

.method private loadCerts()V
    .locals 11

    .prologue
    .line 864
    iget-object v7, p0, Lcom/android/nfc/HciEventControl;->mCertCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 865
    sget-boolean v7, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "NfcServiceHciEventControl"

    const-string v8, "cache existed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    invoke-direct {p0}, Lcom/android/nfc/HciEventControl;->waitForSmartcardService()Z

    move-result v7

    if-nez v7, :cond_2

    .line 869
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "certificate authorization failed"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 871
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .local v1, "cache":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v3, 0x0

    .line 874
    .local v3, "certs":[Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/nfc/HciEventControl;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    const-string v8, "SIM"

    invoke-interface {v7, v8}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->loadCerts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 875
    if-eqz v3, :cond_3

    .line 876
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v2, v0, v5

    .line 877
    .local v2, "cert":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 879
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "cert":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_3
    iget-object v7, p0, Lcom/android/nfc/HciEventControl;->mCertCache:Ljava/util/HashMap;

    const-string v8, "SIM"

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :goto_2
    sget-boolean v7, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v7, :cond_0

    .line 884
    const-string v8, "NfcServiceHciEventControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIM has "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/nfc/HciEventControl;->mCertCache:Ljava/util/HashMap;

    const-string v10, "SIM"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/nfc/HciEventControl;->mCertCache:Ljava/util/HashMap;

    const-string v10, "SIM"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    :goto_3
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " certificates"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 880
    :catch_0
    move-exception v4

    .line 881
    .local v4, "e":Landroid/os/RemoteException;
    const-string v7, "NfcServiceHciEventControl"

    const-string v8, "RemoteException"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 884
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_4
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private logPackages(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 778
    .local p1, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v3, "NfcServiceHciEventControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " suitable applications"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 780
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    .line 782
    :try_start_0
    const-string v3, "NfcServiceHciEventControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " priority = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const-string v3, "NfcServiceHciEventControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " install time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/HciEventControl;->mPM:Landroid/content/pm/PackageManager;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-wide v6, v5, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "NfcServiceHciEventControl"

    const-string v4, "can\'t find package name"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 790
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-void
.end method

.method private removeDuplicateService(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 745
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v5, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-object v5

    .line 749
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 750
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 751
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_2

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v9, :cond_3

    .line 749
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 753
    :cond_3
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 755
    .local v7, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 756
    .local v1, "exist":Z
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 757
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 758
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 759
    .local v8, "r":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 761
    .local v6, "p":Ljava/lang/String;
    if-eqz v6, :cond_5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 763
    const/4 v1, 0x1

    .line 768
    .end local v4    # "j":I
    .end local v6    # "p":Ljava/lang/String;
    .end local v8    # "r":Landroid/content/pm/ResolveInfo;
    :cond_4
    if-nez v1, :cond_2

    .line 769
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 771
    .end local v1    # "exist":Z
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "NfcServiceHciEventControl"

    const-string v10, "Exception"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 757
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "exist":Z
    .restart local v3    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "j":I
    .restart local v6    # "p":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "r":Landroid/content/pm/ResolveInfo;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private sendOrderedBroadcast([B[B)Z
    .locals 16
    .param p1, "aid"    # [B
    .param p2, "param"    # [B

    .prologue
    .line 460
    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.android.nfc_extras.action.AID_SELECTED"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .local v6, "intent":Landroid/content/Intent;
    const-string v13, "com.android.nfc_extras.extra.AID"

    move-object/from16 v0, p1

    invoke-virtual {v6, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 462
    const-string v13, "com.android.nfc_extras.extra.DATA"

    move-object/from16 v0, p2

    invoke-virtual {v6, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 464
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/HciEventControl;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/HciEventControl;->mAM:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v14

    invoke-direct/range {p0 .. p1}, Lcom/android/nfc/HciEventControl;->bytesToString([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getRegisteredServices(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v11

    .line 467
    .local v11, "registeredPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v7, "otherPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/HciEventControl;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v13}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getForegroundService()Ljava/lang/String;

    move-result-object v4

    .line 469
    .local v4, "foregroundPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/HciEventControl;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "nfc_payment_default_component"

    invoke-static {v13, v14}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "component":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "defaultPackage":Ljava/lang/String;
    :goto_0
    const/4 v10, 0x0

    .local v10, "prefer":Z
    const/4 v3, 0x0

    .local v3, "exist":Z
    const/4 v12, 0x0

    .line 485
    .local v12, "sent":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/HciEventControl;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "nfc_payment_foreground"

    invoke-static {v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v13, :cond_2

    const/4 v10, 0x1

    .line 491
    :goto_1
    if-eqz v11, :cond_4

    .line 493
    const-string v13, "payment"

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 494
    .local v9, "pkg":Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 495
    const/4 v3, 0x1

    goto :goto_2

    .line 472
    .end local v2    # "defaultPackage":Ljava/lang/String;
    .end local v3    # "exist":Z
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v10    # "prefer":Z
    .end local v12    # "sent":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 485
    .restart local v2    # "defaultPackage":Ljava/lang/String;
    .restart local v3    # "exist":Z
    .restart local v10    # "prefer":Z
    .restart local v12    # "sent":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 497
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v13, "other"

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 498
    .restart local v9    # "pkg":Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 501
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "pkg":Ljava/lang/String;
    :cond_4
    sget-boolean v13, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v13, :cond_5

    .line 502
    const-string v13, "NfcServiceHciEventControl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "foreground : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " (state = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string v13, "NfcServiceHciEventControl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "default : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " (exist = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 505
    .local v8, "packageName":Ljava/lang/String;
    const-string v13, "NfcServiceHciEventControl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "other : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 508
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_5
    if-eqz v10, :cond_8

    if-eqz v4, :cond_8

    .line 509
    sget-boolean v13, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v13, :cond_6

    const-string v13, "NfcServiceHciEventControl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "broadcast to preferred&foreground service : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_6
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/HciEventControl;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 512
    const/4 v12, 0x1

    .line 526
    :cond_7
    :goto_5
    return v12

    .line 513
    :cond_8
    if-eqz v2, :cond_a

    .line 514
    sget-boolean v13, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v13, :cond_9

    const-string v13, "NfcServiceHciEventControl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "broadcast to default service : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_9
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/HciEventControl;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 517
    const/4 v12, 0x1

    goto :goto_5

    .line 519
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 520
    .restart local v8    # "packageName":Ljava/lang/String;
    sget-boolean v13, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v13, :cond_b

    const-string v13, "NfcServiceHciEventControl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "broadcast to other service : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_b
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/HciEventControl;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 523
    const/4 v12, 0x1

    .line 524
    goto :goto_6

    .line 487
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v13

    goto/16 :goto_1
.end method

.method private startActivity(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .prologue
    .line 624
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 627
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/HciEventControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 628
    const-string v1, "NfcServiceHciEventControl"

    const-string v2, "started activity for a SE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    const/4 v1, 0x1

    .line 632
    :goto_0
    return v1

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NfcServiceHciEventControl"

    const-string v2, "there were problems starting activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 632
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private unbindSmartcardService()V
    .locals 2

    .prologue
    .line 239
    sget-boolean v0, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcServiceHciEventControl"

    const-string v1, "unbindSmartcardService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/HciEventControl;->mServiceBinded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/HciEventControl;->mSmartcardConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/nfc/HciEventControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/HciEventControl;->mSmartcardConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 243
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/HciEventControl;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/HciEventControl;->mServiceBinded:Z

    .line 245
    const-string v0, "nfc.smartcard.binded"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private waitForSmartcardService()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 249
    iget-object v4, p0, Lcom/android/nfc/HciEventControl;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-eqz v4, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v3

    .line 250
    :cond_1
    iget-boolean v4, p0, Lcom/android/nfc/HciEventControl;->mServiceBinded:Z

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/nfc/HciEventControl;->bindSmartcardService()V

    .line 251
    :cond_2
    const/4 v0, 0x6

    .line 252
    .local v0, "MAX_COUNT":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 253
    iget-object v4, p0, Lcom/android/nfc/HciEventControl;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/nfc/HciEventControl;->mServiceBinded:Z

    if-nez v4, :cond_5

    .line 263
    :cond_3
    iget-boolean v4, p0, Lcom/android/nfc/HciEventControl;->mServiceBinded:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/nfc/HciEventControl;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v4, :cond_0

    .line 266
    :cond_4
    const-string v3, "NfcServiceHciEventControl"

    const-string v4, "service not connected"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v3, 0x0

    goto :goto_0

    .line 254
    :cond_5
    sget-boolean v4, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v4, :cond_6

    const-string v4, "NfcServiceHciEventControl"

    const-string v5, "waiting for connection"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_6
    iget-object v4, p0, Lcom/android/nfc/HciEventControl;->mSmartcardConnection:Landroid/content/ServiceConnection;

    monitor-enter v4

    .line 257
    :try_start_0
    iget-object v5, p0, Lcom/android/nfc/HciEventControl;->mSmartcardConnection:Landroid/content/ServiceConnection;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :goto_2
    :try_start_1
    monitor-exit v4

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v5, "NfcServiceHciEventControl"

    const-string v6, "error"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 261
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method checkAndSendIntent(I[B[B)V
    .locals 4
    .param p1, "reader"    # I
    .param p2, "aid"    # [B
    .param p3, "param"    # [B

    .prologue
    .line 356
    sget-boolean v1, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NfcServiceHciEventControl"

    const-string v2, "check and send intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/android/nfc/HciEventControl;->waitForSmartcardService()Z

    move-result v1

    if-nez v1, :cond_1

    .line 373
    :goto_0
    return-void

    .line 359
    :cond_1
    if-nez p1, :cond_2

    .line 360
    :try_start_0
    sget-object v1, Lcom/android/nfc/HciEventControl;->READER_SIM_S:Ljava/lang/String;

    invoke-direct {p0, v1, p2, p3}, Lcom/android/nfc/HciEventControl;->dispatchSecureEvent(Ljava/lang/String;[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NfcServiceHciEventControl"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 361
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 362
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/android/nfc/HciEventControl;->sendOrderedBroadcast([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 363
    const-string v1, "NfcServiceHciEventControl"

    const-string v2, "transfer success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :cond_3
    const-string v1, "NfcServiceHciEventControl"

    const-string v2, "transfer failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    :cond_4
    const-string v1, "NfcServiceHciEventControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown reader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method checkAndSendIntent(Landroid/nfc/INfcHciEventCallback;Lcom/android/nfc/NfcDispatcher;[B[B)V
    .locals 4
    .param p1, "hciCallback"    # Landroid/nfc/INfcHciEventCallback;
    .param p2, "mNfcDispatcher"    # Lcom/android/nfc/NfcDispatcher;
    .param p3, "aid"    # [B
    .param p4, "param"    # [B

    .prologue
    .line 314
    const-string v2, "NfcServiceHciEventControl"

    const-string v3, "check and send intent for mPOS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 316
    :cond_0
    const-string v2, "NfcServiceHciEventControl"

    const-string v3, "hciCallback or mNfcDispatcher is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_0
    return-void

    .line 320
    :cond_1
    invoke-virtual {p2}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    .line 321
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.nfc.mpos.action.TRANSACTION_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.nfc.mpos.extra.AID"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 323
    const-string v2, "com.samsung.nfc.mpos.extra.DATA"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 324
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 327
    :try_start_0
    invoke-interface {p1, v1}, Landroid/nfc/INfcHciEventCallback;->onHciEvtTrasactionDetected(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NfcServiceHciEventControl"

    const-string v3, "exception occured"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method checkAndSendIntent(Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;Lcom/android/nfc/NfcDispatcher;[B[B)V
    .locals 4
    .param p1, "callbacks"    # Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;
    .param p2, "mNfcDispatcher"    # Lcom/android/nfc/NfcDispatcher;
    .param p3, "aid"    # [B
    .param p4, "param"    # [B

    .prologue
    .line 335
    const-string v2, "NfcServiceHciEventControl"

    const-string v3, "check and send intent for mPOS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 337
    :cond_0
    const-string v2, "NfcServiceHciEventControl"

    const-string v3, "callbacks or mNfcDispatcher is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_0
    return-void

    .line 341
    :cond_1
    invoke-virtual {p2}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    .line 342
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.nfc.mpos.action.TRANSACTION_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.nfc.mpos.extra.AID"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 344
    const-string v2, "com.samsung.nfc.mpos.extra.DATA"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 345
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 348
    :try_start_0
    invoke-interface {p1, v1}, Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;->onHciEvtTrasactionDetected(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NfcServiceHciEventControl"

    const-string v3, "exception occured"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method checkBind()V
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/android/nfc/HciEventControl;->mStaticBinding:Z

    if-eqz v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/HciEventControl;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/android/nfc/HciEventControl;->bindSmartcardService()V

    goto :goto_0
.end method

.method checkPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "reader"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 288
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 289
    :cond_0
    const-string v0, "NfcServiceHciEventControl"

    const-string v1, "reader or pkg is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 309
    :goto_0
    return v0

    .line 292
    :cond_1
    const-string v0, "NfcServiceHciEventControl"

    const-string v1, "check and send intent for mPOS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :try_start_0
    new-instance v4, Lcom/android/nfc/HciEventControl$3;

    invoke-direct {v4, p0}, Lcom/android/nfc/HciEventControl$3;-><init>(Lcom/android/nfc/HciEventControl;)V

    .line 295
    .local v4, "callback":Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    new-instance v5, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v5}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 296
    .local v5, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 297
    .local v3, "packageNames":[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p2, v3, v0

    .line 298
    iget-object v0, p0, Lcom/android/nfc/HciEventControl;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->isNFCEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)[Z

    move-result-object v7

    .line 300
    .local v7, "result":[Z
    if-nez v7, :cond_2

    .line 301
    const-string v0, "NfcServiceHciEventControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return null by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v5}, Lcom/android/nfc/HciEventControl;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 302
    goto :goto_0

    .line 304
    :cond_2
    const-string v0, "NfcServiceHciEventControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-boolean v2, v7, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v0, 0x0

    aget-boolean v0, v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    .end local v3    # "packageNames":[Ljava/lang/String;
    .end local v4    # "callback":Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .end local v5    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v7    # "result":[Z
    :catch_0
    move-exception v6

    .line 307
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "NfcServiceHciEventControl"

    const-string v1, "there was a problem during executing permission check"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v8

    .line 309
    goto :goto_0
.end method

.method checkUnBind()V
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/nfc/HciEventControl;->mStaticBinding:Z

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/HciEventControl;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/android/nfc/HciEventControl;->unbindSmartcardService()V

    goto :goto_0
.end method

.method enableMultiEvt_transactionReception(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "reader"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 793
    const-string v0, "NfcServiceHciEventControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable multi event transaction for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const-string v0, "SIM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    iget-object v0, p0, Lcom/android/nfc/HciEventControl;->mMultiEvt:Ljava/util/HashMap;

    sget-object v1, Lcom/android/nfc/HciEventControl;->READER_SIM_S:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    const-string v0, "eSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/android/nfc/HciEventControl;->mMultiEvt:Ljava/util/HashMap;

    sget-object v1, Lcom/android/nfc/HciEventControl;->READER_ESE_S:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method isAllowedForGsma()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 801
    iget-object v4, p0, Lcom/android/nfc/HciEventControl;->mCertCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 802
    invoke-direct {p0}, Lcom/android/nfc/HciEventControl;->waitForSmartcardService()Z

    move-result v4

    if-nez v4, :cond_0

    .line 820
    :goto_0
    return v2

    .line 804
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/HciEventControl;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v6, "WRITE_SECURE_SETTINGS permission required"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 806
    goto :goto_0

    .line 807
    :catch_0
    move-exception v0

    .line 809
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_1
    sget-boolean v4, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "NfcServiceHciEventControl"

    const-string v5, "check the permission on SIM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_1
    const-string v4, "SIM"

    invoke-direct {p0, v4}, Lcom/android/nfc/HciEventControl;->checkCdfApproved(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    move v2, v3

    .line 811
    goto :goto_0

    .line 812
    :catch_1
    move-exception v1

    .line 813
    .local v1, "e1":Ljava/lang/SecurityException;
    const-string v3, "NfcServiceHciEventControl"

    const-string v4, "SecurityException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 814
    .end local v1    # "e1":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 815
    .local v1, "e1":Landroid/os/RemoteException;
    const-string v3, "NfcServiceHciEventControl"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 816
    .end local v1    # "e1":Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .line 817
    .local v1, "e1":Ljava/lang/NullPointerException;
    const-string v3, "NfcServiceHciEventControl"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method isEvtAllowed(Ljava/lang/String;Landroid/content/Intent;[Ljava/lang/String;)[Z
    .locals 1
    .param p1, "reader"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "packageNames"    # [Ljava/lang/String;

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/nfc/HciEventControl;->waitForSmartcardService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    array-length v0, p3

    new-array v0, v0, [Z

    .line 282
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/HciEventControl;->isConnectionAllowed(Ljava/lang/String;Landroid/content/Intent;[Ljava/lang/String;)[Z

    move-result-object v0

    goto :goto_0
.end method

.method isTrustedPkg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "reader"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 853
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v1

    .line 860
    :cond_1
    :goto_0
    return v0

    .line 854
    :cond_2
    const-string v2, "SIM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 855
    iget-object v2, p0, Lcom/android/nfc/HciEventControl;->mCertCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 856
    invoke-direct {p0}, Lcom/android/nfc/HciEventControl;->waitForSmartcardService()Z

    move-result v2

    if-nez v2, :cond_3

    .line 857
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "certificate authorization failed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 859
    :cond_3
    const-string v2, "SIM"

    invoke-direct {p0, v2, p2}, Lcom/android/nfc/HciEventControl;->isAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 860
    goto :goto_0
.end method
