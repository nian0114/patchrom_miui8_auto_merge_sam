.class public Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;
.super Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.source "IRGsmServiceStateTracker.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IRGSMSST"

.field private static final MANUAL_SELECTION_OOS_TIMER:I = 0x5a

.field static final MAX_NUM_DATA_STATE_READS:I = 0x96

.field static final VDBG:Z

.field public static mNitzRxed:Z

.field public static mPrevMcc:Ljava/lang/String;

.field private static mSleepPendedWhileNetSrchGsm:Z

.field public static oosTimerRunning:Z


# instance fields
.field private countCheckDataStateReads:I

.field private mCurrentSystemTime:J

.field private mIrIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected propertyCount:I

.field sender_ManSrchTimer:Landroid/app/PendingIntent;

.field sender_ManSrchTimer_Dir:Landroid/app/PendingIntent;

.field sender_NetSrchTimer:Landroid/app/PendingIntent;

.field sender_NoSvcChkTimer:Landroid/app/PendingIntent;

.field sender_PendingIntentTimer:Landroid/app/PendingIntent;

.field sender_ReduceSearchTimer:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->oosTimerRunning:Z

    sput-boolean v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNitzRxed:Z

    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPrevMcc:Ljava/lang/String;

    sput-boolean v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSleepPendedWhileNetSrchGsm:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->countCheckDataStateReads:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSystemTime:J

    iput v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->propertyCount:I

    new-instance v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mIrIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone_sim_slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phone_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isGsmDfltPhoneIdx(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isGsmDfltPhoneIdx"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "[Global mode] switch to GSM, reset fakeDispCanceled to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v2, "ril.fakeDispCanceled"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "irFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_GLOBAL_NOSVC_CHK_TIMER_EXPIRED_GSM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED_INTERNAL_GSM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_GLOBAL_PWR_SAVE_MODE_ENTER_TIMER_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_GLOBAL_PWR_SAVE_MODE_STAY_TIMER_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_EVENT_OOS_TIMEOUT_RPT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_SWITCH_BACK_TO_CDMA_IN_CHINA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SIMCARDMANAGER_LAUNCH_RESP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_EVENT_OOS_TIMEOUT_DIRECT_RPT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_SWITCH_BACK_TO_GSM_IN_HONGKONG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING_TIMER_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ACTION_DUALMODE_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.SlotSwitched"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v1, "com.samsung.intent.action.Slot1SwitchCompleted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.ReduceSearchTimerExpired"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.ACTION_BACKGROUND_SWITCH_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mIrIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x74

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mScreenOn:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z

    return v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z

    return v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCdmaInSvc:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopManualOosTimerDirectly()V

    return-void
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSrchNet:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->slot2ReduceSearchTimerAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSystemTime:J

    return-wide v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCdmaInSvc:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mScreenOn:Z

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCdmaInSvc:Z

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopManualOosTimer()V

    return-void
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSrchNet:I

    return v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPsmStayTimerProcessed:Z

    return v0
.end method

.method private slot2ReduceSearchTimerAvailable()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v7

    if-ne v7, v5, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v7

    if-ne v7, v5, :cond_1

    move v1, v5

    .local v1, "isSlot2Gsm":Z
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_2

    move v0, v5

    .local v0, "isAirplaneMode":Z
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    if-ne v7, v9, :cond_3

    :cond_0
    move v2, v5

    .local v2, "pinEnabled":Z
    :goto_2
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "9"

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v9, :cond_4

    move v3, v5

    .local v3, "slot2CardAvailable":Z
    :goto_3
    return v6

    .end local v0    # "isAirplaneMode":Z
    .end local v1    # "isSlot2Gsm":Z
    .end local v2    # "pinEnabled":Z
    .end local v3    # "slot2CardAvailable":Z
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    move v1, v6

    goto :goto_0

    .restart local v1    # "isSlot2Gsm":Z
    :cond_2
    move v0, v6

    goto :goto_1

    .restart local v0    # "isAirplaneMode":Z
    .restart local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    move v2, v6

    goto :goto_2

    .restart local v2    # "pinEnabled":Z
    :cond_4
    move v3, v6

    goto :goto_3
.end method

.method private startManualOosTimer()V
    .locals 0

    .prologue
    return-void
.end method

.method private startManualOosTimerDirectly()V
    .locals 0

    .prologue
    return-void
.end method

.method private stopManualOosTimer()V
    .locals 0

    .prologue
    return-void
.end method

.method private stopManualOosTimerDirectly()V
    .locals 0

    .prologue
    return-void
.end method


# virtual methods
.method public SlotSwitched()V
    .locals 1

    .prologue
    const-string v0, "CdmaServiceStateTracker - SlotSwitched"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mDesiredPowerState:Z

    const/16 v0, 0x97

    iput v0, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->countCheckDataStateReads:I

    const/16 v0, 0x72

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopManualOosTimer()V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopManualOosTimerDirectly()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopPendingIntentTimer()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopGlobalNoSvcChkTimer()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopGlobalNetworkSearchTimer()V

    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mIrIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    const-string v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrCdmaMcc()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .local v0, "currCdmaMccInt":I
    const-string v2, "gsm.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v4, v3}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "currCdmaOprtNum":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    const/4 v2, 0x3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_0
    const-string v1, "EVENT_REQUEST_DISCONNECT_DC"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v1, "slot2 data clean up for Slot1 switched."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .local v0, "mDcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    const-string v1, "slotSwitched"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->hangupAndPowerOff()V

    goto :goto_0

    .end local v0    # "mDcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .restart local v0    # "mDcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto :goto_0

    .end local v0    # "mDcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :sswitch_1
    sget-boolean v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSleepPendedWhileNetSrchGsm:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSleepPendedWhileNetSrchGsm:Z

    const-string v1, "IRGSMSST"

    const-string v2, "[Global mode] Sleep pending resumed"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x72 -> :sswitch_0
        0x76 -> :sswitch_1
    .end sparse-switch
.end method

.method public isNotFirstPhoneForCgg()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "IRGSMSST"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "IRGSMSST"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method noNeedToProcess(Ljava/lang/String;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "noNeed":Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "android.intent.action.ACTION_GLOBAL_NOSVC_CHK_TIMER_EXPIRED_GSM"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED_INTERNAL_GSM"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_GLOBAL_PWR_SAVE_MODE_STAY_TIMER_EXPIRED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_SWITCH_BACK_TO_GSM_IN_HONGKONG"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING_TIMER_EXPIRED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ACTION_DUALMODE_SETTING"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[global mode] No need to process:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected pollStateDone()V
    .locals 54

    .prologue
    const-string v50, "ro.csc.sales_code"

    invoke-static/range {v50 .. v50}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .local v38, "salesCode":Ljava/lang/String;
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "Poll ServiceState done:  oldSS=["

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "] newSS=["

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "]"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, " oldMaxDataCalls="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mMaxDataCalls:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, " mNewMaxDataCalls="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, " oldReasonDataDenied="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mReasonDataDenied:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, " mNewReasonDataDenied="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    sget-boolean v50, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v50, :cond_0

    const-string v50, "telephony.test.forceRoaming"

    const/16 v51, 0x0

    invoke-static/range {v50 .. v51}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v50

    if-eqz v50, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->updateSpnWithEons(Landroid/telephony/ServiceState;Landroid/telephony/gsm/GsmCellLocation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v50

    if-eqz v50, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v50

    if-nez v50, :cond_27

    const/16 v22, 0x1

    .local v22, "hasRegistered":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v50

    if-nez v50, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v50

    if-eqz v50, :cond_28

    const/16 v18, 0x1

    .local v18, "hasDeregistered":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v50

    if-eqz v50, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v50

    if-nez v50, :cond_29

    const/16 v19, 0x1

    .local v19, "hasGprsAttached":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v50

    if-nez v50, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v50

    if-eqz v50, :cond_2a

    const/16 v20, 0x1

    .local v20, "hasGprsDetached":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v51

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_2b

    const/16 v17, 0x1

    .local v17, "hasDataRegStateChanged":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v51

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_2c

    const/16 v27, 0x1

    .local v27, "hasVoiceRegStateChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v51

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_2d

    const/16 v24, 0x1

    .local v24, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v51

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_2e

    const/16 v23, 0x1

    .local v23, "hasRilDataRadioTechnologyChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v50

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->oldDataRadioTech:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v50

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->newDataRadioTech:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_2f

    const/16 v16, 0x1

    .local v16, "hasChanged":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v50

    if-nez v50, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v50

    if-eqz v50, :cond_30

    const/16 v26, 0x1

    .local v26, "hasRoamingOn":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v50

    if-eqz v50, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v50

    if-nez v50, :cond_31

    const/16 v25, 0x1

    .local v25, "hasRoamingOff":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Landroid/telephony/gsm/GsmCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_32

    const/16 v21, 0x1

    .local v21, "hasLocationChanged":Z
    :goto_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v50

    const-string v51, "CscFeature_RIL_DisplayPlmnByLuRejectCause"

    invoke-virtual/range {v50 .. v51}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_4

    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewRilRegState:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mRilRegState:I

    move/from16 v51, v0

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_33

    :cond_1
    const/16 v16, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewRilRegState:I

    move/from16 v50, v0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mRilRegState:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewRilRegState:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mRilRegState:I

    move/from16 v51, v0

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->after2min:Z

    move/from16 v50, v0

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_2

    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->after2min:Z

    :cond_2
    if-nez v16, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewLuRejCause:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mLuRejCause:I

    move/from16 v51, v0

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_34

    :cond_3
    const/16 v16, 0x1

    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewLuRejCause:I

    move/from16 v50, v0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mLuRejCause:I

    :cond_4
    if-nez v27, :cond_5

    if-eqz v17, :cond_6

    :cond_5
    const v50, 0xc3c2

    const/16 v51, 0x4

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v50

    const/16 v51, 0x3

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v50

    const/16 v51, 0x3

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_7

    const/16 v50, 0x1

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->IsFlightMode:Z

    const/16 v50, 0xfa0

    const/16 v51, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v50

    const-wide/16 v52, 0x7530

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-wide/from16 v2, v52

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v50

    if-nez v50, :cond_8

    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->IsFlightMode:Z

    :cond_8
    if-eqz v24, :cond_a

    const/4 v10, -0x1

    .local v10, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v31, v0

    .local v31, "loc":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v31, :cond_9

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v10

    :cond_9
    const v50, 0xc3cb

    const/16 v51, 0x3

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    const/16 v52, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "RAT switched "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v51

    invoke-static/range {v51 .. v51}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, " -> "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v51

    invoke-static/range {v51 .. v51}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, " at cell "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .end local v10    # "cid":I
    .end local v31    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    .local v43, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v41, v0

    .local v41, "tcl":Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v50, v0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mReasonDataDenied:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v50, v0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mMaxDataCalls:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/android/internal/telephony/gsm/GSMPhone;->isWfcRegistered()Z

    move-result v50

    sput-boolean v50, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isWFCReigstered:Z

    if-eqz v24, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->updatePhoneObject()V

    const-string v50, "CTC"

    move-object/from16 v0, v50

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    const-string v51, "gsm.voice.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v52

    invoke-static/range {v52 .. v52}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v50 .. v52}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz v23, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    const-string v51, "gsm.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v52

    invoke-static/range {v52 .. v52}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v50 .. v52}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz v22, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/os/RegistrantList;->notifyRegistrants()V

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "pollStateDone: registering current mNitzUpdatedTime="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, " changing to false"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNitzUpdatedTime:Z

    const-string v50, "LGT"

    const-string v51, "CMCC"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_d

    const-string v50, "1"

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mHandset_Reg:Ljava/lang/String;

    const-string v50, "1"

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mHandset_Auth:Ljava/lang/String;

    :cond_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v50

    const-string v51, "CscFeature_RIL_CallLteSinglemodeSupport"

    invoke-virtual/range {v50 .. v51}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_e

    const-string v50, "ril.data.limited_lte_reject"

    const-string v51, "false"

    invoke-static/range {v50 .. v51}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mEmergencyOnly:Z

    :cond_e
    const-string v50, "LGT"

    const-string v51, "CMCC"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_f

    if-eqz v18, :cond_f

    const-string v50, "0"

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mHandset_Reg:Ljava/lang/String;

    const-string v50, "0"

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mHandset_Auth:Ljava/lang/String;

    :cond_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v50

    const-string v51, "CscFeature_RIL_ShowRescandialog"

    invoke-virtual/range {v50 .. v51}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_15

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "hasChanged : "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, ", NetworkStateChangedByRescanDialog : "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->NetworkStateChangedByRescanDialog:Z

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, ", isFirstRescanDialogCheckAfterBoot : "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isFirstRescanDialogCheckAfterBoot:Z

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    if-nez v16, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->NetworkStateChangedByRescanDialog:Z

    move/from16 v50, v0

    if-nez v50, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isFirstRescanDialogCheckAfterBoot:Z

    move/from16 v50, v0

    if-eqz v50, :cond_15

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v50

    const-string v51, "VALUE_OF_CURRENT_SELECTION_MODE"

    invoke-static/range {v50 .. v51}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "SelectionMode":Ljava/lang/String;
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "SelectionMode : "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, ", isBootCompleted : "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isBootCompleted:Z

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    const-string v50, "1"

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isBootCompleted:Z

    move/from16 v50, v0

    if-eqz v50, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v50

    if-eqz v50, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v50

    const/16 v51, 0x3

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->IsFlightMode:Z

    move/from16 v50, v0

    if-nez v50, :cond_35

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    move-object/from16 v50, v0

    if-nez v50, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v50, v0

    if-eqz v50, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v50

    const-string v51, "activity"

    invoke-virtual/range {v50 .. v51}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/app/ActivityManager;

    .local v32, "mActivityManager":Landroid/app/ActivityManager;
    const/16 v50, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v37

    .local v37, "rt":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v33, 0x0

    .local v33, "mTopActivity":Ljava/lang/String;
    if-eqz v37, :cond_11

    const/16 v50, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v50

    if-eqz v50, :cond_11

    const/16 v50, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v33

    :cond_11
    if-nez v33, :cond_12

    const-string v33, "NULL"

    :cond_12
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "mTopActivity : "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    const-string v50, "com.android.phone/com.android.phone.NetworkSetting"

    move-object/from16 v0, v33

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v50

    if-nez v50, :cond_13

    const-string v50, "ss.showRescanDialog()"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->showRescanDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v32    # "mActivityManager":Landroid/app/ActivityManager;
    .end local v33    # "mTopActivity":Ljava/lang/String;
    .end local v37    # "rt":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_13
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->NetworkStateChangedByRescanDialog:Z

    move/from16 v50, v0

    if-eqz v50, :cond_14

    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->NetworkStateChangedByRescanDialog:Z

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isFirstRescanDialogCheckAfterBoot:Z

    move/from16 v50, v0

    if-eqz v50, :cond_15

    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isFirstRescanDialogCheckAfterBoot:Z

    .end local v6    # "SelectionMode":Ljava/lang/String;
    :cond_15
    if-eqz v16, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v50, v0

    if-eqz v50, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->IsSIMLoadDone:Z

    move/from16 v50, v0

    if-nez v50, :cond_36

    :cond_16
    const-string v50, "Network State Changed, NO SIM or EONS not loaded: So update Service state display"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->updateSpnDisplay()V

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    const-string v51, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v50 .. v52}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v50, "gsm.sim.operator.numeric"

    const-string v51, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .local v36, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v35

    .local v35, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    const-string v51, "gsm.operator.numeric"

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v50

    if-nez v50, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v50

    if-eqz v50, :cond_17

    const/16 v50, 0x1

    const/16 v51, 0x0

    const/16 v52, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v50

    move/from16 v3, v51

    move-object/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->GetTimezoneInfoUsingMcc(Ljava/lang/String;ZZLjava/lang/String;)V

    :cond_17
    if-nez v35, :cond_37

    const-string v50, "operatorNumeric is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    const-string v51, "gsm.operator.iso-country"

    const-string v52, ""

    invoke-virtual/range {v50 .. v52}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGotCountryCode:Z

    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNitzUpdatedTime:Z

    :cond_18
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v51, v0

    const-string v52, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v50

    if-eqz v50, :cond_42

    const-string v50, "true"

    :goto_11
    move-object/from16 v0, v51

    move-object/from16 v1, v52

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v40, "false"

    .local v40, "sixmodeslave":Ljava/lang/String;
    const-string v50, "false"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v51, v0

    const-string v52, "gsm.operator.isroaming"

    const-string v53, "false"

    invoke-virtual/range {v51 .. v53}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v50

    const-string v51, "IS_CTC"

    const/16 v52, 0x0

    invoke-static/range {v50 .. v52}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    .local v28, "isctc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v50

    const-string v51, "IS_CTC2"

    const/16 v52, 0x0

    invoke-static/range {v50 .. v52}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    .local v29, "isctc2":I
    const/16 v50, 0x1

    move/from16 v0, v28

    move/from16 v1, v50

    if-ne v0, v1, :cond_19

    const/16 v50, 0x1

    move/from16 v0, v29

    move/from16 v1, v50

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    const-string v51, "persist.radio.multisim.stackid"

    const-string v52, "-1"

    invoke-virtual/range {v50 .. v52}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_19

    const-string v50, "true"

    .end local v28    # "isctc":I
    .end local v29    # "isctc2":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v39

    .local v39, "serviceStateForProperty":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    const-string v51, "ril.servicestate"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v50 .. v52}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    const-string v50, "CTC"

    move-object/from16 v0, v50

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->setChinaMainlandProperty()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Landroid/telephony/ServiceState;->getState()I

    move-result v51

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->displayTimeZoneRecommend(Ljava/lang/String;I)V

    :cond_1a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v50

    const-string v51, "CscFeature_RIL_UseRatInfoDuringPlmnSelection"

    invoke-virtual/range {v50 .. v51}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v50

    if-nez v50, :cond_1b

    const-string v50, "BRI"

    move-object/from16 v0, v50

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_1b

    const-string v50, "TGY"

    move-object/from16 v0, v50

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_1b

    const-string v50, "CWT"

    move-object/from16 v0, v50

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_1b

    const-string v50, "FET"

    move-object/from16 v0, v50

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_1b

    const-string v50, "TWM"

    move-object/from16 v0, v50

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_1b

    const-string v50, "CHZ"

    move-object/from16 v0, v50

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v50

    if-nez v50, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v50

    if-eqz v50, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v50

    if-eqz v50, :cond_1c

    const-string v50, "Need to pollState to update Voice Network Type"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->pollState()V

    .end local v35    # "operatorNumeric":Ljava/lang/String;
    .end local v36    # "prevOperatorNumeric":Ljava/lang/String;
    .end local v39    # "serviceStateForProperty":I
    .end local v40    # "sixmodeslave":Ljava/lang/String;
    :cond_1c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v50

    const-string v51, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v52, ""

    invoke-virtual/range {v50 .. v52}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v50

    const-string v51, "WFC20"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v50

    if-eqz v50, :cond_1d

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mWfcStatus:B

    move/from16 v50, v0

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_1d

    const-string v50, "PLMN string update when EPDG regi"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->updateSpnDisplay()V

    sget-boolean v50, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isWFCReigstered:Z

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mWfcPrefMode:B

    move/from16 v50, v0

    const/16 v51, 0x2

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_1d

    const-string v50, "No Svc during ePDG, set default Signal stregnth "

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySignalStrength()V

    :cond_1d
    if-eqz v19, :cond_1f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v50

    const-string v51, "CscFeature_RIL_CallLteSinglemodeSupport"

    invoke-virtual/range {v50 .. v51}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_1e

    const-string v50, "ril.data.limited_lte_reject"

    const-string v51, "false"

    invoke-static/range {v50 .. v51}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mEmergencyOnly:Z

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_1f
    if-eqz v20, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_20
    if-nez v17, :cond_21

    if-eqz v23, :cond_22

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v50

    const-string v51, "CscFeature_RIL_SupportEpdg"

    invoke-virtual/range {v50 .. v51}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_22

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v50

    const-string v51, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v52, ""

    invoke-virtual/range {v50 .. v52}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v50

    const-string v51, "WFC20"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v50

    if-eqz v50, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .local v11, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v44

    .local v44, "types":[Ljava/lang/String;
    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v50, v0

    if-nez v50, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    const-string v51, "nwTypeChanged"

    const-string v52, "default"

    invoke-virtual/range {v50 .. v52}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .end local v11    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v44    # "types":[Ljava/lang/String;
    :cond_22
    if-eqz v26, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_23
    if-eqz v25, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_24
    if-eqz v21, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v50

    if-nez v50, :cond_43

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mStartedGprsRegCheck:Z

    move/from16 v50, v0

    if-nez v50, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mReportedGprsNoReg:Z

    move/from16 v50, v0

    if-nez v50, :cond_26

    const/16 v50, 0x1

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mStartedGprsRegCheck:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v50

    const-string v51, "gprs_register_check_period_ms"

    const v52, 0xea60

    invoke-static/range {v50 .. v52}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .local v7, "check_period":I
    const/16 v50, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v50

    int-to-long v0, v7

    move-wide/from16 v52, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-wide/from16 v2, v52

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v7    # "check_period":I
    :cond_26
    :goto_12
    return-void

    .end local v16    # "hasChanged":Z
    .end local v17    # "hasDataRegStateChanged":Z
    .end local v18    # "hasDeregistered":Z
    .end local v19    # "hasGprsAttached":Z
    .end local v20    # "hasGprsDetached":Z
    .end local v21    # "hasLocationChanged":Z
    .end local v22    # "hasRegistered":Z
    .end local v23    # "hasRilDataRadioTechnologyChanged":Z
    .end local v24    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v25    # "hasRoamingOff":Z
    .end local v26    # "hasRoamingOn":Z
    .end local v27    # "hasVoiceRegStateChanged":Z
    .end local v41    # "tcl":Landroid/telephony/gsm/GsmCellLocation;
    .end local v43    # "tss":Landroid/telephony/ServiceState;
    :cond_27
    const/16 v22, 0x0

    goto/16 :goto_0

    .restart local v22    # "hasRegistered":Z
    :cond_28
    const/16 v18, 0x0

    goto/16 :goto_1

    .restart local v18    # "hasDeregistered":Z
    :cond_29
    const/16 v19, 0x0

    goto/16 :goto_2

    .restart local v19    # "hasGprsAttached":Z
    :cond_2a
    const/16 v20, 0x0

    goto/16 :goto_3

    .restart local v20    # "hasGprsDetached":Z
    :cond_2b
    const/16 v17, 0x0

    goto/16 :goto_4

    .restart local v17    # "hasDataRegStateChanged":Z
    :cond_2c
    const/16 v27, 0x0

    goto/16 :goto_5

    .restart local v27    # "hasVoiceRegStateChanged":Z
    :cond_2d
    const/16 v24, 0x0

    goto/16 :goto_6

    .restart local v24    # "hasRilVoiceRadioTechnologyChanged":Z
    :cond_2e
    const/16 v23, 0x0

    goto/16 :goto_7

    .restart local v23    # "hasRilDataRadioTechnologyChanged":Z
    :cond_2f
    const/16 v16, 0x0

    goto/16 :goto_8

    .restart local v16    # "hasChanged":Z
    :cond_30
    const/16 v26, 0x0

    goto/16 :goto_9

    .restart local v26    # "hasRoamingOn":Z
    :cond_31
    const/16 v25, 0x0

    goto/16 :goto_a

    .restart local v25    # "hasRoamingOff":Z
    :cond_32
    const/16 v21, 0x0

    goto/16 :goto_b

    .restart local v21    # "hasLocationChanged":Z
    :cond_33
    const/16 v16, 0x0

    goto/16 :goto_c

    :cond_34
    const/16 v16, 0x0

    goto/16 :goto_d

    .restart local v6    # "SelectionMode":Ljava/lang/String;
    .restart local v41    # "tcl":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v43    # "tss":Landroid/telephony/ServiceState;
    :catch_0
    move-exception v14

    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e

    .end local v14    # "e":Ljava/lang/Exception;
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v50

    if-nez v50, :cond_13

    const-string v50, "ss.dismissRescanDialog()"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->dismissRescanDialog()V

    goto/16 :goto_e

    .end local v6    # "SelectionMode":Ljava/lang/String;
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_f

    .restart local v35    # "operatorNumeric":Ljava/lang/String;
    .restart local v36    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_37
    const-string v30, ""

    .local v30, "iso":Ljava/lang/String;
    const-string v34, ""

    .local v34, "mcc":Ljava/lang/String;
    const/16 v50, 0x0

    const/16 v51, 0x3

    :try_start_1
    move-object/from16 v0, v35

    move/from16 v1, v50

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v50

    invoke-static/range {v50 .. v50}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v30

    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    const-string v51, "gsm.operator.iso-country"

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v50, 0x1

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGotCountryCode:Z

    const/16 v48, 0x0

    .local v48, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v50, v0

    if-nez v50, :cond_39

    const-string v50, "000"

    move-object/from16 v0, v34

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_39

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v50

    if-nez v50, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v50

    if-eqz v50, :cond_39

    const-string v50, "telephony.test.ignore.nitz"

    const/16 v51, 0x0

    invoke-static/range {v50 .. v51}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v50

    if-eqz v50, :cond_3b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v50

    const-wide/16 v52, 0x1

    and-long v50, v50, v52

    const-wide/16 v52, 0x0

    cmp-long v50, v50, v52

    if-nez v50, :cond_3b

    const/16 v42, 0x1

    .local v42, "testOneUniqueOffsetPath":Z
    :goto_14
    invoke-static/range {v30 .. v30}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v45

    .local v45, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_38

    if-eqz v42, :cond_3c

    :cond_38
    const/16 v50, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    .end local v48    # "zone":Ljava/util/TimeZone;
    check-cast v48, Ljava/util/TimeZone;

    .restart local v48    # "zone":Ljava/util/TimeZone;
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "pollStateDone: no nitz but one TZ for iso-cc="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, " with zone.getID="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v48 .. v48}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, " testOneUniqueOffsetPath="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual/range {v48 .. v48}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .end local v42    # "testOneUniqueOffsetPath":Z
    .end local v45    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_39
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v51, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v50

    if-eqz v50, :cond_18

    const-string v50, "persist.sys.timezone"

    invoke-static/range {v50 .. v50}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .local v49, "zoneName":Ljava/lang/String;
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "pollStateDone: fix time zone zoneName=\'"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "\' mZoneOffset="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mZoneOffset:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, " mZoneDst="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mZoneDst:Z

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, " iso-cc=\'"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "\' iso-cc-idx="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    sget-object v51, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v51

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    const-string v50, ""

    move-object/from16 v0, v50

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_3d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v50, v0

    if-eqz v50, :cond_3d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mZoneOffset:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mZoneDst:Z

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v52, v0

    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v51

    move-wide/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v48

    const-string v50, "pollStateDone: using NITZ TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    :goto_16
    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    if-eqz v48, :cond_41

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "pollStateDone: zone != null zone.getID="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v48 .. v48}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v50

    if-eqz v50, :cond_3a

    invoke-virtual/range {v48 .. v48}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    :cond_3a
    invoke-virtual/range {v48 .. v48}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    goto/16 :goto_10

    .end local v48    # "zone":Ljava/util/TimeZone;
    .end local v49    # "zoneName":Ljava/lang/String;
    :catch_1
    move-exception v15

    .local v15, "ex":Ljava/lang/NumberFormatException;
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_13

    .end local v15    # "ex":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v15

    .local v15, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_13

    .end local v15    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v48    # "zone":Ljava/util/TimeZone;
    :cond_3b
    const/16 v42, 0x0

    goto/16 :goto_14

    .restart local v42    # "testOneUniqueOffsetPath":Z
    .restart local v45    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_3c
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "pollStateDone: there are "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, " unique offsets for iso-cc=\'"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, " testOneUniqueOffsetPath="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "\', do nothing"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_15

    .end local v42    # "testOneUniqueOffsetPath":Z
    .end local v45    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .restart local v49    # "zoneName":Ljava/lang/String;
    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mZoneOffset:I

    move/from16 v50, v0

    if-nez v50, :cond_40

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mZoneDst:Z

    move/from16 v50, v0

    if-nez v50, :cond_40

    if-eqz v49, :cond_40

    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->length()I

    move-result v50

    if-lez v50, :cond_40

    sget-object v50, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v50

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v50

    if-gez v50, :cond_40

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v48

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v50, v0

    if-eqz v50, :cond_3e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .local v12, "ctm":J
    move-object/from16 v0, v48

    invoke-virtual {v0, v12, v13}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v50

    move/from16 v0, v50

    int-to-long v0, v0

    move-wide/from16 v46, v0

    .local v46, "tzOffset":J
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "pollStateDone: tzOffset="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, " ltod="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-static {v12, v13}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getAutoTime()Z

    move-result v50

    if-eqz v50, :cond_3f

    sub-long v8, v12, v46

    .local v8, "adj":J
    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "pollStateDone: adj ltod="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .end local v8    # "adj":J
    .end local v12    # "ctm":J
    .end local v46    # "tzOffset":J
    :cond_3e
    :goto_17
    const-string v50, "pollStateDone: using default TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_16

    .restart local v12    # "ctm":J
    .restart local v46    # "tzOffset":J
    :cond_3f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSavedTime:J

    move-wide/from16 v50, v0

    sub-long v50, v50, v46

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSavedTime:J

    goto :goto_17

    .end local v12    # "ctm":J
    .end local v46    # "tzOffset":J
    :cond_40
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mZoneOffset:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mZoneDst:Z

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v52, v0

    move/from16 v0, v50

    move/from16 v1, v51

    move-wide/from16 v2, v52

    move-object/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v48

    const-string v50, "pollStateDone: using getTimeZone(off, dst, time, iso)"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_41
    const-string v50, "pollStateDone: zone == null"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_10

    .end local v30    # "iso":Ljava/lang/String;
    .end local v34    # "mcc":Ljava/lang/String;
    .end local v48    # "zone":Ljava/util/TimeZone;
    .end local v49    # "zoneName":Ljava/lang/String;
    :cond_42
    const-string v50, "false"

    goto/16 :goto_11

    .end local v35    # "operatorNumeric":Ljava/lang/String;
    .end local v36    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_43
    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mReportedGprsNoReg:Z

    goto/16 :goto_12
.end method

.method public sendNetChangeIntent(Z)V
    .locals 0
    .param p1, "changeToCdma"    # Z

    .prologue
    return-void
.end method

.method public sendNoServiceNotiIntent()V
    .locals 0

    .prologue
    return-void
.end method

.method public startGlobalNetworkSearchTimer()V
    .locals 0

    .prologue
    return-void
.end method

.method public startGlobalNoSvcChkTimer()V
    .locals 0

    .prologue
    return-void
.end method

.method public startPendingIntentTimer(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pendedMode"    # Ljava/lang/String;
    .param p2, "isSwitchToCdmaInChinaMacauArea"    # Z

    .prologue
    return-void
.end method

.method public startReduceSearchTimer(J)V
    .locals 0
    .param p1, "timeElapsed"    # J

    .prologue
    return-void
.end method

.method public stopGlobalNetworkSearchTimer()V
    .locals 0

    .prologue
    return-void
.end method

.method public stopGlobalNoSvcChkTimer()V
    .locals 0

    .prologue
    return-void
.end method

.method public stopPendingIntentTimer()V
    .locals 0

    .prologue
    return-void
.end method

.method public switchToCdmaInChinaMacauArea(Z)V
    .locals 0
    .param p1, "isPendedProcess"    # Z

    .prologue
    return-void
.end method
