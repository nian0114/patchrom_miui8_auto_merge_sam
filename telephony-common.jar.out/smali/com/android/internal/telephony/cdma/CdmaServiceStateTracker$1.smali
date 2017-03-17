.class Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "salesCode":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v0, :cond_1

    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while being destroyed. Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "USC"

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ACG"

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MIN_VALUE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v1, "mMinValue"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateOtaspState()V

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v1, "airplane_mode_on"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .local v6, "airplaneModeState":I
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received  ACTION_AIRPLANE_MODE_CHANGED = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    if-nez v6, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateOtaspState()V

    .end local v6    # "airplaneModeState":I
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "CTC"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isForceUpdate:Z
    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$002(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Z)Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    :cond_6
    const-string v0, "CTC"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    :cond_8
    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "iccState":Ljava/lang/String;
    const-string v0, "phone"

    invoke-virtual {p2, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .local v10, "phoneId":I
    const-string v0, "ABSENT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v0

    if-ne v0, v10, :cond_a

    const/4 v9, 0x1

    .local v9, "isAllSimAbsent":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->simSlotCount:I

    if-ge v7, v0, :cond_9

    const-string v0, "ABSENT"

    const-string v1, "gsm.sim.state"

    const-string v2, "NOT_READY"

    invoke-static {v7, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v9, 0x0

    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isReadyReceiveCall:Z
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$200(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz v9, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v1, "Unblock IPC to send here in Absent. Other cases in other area"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isReadyReceiveCall:Z
    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$302(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Z)Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->notifyRilConnected()V
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$400(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V

    .end local v7    # "i":I
    .end local v8    # "iccState":Ljava/lang/String;
    .end local v9    # "isAllSimAbsent":Z
    .end local v10    # "phoneId":I
    :cond_a
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    # setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mScreenState:Z
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$502(Z)Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v1, "SCREEN_ON"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    :cond_c
    :goto_3
    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ENABLE_SURVEY_MODE:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.intent.action.BIG_DATA_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "simslot"

    invoke-virtual {p2, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v1, "feature"

    invoke-virtual {p2, v1, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mBigDataFeature:I
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$702(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;I)I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v1, "bigdata_info"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sBigData_Info:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$802(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BIG_DATA insertLog slot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " feature : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mBigDataFeature:I
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$700(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mBigDataFeature:I
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$700(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v1, "com.android.internal.telephony"

    const-string v2, "CEND"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sBigData_Info:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$800(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$900(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    # setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mTimeDisplaySchema:Z
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$102(Z)Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->displayTimeDisplayScheme(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_REQUEST_FORCE_SPN_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isForceUpdate:Z
    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$002(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Z)Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_1

    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v1, "DDS changed. pollState()"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_1

    .restart local v7    # "i":I
    .restart local v8    # "iccState":Ljava/lang/String;
    .restart local v9    # "isAllSimAbsent":Z
    .restart local v10    # "phoneId":I
    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .end local v7    # "i":I
    .end local v8    # "iccState":Ljava/lang/String;
    .end local v9    # "isAllSimAbsent":Z
    .end local v10    # "phoneId":I
    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    # setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mScreenState:Z
    invoke-static {v12}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$502(Z)Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v1, "SCREEN_OFF"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v1, "com.android.internal.telephony"

    const-string v2, "DROP"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sBigData_Info:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$800(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$1000(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v1, "com.android.internal.telephony"

    const-string v2, "CRSH"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sBigData_Info:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$800(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$1100(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v1, "com.android.internal.telephony"

    const-string v2, "SMSS"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sBigData_Info:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$800(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$1200(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v1, "com.android.internal.telephony"

    const-string v2, "SMSF"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sBigData_Info:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$800(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$1300(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v1, "com.android.internal.telephony"

    const-string v2, "SMSI"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sBigData_Info:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$800(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$1400(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v1, "com.android.internal.telephony"

    const-string v2, "PDPS"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sBigData_Info:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$800(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$1500(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v1, "com.android.internal.telephony"

    const-string v2, "PDPF"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sBigData_Info:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$800(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$1600(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v1, "com.android.internal.telephony"

    const-string v2, "PDPI"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sBigData_Info:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$800(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$1700(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v1, "com.android.internal.telephony"

    const-string v2, "ATTS"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sBigData_Info:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$800(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$1800(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v1, "com.android.internal.telephony"

    const-string v2, "ATTF"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sBigData_Info:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$800(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$1900(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v1, "com.android.internal.telephony"

    const-string v2, "ATTI"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sBigData_Info:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$800(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$2000(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

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
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
