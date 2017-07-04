.class Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 10206
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000

    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 10210
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$21000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10211
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "DriverStartedState enter"

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 10214
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$21100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-lez v2, :cond_6

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/server/wifi/DummyWifiLogger;->startLogging(Z)V

    .line 10215
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$21202(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10216
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$21302(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10217
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$21408(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 10218
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 10224
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    .line 10226
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$21500(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 10229
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    .line 10232
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$21600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 10233
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    .line 10238
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpActive:Z
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$21702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10240
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$12900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-eq v2, v3, :cond_8

    .line 10241
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 10242
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 10243
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$12900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 10244
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$10200(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 10246
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$13000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$21800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 10266
    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$22100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_a

    .line 10267
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 10269
    .local v1, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScreenStateChanged(Z)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$5800(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 10275
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    .line 10280
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$10000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10281
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$12900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$12900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_d

    .line 10283
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isMobileApOn()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 10284
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v4, 0x20083

    invoke-virtual {v2, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 10285
    const-string v2, "WifiStateMachine"

    const-string v4, " p2p Needed be enabled "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10300
    :cond_3
    :goto_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "wifi_scan_available"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10301
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10302
    const-string v2, "scan_enabled"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10303
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 10305
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSet()I

    move-result v4

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mHalFeatureSet:I
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$22302(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 10306
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHalFeatureSet:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$22300(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_4

    .line 10308
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mHalBasedPnoDriverSupported:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$22402(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10312
    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    const-string v2, "wlan0"

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiNative;->setWifiLinkLayerStats(Ljava/lang/String;I)V

    .line 10314
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$21000()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 10315
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Driverstarted State enter done, epno="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHalBasedPnoDriverSupported:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$22400(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " feature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHalFeatureSet:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$22300(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 10318
    :cond_5
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    move v2, v4

    .line 10214
    goto/16 :goto_0

    .line 10235
    :cond_7
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    goto/16 :goto_1

    .line 10249
    :cond_8
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 10251
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "Attempting to reconnect to wifi network .."

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10252
    :cond_9
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 10259
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->status()Ljava/lang/String;

    .line 10261
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$21900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 10262
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$22000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 10272
    :cond_a
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$22200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$2200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_b

    move v4, v3

    :cond_b
    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    goto/16 :goto_3

    .line 10287
    :cond_c
    const-string v2, "WifiStateMachine"

    const-string v4, " since hotspot was on No Need to enabled  P2P "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 10296
    :cond_d
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "WifiStateMachine"

    const-string v4, " mP2pSupported"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 11294
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/DummyWifiLogger;->stopLogging()V

    .line 11296
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$21202(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11297
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 11298
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$24402(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;

    .line 11300
    new-instance v0, Landroid/content/Intent;

    const-string v1, "wifi_scan_available"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11301
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11302
    const-string v1, "scan_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11303
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 11304
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->noteScanEnd()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$18100(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 11305
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$18600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 11306
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$23102(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 11307
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 50
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 10322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 10324
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    sparse-switch v44, :sswitch_data_0

    .line 11287
    const/16 v44, 0x0

    .line 11289
    :goto_0
    return v44

    .line 10327
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/Bundle;

    .line 10328
    .local v12, "bundle":Landroid/os/Bundle;
    if-eqz v12, :cond_5

    .line 10329
    const-string v44, "pid"

    const/16 v45, -0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 10330
    .local v30, "pid":I
    const/16 v44, -0x1

    move/from16 v0, v30

    move/from16 v1, v44

    if-eq v0, v1, :cond_5

    .line 10331
    const/16 v38, 0x0

    .line 10332
    .local v38, "scanType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanController:Lcom/samsung/android/server/wifi/WifiScanController;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$19800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/samsung/android/server/wifi/WifiScanController;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiScanController;->getScanType(I)I

    move-result v38

    .line 10334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanController:Lcom/samsung/android/server/wifi/WifiScanController;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$19800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/samsung/android/server/wifi/WifiScanController;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiScanController;->getScanLog(I)Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    move-result-object v36

    .line 10335
    .local v36, "scanLog":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    if-eqz v36, :cond_0

    .line 10336
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CMD_START_SCAN : scanLog.mLast - "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mLastTime:J

    move-wide/from16 v46, v0

    invoke-virtual/range {v45 .. v47}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ", scanLog.mStartTimeForBigdata - "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mStartTimeForBigdata:J

    move-wide/from16 v46, v0

    invoke-virtual/range {v45 .. v47}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10337
    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mLastTime:J

    move-wide/from16 v44, v0

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mStartTimeForBigdata:J

    move-wide/from16 v46, v0

    sub-long v44, v44, v46

    sget-wide v46, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->TIMEOUT_FOR_BIGDATA:J

    cmp-long v44, v44, v46

    if-lez v44, :cond_0

    .line 10338
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CMD_START_SCAN : scanLog.mCountForBigdata - "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v36

    iget v0, v0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountForBigdata:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10339
    move-object/from16 v0, v36

    iget v0, v0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountForBigdata:I

    move/from16 v44, v0

    sget v45, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->THRESHOULD_COUNT_FOR_BIG_DATA:I

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_0

    .line 10340
    move-object/from16 v0, v36

    iget v0, v0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountForBigdata:I

    move/from16 v44, v0

    add-int/lit8 v35, v44, -0x1

    .line 10341
    .local v35, "scanCount":I
    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mLastTime:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    move-object/from16 v2, v36

    iput-wide v0, v2, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mStartTimeForBigdata:J

    .line 10342
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v36

    iput v0, v1, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mCountForBigdata:I

    .line 10344
    const-string v44, "TRUE"

    sget-object v45, Lcom/android/server/wifi/WifiStateMachine;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_0

    .line 10345
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->mPackageName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 10347
    .local v14, "data":Ljava/lang/String;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 10348
    .local v8, "args":Landroid/os/Bundle;
    const-string v44, "bigdata"

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10349
    const-string v44, "feature"

    const-string v45, "SCAN"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10350
    const-string v44, "data"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    const v46, 0x200ca

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 10357
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v14    # "data":Ljava/lang/String;
    .end local v35    # "scanCount":I
    :cond_0
    const/16 v44, 0x4

    move/from16 v0, v38

    move/from16 v1, v44

    if-ne v0, v1, :cond_2

    .line 10358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateTimeStampForCachedScanResult()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$22500(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 10359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    const-wide/16 v46, 0x320

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendDelayBroadcast(IJ)V
    invoke-static/range {v44 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->access$22600(Lcom/android/server/wifi/WifiStateMachine;IJ)V

    .line 11289
    .end local v12    # "bundle":Landroid/os/Bundle;
    .end local v30    # "pid":I
    .end local v36    # "scanLog":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    .end local v38    # "scanType":I
    :cond_1
    :goto_1
    const/16 v44, 0x1

    goto/16 :goto_0

    .line 10361
    .restart local v12    # "bundle":Landroid/os/Bundle;
    .restart local v30    # "pid":I
    .restart local v36    # "scanLog":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    .restart local v38    # "scanType":I
    :cond_2
    const/16 v44, 0x5

    move/from16 v0, v38

    move/from16 v1, v44

    if-eq v0, v1, :cond_1

    .line 10363
    if-eqz v38, :cond_4

    .line 10364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNeedToUpdateChannelList:Z
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$16800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v44

    if-eqz v44, :cond_3

    .line 10365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->getFreqCapability()Ljava/lang/String;

    move-result-object v19

    .line 10366
    .local v19, "freqsString":Ljava/lang/String;
    if-eqz v19, :cond_3

    .line 10367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanController:Lcom/samsung/android/server/wifi/WifiScanController;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$19800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/samsung/android/server/wifi/WifiScanController;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v19

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->parseChannelFreq(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$22700(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/util/List;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/samsung/android/server/wifi/WifiScanController;->updateChannelList(Ljava/util/List;)V

    .line 10368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNeedToUpdateChannelList:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$16802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10371
    .end local v19    # "freqsString":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanController:Lcom/samsung/android/server/wifi/WifiScanController;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$19800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/samsung/android/server/wifi/WifiScanController;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiScanController;->getChannelFrequencyArray(I)[I

    move-result-object v18

    .line 10372
    .local v18, "freqs":[I
    if-eqz v18, :cond_4

    .line 10373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->startPartialScan(I[I)I

    goto :goto_1

    .line 10378
    .end local v18    # "freqs":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanController:Lcom/samsung/android/server/wifi/WifiScanController;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$19800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/samsung/android/server/wifi/WifiScanController;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/samsung/android/server/wifi/WifiScanController;->isNLPPackageFromLastPid()Z

    move-result v44

    if-eqz v44, :cond_5

    .line 10379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScanRequest(ILandroid/os/Message;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$22800(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 10384
    .end local v30    # "pid":I
    .end local v36    # "scanLog":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    .end local v38    # "scanType":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$22900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$13000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_6

    .line 10385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScanRequest(ILandroid/os/Message;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$22800(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 10388
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x2

    move-object/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScanRequest(ILandroid/os/Message;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$22800(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 10391
    .end local v12    # "bundle":Landroid/os/Bundle;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 10392
    .local v18, "freqs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->partialScan(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_1

    .line 10393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    const/16 v46, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->noteScanStart(ILandroid/os/WorkSource;)V
    invoke-static/range {v44 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$23000(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/WorkSource;)V

    goto/16 :goto_1

    .line 10397
    .end local v18    # "freqs":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 10398
    .local v13, "country":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    const-string v45, "airplane_mode_on"

    const/16 v46, 0x0

    invoke-static/range {v44 .. v46}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_8

    if-eqz v13, :cond_7

    const-string v44, "factory"

    move-object/from16 v0, v44

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v44

    if-nez v44, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->isWifiOnly(Landroid/content/Context;)Z

    move-result v44

    if-nez v44, :cond_8

    .line 10401
    const-string v44, "WifiStateMachine"

    const-string v45, "[CMD_SET_COUNTRY_CODE] Airplane mode on, break !!!"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 10404
    :cond_8
    if-eqz v13, :cond_9

    const-string v44, "factory"

    move-object/from16 v0, v44

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v44

    if-eqz v44, :cond_9

    .line 10405
    const-string v44, "WifiStateMachine"

    const-string v45, "DriverStarted - [CMD_SET_COUNTRY_CODE] - Factory mode"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10406
    const-string v44, "factory"

    const-string v45, ""

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 10408
    :cond_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_b

    const/16 v29, 0x1

    .line 10409
    .local v29, "persist":Z
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v39, v0

    .line 10410
    .local v39, "sequence":I
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v44

    if-eqz v44, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "sequence = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ", mCountryCodeSequence = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$5300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10411
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$5300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v44

    if-eqz v44, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$5300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v44

    move/from16 v0, v39

    move/from16 v1, v44

    if-eq v0, v1, :cond_c

    .line 10412
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v44

    if-eqz v44, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "set country code ignored due to sequnce num"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 10408
    .end local v29    # "persist":Z
    .end local v39    # "sequence":I
    :cond_b
    const/16 v29, 0x0

    goto :goto_2

    .line 10415
    .restart local v29    # "persist":Z
    .restart local v39    # "sequence":I
    :cond_c
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v44

    if-eqz v44, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "set country code "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10416
    :cond_d
    if-eqz v29, :cond_e

    .line 10417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mSetCountryCode:Ljava/lang/String;
    invoke-static {v0, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$5202(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 10418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    const-string v45, "wifi_country_code"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 10422
    :cond_e
    sget-object v44, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, v44

    invoke-virtual {v13, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 10423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$23100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    if-eqz v44, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$23100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_10

    .line 10425
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_11

    .line 10426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v0, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$23102(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 10428
    const-string v44, "WifiStateMachine"

    const-string v45, "mWifiNative.bssFlush()"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->bssFlush()V

    .line 10430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNeedToUpdateChannelList:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$16802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10435
    :cond_10
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$4500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    const v45, 0x23010

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v0, v1, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 10432
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Failed to set country code "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 10438
    .end local v13    # "country":Ljava/lang/String;
    .end local v29    # "persist":Z
    .end local v39    # "sequence":I
    :sswitch_3
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 10439
    .local v10, "band":I
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v44

    if-eqz v44, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "set frequency band "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10440
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiNative;->setBand(I)Z

    move-result v44

    if-eqz v44, :cond_15

    .line 10442
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$21000()Z

    move-result v44

    if-eqz v44, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "did set frequency band "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 10445
    :cond_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v44

    const-string v45, "CscFeature_Wifi_SetOffApRoaming"

    invoke-virtual/range {v44 .. v45}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_14

    .line 10446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->setRoamMode(I)Z

    .line 10448
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$23200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 10450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->bssFlush()V

    .line 10451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFirmwareType:I
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$9900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    const/16 v45, 0x3

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_1

    .line 10454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x2

    const/16 v46, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startScanNative(ILjava/lang/String;)Z
    invoke-static/range {v44 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$23300(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;)Z

    .line 10455
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$21000()Z

    move-result v44

    if-eqz v44, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "done set frequency band "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 10458
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Failed to set frequency band "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 10462
    .end local v10    # "band":I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    if-eqz v44, :cond_16

    const/16 v44, 0x1

    :goto_4
    move-object/from16 v0, v45

    move/from16 v1, v44

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    goto/16 :goto_1

    .line 10462
    :cond_16
    const/16 v44, 0x0

    goto :goto_4

    .line 10467
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 10470
    .local v25, "mode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$21300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v44

    if-eqz v44, :cond_17

    .line 10471
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v44

    if-eqz v44, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "Already in delayed stop"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 10475
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 10477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSendDhcpRelease:Z
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$23400(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v44

    if-eqz v44, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v44

    if-eqz v44, :cond_18

    .line 10478
    const-string v44, "WifiStateMachine"

    const-string v45, "CMD_RELEASE_DHCP is sent due to CMD_STOP_DRIVER"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v44

    const v45, 0x30009

    invoke-virtual/range {v44 .. v45}, Landroid/net/BaseDhcpStateMachine;->sendMessage(I)V

    .line 10481
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$21302(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$21408(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 10483
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v44

    if-eqz v44, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Delayed stop message "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$21400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10486
    :cond_19
    new-instance v15, Landroid/content/Intent;

    const-string v44, "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10487
    .local v15, "driverStopIntent":Landroid/content/Intent;
    const-string v44, "android"

    move-object/from16 v0, v44

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 10488
    const-string v44, "DelayedStopCounter"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$21400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v45

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v45

    const/16 v46, 0x0

    const/high16 v47, 0x8000000

    move-object/from16 v0, v45

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v15, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v45

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$23502(Lcom/android/server/wifi/WifiStateMachine;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 10493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$23700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v44

    const/16 v45, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStopDelayMs:I
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$23600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v48

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v46, v46, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v48, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static/range {v48 .. v48}, Lcom/android/server/wifi/WifiStateMachine;->access$23500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v48

    invoke-virtual/range {v44 .. v48}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 10497
    .end local v15    # "driverStopIntent":Landroid/content/Intent;
    .end local v25    # "mode":I
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$21300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v44

    if-eqz v44, :cond_1

    .line 10498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$21302(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$21408(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 10500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$23700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$23500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 10501
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v44

    if-eqz v44, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "Delayed stop ignored due to start"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10502
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$12900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1

    .line 10503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    goto/16 :goto_1

    .line 10508
    :sswitch_7
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v44

    if-eqz v44, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "delayed stop "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$21400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10509
    :cond_1b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$21400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1

    .line 10510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$23800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-eq v0, v1, :cond_1c

    .line 10511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 10512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$11800(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 10514
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$20800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 10515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->stopDriver()Z

    .line 10516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$20800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 10517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$10000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v44

    if-eqz v44, :cond_1d

    .line 10518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$17500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$23900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 10520
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$24000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$24100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 10524
    :sswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1e

    .line 10525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV6Packets()Z

    goto/16 :goto_1

    .line 10526
    :cond_1e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    if-nez v44, :cond_1f

    .line 10527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    goto/16 :goto_1

    .line 10529
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "Illegal arugments to CMD_START_PACKET_FILTERING"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 10533
    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_20

    .line 10534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    goto/16 :goto_1

    .line 10535
    :cond_20
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    if-nez v44, :cond_21

    .line 10536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    goto/16 :goto_1

    .line 10538
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "Illegal arugments to CMD_STOP_PACKET_FILTERING"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 10542
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_22

    .line 10543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x4

    const/16 v46, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static/range {v44 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$24200(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    .line 10544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$6700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1

    .line 10545
    :cond_22
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    if-nez v44, :cond_23

    .line 10546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x4

    const/16 v46, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static/range {v44 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$24200(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    .line 10547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->callResetTimer(Z)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$15600(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 10550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 10551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->enableAllNetworks()V

    goto/16 :goto_1

    .line 10553
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x4

    const/16 v46, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static/range {v44 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$24200(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    .line 10556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 10557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->enableAllNetworks()V

    goto/16 :goto_1

    .line 10561
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_24

    .line 10562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x2

    const/16 v46, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static/range {v44 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$24200(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 10564
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x2

    const/16 v46, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static/range {v44 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$24200(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 10568
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    if-eqz v44, :cond_1

    .line 10569
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Ljava/lang/String;

    .line 10570
    .local v33, "remoteAddress":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_25

    const/16 v16, 0x1

    .line 10571
    .local v16, "enable":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v33

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->startTdls(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 10570
    .end local v16    # "enable":Z
    :cond_25
    const/16 v16, 0x0

    goto :goto_5

    .line 10575
    .end local v33    # "remoteAddress":Ljava/lang/String;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v46

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/lang/Long;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    if-eqz v45, :cond_26

    const/16 v45, 0x1

    :goto_6
    move-object/from16 v0, v46

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->notifyANQPDone(Ljava/lang/Long;Z)V

    goto/16 :goto_1

    :cond_26
    const/16 v45, 0x0

    goto :goto_6

    .line 10578
    :sswitch_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v41, v0

    .line 10579
    .local v41, "slot":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->stopWifiIPPacketOffload(I)I

    move-result v34

    .line 10580
    .local v34, "ret":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v44

    if-eqz v44, :cond_1

    .line 10581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v41

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    goto/16 :goto_1

    .line 10586
    .end local v34    # "ret":I
    .end local v41    # "slot":I
    :sswitch_f
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "DriverStartedState :: CMD_SET_SCAN_MOVE("

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ") "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->setWifiScanMove(I)Z

    goto/16 :goto_1

    .line 10590
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    .line 10592
    .local v21, "innerMsg":Landroid/os/Message;
    if-nez v21, :cond_27

    .line 10593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "DriverStatedState::CMD_SEC_API_ASYNC - Invalid inner msg"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 10596
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "DriverStatedState::CMD_SEC_API_ASYNC - inner msg ["

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "]"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10597
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    sparse-switch v44, :sswitch_data_1

    .line 10633
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 10599
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    move/from16 v44, v0

    if-eqz v44, :cond_1

    .line 10600
    const-string v44, "WifiStateMachine"

    const-string v45, "WifiManager.SEC_COMMAND_ID_PRE_SCAN"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    .line 10602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0xd

    const/16 v46, 0x1

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    goto/16 :goto_1

    .line 10609
    :sswitch_12
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10610
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_1

    .line 10611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "enable"

    move-object/from16 v0, v45

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v45

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    .line 10612
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "WifiManager.SEC_COMMAND_ID_SET_WIFI_ENABLED_WITH_P2P mSkipScanAssoc : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSkipScanAssocLock:Z
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$24300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v44

    if-eqz v44, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    move/from16 v44, v0

    if-nez v44, :cond_1

    .line 10615
    :cond_28
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "WifiNative.WIFI_NATIVE_CMD_SET_ESTABLISH_SUP_CONNECTION mSkipScanAssoc : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v45

    const/16 v46, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    move/from16 v44, v0

    if-nez v44, :cond_29

    const/16 v44, 0x1

    :goto_7
    move-object/from16 v0, v45

    move/from16 v1, v46

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    goto/16 :goto_1

    :cond_29
    const/16 v44, 0x0

    goto :goto_7

    .line 10624
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_13
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10625
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_1

    .line 10626
    const-string v44, "BSSID"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 10627
    .local v11, "bssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x51

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v0, v1, v11}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    .line 10628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    goto/16 :goto_1

    .line 10638
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v11    # "bssid":Ljava/lang/String;
    .end local v21    # "innerMsg":Landroid/os/Message;
    :sswitch_14
    const/16 v22, -0x1

    .line 10639
    .local v22, "intResult":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    .line 10642
    .restart local v21    # "innerMsg":Landroid/os/Message;
    if-nez v21, :cond_2a

    .line 10643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "DriverStatedState::CMD_SEC_API - Invalid inner msg"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 10647
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "DriverStatedState::CMD_SEC_API - inner msg ["

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "]"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10649
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    sparse-switch v44, :sswitch_data_2

    .line 11209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "ignore message : not implementation"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 11210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    const/16 v46, -0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10651
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x64

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 10653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10656
    :sswitch_16
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10657
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_2b

    .line 10658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x65

    const-string v46, "level"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 10660
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10663
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x66

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 10665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10668
    :sswitch_18
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10669
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_2c

    .line 10670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x67

    const-string v46, "level"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 10672
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10675
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x68

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 10677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10680
    :sswitch_1a
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10681
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_2d

    .line 10682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x69

    const-string v46, "time"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 10684
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10687
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x6a

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 10689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10692
    :sswitch_1c
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10693
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_2e

    .line 10694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x6b

    const-string v46, "mode"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 10696
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10699
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_1d
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10700
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_2f

    .line 10701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x6d

    const-string v46, "chinfo"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 10703
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10706
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x82

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 10708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10711
    :sswitch_1f
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10712
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_30

    .line 10713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x83

    const-string v46, "time"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 10715
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10718
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x84

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 10720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10723
    :sswitch_21
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10724
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_31

    .line 10725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x85

    const-string v46, "time"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 10727
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10730
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x86

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 10732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10735
    :sswitch_23
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10736
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_32

    .line 10737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x87

    const-string v46, "time"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 10739
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10742
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x88

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 10744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10747
    :sswitch_25
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10748
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_33

    .line 10749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x89

    const-string v46, "num"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 10751
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10754
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_26
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10755
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_34

    .line 10756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x97

    const-string v46, "param"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 10758
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10761
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_27
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10762
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_35

    .line 10763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x96

    const-string v46, "param"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 10765
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10768
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_28
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10769
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_36

    .line 10770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0xa1

    const-string v46, "country"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 10772
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10775
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0xa2

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 10777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10780
    :sswitch_2a
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10781
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_37

    .line 10782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0xa3

    const-string v46, "band"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 10784
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10787
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0xa4

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 10789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10792
    :sswitch_2c
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10793
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_38

    .line 10794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0xa5

    const-string v46, "mode"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 10796
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10799
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0xaa

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 10801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10804
    :sswitch_2e
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10805
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_39

    .line 10806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0xab

    const-string v46, "mode"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 10808
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10811
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_2f
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 10812
    .local v16, "enable":I
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "WifiManager.SEC_COMMAND_ID_SET_RPS_MODE : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x47

    move-object/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 10814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10819
    .end local v16    # "enable":I
    :sswitch_30
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10820
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_3a

    .line 10821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x1

    const-string v46, "enable"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v22

    .line 10824
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10829
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_31
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10830
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_3c

    .line 10831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "wifi_skip_auto_conn"

    const-string v44, "enable"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_3b

    const/16 v44, 0x1

    :goto_8
    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 10832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0xe

    const-string v46, "enable"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v22

    .line 10838
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10831
    :cond_3b
    const/16 v44, 0x0

    goto :goto_8

    .line 10835
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    const-string v45, "wifi_skip_auto_conn"

    const/16 v46, 0x0

    invoke-static/range {v44 .. v46}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    .line 10836
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "WifiManager.SEC_COMMAND_ID_SKIP_AUTO_CONNECTION : wifi_skip_auto_conn("

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ")"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 10842
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    const-string v46, "skip_internet_check"

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v44 .. v47}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_3f

    .line 10846
    const/4 v6, 0x0

    .line 10847
    .local v6, "SkipInternetCheck":Z
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_3e

    .line 10848
    const/4 v6, 0x1

    .line 10852
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 10853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v0, v1, v6}, Lcom/android/server/wifi/WifiConfigStore;->updateSkipInternetCheck(IZ)V

    .line 10854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v44

    if-eqz v44, :cond_3d

    .line 10855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    .line 10856
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v44

    if-eqz v44, :cond_3d

    .line 10857
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "updateSkipInternetCheck by callSECApi : SSID/netId/value"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "/"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "/"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10861
    :cond_3d
    const/16 v22, 0x0

    .line 10865
    .end local v6    # "SkipInternetCheck":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10850
    .restart local v6    # "SkipInternetCheck":Z
    :cond_3e
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 10863
    .end local v6    # "SkipInternetCheck":Z
    :cond_3f
    const/16 v22, -0x1

    goto :goto_b

    .line 10869
    :sswitch_33
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10870
    .restart local v8    # "args":Landroid/os/Bundle;
    const-string v44, "netId"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    .line 10871
    .local v26, "netId":I
    const-string v44, "autojoin"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 10872
    .local v9, "autoJoin":I
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v44

    if-eqz v44, :cond_40

    .line 10873
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "SEC_COMMAND_ID_SEC_RECONNECT_ENABLED : netId("

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "), autoJoin("

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ")"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10876
    :cond_40
    const/16 v44, -0x1

    move/from16 v0, v44

    if-eq v9, v0, :cond_42

    .line 10877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v26

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wifi/WifiConfigStore;->updateAutojoin(II)V

    .line 10878
    const/16 v22, 0x0

    .line 10894
    :cond_41
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10880
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const-string v45, "autojoin"

    move-object/from16 v0, v44

    move/from16 v1, v26

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 10881
    .local v43, "value":Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44

    if-nez v44, :cond_43

    .line 10883
    :try_start_0
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 10889
    :goto_d
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v44

    if-eqz v44, :cond_41

    .line 10890
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "SEC_COMMAND_ID_SEC_RECONNECT_ENABLED : get autojoin("

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ")"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 10887
    :cond_43
    const/16 v22, 0x1

    goto :goto_d

    .line 10898
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v9    # "autoJoin":I
    .end local v26    # "netId":I
    .end local v43    # "value":Ljava/lang/String;
    :sswitch_34
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10899
    .restart local v8    # "args":Landroid/os/Bundle;
    const-string v44, "priority"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v43

    .line 10901
    .local v43, "value":I
    const/16 v44, -0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_47

    .line 10902
    new-instance v23, Landroid/content/Intent;

    const-string v44, "com.samsung.android.net.wifi.DISCONNECT_WEAK_WIFI_SERVICE"

    move-object/from16 v0, v23

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10904
    .local v23, "intent":Landroid/content/Intent;
    if-eqz v43, :cond_46

    .line 10905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    const-string v45, "wifi_connection_monitor_enable"

    const/16 v46, 0x0

    invoke-static/range {v44 .. v46}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v44

    if-nez v44, :cond_44

    .line 10906
    const-string v44, "service"

    const/16 v45, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 10908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    const-string v45, "wifi_connection_monitor_enable"

    const/16 v46, 0x1

    invoke-static/range {v44 .. v46}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 10917
    :cond_44
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    const-string v45, "wifi_connection_monitor_settings"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 10918
    const/16 v22, 0x0

    .line 10930
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_45
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10911
    .restart local v23    # "intent":Landroid/content/Intent;
    :cond_46
    const/16 v44, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "wifi_connection_monitor_enable"

    const/16 v47, 0x0

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_44

    .line 10912
    const-string v44, "service"

    const/16 v45, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 10914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    const-string v45, "wifi_connection_monitor_enable"

    const/16 v46, 0x0

    invoke-static/range {v44 .. v46}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_e

    .line 10920
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    const-string v45, "wifi_connection_monitor_enable"

    const/16 v46, 0x0

    invoke-static/range {v44 .. v46}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v44

    if-nez v44, :cond_48

    .line 10921
    const/16 v22, 0x0

    .line 10925
    :goto_10
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v44

    if-eqz v44, :cond_45

    .line 10926
    const-string v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "SEC_COMMAND_ID_KT_DISCONNECTION_PRIORITY : get priority("

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ")"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 10923
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    const-string v45, "wifi_connection_monitor_settings"

    const/16 v46, 0x0

    invoke-static/range {v44 .. v46}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    goto :goto_10

    .line 10935
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v43    # "value":I
    :sswitch_35
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10936
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_49

    .line 10937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0xa

    const-string v46, "ampdu"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 10940
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 10945
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_36
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 10946
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_4a

    .line 10947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0xb

    const-string v46, "stop"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v22

    .line 10950
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11001
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11006
    :sswitch_38
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 11007
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_4b

    .line 11008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0xc

    const-string v46, "enable"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v22

    .line 11011
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11015
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_39
    const/16 v22, 0x0

    .line 11016
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 11017
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_4c

    .line 11018
    const-string v44, "OPTION"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v27

    .line 11019
    .local v27, "option":I
    const-string v44, "PATH"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 11020
    .local v28, "path":Ljava/lang/String;
    if-nez v27, :cond_4d

    .line 11021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x3d

    move-object/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 11022
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11023
    .local v17, "f":Ljava/io/File;
    const/16 v44, 0x1

    const/16 v45, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 11040
    .end local v17    # "f":Ljava/io/File;
    .end local v27    # "option":I
    .end local v28    # "path":Ljava/lang/String;
    :cond_4c
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11024
    .restart local v27    # "option":I
    .restart local v28    # "path":Ljava/lang/String;
    :cond_4d
    const/16 v44, 0x1

    move/from16 v0, v27

    move/from16 v1, v44

    if-ne v0, v1, :cond_4e

    .line 11025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x3e

    move-object/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 11026
    if-nez v22, :cond_4c

    .line 11027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    goto :goto_11

    .line 11029
    :cond_4e
    const/16 v44, 0x2

    move/from16 v0, v27

    move/from16 v1, v44

    if-ne v0, v1, :cond_4f

    .line 11030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x3b

    move-object/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 11031
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11032
    .restart local v17    # "f":Ljava/io/File;
    const/16 v44, 0x1

    const/16 v45, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    goto :goto_11

    .line 11033
    .end local v17    # "f":Ljava/io/File;
    :cond_4f
    const/16 v44, 0x3

    move/from16 v0, v27

    move/from16 v1, v44

    if-ne v0, v1, :cond_4c

    .line 11034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x3c

    move-object/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 11035
    if-nez v22, :cond_4c

    .line 11036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    goto/16 :goto_11

    .line 11044
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v27    # "option":I
    .end local v28    # "path":Ljava/lang/String;
    :sswitch_3a
    const/16 v22, 0x0

    .line 11045
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 11046
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_50

    .line 11047
    const-string v44, "OPTION"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v27

    .line 11048
    .restart local v27    # "option":I
    const-string v44, "PATH"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 11049
    .restart local v28    # "path":Ljava/lang/String;
    if-nez v27, :cond_50

    .line 11050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0xbf

    move-object/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 11052
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11053
    .restart local v17    # "f":Ljava/io/File;
    const/16 v44, 0x1

    const/16 v45, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 11056
    .end local v17    # "f":Ljava/io/File;
    .end local v27    # "option":I
    .end local v28    # "path":Ljava/lang/String;
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11060
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_3b
    const/16 v22, -0x1

    .line 11061
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 11062
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_51

    .line 11063
    const-string v44, "PATH"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 11064
    .local v31, "rawConfPath":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11065
    .restart local v17    # "f":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v44

    if-eqz v44, :cond_52

    .line 11066
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    move-result v44

    if-eqz v44, :cond_51

    .line 11067
    const/16 v22, 0x0

    .line 11073
    .end local v17    # "f":Ljava/io/File;
    .end local v31    # "rawConfPath":Ljava/lang/String;
    :cond_51
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11070
    .restart local v17    # "f":Ljava/io/File;
    .restart local v31    # "rawConfPath":Ljava/lang/String;
    :cond_52
    const/16 v22, 0x0

    goto :goto_12

    .line 11078
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v17    # "f":Ljava/io/File;
    .end local v31    # "rawConfPath":Ljava/lang/String;
    :sswitch_3c
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 11079
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_53

    .line 11080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "enable"

    move-object/from16 v0, v45

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v45

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->isHs20Enabled:Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$6202(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x12d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->isHs20Enabled:Z
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v22

    .line 11084
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11088
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x136

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 11089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11093
    :sswitch_3e
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    if-eqz v44, :cond_54

    .line 11094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v45

    const/16 v46, 0x135

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/lang/String;

    move-object/from16 v0, v45

    move/from16 v1, v46

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 11097
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11101
    :sswitch_3f
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    if-eqz v44, :cond_55

    .line 11102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v45

    const/16 v46, 0x137

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/lang/String;

    move-object/from16 v0, v45

    move/from16 v1, v46

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 11105
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11109
    :sswitch_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x12e

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 11110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11114
    :sswitch_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x132

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 11115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11119
    :sswitch_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x133

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 11120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11124
    :sswitch_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x12f

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 11125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11129
    :sswitch_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x134

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 11130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11134
    :sswitch_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x131

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 11135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11142
    :sswitch_46
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 11143
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_56

    .line 11144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x1f

    const-string v46, "enable"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 11148
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11152
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_47
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 11153
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_57

    .line 11154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x20

    const-string v46, "rate"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 11158
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11162
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_48
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 11163
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_58

    .line 11164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x21

    const-string v46, "ampdu"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 11168
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11172
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_49
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 11173
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_59

    .line 11174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x22

    const-string v46, "txchain"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v46

    mul-int/lit8 v46, v46, 0xa

    const-string v47, "rxchain"

    move-object/from16 v0, v47

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v47

    add-int v46, v46, v47

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 11179
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11183
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_4a
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 11184
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_5a

    .line 11185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x9

    const-string v46, "enable"

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v22

    .line 11188
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11193
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_4b
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 11194
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_5c

    .line 11195
    const-string v44, "netId"

    const/16 v45, -0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 11196
    .restart local v26    # "netId":I
    const-string v44, "reason"

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v32

    .line 11198
    .local v32, "reasonCode":I
    const/16 v44, -0x1

    move/from16 v0, v26

    move/from16 v1, v44

    if-eq v0, v1, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v26

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_5b

    .line 11200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    const v46, 0x25013

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11202
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    const v46, 0x25012

    const/16 v47, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;III)V

    goto/16 :goto_1

    .line 11205
    .end local v26    # "netId":I
    .end local v32    # "reasonCode":I
    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    const v46, 0x25012

    const/16 v47, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;III)V

    goto/16 :goto_1

    .line 11216
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v21    # "innerMsg":Landroid/os/Message;
    .end local v22    # "intResult":I
    :sswitch_4c
    const/4 v7, 0x0

    .line 11217
    .local v7, "StringResult":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    .line 11220
    .restart local v21    # "innerMsg":Landroid/os/Message;
    if-nez v21, :cond_5d

    .line 11221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "DriverStartedState::CMD_SEC_STRING_API - Invalid inner msg"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 11225
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "DriverStartedState::CMD_SEC_STRING_API - inner msg ["

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "]"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 11227
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    sparse-switch v44, :sswitch_data_3

    .line 11280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string v45, "ignore message : not implementation"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 11281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move-object/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 11230
    :sswitch_4d
    new-instance v37, Ljava/lang/StringBuffer;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuffer;-><init>()V

    .line 11231
    .local v37, "scanResultsBuf":Ljava/lang/StringBuffer;
    const/16 v40, 0x0

    .line 11234
    .local v40, "sid":I
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->scanResults(I)Ljava/lang/String;

    move-result-object v42

    .line 11235
    .local v42, "tmpResults":Ljava/lang/String;
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44

    if-eqz v44, :cond_5f

    .line 11254
    :goto_13
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 11255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 11236
    :cond_5f
    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11237
    const-string v44, "\n"

    move-object/from16 v0, v37

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11238
    const-string v44, "\n"

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 11239
    .local v24, "lines":[Ljava/lang/String;
    const/16 v40, -0x1

    .line 11240
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v44, v0

    add-int/lit8 v20, v44, -0x1

    .local v20, "i":I
    :goto_14
    if-ltz v20, :cond_60

    .line 11241
    aget-object v44, v24, v20

    const-string v45, "####"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_61

    .line 11252
    :cond_60
    :goto_15
    const/16 v44, -0x1

    move/from16 v0, v40

    move/from16 v1, v44

    if-ne v0, v1, :cond_5e

    goto :goto_13

    .line 11243
    :cond_61
    aget-object v44, v24, v20

    const-string v45, "id="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_62

    .line 11245
    :try_start_1
    aget-object v44, v24, v20

    const-string v45, "id="

    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v44

    add-int/lit8 v40, v44, 0x1

    goto :goto_15

    .line 11240
    :cond_62
    add-int/lit8 v20, v20, -0x1

    goto :goto_14

    .line 11258
    .end local v20    # "i":I
    .end local v24    # "lines":[Ljava/lang/String;
    .end local v37    # "scanResultsBuf":Ljava/lang/StringBuffer;
    .end local v40    # "sid":I
    .end local v42    # "tmpResults":Ljava/lang/String;
    :sswitch_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0x6c

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->callSECStringApiVoid(I)Ljava/lang/String;

    move-result-object v7

    .line 11260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 11263
    :sswitch_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0xa0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->callSECStringApiVoid(I)Ljava/lang/String;

    move-result-object v7

    .line 11265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 11268
    :sswitch_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigStore;->getSecuredNetworkInfo(I)Ljava/lang/String;

    move-result-object v7

    .line 11269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 11272
    :sswitch_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    const/16 v45, 0xd7

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->callSECStringApiVoid(I)Ljava/lang/String;

    move-result-object v7

    .line 11273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 11276
    :sswitch_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanController:Lcom/samsung/android/server/wifi/WifiScanController;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$19800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/samsung/android/server/wifi/WifiScanController;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/samsung/android/server/wifi/WifiScanController;->dump()Ljava/lang/String;

    move-result-object v7

    .line 11277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 10884
    .end local v7    # "StringResult":Ljava/lang/String;
    .restart local v8    # "args":Landroid/os/Bundle;
    .restart local v9    # "autoJoin":I
    .restart local v22    # "intResult":I
    .restart local v26    # "netId":I
    .local v43, "value":Ljava/lang/String;
    :catch_0
    move-exception v44

    goto/16 :goto_d

    .line 11246
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v9    # "autoJoin":I
    .end local v22    # "intResult":I
    .end local v26    # "netId":I
    .end local v43    # "value":Ljava/lang/String;
    .restart local v7    # "StringResult":Ljava/lang/String;
    .restart local v20    # "i":I
    .restart local v24    # "lines":[Ljava/lang/String;
    .restart local v37    # "scanResultsBuf":Ljava/lang/StringBuffer;
    .restart local v40    # "sid":I
    .restart local v42    # "tmpResults":Ljava/lang/String;
    :catch_1
    move-exception v44

    goto/16 :goto_15

    .line 10324
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_6
        0x2000e -> :sswitch_5
        0x20012 -> :sswitch_7
        0x2001f -> :sswitch_4
        0x20047 -> :sswitch_0
        0x2004d -> :sswitch_b
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_8
        0x20055 -> :sswitch_9
        0x20056 -> :sswitch_a
        0x2005a -> :sswitch_3
        0x2005c -> :sswitch_c
        0x2006e -> :sswitch_1
        0x2007e -> :sswitch_f
        0x200a1 -> :sswitch_e
        0x2012c -> :sswitch_10
        0x2012d -> :sswitch_14
        0x2012e -> :sswitch_4c
        0x2402c -> :sswitch_d
    .end sparse-switch

    .line 10597
    :sswitch_data_1
    .sparse-switch
        0x1a -> :sswitch_12
        0x26 -> :sswitch_11
        0x4a -> :sswitch_12
        0x52 -> :sswitch_13
    .end sparse-switch

    .line 10649
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_30
        0xf -> :sswitch_4a
        0x11 -> :sswitch_35
        0x12 -> :sswitch_36
        0x13 -> :sswitch_38
        0x20 -> :sswitch_31
        0x23 -> :sswitch_32
        0x25 -> :sswitch_37
        0x29 -> :sswitch_3c
        0x2a -> :sswitch_40
        0x2c -> :sswitch_41
        0x2d -> :sswitch_45
        0x32 -> :sswitch_46
        0x33 -> :sswitch_47
        0x34 -> :sswitch_48
        0x35 -> :sswitch_49
        0x3d -> :sswitch_39
        0x4b -> :sswitch_2f
        0x53 -> :sswitch_33
        0x54 -> :sswitch_34
        0x64 -> :sswitch_15
        0x65 -> :sswitch_16
        0x66 -> :sswitch_17
        0x67 -> :sswitch_18
        0x68 -> :sswitch_19
        0x69 -> :sswitch_1a
        0x6a -> :sswitch_1b
        0x6b -> :sswitch_1c
        0x6d -> :sswitch_1d
        0x82 -> :sswitch_1e
        0x83 -> :sswitch_1f
        0x84 -> :sswitch_20
        0x85 -> :sswitch_21
        0x86 -> :sswitch_22
        0x87 -> :sswitch_23
        0x88 -> :sswitch_24
        0x89 -> :sswitch_25
        0x96 -> :sswitch_26
        0x97 -> :sswitch_27
        0xa1 -> :sswitch_28
        0xa2 -> :sswitch_29
        0xa3 -> :sswitch_2a
        0xa4 -> :sswitch_2b
        0xa5 -> :sswitch_2c
        0xaa -> :sswitch_2d
        0xab -> :sswitch_2e
        0xcb -> :sswitch_4b
        0xcd -> :sswitch_3a
        0xce -> :sswitch_42
        0xd0 -> :sswitch_44
        0xd1 -> :sswitch_3e
        0xd2 -> :sswitch_3d
        0xfd -> :sswitch_3f
        0xfe -> :sswitch_43
        0x104 -> :sswitch_3b
    .end sparse-switch

    .line 11227
    :sswitch_data_3
    .sparse-switch
        0x21 -> :sswitch_4d
        0x27 -> :sswitch_50
        0x6c -> :sswitch_4e
        0xa0 -> :sswitch_4f
        0xcf -> :sswitch_51
        0xdf -> :sswitch_52
    .end sparse-switch
.end method
