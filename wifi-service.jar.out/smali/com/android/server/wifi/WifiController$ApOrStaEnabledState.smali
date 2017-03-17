.class Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApOrStaEnabledState"
.end annotation


# instance fields
.field private mDeferredEnableSerialNumber:I

.field private mDisabledTimestamp:J

.field private mHaveDeferredEnable:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    iput v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mHaveDeferredEnable:Z

    return-void
.end method

.method private doDeferEnable(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDisabledTimestamp:J

    sub-long v2, v4, v6

    .local v2, "delaySoFar":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$5800(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiController msg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " deferred for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$5800(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->access$9200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600b

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "deferredMsg":Landroid/os/Message;
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$5800(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x5

    add-long/2addr v4, v6

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessageDelayed(Landroid/os/Message;J)V

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    # getter for: Lcom/android/server/wifi/WifiController;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "enter ApOrStaEnabledState"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$6000(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDisabledTimestamp:J

    iget v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mHaveDeferredEnable:Z

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ApOrStaEnabledState  msg.what= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiController;->access$6100(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v5

    :pswitch_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->isMobileApOn()Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$6200(Lcom/android/server/wifi/WifiController;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "VZW"

    # getter for: Lcom/android/server/wifi/WifiController;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$3000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getRvfMode()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiApState(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v3, v8, v5}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    const-wide/16 v6, 0x258

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v5, "Transiting to ApStaDisabledState"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiController;->access$6300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiController;->access$6400(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    :cond_2
    :goto_2
    move v5, v4

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/InterruptedException;
    :pswitch_2
    # getter for: Lcom/android/server/wifi/WifiController;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$1700()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v5, " IN CMD_SET_AP_STA_DISABLED and isAirplaneModeOn"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiController;->access$6500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiController;->access$6600(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_2

    :pswitch_3
    # getter for: Lcom/android/server/wifi/WifiController;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$1700()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Going to CMD_SET_AP msg.arg1 =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "msg.arg2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiController;->access$6700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    :cond_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v3, v8, v5}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->isWifiOn()Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$6800(Lcom/android/server/wifi/WifiController;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v5, "We got MHS OFF but there is wifi toggle happened"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiController;->access$6900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v5, "We got MHS Turn OFF and WiFi, BS and Wifi Toggle all are OFF"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiController;->access$7000(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiController;->access$7100(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    :cond_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->isWifiOn()Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$6800(Lcom/android/server/wifi/WifiController;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v6, "delayed message to ourself as wifi is turning on"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiController;->access$7200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const v6, 0x2600b

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "deferredMsg":Landroid/os/Message;
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    iput v4, v0, Landroid/os/Message;->arg2:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-wide/16 v6, 0x5dc

    invoke-virtual {v3, v0, v6, v7}, Lcom/android/server/wifi/WifiController;->sendMessageDelayed(Landroid/os/Message;J)V

    .end local v0    # "deferredMsg":Landroid/os/Message;
    :cond_8
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->isWifiOn()Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$6800(Lcom/android/server/wifi/WifiController;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_9
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v6, v3, Lcom/android/server/wifi/WifiController;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v6, v3, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mWifiTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$4300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiTrafficPoller;

    move-result-object v3

    iput-boolean v5, v3, Lcom/android/server/wifi/WifiTrafficPoller;->mNeedBooster:Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$5600(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v3

    const-string v5, "phone"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .local v2, "netType":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "netType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiController;->access$7300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    const/16 v3, 0xd

    if-ne v2, v3, :cond_a

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mWifiTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$4300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiTrafficPoller;

    sget v3, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mWifiTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$4300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiTrafficPoller;

    and-int/lit8 v3, v3, -0x2

    sput v3, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    goto/16 :goto_2

    :cond_a
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mWifiTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$4300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiTrafficPoller;

    sget v3, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mWifiTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$4300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiTrafficPoller;

    or-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    goto/16 :goto_2

    .end local v2    # "netType":I
    :pswitch_4
    const-string v3, "WifiController"

    const-string v6, "CMD_RESET_AP"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setSoftApReset(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v3, v8, v5}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    const-wide/16 v6, 0x258

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v5, v3, Lcom/android/server/wifi/WifiController;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v5, v3, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    goto/16 :goto_2

    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .end local v1    # "e":Ljava/lang/InterruptedException;
    :pswitch_5
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_b

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mWifiTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$4300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiTrafficPoller;

    sget v3, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mWifiTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$4300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiTrafficPoller;

    and-int/lit8 v3, v3, -0x2

    sput v3, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    goto/16 :goto_2

    :cond_b
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mWifiTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$4300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiTrafficPoller;

    sget v3, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mWifiTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$4300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiTrafficPoller;

    or-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    goto/16 :goto_2

    :pswitch_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->isMobileApOn()Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$6200(Lcom/android/server/wifi/WifiController;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v3, v8, v5}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    :cond_c
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$7400(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$EcmState;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiController;->access$7500(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    :pswitch_7
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->isWifiOn()Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$6800(Lcom/android/server/wifi/WifiController;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v5, " transit to mStaDisabledWithScanState as the CMD_SCAN_ALWAYS_MODE_CHANGED was changed "

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiController;->access$7600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$3900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiController;->access$7700(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    :pswitch_8
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mSettingsStore.isWifiToggleEnabled() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v7, v7, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiController;->access$7800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->doDeferEnable(Landroid/os/Message;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mHaveDeferredEnable:Z

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    :cond_d
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mHaveDeferredEnable:Z

    if-nez v3, :cond_e

    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mHaveDeferredEnable:Z

    goto/16 :goto_2

    :cond_e
    move v3, v5

    goto :goto_4

    :cond_f
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v6, " mDeviceActiveState "

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiController;->access$7900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v6, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;
    invoke-static {v6}, Lcom/android/server/wifi/WifiController;->access$3600(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiController;->access$8000(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    :goto_5
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mWifiTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$4300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiTrafficPoller;

    move-result-object v3

    iput-boolean v5, v3, Lcom/android/server/wifi/WifiTrafficPoller;->mNeedBooster:Z

    goto/16 :goto_2

    :cond_10
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v6, " checkLocksAndTransitionWhenDeviceIdle "

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiController;->access$8100(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->checkLocksAndTransitionWhenDeviceIdle()V
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$3800(Lcom/android/server/wifi/WifiController;)V

    goto :goto_5

    :pswitch_9
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMD_AP_START_FAILURE :isWifiON : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->isWifiOn()Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiController;->access$6800(Lcom/android/server/wifi/WifiController;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isScanAlways ON : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v6, v6, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiController;->access$8200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is Wifi Toggle happened "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v6, v6, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiController;->access$8300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->isWifiOn()Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$6800(Lcom/android/server/wifi/WifiController;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiController;->access$8400(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    :cond_11
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->isWifiOn()Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$6800(Lcom/android/server/wifi/WifiController;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$3900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiController;->access$8500(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    :pswitch_a
    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_13

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v5, "DEFERRED_TOGGLE handled with CMD_WIFI_TOGGLED"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiController;->access$8600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    :cond_12
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v5, "DEFERRED_TOGGLE handled in ApOrStaEnabled State"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiController;->access$8800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v5, v3}, Lcom/android/server/wifi/WifiController;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    :cond_13
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    if-eq v3, v5, :cond_12

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v5, "DEFERRED_TOGGLE ignored due to serial mismatch"

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiController;->access$8700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_b
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mDeferredwifimhsnum:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$8900(Lcom/android/server/wifi/WifiController;)I

    move-result v5

    if-eq v3, v5, :cond_14

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v5, "DEFERRED_TOGGLE ignored due to serial mismatch"

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiController;->access$9000(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_14
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiController;->access$9100(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x26001
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_3
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_b
    .end packed-switch
.end method
