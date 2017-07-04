.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-boolean v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    if-nez v2, :cond_1

    .line 455
    const-string v2, "GsmSST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received Intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " while being destroyed. Ignoring."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 461
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_OperatorNameRuleForDcm"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m_bActionLocaleChanged:Z

    .line 466
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->simSlotCount:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isForceUpdate:Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$202(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z

    .line 471
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 473
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_OperatorNameRuleForDcm"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->m_bActionLocaleChanged:Z

    .line 495
    :cond_4
    :goto_1
    const-string v2, "AddDataLock"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_ConfigSimLock"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->simSlotCount:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 497
    const-string v2, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 498
    .local v24, "stateExtra":Ljava/lang/String;
    const-string v2, "LOADED"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "[DataLockFeature] INTENT_VALUE_ICC_LOADED"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 500
    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 501
    .local v19, "simNumeric":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 502
    const/4 v2, 0x0

    aget-object v15, v19, v2

    .line 503
    .local v15, "sim1Numeric":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v17, v19, v2

    .line 504
    .local v17, "sim2Numeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DataLockFeature] sim1Numeric = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sim2Numeric = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v0, v17

    invoke-virtual {v2, v15, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPrefNetTypeForDataLockSim(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .end local v15    # "sim1Numeric":Ljava/lang/String;
    .end local v17    # "sim2Numeric":Ljava/lang/String;
    .end local v19    # "simNumeric":[Ljava/lang/String;
    .end local v24    # "stateExtra":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_EnableVoicePriority"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 518
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 519
    const/4 v2, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mScreenState:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$502(Z)Z

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x79

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 545
    :cond_7
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_EnableVoicePriority"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 547
    const-class v2, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v3, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v23

    check-cast v23, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 549
    .local v23, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v0, v23

    if-eq v0, v2, :cond_26

    const/4 v2, 0x0

    :goto_3
    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataSuspended:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$702(Z)Z

    .line 566
    .end local v23    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_8
    :goto_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 568
    :cond_9
    const-string v2, "com.movial.IMS_REGISTRATION"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "IMS_REG_STATUS"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcRegistered:Z

    .line 570
    const-string v2, "GsmSST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMS_REGISTRATION:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-boolean v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcRegistered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-boolean v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcRegistered:Z

    if-nez v2, :cond_a

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 577
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-boolean v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcRegistered:Z

    if-eqz v2, :cond_b

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 581
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySignalStrength()V

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 591
    :cond_c
    :goto_5
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 592
    .local v14, "salesCode":Ljava/lang/String;
    const-string v2, "CHN"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "CHC"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "CHU"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "CHM"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "CTC"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "TGY"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "BRI"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 594
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 598
    :cond_e
    const-string v2, "CTC"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 601
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 607
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->simSlotCount:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_11

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_REQUEST_FORCE_SPN_UPDATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isForceUpdate:Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$202(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 616
    :cond_11
    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isTwochipDsdsOnRoaming()Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 620
    const/4 v2, 0x0

    const-string v3, "gsm.sim.state"

    const-string v4, "ABSENT"

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 621
    .local v16, "sim1StateCheck":Ljava/lang/String;
    const/4 v2, 0x1

    const-string v3, "gsm.sim.state"

    const-string v4, "ABSENT"

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 622
    .local v18, "sim2StateCheck":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_data_call_slot"

    const/16 v4, -0x3e8

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 623
    .local v10, "dataPreferId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getCallState(I)I

    move-result v3

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1102(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getCallState(I)I

    move-result v3

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1202(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DSDS_TWOCHIP] , mSlot1CallState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSlot2CallState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSlot1OldCallState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1OldCallState:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1300()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSlot2OldCallState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2OldCallState:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1400()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHasDisconnectedLte : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasDisconnectedLte:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1500()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", getPhoneId()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 631
    const-string v2, "ABSENT"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "ABSENT"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 632
    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1OldCallState:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1300()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v3

    if-ne v2, v3, :cond_13

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2OldCallState:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1400()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v3

    if-eq v2, v3, :cond_1a

    .line 633
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DSDS_TWOCHIP] First mSlot1CallState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSlot2CallState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 636
    :cond_14
    const/4 v2, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasRinging:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1602(I)I

    .line 638
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    .line 640
    :cond_16
    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasIncomingCall:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1702(I)I

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    if-nez v2, :cond_1a

    .line 642
    new-instance v13, Landroid/content/Intent;

    const-string v2, "android.intent.action.DUOS_CP_CTRL_BY_CALL"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 644
    .local v13, "powerIntent":Landroid/content/Intent;
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    const-string v2, "callslot"

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    const/4 v2, 0x1

    if-ne v10, v2, :cond_17

    .line 647
    const-string v2, "slot"

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 649
    const/4 v2, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevDataPreferId:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1802(I)I

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "[DSDS_TWOCHIP] Add slot2 data off param in intent"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 653
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_18

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasRinging:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1600()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_19

    .line 655
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "[DSDS_TWOCHIP] send sendCallState message once for incomming call in CP1"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x0

    const/4 v4, 0x1

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendCallState(II)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;II)V

    .line 658
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "[DSDS_TWOCHIP] send DUOS_CP_CTRL_BY_CALL block broadcast"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1OldCallState:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1302(I)I

    .line 730
    .end local v10    # "dataPreferId":I
    .end local v13    # "powerIntent":Landroid/content/Intent;
    .end local v16    # "sim1StateCheck":Ljava/lang/String;
    .end local v18    # "sim2StateCheck":Ljava/lang/String;
    :cond_1a
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.POLL_CALL_DONE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "Poll Calls are done"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->radioOffForTwoChipDsds()V
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    .line 735
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.DUOS_CP_CTRL_BY_CALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 736
    const-string v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 737
    .local v23, "state":I
    const-string v2, "callslot"

    const/16 v3, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 738
    .local v9, "callslot":I
    const-string v2, "slot"

    const/16 v3, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 739
    .local v22, "slot":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v11, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 741
    .local v11, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    if-nez v23, :cond_35

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    move/from16 v0, v22

    if-ne v0, v2, :cond_1c

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DSDS_TWOCHIP] Data Off slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 744
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInternalDataEnabled(Z)Z

    .line 746
    :cond_1c
    if-nez v9, :cond_33

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "[DSDS_TWOCHIP] slot1 has incomming call"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 748
    const-string v2, "ril.call_block"

    const-string v3, "slot1call"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    .end local v9    # "callslot":I
    .end local v11    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v22    # "slot":I
    .end local v23    # "state":I
    :cond_1d
    :goto_7
    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ENABLE_SURVEY_MODE:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2500()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 790
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.intent.action.BIG_DATA_INFO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "simslot"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "feature"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBigDataFeature:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2602(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "bigdata_info"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sBigData_Info:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2702(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BIG_DATA insertLog slot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " feature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBigDataFeature:I
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mBigDataFeature:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 797
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "com.android.internal.telephony"

    const-string v4, "CEND"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sBigData_Info:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2700(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 477
    .end local v14    # "salesCode":Ljava/lang/String;
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 478
    const-string v2, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 479
    .local v12, "iccState":Ljava/lang/String;
    const-string v2, "LOCKED"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_1

    .line 482
    .end local v12    # "iccState":Ljava/lang/String;
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ACTION_RADIO_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$302(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v11, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 485
    .restart local v11    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto/16 :goto_1

    .line 486
    .end local v11    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_20
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 487
    const-string v2, "REASON"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 488
    .local v20, "simReason":Z
    const-string v2, "SIMSLOT"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 489
    .local v21, "simSlot":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sim slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 490
    if-nez v20, :cond_4

    .line 491
    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->NITZCount:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$402(I)I

    goto/16 :goto_1

    .line 521
    .end local v20    # "simReason":Z
    .end local v21    # "simSlot":I
    :cond_21
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 522
    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mScreenState:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$502(Z)Z

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x7a

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 524
    :cond_22
    const-string v2, "jp.co.nttdocomo.lcsapp.ACTION_STATUS_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "com.nttdocomo.android.felicaremotelock.ACTION_STATUS_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 526
    :cond_23
    const-string v2, "status"

    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 527
    .local v25, "status":I
    if-nez v25, :cond_24

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->removeMessages(I)V

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x7b

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "Send Message TERMINATE TIMEOUT(60000)"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 532
    :cond_24
    const/4 v2, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_25

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->removeMessages(I)V

    .line 534
    const/4 v2, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->emergencyDataOpened:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$602(Z)Z

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v3, "LCSAPP_START"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v4, 0x7b

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x927c0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "Send Message MAX TIMEOUT(600000)"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 540
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lscapp sent wrong data. status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 549
    .end local v25    # "status":I
    .local v23, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_26
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 551
    .end local v23    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_27
    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v11, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 553
    .restart local v11    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    const-string v2, "activeArray"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 554
    .local v8, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_28

    .line 555
    const/4 v2, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTetherState:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$802(Z)Z

    .line 556
    const-string v2, "TetherOn"

    invoke-virtual {v11, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyDataConnectionForSST(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 558
    :cond_28
    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTetherState:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$802(Z)Z

    .line 559
    const-string v2, "TetherOff"

    invoke-virtual {v11, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyDataConnectionForSST(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 583
    .end local v8    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_29
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-boolean v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcRegistered:Z

    if-eqz v2, :cond_c

    const-string v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/telephony/ServiceState;->setState(I)V

    goto/16 :goto_5

    .line 662
    .restart local v10    # "dataPreferId":I
    .restart local v14    # "salesCode":Ljava/lang/String;
    .restart local v16    # "sim1StateCheck":Ljava/lang/String;
    .restart local v18    # "sim2StateCheck":Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f

    .line 664
    :cond_2b
    const/4 v2, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasIncomingCall:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1702(I)I

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    .line 666
    new-instance v13, Landroid/content/Intent;

    const-string v2, "android.intent.action.DUOS_CP_CTRL_BY_CALL"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 668
    .restart local v13    # "powerIntent":Landroid/content/Intent;
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 669
    const-string v2, "callslot"

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 670
    if-nez v10, :cond_2c

    .line 671
    const-string v2, "slot"

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 673
    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevDataPreferId:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1802(I)I

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "[DSDS_TWOCHIP] Add slot1 data off param in intent"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 677
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2d

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasRinging:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1600()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2e

    .line 680
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "[DSDS_TWOCHIP] send sendCallState message once for incomming call in CP2"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x1

    const/4 v4, 0x1

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendCallState(II)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;II)V

    .line 683
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "[DSDS_TWOCHIP] send DUOS_CP_CTRL_BY_CALL block broadcast"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2OldCallState:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1402(I)I

    goto/16 :goto_6

    .line 687
    .end local v13    # "powerIntent":Landroid/content/Intent;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    if-nez v2, :cond_1a

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "[DSDS_TWOCHIP] IDLE Setting"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 690
    const/4 v2, -0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasRinging:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1602(I)I

    .line 691
    new-instance v13, Landroid/content/Intent;

    const-string v2, "android.intent.action.DUOS_CP_CTRL_BY_CALL"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 693
    .restart local v13    # "powerIntent":Landroid/content/Intent;
    const-string v2, "state"

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    if-nez v2, :cond_31

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasIncomingCall:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1700()I

    move-result v2

    if-nez v2, :cond_31

    .line 697
    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevDataPreferId:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1800()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_30

    .line 698
    const-string v2, "slot"

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 699
    const/4 v2, -0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevDataPreferId:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1802(I)I

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "[DSDS_TWOCHIP] Add slot2 data on param in intent"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 703
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x0

    const/4 v4, 0x0

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendCallState(II)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;II)V

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "[DSDS_TWOCHIP] send DUOS_CP_CTRL_BY_CALL unblock broadcast"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 706
    const/4 v2, -0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasIncomingCall:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1702(I)I

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1OldCallState:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1302(I)I

    goto/16 :goto_6

    .line 709
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasIncomingCall:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1700()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    .line 712
    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevDataPreferId:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1800()I

    move-result v2

    if-nez v2, :cond_32

    .line 713
    const-string v2, "slot"

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 714
    const/4 v2, -0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPrevDataPreferId:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1802(I)I

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "[DSDS_TWOCHIP] Add slot1 data on param in intent"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 718
    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x1

    const/4 v4, 0x0

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendCallState(II)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;II)V

    .line 720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "[DSDS_TWOCHIP] send DUOS_CP_CTRL_BY_CALL unblock broadcast"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 721
    const/4 v2, -0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasIncomingCall:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1702(I)I

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2OldCallState:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1402(I)I

    goto/16 :goto_6

    .line 750
    .end local v10    # "dataPreferId":I
    .end local v13    # "powerIntent":Landroid/content/Intent;
    .end local v16    # "sim1StateCheck":Ljava/lang/String;
    .end local v18    # "sim2StateCheck":Ljava/lang/String;
    .restart local v9    # "callslot":I
    .restart local v11    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .restart local v22    # "slot":I
    .local v23, "state":I
    :cond_33
    const/4 v2, 0x1

    if-ne v9, v2, :cond_34

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "[DSDS_TWOCHIP] slot2 has incomming call"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 752
    const-string v2, "ril.call_block"

    const-string v3, "slot2call"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 755
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "[DSDS_TWOCHIP] get DUOS_CP_CTRL_BY_CALL block broadcast"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 758
    :cond_35
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_37

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    move/from16 v0, v22

    if-ne v0, v2, :cond_36

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DSDS_TWOCHIP] Data On slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 761
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInternalDataEnabled(Z)Z

    .line 763
    :cond_36
    const-string v2, "ril.call_block"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "[DSDS_TWOCHIP] get DUOS_CP_CTRL_BY_CALL unblock broadcast"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 766
    :cond_37
    const/4 v2, 0x2

    move/from16 v0, v23

    if-ne v0, v2, :cond_38

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    if-nez v2, :cond_1d

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "[DSDS_TWOCHIP] Set radioPower off - Slot1"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v3, "ril.dsds.radio-off"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v3, "ril.dsds.radio.recv-end"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const/4 v2, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDsdsTwochipRadioCtrl:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2102(Z)Z

    .line 772
    const/4 v2, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffForRse:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2202(Z)Z

    .line 773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_7

    .line 776
    :cond_38
    const/4 v2, 0x3

    move/from16 v0, v23

    if-ne v0, v2, :cond_1d

    .line 777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    if-nez v2, :cond_1d

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "[DSDS_TWOCHIP] Set radioPower on - Slot1"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 779
    const/4 v2, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDsdsTwochipRadioCtrl:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2102(Z)Z

    .line 780
    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffForRse:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2202(Z)Z

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_7

    .line 800
    .end local v9    # "callslot":I
    .end local v11    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v22    # "slot":I
    .end local v23    # "state":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "com.android.internal.telephony"

    const-string v4, "DROP"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sBigData_Info:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2700(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 803
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v3, "com.android.internal.telephony"

    const-string v4, "CRSH"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sBigData_Info:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2700(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$3000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 795
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
