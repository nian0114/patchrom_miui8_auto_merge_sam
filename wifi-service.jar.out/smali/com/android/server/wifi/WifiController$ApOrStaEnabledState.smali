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

    .line 786
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 787
    iput v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    .line 788
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mHaveDeferredEnable:Z

    return-void
.end method

.method private doDeferEnable(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 995
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDisabledTimestamp:J

    sub-long v2, v4, v6

    .line 996
    .local v2, "delaySoFar":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$5500(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 997
    const/4 v1, 0x0

    .line 1008
    :goto_0
    return v1

    .line 1000
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
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$5500(Lcom/android/server/wifi/WifiController;)J

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
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->access$8800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 1004
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600b

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1005
    .local v0, "deferredMsg":Landroid/os/Message;
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1006
    iget v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1007
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$5500(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x5

    add-long/2addr v4, v6

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1008
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 794
    # getter for: Lcom/android/server/wifi/WifiController;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "enter ApOrStaEnabledState"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$5700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 796
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDisabledTimestamp:J

    .line 797
    iget v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    .line 798
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mHaveDeferredEnable:Z

    .line 800
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 805
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApOrStaEnabledState  msg.what= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiController;->access$5800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 806
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 991
    :goto_0
    :pswitch_0
    return v2

    .line 808
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 809
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->isMobileApOn()Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$5900(Lcom/android/server/wifi/WifiController;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 810
    const-string v4, "VZW"

    # getter for: Lcom/android/server/wifi/WifiController;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$3000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 811
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->getRvfMode()I

    move-result v4

    if-nez v4, :cond_0

    .line 812
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiSettingsStore;->persistWifiApState(I)V

    .line 815
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v4, v7, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 817
    const-wide/16 v4, 0x258

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "Transiting to ApStaDisabledState"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$6000(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 823
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$6100(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    :cond_2
    :goto_2
    :pswitch_2
    move v2, v3

    .line 991
    goto :goto_0

    .line 818
    :catch_0
    move-exception v1

    .line 819
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 827
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :pswitch_3
    # getter for: Lcom/android/server/wifi/WifiController;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$1700()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, " IN CMD_SET_AP_STA_DISABLED and isAirplaneModeOn"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$6200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 828
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$6300(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 831
    :pswitch_4
    # getter for: Lcom/android/server/wifi/WifiController;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$1700()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Going to CMD_SET_AP msg.arg1 =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "msg.arg2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiController;->access$6400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 832
    :cond_4
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_6

    .line 833
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v4, v7, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 840
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->isWifiOn()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$6500(Lcom/android/server/wifi/WifiController;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 844
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 845
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "We got MHS OFF but there is wifi toggle happened"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$6600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 847
    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 848
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "We got MHS Turn OFF and WiFi, BS and Wifi Toggle all are OFF"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$6700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 849
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$6800(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 852
    :cond_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_2

    .line 859
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->isWifiOn()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$6500(Lcom/android/server/wifi/WifiController;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 861
    :cond_7
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 863
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "delayed message to ourself as wifi is turning on"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$6900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 864
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600b

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 865
    .local v0, "deferredMsg":Landroid/os/Message;
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 866
    iget v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 867
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 868
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 871
    .end local v0    # "deferredMsg":Landroid/os/Message;
    :cond_8
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->isWifiOn()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$6500(Lcom/android/server/wifi/WifiController;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 872
    :cond_9
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v2, Lcom/android/server/wifi/WifiController;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    goto/16 :goto_2

    .line 887
    :pswitch_5
    const-string v4, "WifiController"

    const-string v5, "CMD_RESET_AP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v4, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setSoftApReset(Z)V

    .line 889
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v4, v7, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 891
    const-wide/16 v4, 0x258

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 901
    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v2, Lcom/android/server/wifi/WifiController;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    goto/16 :goto_2

    .line 892
    :catch_1
    move-exception v1

    .line 893
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 913
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :pswitch_6
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_2

    .line 918
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->isMobileApOn()Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$5900(Lcom/android/server/wifi/WifiController;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 919
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v4, v7, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 921
    :cond_a
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$7000(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$EcmState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$7100(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 929
    :pswitch_7
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->isWifiOn()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$6500(Lcom/android/server/wifi/WifiController;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 930
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, " transit to mStaDisabledWithScanState as the CMD_SCAN_ALWAYS_MODE_CHANGED was changed "

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$7200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 931
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$3900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$7300(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 936
    :pswitch_8
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mSettingsStore.isWifiToggleEnabled() = "

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
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiController;->access$7400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 937
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 938
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->doDeferEnable(Landroid/os/Message;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 939
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mHaveDeferredEnable:Z

    if-eqz v4, :cond_b

    .line 941
    iget v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    .line 943
    :cond_b
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mHaveDeferredEnable:Z

    if-nez v4, :cond_c

    move v2, v3

    :cond_c
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mHaveDeferredEnable:Z

    goto/16 :goto_2

    .line 946
    :cond_d
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 947
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, " mDeviceActiveState "

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$7500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 948
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$3600(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$7600(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 950
    :cond_e
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, " checkLocksAndTransitionWhenDeviceIdle "

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$7700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 951
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->checkLocksAndTransitionWhenDeviceIdle()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$3800(Lcom/android/server/wifi/WifiController;)V

    goto/16 :goto_2

    .line 960
    :pswitch_9
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_AP_START_FAILURE :isWifiON : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->isWifiOn()Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$6500(Lcom/android/server/wifi/WifiController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isScanAlways ON : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v5, v5, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$7800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 962
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is Wifi Toggle happened "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v5, v5, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$7900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 963
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->isWifiOn()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$6500(Lcom/android/server/wifi/WifiController;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-nez v2, :cond_f

    .line 964
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$8000(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 965
    :cond_f
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->isWifiOn()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$6500(Lcom/android/server/wifi/WifiController;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 966
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$3900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$8100(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 970
    :pswitch_a
    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_11

    .line 971
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "DEFERRED_TOGGLE handled with CMD_WIFI_TOGGLED"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$8200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 976
    :cond_10
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "DEFERRED_TOGGLE handled in ApOrStaEnabled State"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$8400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 977
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/WifiController;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 972
    :cond_11
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->mDeferredEnableSerialNumber:I

    if-eq v2, v4, :cond_10

    .line 973
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "DEFERRED_TOGGLE ignored due to serial mismatch"

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$8300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 980
    :pswitch_b
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mDeferredwifimhsnum:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$8500(Lcom/android/server/wifi/WifiController;)I

    move-result v4

    if-eq v2, v4, :cond_12

    .line 981
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "DEFERRED_TOGGLE ignored due to serial mismatch"

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$8600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 984
    :cond_12
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$8700(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 806
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
        :pswitch_4
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
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_b
    .end packed-switch
.end method
