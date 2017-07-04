.class Lcom/android/internal/telephony/SubscriptionHelper;
.super Landroid/os/Handler;
.source "SubscriptionHelper.java"


# static fields
.field private static final APM_SIM_NOT_PWDN_PROPERTY:Ljava/lang/String; = "persist.radio.apm_sim_not_pwdn"

.field private static final EVENT_REFRESH:I = 0x2

.field private static final EVENT_REFRESH_OEM:I = 0x3

.field private static final EVENT_SET_UICC_SUBSCRIPTION_DONE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SubHelper"

.field public static final SUB_INIT_STATE:I = -0x1

.field public static final SUB_SET_UICC_FAIL:I = -0x64

.field public static final SUB_SIM_NOT_INSERTED:I = -0x63

.field protected static final mCardOffIntent:[Ljava/lang/String;

.field protected static final mCardOnIntent:[Ljava/lang/String;

.field private static mNwModeUpdated:Z

.field private static final mPhoneOnKey:[Ljava/lang/String;

.field private static final mUiccFamilyName:[Ljava/lang/String;

.field private static final sApmSIMNotPwdn:Z

.field private static sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

.field private static sNumPhones:I

.field private static sTriggerDds:Z


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mSetUiccSubCount:[I

.field private mSubStatus:[I

.field private final nwModeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    sput-boolean v2, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    .line 81
    const-string v0, "persist.radio.apm_sim_not_pwdn"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    .line 91
    sput-boolean v2, Lcom/android/internal/telephony/SubscriptionHelper;->mNwModeUpdated:Z

    .line 105
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "phone1_on"

    aput-object v3, v0, v2

    const-string v3, "phone2_on"

    aput-object v3, v0, v1

    const-string v3, "phone3_on"

    aput-object v3, v0, v4

    const-string v3, "phone4_on"

    aput-object v3, v0, v5

    const-string v3, "phone5_on"

    aput-object v3, v0, v6

    sput-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->mPhoneOnKey:[Ljava/lang/String;

    .line 109
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "UNKNOWN"

    aput-object v3, v0, v2

    const-string v3, "APP_FAM_3GPP"

    aput-object v3, v0, v1

    const-string v3, "APP_FAM_3GPP2"

    aput-object v3, v0, v4

    const-string v3, "APP_FAM_IMS"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->mUiccFamilyName:[Ljava/lang/String;

    .line 113
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "com.samsung.intent.action.Slot1OnCompleted"

    aput-object v3, v0, v2

    const-string v3, "com.samsung.intent.action.Slot2OnCompleted"

    aput-object v3, v0, v1

    const-string v3, "com.samsung.intent.action.Slot3OnCompleted"

    aput-object v3, v0, v4

    const-string v3, "com.samsung.intent.action.Slot4OnCompleted"

    aput-object v3, v0, v5

    const-string v3, "com.samsung.intent.action.Slot5OnCompleted"

    aput-object v3, v0, v6

    sput-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->mCardOnIntent:[Ljava/lang/String;

    .line 121
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "com.samsung.intent.action.Slot1OffCompleted"

    aput-object v3, v0, v2

    const-string v2, "com.samsung.intent.action.Slot2OffCompleted"

    aput-object v2, v0, v1

    const-string v1, "com.samsung.intent.action.Slot3OffCompleted"

    aput-object v1, v0, v4

    const-string v1, "com.samsung.intent.action.Slot4OffCompleted"

    aput-object v1, v0, v5

    const-string v1, "com.samsung.intent.action.Slot5OffCompleted"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->mCardOffIntent:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 81
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 93
    new-instance v2, Lcom/android/internal/telephony/SubscriptionHelper$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/SubscriptionHelper$1;-><init>(Lcom/android/internal/telephony/SubscriptionHelper;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->nwModeObserver:Landroid/database/ContentObserver;

    .line 150
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    .line 151
    iput-object p2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 152
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    sput v2, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    .line 153
    sget v2, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    .line 154
    sget v2, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccSubCount:[I

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v0, v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 157
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 158
    .local v1, "index":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x2

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 167
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionHelper;->nwModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscriptionHelper init by Context, num phones = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ApmSIMNotPwdn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionHelper;->mNwModeUpdated:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SubscriptionHelper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->updateNwModesInSubIdTable(Z)V

    return-void
.end method

.method private broadcastSetUiccResult(III)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "newSubState"    # I
    .param p3, "result"    # I

    .prologue
    .line 455
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingSlotId(I)[I

    move-result-object v1

    .line 456
    .local v1, "subId":[I
    new-instance v0, Landroid/content/Intent;

    const-string v2, "org.codeaurora.intent.action.ACTION_SUBSCRIPTION_SET_UICC_RESULT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 458
    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-static {v0, p1, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    .line 459
    const-string v2, "operationResult"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    const-string v2, "newSubState"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 462
    return-void
.end method

.method private broadcastSetUiccResult(IIII)V
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "newSubState"    # I
    .param p3, "result"    # I
    .param p4, "uiccFamilyId"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 467
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionHelper;->broadcastSetUiccResult(III)V

    .line 469
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingSlotId(I)[I

    move-result-object v1

    .line 470
    .local v1, "subIds":[I
    const/4 v0, 0x0

    .line 471
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastSetUiccResult: slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newSubState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uiccFamilyId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SubscriptionHelper;->mUiccFamilyName:[Ljava/lang/String;

    aget-object v3, v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 473
    if-ne p2, v4, :cond_3

    .line 475
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings.subscription_activate"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 476
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "slot"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    const-string v2, "subscription"

    aget v3, v1, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 480
    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_0

    if-eq p4, v6, :cond_1

    :cond_0
    if-ne p1, v4, :cond_2

    if-ne p4, v4, :cond_2

    .line 483
    :cond_1
    const-string v2, "gsm.sim.active"

    const-string v3, "2"

    invoke-static {p1, v2, v3}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_2
    :goto_0
    return-void

    .line 485
    :cond_3
    if-nez p2, :cond_6

    .line 487
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings.subscription_deactivate"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "slot"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    const-string v2, "subscription"

    aget v3, v1, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 490
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 492
    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_4

    if-eq p4, v6, :cond_5

    :cond_4
    if-ne p1, v4, :cond_2

    if-ne p4, v4, :cond_2

    .line 495
    :cond_5
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/telephony/SubscriptionHelper;->mCardOffIntent:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 499
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastSetUiccResult: invalid newSubState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/SubscriptionHelper;
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    if-nez v0, :cond_0

    .line 143
    const-string v0, "SubHelper"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    return-object v0
.end method

.method public static init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionHelper;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 131
    const-class v1, Lcom/android/internal/telephony/SubscriptionHelper;

    monitor-enter v1

    .line 132
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/android/internal/telephony/SubscriptionHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/SubscriptionHelper;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    .line 137
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    monitor-exit v1

    return-object v0

    .line 135
    :cond_0
    const-string v0, "SubHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SubscriptionHelper;->sInstance:Lcom/android/internal/telephony/SubscriptionHelper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isAllSubsAvailable()Z
    .locals 4

    .prologue
    .line 505
    const/4 v0, 0x1

    .line 507
    .local v0, "allSubsAvailable":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v1, v2, :cond_1

    .line 508
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aget v2, v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 509
    const/4 v0, 0x0

    .line 507
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    :cond_1
    return v0
.end method

.method public static isEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 558
    const-string v2, "ro.baseband"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "qmiBaseBand":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v1, :cond_1

    const-string v2, "dsds"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "dsda2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mdm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mdm2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "msm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 565
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 571
    const-string v0, "SubHelper"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 579
    const-string v0, "SubHelper"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 575
    const-string v0, "SubHelper"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return-void
.end method

.method private processSetUiccSubscriptionDone(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 395
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    .line 396
    .local v5, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 400
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, [I

    move-object v3, v9

    check-cast v3, [I

    .line 401
    .local v3, "setSubData":[I
    aget v4, v3, v12

    .line 402
    .local v4, "slotId":I
    aget v1, v3, v11

    .line 403
    .local v1, "newSubState":I
    const/4 v9, 0x2

    aget v8, v3, v9

    .line 405
    .local v8, "uiccFamilyId":I
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingSlotId(I)[I

    move-result-object v6

    .line 406
    .local v6, "subId":[I
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccSubCount:[I

    aget v10, v9, v4

    add-int/lit8 v10, v10, -0x1

    aput v10, v9, v4

    .line 408
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_1

    .line 409
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in SET_UICC_SUBSCRIPTION, slotId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " newSubState "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionHelper;->loge(Ljava/lang/String;)V

    .line 412
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    const/16 v10, -0x64

    aput v10, v9, v4

    .line 415
    invoke-direct {p0, v4, v1, v11, v8}, Lcom/android/internal/telephony/SubscriptionHelper;->broadcastSetUiccResult(IIII)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccSubCount:[I

    aget v9, v9, v4

    if-lez v9, :cond_2

    const-string v9, "CTC"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 421
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processSetUiccSubscriptionDone: Skip!! slotId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mSetUiccSubCount:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccSubCount:[I

    aget v10, v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_2
    aget v9, v6, v12

    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v7

    .line 426
    .local v7, "subStatus":I
    if-eq v1, v7, :cond_3

    .line 427
    aget v9, v6, v12

    invoke-virtual {v5, v9, v1}, Lcom/android/internal/telephony/SubscriptionController;->setSubState(II)I

    .line 430
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/SubscriptionHelper;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v10, v10, v4

    const/4 v11, -0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 431
    .local v2, "phoneOnState":I
    if-eq v1, v2, :cond_4

    .line 432
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/SubscriptionHelper;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 437
    :cond_4
    invoke-direct {p0, v4, v1, v12, v8}, Lcom/android/internal/telephony/SubscriptionHelper;->broadcastSetUiccResult(IIII)V

    .line 440
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aput v1, v9, v4

    .line 442
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionHelper;->isAllSubsAvailable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 443
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 447
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received all subs, now update user preferred subs, slotid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " newSubState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sTriggerDds = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 449
    sget-boolean v9, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/SubscriptionController;->updateUserPrefs(Z)V

    .line 450
    sput-boolean v12, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    goto/16 :goto_0
.end method

.method private updateNwModesInSubIdTable(Z)V
    .locals 18
    .param p1, "override"    # Z

    .prologue
    .line 176
    const/4 v2, -0x1

    .line 177
    .local v2, "gsmOnlySubId":I
    const/4 v6, -0x1

    .line 178
    .local v6, "newSimSubId":I
    const/4 v1, 0x0

    .line 179
    .local v1, "gsmOnlyCount":I
    const/4 v5, 0x0

    .line 182
    .local v5, "newSimCount":I
    const/4 v10, -0x1

    .line 183
    .local v10, "simActiveOnlySubId":I
    const/4 v11, -0x1

    .line 184
    .local v11, "simInactiveOnlySubId":I
    const/4 v9, 0x0

    .line 186
    .local v9, "simActiveCount":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v13

    .line 187
    .local v13, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget v15, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v3, v15, :cond_7

    .line 188
    invoke-virtual {v13, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v14

    .line 189
    .local v14, "subIdList":[I
    if-eqz v14, :cond_6

    const/4 v15, 0x0

    aget v15, v14, v15

    if-lez v15, :cond_6

    .line 192
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "preferred_network_mode"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 199
    .local v7, "nwModeInDb":I
    :goto_1
    const/4 v15, 0x0

    aget v15, v14, v15

    invoke-virtual {v13, v15}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v8

    .line 200
    .local v8, "nwModeinSubIdTable":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Lcom/android/internal/telephony/SubscriptionHelper;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v16, v16, v3

    const/16 v17, -0x1

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 201
    .local v4, "mPhoneOninDb":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateNwModesInSubIdTable: nwModeinSubIdTable: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", nwModeInDb: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mPhoneOninDb: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 206
    if-nez p1, :cond_0

    const/4 v15, -0x1

    if-ne v8, v15, :cond_1

    .line 207
    :cond_0
    const/4 v15, 0x0

    aget v15, v14, v15

    invoke-virtual {v13, v15, v7}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    .line 210
    :cond_1
    if-nez p1, :cond_6

    .line 211
    const/4 v15, 0x1

    if-ne v7, v15, :cond_2

    .line 212
    const/4 v15, 0x0

    aget v2, v14, v15

    .line 214
    :cond_2
    const/4 v15, -0x1

    if-ne v8, v15, :cond_3

    .line 215
    add-int/lit8 v5, v5, 0x1

    .line 216
    const/4 v15, 0x0

    aget v6, v14, v15

    .line 218
    :cond_3
    const/4 v15, 0x1

    if-ne v8, v15, :cond_4

    .line 219
    add-int/lit8 v1, v1, 0x1

    .line 222
    :cond_4
    const-string v15, "CN"

    const-string v16, "ro.csc.countryiso_code"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    const-string v15, "CHM"

    const-string v16, "ro.csc.sales_code"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 223
    const/4 v15, 0x1

    if-ne v4, v15, :cond_5

    .line 224
    add-int/lit8 v9, v9, 0x1

    .line 225
    const/4 v15, 0x0

    aget v10, v14, v15

    .line 227
    :cond_5
    if-nez v4, :cond_6

    .line 228
    const/4 v15, 0x0

    aget v11, v14, v15

    .line 187
    .end local v4    # "mPhoneOninDb":I
    .end local v7    # "nwModeInDb":I
    .end local v8    # "nwModeinSubIdTable":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 194
    :catch_0
    move-exception v12

    .line 195
    .local v12, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Settings Exception Reading Value At Index["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] Settings.Global.PREFERRED_NETWORK_MODE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/SubscriptionHelper;->loge(Ljava/lang/String;)V

    .line 197
    sget v7, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .restart local v7    # "nwModeInDb":I
    goto/16 :goto_1

    .line 238
    .end local v7    # "nwModeInDb":I
    .end local v12    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .end local v14    # "subIdList":[I
    :cond_7
    if-nez p1, :cond_9

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCount(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_9

    .line 239
    const/4 v15, 0x1

    if-ne v5, v15, :cond_8

    .line 240
    move v2, v6

    .line 242
    :cond_8
    const/4 v15, 0x1

    invoke-virtual {v13, v2, v15}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    .line 243
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateNwModesInSubIdTable: SubId "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Set GsmOnly Mode"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 247
    :cond_9
    const-string v15, "CN"

    const-string v16, "ro.csc.countryiso_code"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const-string v15, "CHM"

    const-string v16, "ro.csc.sales_code"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 248
    if-nez p1, :cond_a

    const/4 v15, 0x1

    if-ne v9, v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCount(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_a

    .line 249
    const/16 v15, 0x9

    invoke-virtual {v13, v10, v15}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    .line 250
    const/4 v15, 0x1

    invoke-virtual {v13, v11, v15}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    .line 251
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateNwModesInSubIdTable: SubId: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Set LTE Mode, SubId: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Set GsmOnly Mode"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 255
    :cond_a
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 259
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 261
    .local v1, "index":Ljava/lang/Integer;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 277
    :goto_0
    return-void

    .line 263
    :pswitch_0
    const-string v2, "EVENT_SET_UICC_SUBSCRIPTION_DONE"

    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionHelper;->processSetUiccSubscriptionDone(Landroid/os/Message;)V

    goto :goto_0

    .line 268
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 269
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 270
    .restart local v1    # "index":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Received SIM refresh, reset sub state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old sub state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionHelper;->logi(Ljava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    aput v4, v2, v3

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isRadioAvailable(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isRadioOn(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    return v0
.end method

.method public proceedToHandleIccEvent()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 524
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 529
    .local v0, "apmState":I
    sget-boolean v4, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    if-nez v4, :cond_1

    .line 530
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    sget v4, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v1, v4, :cond_1

    .line 531
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionHelper;->isRadioOn(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 532
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " proceedToHandleIccEvent, radio off/unavailable, phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionHelper;->logi(Ljava/lang/String;)V

    .line 533
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aput v6, v4, v1

    .line 530
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    .end local v1    # "phoneId":I
    :cond_1
    if-ne v0, v3, :cond_2

    sget-boolean v4, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    if-nez v4, :cond_2

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " proceedToHandleIccEvent, sApmSIMNotPwdn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/SubscriptionHelper;->sApmSIMNotPwdn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 553
    :goto_1
    return v2

    .line 544
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "phoneId":I
    :goto_2
    sget v4, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v1, v4, :cond_5

    .line 546
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionHelper;->isRadioAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionHelper;->isRadioOn(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 547
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " proceedToHandleIccEvent, radio not available, phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionHelper;->logi(Ljava/lang/String;)V

    .line 549
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aput v6, v3, v1

    goto :goto_1

    .line 544
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v2, v3

    .line 553
    goto :goto_1
.end method

.method public setUiccSubscription(II)V
    .locals 11
    .param p1, "slotId"    # I
    .param p2, "subStatus"    # I

    .prologue
    .line 339
    const/4 v9, 0x0

    .local v9, "set3GPPDone":Z
    const/4 v8, 0x0

    .line 340
    .local v8, "set3GPP2Done":Z
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v10

    .line 341
    .local v10, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v10, :cond_1

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUiccSubscription: slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " card info not available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    const-string v0, "vold.decrypt"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 350
    .local v7, "decryptProp":Ljava/lang/String;
    const-string v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    :cond_2
    const-string v0, "setUiccSubscription : Encryption Mode"

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    .end local v7    # "decryptProp":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccSubCount:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 358
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 359
    invoke-virtual {v10, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v6

    .line 360
    .local v6, "appType":I
    if-nez v9, :cond_7

    const/4 v0, 0x2

    if-eq v6, v0, :cond_4

    const/4 v0, 0x1

    if-ne v6, v0, :cond_7

    .line 365
    :cond_4
    const/4 v0, 0x1

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput p1, v1, v3

    const/4 v3, 0x1

    aput p2, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput v4, v1, v3

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 369
    .local v5, "msgSetUiccSubDone":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    move v1, p1

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    .line 370
    const/4 v9, 0x1

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccSubCount:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 386
    .end local v5    # "msgSetUiccSubDone":Landroid/os/Message;
    :cond_5
    :goto_2
    if-eqz v9, :cond_6

    if-nez v8, :cond_0

    .line 358
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 372
    :cond_7
    if-nez v8, :cond_5

    const/4 v0, 0x4

    if-eq v6, v0, :cond_8

    const/4 v0, 0x3

    if-ne v6, v0, :cond_5

    .line 377
    :cond_8
    const/4 v0, 0x1

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput p1, v1, v3

    const/4 v3, 0x1

    aput p2, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    aput v4, v1, v3

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 381
    .restart local v5    # "msgSetUiccSubDone":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    move v1, p1

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    .line 382
    const/4 v8, 0x1

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSetUiccSubCount:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    goto :goto_2
.end method

.method public updateNwMode()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionHelper;->updateNwModesInSubIdTable(Z)V

    .line 334
    invoke-static {}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getInstance()Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updatePrefNwTypeIfRequired()V

    .line 335
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionHelper;->mNwModeUpdated:Z

    .line 336
    return-void
.end method

.method public updateSubActivation([IZ)V
    .locals 11
    .param p1, "simStatus"    # [I
    .param p2, "isStackReadyEvent"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 280
    const-string v7, "persist.radio.primarycard"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 282
    .local v0, "isPrimarySubFeatureEnable":Z
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    .line 283
    .local v4, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v1, 0x0

    .line 284
    .local v1, "setUiccSent":Z
    const/4 v2, 0x0

    .line 287
    .local v2, "simNotInsertedCount":I
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 288
    sput-boolean v10, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    .line 291
    :cond_0
    const/4 v3, 0x0

    .local v3, "slotId":I
    :goto_0
    sget v7, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v3, v7, :cond_4

    .line 292
    aget v7, p1, v3

    const/16 v8, -0x63

    if-ne v7, v8, :cond_2

    .line 293
    add-int/lit8 v2, v2, 0x1

    .line 294
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aget v8, p1, v3

    aput v8, v7, v3

    .line 295
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Sim not inserted in slot ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] simStatus= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p1, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 291
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v5

    .line 301
    .local v5, "subId":[I
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/SubscriptionHelper;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 304
    .local v6, "subState":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setUicc for ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "subId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " prev subState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aget v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " stackReady "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 307
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aget v7, v7, v3

    if-ne v7, v6, :cond_3

    if-eqz p2, :cond_1

    .line 310
    :cond_3
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/telephony/SubscriptionHelper;->setUiccSubscription(II)V

    .line 311
    const/4 v1, 0x1

    goto :goto_1

    .line 316
    .end local v5    # "subId":[I
    .end local v6    # "subState":I
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionHelper;->isAllSubsAvailable()Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez v1, :cond_5

    sget v7, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v2, v7, :cond_5

    .line 317
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received all sim info, update user pref subs, triggerDds= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 318
    sget-boolean v7, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/SubscriptionController;->updateUserPrefs(Z)V

    .line 319
    sput-boolean v9, Lcom/android/internal/telephony/SubscriptionHelper;->sTriggerDds:Z

    .line 321
    :cond_5
    return-void
.end method

.method public updateSubStatusForHotswapRemove([I)V
    .locals 3
    .param p1, "simStatus"    # [I

    .prologue
    .line 324
    const/4 v0, 0x0

    .local v0, "slotId":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/SubscriptionHelper;->sNumPhones:I

    if-ge v0, v1, :cond_1

    .line 325
    aget v1, p1, v0

    const/16 v2, -0x63

    if-ne v1, v2, :cond_0

    .line 326
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionHelper;->mSubStatus:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateSubStatusForHotswapRemove]Sim not inserted in slot ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] simStatus= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubscriptionHelper;->logd(Ljava/lang/String;)V

    .line 324
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_1
    return-void
.end method
