.class Lcom/android/server/wifi/WifiController$ApStaDisabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApStaDisabledState"
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

    .line 617
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 618
    iput v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    .line 619
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    return-void
.end method

.method private doDeferEnable(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 768
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDisabledTimestamp:J

    sub-long v2, v4, v6

    .line 769
    .local v2, "delaySoFar":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$5500(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 770
    const/4 v1, 0x0

    .line 781
    :goto_0
    return v1

    .line 773
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

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

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

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
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->access$5600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 777
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600b

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 778
    .local v0, "deferredMsg":Landroid/os/Message;
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 779
    iget v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 780
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$5500(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x5

    add-long/2addr v4, v6

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 781
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 624
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 626
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDisabledTimestamp:J

    .line 627
    iget v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    .line 628
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    .line 629
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->clearANQPCache()V

    .line 630
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 633
    # getter for: Lcom/android/server/wifi/WifiController;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$1700()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApStaDisabledState  msg.what= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiController;->access$2900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 634
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 764
    :goto_0
    return v2

    .line 637
    :sswitch_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->setFccChannel()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$1900(Lcom/android/server/wifi/WifiController;)V

    .line 639
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v4

    if-nez v4, :cond_1

    .line 641
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->setFccChannel(I)V

    .line 643
    :cond_1
    const-string v4, "VZW"

    # getter for: Lcom/android/server/wifi/WifiController;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$3000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiSettingsStore;->getPersistedWifiApState()I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 647
    const-wide/16 v4, 0x258

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 653
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApOrStaEnabledState:Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$3100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$3200(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    .line 654
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->isWifiSharingEnabled()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$3300(Lcom/android/server/wifi/WifiController;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 655
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 656
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "Need to enabled both Wifi and Mobile AP So sending Wifi Toggle msg"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$3400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 657
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x26008

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    :cond_2
    :goto_2
    move v2, v3

    .line 764
    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 658
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 659
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "Need to enabled both BS and Mobile AP So sending BS Enable msg"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$3500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 660
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x26007

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_2

    .line 667
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 668
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->doDeferEnable(Landroid/os/Message;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 669
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    if-eqz v4, :cond_5

    .line 671
    iget v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    .line 673
    :cond_5
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    if-nez v4, :cond_6

    move v2, v3

    :cond_6
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    goto :goto_2

    .line 676
    :cond_7
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 677
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$3600(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$3700(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 679
    :cond_8
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->checkLocksAndTransitionWhenDeviceIdle()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$3800(Lcom/android/server/wifi/WifiController;)V

    goto :goto_2

    .line 681
    :cond_9
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 682
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$3900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$4000(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 683
    :cond_a
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 685
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "illegal state found both WifiController and WifiStateMachine"

    # invokes: Lcom/android/server/wifi/WifiController;->loge(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$4100(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 686
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$4200(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 693
    :sswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_c

    .line 696
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    .line 697
    .local v1, "wifiState":I
    if-eq v1, v3, :cond_b

    .line 699
    const-wide/16 v4, 0x258

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 705
    :cond_b
    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->setIbssRunning(Z)V

    .line 706
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIbssEnabledState:Lcom/android/server/wifi/WifiController$IbssEnabledState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$4300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$IbssEnabledState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$4400(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 700
    :catch_1
    move-exception v0

    .line 701
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 709
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "wifiState":I
    :cond_c
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "illegal state found both WifiController and WifiStateMachine"

    # invokes: Lcom/android/server/wifi/WifiController;->loge(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$4500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 710
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$4600(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 714
    :sswitch_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 715
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$3900(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$4700(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 719
    :sswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    if-eq v2, v4, :cond_d

    .line 720
    # getter for: Lcom/android/server/wifi/WifiController;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$1700()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "DEFERRED_TOGGLE ignored due to serial mismatch"

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$4800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 723
    :cond_d
    # getter for: Lcom/android/server/wifi/WifiController;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$1700()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "DEFERRED_TOGGLE handled"

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$4900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 724
    :cond_e
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/WifiController;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 727
    :sswitch_5
    # getter for: Lcom/android/server/wifi/WifiController;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$1700()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle CMD_SET_AP msg.arg1 ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$5000(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 728
    :cond_f
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_2

    .line 730
    # getter for: Lcom/android/server/wifi/WifiController;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$1700()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "Turning ON SoftAp"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$5100(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 732
    :cond_10
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v2, Lcom/android/server/wifi/WifiController;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 736
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 737
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "We have received Wifi Toggle so no state transition for MHS ON"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$5200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 739
    :cond_11
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 740
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "We have not received Wifi Toggle so state transition for MHS ON"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$5300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 741
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApOrStaEnabledState:Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$3100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiController;->access$5400(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 634
    :sswitch_data_0
    .sparse-switch
        0x26007 -> :sswitch_3
        0x26008 -> :sswitch_0
        0x26009 -> :sswitch_1
        0x2600a -> :sswitch_5
        0x2600b -> :sswitch_4
        0x26015 -> :sswitch_2
    .end sparse-switch
.end method
