.class public Lcom/android/internal/telephony/ModemStackController;
.super Landroid/os/Handler;
.source "ModemStackController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;,
        Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;
    }
.end annotation


# static fields
.field private static final BIND_TO_STACK:I = 0x1

.field private static final CMD_DEACTIVATE_ALL_SUBS:I = 0x1

.field private static final CMD_TRIGGER_BIND:I = 0x5

.field private static final CMD_TRIGGER_UNBIND:I = 0x3

.field static final DBG_HIGH:Z

.field private static final DEFAULT_MAX_DATA_ALLOWED:I = 0x1

.field private static final EVENT_BIND_DONE:I = 0x6

.field private static final EVENT_GET_MODEM_CAPS_DONE:I = 0x2

.field private static final EVENT_GET_NETWORK_MODE_DONE:I = 0xc

.field private static final EVENT_MODEM_CAPABILITY_CHANGED:I = 0xa

.field private static final EVENT_RADIO_AVAILABLE:I = 0x9

.field private static final EVENT_RADIO_ON:I = 0xb

.field private static final EVENT_SET_NETWORK_MODE_DONE:I = 0xd

.field private static final EVENT_SET_PREF_MODE_DONE:I = 0x7

.field private static final EVENT_SUB_DEACTIVATED:I = 0x8

.field private static final EVENT_UNBIND_DONE:I = 0x4

.field private static final FAILURE:I = 0x0

.field private static final GET_MODEM_CAPS_BUFFER_LEN:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "ModemStackController"

.field private static final PRIMARY_STACK_ID:I = 0x0

.field private static final STATE_BIND:I = 0x5

.field private static final STATE_GOT_MODEM_CAPS:I = 0x2

.field private static final STATE_SET_NWSEL_MODE:I = 0x8

.field private static final STATE_SET_PREF_MODE:I = 0x7

.field private static final STATE_SUB_ACT:I = 0x6

.field private static final STATE_SUB_DEACT:I = 0x3

.field private static final STATE_UNBIND:I = 0x4

.field private static final STATE_UNKNOWN:I = 0x1

.field private static final SUCCESS:I = 0x1

.field private static final UNBIND_TO_STACK:I

.field private static sModemStackController:Lcom/android/internal/telephony/ModemStackController;


# instance fields
.field private mActiveSubCount:I

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mCmdFailed:[Z

.field private mContext:Landroid/content/Context;

.field private mCurrentStackId:[I

.field private mDeactivationInProgress:Z

.field private mDeactivedSubCount:I

.field private mIsCrossMappingRequired:Z

.field private mIsPhoneInEcbmMode:Z

.field private mIsRecoveryInProgress:Z

.field private mIsStackReady:Z

.field private mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

.field private mModemDataCapsAvailableRegistrants:Landroid/os/RegistrantList;

.field private mModemRatCapabilitiesAvailable:Z

.field private mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

.field private mNumPhones:I

.field private mPrefNwMode:[I

.field private mPreferredStackId:[I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStackReadyRegistrants:Landroid/os/RegistrantList;

.field private mSubState:[I

.field private mSubcriptionStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateStackMsg:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const-string v0, "0x4948"

    const-string v1, "ro.debug_level"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/ModemStackController;->DBG_HIGH:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiccManager"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 268
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 170
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    .line 171
    iput v5, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    .line 172
    iput v5, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivedSubCount:I

    .line 173
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    .line 174
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    .line 175
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPrefNwMode:[I

    .line 176
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    .line 177
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 178
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 179
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z

    .line 180
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapabilitiesAvailable:Z

    .line 181
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z

    .line 182
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    .line 183
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    .line 184
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

    .line 185
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mModemDataCapsAvailableRegistrants:Landroid/os/RegistrantList;

    .line 187
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mSubcriptionStatus:Ljava/util/HashMap;

    .line 189
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsCrossMappingRequired:Z

    .line 192
    iput-object v7, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    .line 194
    new-instance v2, Lcom/android/internal/telephony/ModemStackController$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ModemStackController$1;-><init>(Lcom/android/internal/telephony/ModemStackController;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 269
    const-string v2, "Constructor - Enter"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 271
    iput-object p3, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 272
    iput-object p1, p0, Lcom/android/internal/telephony/ModemStackController;->mContext:Landroid/content/Context;

    .line 273
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v2, v2, [Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iput-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    .line 275
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 277
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/16 v3, 0xa

    invoke-interface {v2, p0, v3, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemCapEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 278
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/16 v3, 0xb

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    .line 282
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aput v1, v2, v1

    .line 283
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aput v1, v2, v1

    .line 284
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v6, v2, v1

    .line 285
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    aput-boolean v5, v2, v1

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 289
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ne v2, v6, :cond_2

    iput-boolean v6, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 291
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    const-string v2, "org.codeaurora.intent.action.ACTION_SUBSCRIPTION_SET_UICC_RESULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 296
    const-string v2, "Constructor - Exit"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ModemStackController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ModemStackController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/ModemStackController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ModemStackController;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ModemStackController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ModemStackController;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/ModemStackController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ModemStackController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubcriptionStatus:Ljava/util/HashMap;

    return-object v0
.end method

.method private areAllSubsinSameState(I)Z
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 664
    .local v3, "subState":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "areAllSubsinSameState state= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " substate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 665
    if-eq v3, p1, :cond_0

    const/4 v4, 0x0

    .line 667
    .end local v3    # "subState":I
    :goto_1
    return v4

    .line 663
    .restart local v3    # "subState":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 667
    .end local v3    # "subState":I
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private bindStackOnSub(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindStack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " On phoneId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 484
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 485
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aget v2, v2, p1

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->updateStackBinding(IILandroid/os/Message;)V

    .line 486
    return-void
.end method

.method private deactivateAllSubscriptions()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 850
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    .line 851
    .local v3, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    iget-object v9, p0, Lcom/android/internal/telephony/ModemStackController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 852
    .local v6, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iput v13, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    .line 853
    if-eqz v6, :cond_6

    .line 854
    iget v9, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    new-array v4, v9, [I

    .line 855
    .local v4, "subId":[I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 856
    .local v5, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v7

    .line 857
    .local v7, "subStatus":I
    if-ne v7, v12, :cond_0

    .line 858
    iget v9, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    aput v10, v4, v9

    .line 860
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/ModemStackController;->mSubcriptionStatus:Ljava/util/HashMap;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 862
    .end local v5    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v7    # "subStatus":I
    :cond_1
    iget v9, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    if-lez v9, :cond_5

    .line 863
    iput v13, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivedSubCount:I

    .line 864
    iput-boolean v12, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z

    .line 867
    iget v9, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    if-le v9, v12, :cond_2

    .line 868
    aget v9, v4, v12

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v10

    if-ne v9, v10, :cond_2

    .line 869
    aget v8, v4, v13

    .line 870
    .local v8, "tempSubId":I
    aget v9, v4, v12

    aput v9, v4, v13

    .line 871
    aput v8, v4, v12

    .line 875
    .end local v8    # "tempSubId":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    iget v9, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    if-ge v1, v9, :cond_4

    .line 876
    if-eqz v1, :cond_3

    const-wide/16 v10, 0x3e8

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 877
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deactivateAllSubscriptions: subId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v4, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 878
    aget v9, v4, v1

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/SubscriptionController;->deactivateSubId(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 895
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "subId":[I
    :cond_4
    :goto_2
    return-void

    .line 885
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "subId":[I
    :cond_5
    iput-boolean v13, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z

    .line 886
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerUnBindingOnAllSubs()V

    goto :goto_2

    .line 890
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "subId":[I
    :cond_6
    const-string v9, "deactivateAllSubscriptions: subInfoList is null!!!"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 891
    iput-boolean v13, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 892
    iput-boolean v12, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 893
    iget-object v9, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v9}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_2
.end method

.method public static getInstance()Lcom/android/internal/telephony/ModemStackController;
    .locals 2

    .prologue
    .line 260
    sget-object v0, Lcom/android/internal/telephony/ModemStackController;->sModemStackController:Lcom/android/internal/telephony/ModemStackController;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ModemStackController.getInstance called before make()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ModemStackController;->sModemStackController:Lcom/android/internal/telephony/ModemStackController;

    return-object v0
.end method

.method private isAnyCallsInProgress()Z
    .locals 3

    .prologue
    .line 747
    const/4 v1, 0x0

    .line 748
    .local v1, "isCallInProgress":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 749
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 751
    const/4 v1, 0x1

    .line 755
    :cond_0
    return v1

    .line 748
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isAnyCmdFailed()Z
    .locals 3

    .prologue
    .line 678
    const/4 v1, 0x0

    .line 679
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_1

    .line 680
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 681
    const/4 v1, 0x1

    .line 679
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 684
    :cond_1
    return v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 999
    const-string v0, "ModemStackController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1003
    const-string v0, "ModemStackController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    return-void
.end method

.method public static make(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ModemStackController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uiccMgr"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 250
    const-string v0, "ModemStackController"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-object v0, Lcom/android/internal/telephony/ModemStackController;->sModemStackController:Lcom/android/internal/telephony/ModemStackController;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/android/internal/telephony/ModemStackController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/ModemStackController;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/ModemStackController;->sModemStackController:Lcom/android/internal/telephony/ModemStackController;

    .line 256
    sget-object v0, Lcom/android/internal/telephony/ModemStackController;->sModemStackController:Lcom/android/internal/telephony/ModemStackController;

    return-object v0

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ModemStackController.make() should only be called once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private notifyModemDataCapabilitiesAvailable()V
    .locals 1

    .prologue
    .line 945
    sget-boolean v0, Lcom/android/internal/telephony/ModemStackController;->DBG_HIGH:Z

    if-eqz v0, :cond_0

    const-string v0, "notifyGetDataCapabilitiesDone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mModemDataCapsAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 947
    return-void
.end method

.method private notifyModemRatCapabilitiesAvailable()V
    .locals 1

    .prologue
    .line 939
    const-string v0, "notifyGetRatCapabilitiesDone: Got RAT capabilities for all Stacks!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 940
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapabilitiesAvailable:Z

    .line 941
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 942
    return-void
.end method

.method private notifyStackReady()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 898
    const-string v3, "notifyStackReady: Stack is READY!!!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 899
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 900
    iput-boolean v6, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 901
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 903
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v3, :cond_0

    .line 905
    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    iget-object v4, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 903
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 910
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/ModemStackController;->mIsCrossMappingRequired:Z

    if-eqz v3, :cond_1

    .line 911
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsCrossMappingRequired:Z

    .line 913
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 914
    .local v2, "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 915
    .local v1, "phoneId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call setDataAllowed() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 916
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v3, v3

    if-gt v1, v3, :cond_1

    .line 917
    const-string v3, "ril.dds.force"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-interface {v3, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 925
    .end local v1    # "phoneId":I
    .end local v2    # "subId":I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 926
    return-void
.end method

.method private onBindComplete(Landroid/os/AsyncResult;I)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 513
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindComplete("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): got Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v3, v0, p2

    .line 521
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCmdFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->recoverToPrevState()V

    .line 536
    :cond_1
    :goto_0
    return-void

    .line 527
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/ModemStackController;->isStackIdError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    invoke-virtual {p0}, Lcom/android/internal/telephony/ModemStackController;->getModemCaps()V

    .line 529
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isStackIdError() StatckId error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 534
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->setPrefNwTypeOnAllSubs()V

    goto :goto_0
.end method

.method private onGetModemCapabilityDone(Landroid/os/AsyncResult;[BI)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "result"    # [B
    .param p3, "phoneId"    # I

    .prologue
    const/4 v2, 0x2

    .line 406
    if-nez p2, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_1

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetModemCapabilityDone: EXIT!, result null or Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetModemCapabilityDone on phoneId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 417
    if-ltz p3, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge p3, v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v2, v0, p3

    .line 420
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ModemStackController;->parseGetModemCapabilityResponse([BI)V

    .line 423
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->notifyModemRatCapabilitiesAvailable()V

    goto :goto_0

    .line 427
    :cond_2
    const-string v0, "Invalid Index!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onSetNetworkSelectionModeDone(Landroid/os/AsyncResult;I)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 612
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_2

    .line 617
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    aput-boolean v2, v0, p2

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetNetworkSelectionModeDone(SUB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): got Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 621
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v3, v0, p2

    .line 623
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCmdFailed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 625
    iput-boolean v2, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 626
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->recoverToPrevState()V

    .line 627
    iput-boolean v2, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    goto :goto_0

    .line 630
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerDeactivationOnAllSubs()V

    goto :goto_0
.end method

.method private onSetPrefNwModeDone(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v2, 0x7

    .line 554
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetPrefNwModeDone(SUB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): got Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v2, v0, p2

    .line 562
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCmdFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 564
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->recoverToPrevState()V

    .line 582
    :cond_1
    :goto_0
    return-void

    .line 568
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 569
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ModemStackController;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 570
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    .line 576
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 577
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->updateNetworkSelectionMode()V

    .line 580
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->notifyStackReady()V

    goto :goto_0
.end method

.method private onSubDeactivated(Landroid/os/AsyncResult;I)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 451
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;

    .line 452
    .local v0, "subStatus":Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/ModemStackController$SubscriptionStatus;

    if-eq v1, v0, :cond_1

    .line 454
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubDeactivated on phoneId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Failed!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 455
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    aput-boolean v3, v1, p2

    .line 458
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubDeactivated on phoneId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] subStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aget v1, v1, p2

    if-ne v1, v4, :cond_3

    .line 480
    :cond_2
    :goto_0
    return-void

    .line 463
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v4, v1, p2

    .line 464
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivedSubCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivedSubCount:I

    .line 467
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivedSubCount:I

    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mActiveSubCount:I

    if-ne v1, v2, :cond_2

    .line 470
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCmdFailed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 471
    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 472
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->recoverToPrevState()V

    .line 473
    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 474
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 476
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mDeactivationInProgress:Z

    .line 477
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerUnBindingOnAllSubs()V

    goto :goto_0
.end method

.method private onUnbindComplete(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v2, 0x4

    .line 495
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnbindComplete("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): got Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aput v2, v0, p2

    .line 503
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->areAllSubsinSameState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCmdFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->recoverToPrevState()V

    .line 510
    :cond_1
    :goto_0
    return-void

    .line 508
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerBindingOnAllSubs()V

    goto :goto_0
.end method

.method private onUnsolModemCapabilityChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 432
    sget-boolean v3, Lcom/android/internal/telephony/ModemStackController;->DBG_HIGH:Z

    if-eqz v3, :cond_0

    const-string v3, "onUnsolModemCapabilityChanged"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 433
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;

    .line 435
    .local v2, "unsolOemHookBuffer":Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;
    if-eqz v2, :cond_1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_2

    .line 436
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUnsolModemCapabilityChanged: EXIT!, result null or Exception ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 448
    :goto_0
    return-void

    .line 440
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->getUnsolOemHookBuffer()[B

    move-result-object v0

    check-cast v0, [B

    .line 441
    .local v0, "data":[B
    invoke-virtual {v2}, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->getRilInstance()I

    move-result v1

    .line 443
    .local v1, "phoneId":I
    sget-boolean v3, Lcom/android/internal/telephony/ModemStackController;->DBG_HIGH:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUnsolModemCapabilityChanged on phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 445
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ModemStackController;->parseGetModemCapabilityResponse([BI)V

    .line 446
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->notifyModemDataCapabilitiesAvailable()V

    goto :goto_0
.end method

.method private parseGetModemCapabilityResponse([BI)V
    .locals 8
    .param p1, "result"    # [B
    .param p2, "phoneId"    # I

    .prologue
    const/4 v7, 0x7

    .line 706
    if-nez p1, :cond_0

    .line 707
    const-string v0, "parseGetModemCapabilityResponse: result is null !"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 732
    :goto_0
    return-void

    .line 711
    :cond_0
    array-length v0, p1

    if-eq v0, v7, :cond_1

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseGetModemCapabilityResponse: EXIT!, result length("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") and Expected length("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not matching."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 716
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/ModemStackController;->DBG_HIGH:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseGetModemCapabilityResponse: buffer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 717
    :cond_2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 718
    .local v6, "respBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 720
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 722
    .local v2, "stackId":I
    if-ltz v2, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-lt v2, v0, :cond_4

    .line 723
    :cond_3
    const-string v0, "Invalid Index!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 726
    :cond_4
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 727
    .local v3, "supportedRatBitMask":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 728
    .local v4, "voiceDataCap":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .local v5, "maxDataCap":I
    move-object v0, p0

    move v1, p2

    .line 730
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ModemStackController;->updateModemCapInfo(IIIII)V

    goto :goto_0
.end method

.method private processRadioAvailable(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRadioAvailable on phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 393
    if-ltz p2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge p2, v1, :cond_0

    .line 394
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 397
    .local v0, "getModemCapsMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p2

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getModemCapability(Landroid/os/Message;)V

    .line 402
    .end local v0    # "getModemCapsMsg":Landroid/os/Message;
    :goto_0
    return-void

    .line 400
    :cond_0
    const-string v1, "Invalid Index!!!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private recoverToPrevState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 968
    iget-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    if-eqz v1, :cond_2

    .line 971
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 972
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/ModemStackController;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 973
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    .line 975
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 976
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    aget v2, v2, v3

    if-ne v1, v2, :cond_1

    .line 979
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->notifyStackReady()V

    .line 990
    :cond_1
    :goto_0
    return-void

    .line 984
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mIsRecoveryInProgress:Z

    .line 986
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_3

    .line 987
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 986
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 989
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerUnBindingOnAllSubs()V

    goto :goto_0
.end method

.method private resetSubStates()V
    .locals 3

    .prologue
    .line 671
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mSubState:[I

    const/4 v2, 0x1

    aput v2, v1, v0

    .line 673
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCmdFailed:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 675
    :cond_0
    return-void
.end method

.method private sendResponseToTarget(Landroid/os/Message;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "responseCode"    # I

    .prologue
    .line 993
    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 994
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 995
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 996
    return-void
.end method

.method private setPrefNwTypeOnAllSubs()V
    .locals 4

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 656
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 657
    const/4 v2, 0x7

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 658
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    .end local v1    # "resp":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private syncPreferredNwModeFromDB()V
    .locals 5

    .prologue
    .line 735
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 737
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPrefNwMode:[I

    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 739
    :catch_0
    move-exception v1

    .line 740
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 741
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mPrefNwMode:[I

    sget v3, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    aput v3, v2, v0

    goto :goto_1

    .line 744
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    return-void
.end method

.method private triggerBindingOnAllSubs()V
    .locals 3

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 643
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 644
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    .line 643
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 646
    :cond_0
    return-void
.end method

.method private triggerDeactivationOnAllSubs()V
    .locals 1

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 650
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    .line 651
    return-void
.end method

.method private triggerUnBindingOnAllSubs()V
    .locals 3

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 636
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 637
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    :cond_0
    return-void
.end method

.method private unbindStackOnSub(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindStack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " On phoneId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 490
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 491
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->updateStackBinding(IILandroid/os/Message;)V

    .line 492
    return-void
.end method

.method private updateModemCapInfo(IIIII)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "stackId"    # I
    .param p3, "supportedRatBitMask"    # I
    .param p4, "voiceDataCap"    # I
    .param p5, "maxDataCap"    # I

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aput p2, v0, p1

    .line 692
    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v7, v0, p1

    new-instance v0, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v1, p1

    move-object v1, p0

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;-><init>(Lcom/android/internal/telephony/ModemStackController;IIII)V

    aput-object v0, v6, v7

    .line 694
    sget-boolean v0, Lcom/android/internal/telephony/ModemStackController;->DBG_HIGH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateModemCapInfo: ModemCaps["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, p1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 698
    :cond_0
    return-void
.end method

.method private updateNetworkSelectionMode()V
    .locals 4

    .prologue
    .line 603
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->resetSubStates()V

    .line 604
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 606
    const/16 v2, 0xc

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 607
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 609
    .end local v1    # "resp":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private updateNetworkSelectionModeDone(Landroid/os/AsyncResult;I)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    .line 586
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 587
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 589
    .local v1, "selectionMode":[I
    const/16 v2, 0xd

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ModemStackController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 590
    .local v0, "resp":Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkSelectionModeDone: PhoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 591
    aget v2, v1, v4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 592
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p2

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 600
    .end local v0    # "resp":Landroid/os/Message;
    .end local v1    # "selectionMode":[I
    :goto_0
    return-void

    .line 594
    .restart local v0    # "resp":Landroid/os/Message;
    .restart local v1    # "selectionMode":[I
    :cond_0
    const/4 v2, 0x0

    invoke-static {v4}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 595
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 598
    .end local v0    # "resp":Landroid/os/Message;
    .end local v1    # "selectionMode":[I
    :cond_1
    const-string v2, "Unable to getNetworkSelectionMode"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentStackIdForPhoneId(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMaxDataAllowed()I
    .locals 5

    .prologue
    .line 763
    const-string v4, "getMaxDataAllowed"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 764
    const/4 v2, 0x1

    .line 765
    .local v2, "ret":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 767
    .local v3, "unsortedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v4, :cond_1

    .line 768
    iget-object v4, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    .line 769
    iget-object v4, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getMaxDataCap()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 772
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 773
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 774
    .local v1, "listSize":I
    if-lez v1, :cond_2

    .line 775
    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 777
    :cond_2
    return v2
.end method

.method public getModemCaps()V
    .locals 2

    .prologue
    .line 548
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 549
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/ModemStackController;->processRadioAvailable(Landroid/os/AsyncResult;I)V

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 551
    :cond_0
    return-void
.end method

.method public getModemRatCapsForPhoneId(I)Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/ModemStackController;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPrimarySub()I
    .locals 2

    .prologue
    .line 785
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 786
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->getCurrentStackIdForPhoneId(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 790
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 785
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 790
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 304
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 388
    :goto_0
    :pswitch_0
    return-void

    .line 306
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 307
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 308
    .local v1, "phoneId":Ljava/lang/Integer;
    const-string v2, "EVENT_RADIO_AVAILABLE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ModemStackController;->processRadioAvailable(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 313
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 314
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 315
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "EVENT_GET_MODEM_CAPS_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 316
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/telephony/ModemStackController;->onGetModemCapabilityDone(Landroid/os/AsyncResult;[BI)V

    goto :goto_0

    .line 320
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 321
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    sget-boolean v2, Lcom/android/internal/telephony/ModemStackController;->DBG_HIGH:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_MODEM_CAPABILITY_CHANGED ar ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 322
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemStackController;->onUnsolModemCapabilityChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 326
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    const-string v2, "CMD_DEACTIVATE_ALL_SUBS"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 327
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->deactivateAllSubscriptions()V

    goto :goto_0

    .line 331
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 332
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 333
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "EVENT_SUB_DEACTIVATED"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ModemStackController;->onSubDeactivated(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 338
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 339
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "CMD_TRIGGER_UNBIND"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->unbindStackOnSub(I)V

    goto/16 :goto_0

    .line 344
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 345
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 346
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "EVENT_UNBIND_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ModemStackController;->onUnbindComplete(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 351
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 352
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "CMD_TRIGGER_BIND"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->bindStackOnSub(I)V

    goto/16 :goto_0

    .line 357
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 358
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 359
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "EVENT_BIND_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ModemStackController;->onBindComplete(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 364
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 365
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 366
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "EVENT_SET_PREF_MODE_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ModemStackController;->onSetPrefNwModeDone(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 371
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 372
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 373
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "EVENT_GET_NETWORK_MODE_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ModemStackController;->updateNetworkSelectionModeDone(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 378
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "phoneId":Ljava/lang/Integer;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 379
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 380
    .restart local v1    # "phoneId":Ljava/lang/Integer;
    const-string v2, "EVENT_SET_NETWORK_MODE_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemStackController;->logd(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ModemStackController;->onSetNetworkSelectionModeDone(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public isStackIdError()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 540
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 543
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isStackReady()Z
    .locals 1

    .prologue
    .line 759
    iget-boolean v0, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    return v0
.end method

.method public registerForModemDataCapsUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 960
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 962
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mModemDataCapsAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 963
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mModemDataCapsAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 964
    monitor-exit v2

    .line 965
    return-void

    .line 964
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForModemRatCapsAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 950
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 951
    .local v0, "r":Landroid/os/Registrant;
    iget-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapabilitiesAvailable:Z

    if-eqz v1, :cond_0

    .line 952
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 954
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 955
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mModemRatCapsAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 956
    monitor-exit v2

    .line 957
    return-void

    .line 956
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForStackReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 929
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 930
    .local v0, "r":Landroid/os/Registrant;
    iget-boolean v1, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    if-eqz v1, :cond_0

    .line 931
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 933
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 934
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ModemStackController;->mStackReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 935
    monitor-exit v2

    .line 936
    return-void

    .line 935
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateStackBinding([IZLandroid/os/Message;)I
    .locals 7
    .param p1, "prefStackIds"    # [I
    .param p2, "isBootUp"    # Z
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 798
    const/4 v2, 0x0

    .line 799
    .local v2, "isUpdateRequired":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->isAnyCallsInProgress()Z

    move-result v0

    .line 801
    .local v0, "callInProgress":Z
    iget v5, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ne v5, v4, :cond_1

    .line 802
    const-string v4, "No need to update Stack Binding in case of Single Sim."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    .line 846
    :cond_0
    :goto_0
    return v3

    .line 806
    :cond_1
    if-nez v0, :cond_2

    iget-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    if-nez v5, :cond_3

    if-nez p2, :cond_3

    .line 807
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateStackBinding: Calls is progress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsPhoneInEcbmMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsPhoneInEcbmMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsStackReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". So EXITING!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemStackController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 812
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v1, v5, :cond_4

    .line 813
    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aget v6, p1, v1

    aput v6, v5, v1

    .line 812
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 816
    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget v5, p0, Lcom/android/internal/telephony/ModemStackController;->mNumPhones:I

    if-ge v1, v5, :cond_5

    .line 817
    iget-object v5, p0, Lcom/android/internal/telephony/ModemStackController;->mPreferredStackId:[I

    aget v5, v5, v1

    iget-object v6, p0, Lcom/android/internal/telephony/ModemStackController;->mCurrentStackId:[I

    aget v6, v6, v1

    if-eq v5, v6, :cond_6

    .line 819
    const/4 v2, 0x1

    .line 824
    :cond_5
    if-eqz v2, :cond_9

    .line 826
    iput-boolean v4, p0, Lcom/android/internal/telephony/ModemStackController;->mIsCrossMappingRequired:Z

    .line 828
    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemStackController;->mIsStackReady:Z

    .line 830
    iput-object p3, p0, Lcom/android/internal/telephony/ModemStackController;->mUpdateStackMsg:Landroid/os/Message;

    .line 832
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->syncPreferredNwModeFromDB()V

    .line 833
    if-eqz p2, :cond_7

    .line 834
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerUnBindingOnAllSubs()V

    :goto_3
    move v3, v4

    .line 846
    goto :goto_0

    .line 816
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 835
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 837
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->updateNetworkSelectionMode()V

    goto :goto_3

    .line 839
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->triggerDeactivationOnAllSubs()V

    goto :goto_3

    .line 843
    :cond_9
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/ModemStackController;->notifyStackReady()V

    goto/16 :goto_0
.end method
