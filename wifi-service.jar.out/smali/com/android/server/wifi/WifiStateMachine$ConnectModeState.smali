.class Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 12064
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 12068
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->connectScanningService()V

    .line 12070
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->skipWifiStateBroadcast(Z)V
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$9700(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 12071
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12073
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setFccChannelNative(I)V
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$19600(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 12086
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFirmwareType:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$9900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    if-nez v1, :cond_0

    .line 12087
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "reset skipWifiStateBroadcast flag, broadcast wifi state again"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 12088
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$10200(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 12092
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mUnstableAps:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$25800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 12093
    return-void

    .line 12075
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 12076
    .local v0, "isAirplaneMode":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 12078
    const-string v2, "WifiStateMachine"

    const-string v3, "[FCC]Airplane on, setFccChannel(0)!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12079
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setFccChannelNative(I)V
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$19600(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto :goto_0

    .end local v0    # "isAirplaneMode":Z
    :cond_2
    move v0, v1

    .line 12075
    goto :goto_1

    .line 12082
    .restart local v0    # "isAirplaneMode":Z
    :cond_3
    const-string v1, "WifiStateMachine"

    const-string v2, "[FCC]Airplane off, setFccChannel(-1)!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12083
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, -0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setFccChannelNative(I)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$19600(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 13298
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13299
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/BaseDhcpStateMachine;->doQuit()V

    .line 13301
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 64
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 12104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move-object/from16 v2, v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 12106
    const/16 v19, 0x0

    .line 12107
    .local v19, "edmArgs":Landroid/os/Bundle;
    const/16 v38, -0x1

    .line 12109
    .local v38, "pid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v58, v0

    sparse-switch v58, :sswitch_data_0

    .line 13292
    const/16 v58, 0x0

    .line 13294
    :goto_0
    return v58

    .line 12111
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v58

    const/16 v59, 0x1

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/DummyWifiLogger;->captureBugReportData(I)V

    .line 12112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$25902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 12113
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 12114
    .local v8, "bssid":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v58

    if-eqz v58, :cond_1

    .line 12116
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$18900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    .line 12118
    :cond_1
    if-eqz v8, :cond_2

    .line 12120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$26000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v59

    monitor-enter v59

    .line 12121
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v61, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v61 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v61

    const/16 v62, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v8, v2}, Lcom/android/server/wifi/WifiConfigStore;->handleBSSIDBlackList(ILjava/lang/String;Z)Z

    move-result v60

    move-object/from16 v0, v58

    move/from16 v1, v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$25902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 12123
    monitor-exit v59
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12125
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v58

    const v59, 0x2402b

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 13294
    .end local v8    # "bssid":Ljava/lang/String;
    :cond_3
    :goto_1
    const/16 v58, 0x1

    goto :goto_0

    .line 12123
    .restart local v8    # "bssid":Ljava/lang/String;
    :catchall_0
    move-exception v58

    :try_start_1
    monitor-exit v59
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v58

    .line 12128
    .end local v8    # "bssid":Ljava/lang/String;
    :sswitch_1
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v58

    if-eqz v58, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "AUTHENTICATION_FAILURE_EVENT WpsInprogress : "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 12129
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v58

    const/16 v59, 0x2

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/DummyWifiLogger;->captureBugReportData(I)V

    .line 12133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v58

    if-nez v58, :cond_5

    .line 12134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x20037

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->removeMessages(I)V
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$26100(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 12135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v59

    const v60, 0x24007

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v61, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v62, v0

    invoke-virtual/range {v59 .. v62}, Lcom/android/server/wifi/SupplicantStateTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    .line 12144
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 12145
    .local v10, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v29, "Wi-Fi is failed to connect to "

    .line 12146
    .local v29, "logMessage":Ljava/lang/String;
    if-eqz v10, :cond_b

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v58, v0

    if-eqz v58, :cond_b

    .line 12147
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, " network using "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 12148
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-virtual/range {v58 .. v59}, Ljava/util/BitSet;->get(I)Z

    move-result v58

    if-nez v58, :cond_6

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v58, v0

    const/16 v59, 0x1

    invoke-virtual/range {v58 .. v59}, Ljava/util/BitSet;->get(I)Z

    move-result v58

    if-nez v58, :cond_6

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v58, v0

    const/16 v59, 0x4

    invoke-virtual/range {v58 .. v59}, Ljava/util/BitSet;->get(I)Z

    move-result v58

    if-nez v58, :cond_6

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v58, v0

    const/16 v59, 0x8

    invoke-virtual/range {v58 .. v59}, Ljava/util/BitSet;->get(I)Z

    move-result v58

    if-nez v58, :cond_6

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v58, v0

    const/16 v59, 0x5

    invoke-virtual/range {v58 .. v59}, Ljava/util/BitSet;->get(I)Z

    move-result v58

    if-eqz v58, :cond_9

    .line 12153
    :cond_6
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "802.11-2012 channel."

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 12168
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v60

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, " Reason: Authentication failure."

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->auditLog(ZLjava/lang/String;)V
    invoke-static/range {v58 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$26200(Lcom/android/server/wifi/WifiStateMachine;ZLjava/lang/String;)V

    .line 12171
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v58

    if-eqz v58, :cond_8

    .line 12172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "setDetailed state psk authentication failed: "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 12174
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v58

    const/16 v59, 0x0

    invoke-virtual/range {v58 .. v59}, Landroid/net/wifi/WifiInfo;->setVerifiedPassword(Z)V

    .line 12175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v59

    const-string v60, "verified_password"

    const-string v61, "0"

    invoke-virtual/range {v58 .. v61}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 12176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    goto/16 :goto_1

    .line 12155
    :cond_9
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v58, v0

    if-eqz v58, :cond_7

    .line 12156
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_a

    .line 12157
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "EAP-TLS channel"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 12158
    const-string v58, "WifiStateMachine"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "Wi-Fi is failed to connect to "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " network using EAP-TLS channel"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 12160
    :cond_a
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "802.1X channel"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 12161
    const-string v58, "WifiStateMachine"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "Wi-Fi is connected to "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " network using 802.1X channel"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 12166
    :cond_b
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, " network."

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_2

    .line 12181
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v29    # "logMessage":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Ljava/lang/String;

    .line 12182
    .local v48, "substr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v58, v0

    const v59, 0x2400d

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_c

    const-string v20, "temp-disabled"

    .line 12184
    .local v20, "en":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "ConnectModeState SSID state="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " nid="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " ["

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, "]"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 12186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$26000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v59

    monitor-enter v59

    .line 12187
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v60

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v61, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v58, v0

    const v62, 0x2400e

    move/from16 v0, v58

    move/from16 v1, v62

    if-ne v0, v1, :cond_d

    const/16 v58, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v62, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v62 .. v62}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, v60

    move/from16 v1, v61

    move/from16 v2, v58

    move-object/from16 v3, v48

    move-object/from16 v4, v62

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 12189
    monitor-exit v59

    goto/16 :goto_1

    :catchall_1
    move-exception v58

    monitor-exit v59
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v58

    .line 12182
    .end local v20    # "en":Ljava/lang/String;
    :cond_c
    const-string v20, "re-enabled"

    goto/16 :goto_3

    .line 12187
    .restart local v20    # "en":Ljava/lang/String;
    :cond_d
    const/16 v58, 0x0

    goto :goto_4

    .line 12192
    .end local v20    # "en":Ljava/lang/String;
    .end local v48    # "substr":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$20400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v46

    .line 12195
    .local v46, "state":Landroid/net/wifi/SupplicantState;
    invoke-static/range {v46 .. v46}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v58

    if-nez v58, :cond_f

    .line 12196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$16500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v58

    sget-object v59, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v58

    move-object/from16 v1, v59

    if-eq v0, v1, :cond_e

    .line 12197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$11800(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 12199
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const-string v59, "Detected an interface down, restart driver"

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 12201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$11100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$26300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 12202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x2000b

    const-wide/16 v60, 0x1388

    invoke-virtual/range {v58 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_1

    .line 12210
    :cond_f
    const-string v58, "ENABLE_SAME_SSID_ONLY"

    const-string v59, "ENABLE"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v58

    if-eqz v58, :cond_11

    .line 12211
    sget-object v58, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v46

    move-object/from16 v1, v58

    if-eq v0, v1, :cond_10

    sget-object v58, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v46

    move-object/from16 v1, v58

    if-ne v0, v1, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mHandoverState:Z

    move/from16 v58, v0

    if-eqz v58, :cond_11

    .line 12212
    const-string v58, "WifiStateMachine"

    const-string v59, "receive WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT, set mHandoverState false!!"

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v59

    move-object/from16 v1, v58

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mHandoverState:Z

    .line 12222
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$26400(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v58

    if-nez v58, :cond_13

    sget-object v58, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v46

    move-object/from16 v1, v58

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$16500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v58

    sget-object v59, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v58

    move-object/from16 v1, v59

    if-eq v0, v1, :cond_13

    .line 12224
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v58

    if-eqz v58, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const-string v59, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 12225
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$11800(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 12226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$26500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 12232
    :cond_13
    sget-object v58, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v46

    move-object/from16 v1, v58

    if-ne v0, v1, :cond_14

    .line 12233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitor:Landroid/net/IpReachabilityMonitor;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$26600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    move-result-object v58

    if-eqz v58, :cond_14

    .line 12234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitor:Landroid/net/IpReachabilityMonitor;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$26600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/net/IpReachabilityMonitor;->probeAll()V

    .line 12239
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v32

    .line 12241
    .local v32, "networkId":I
    invoke-static/range {v46 .. v46}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    move-result v58

    if-eqz v58, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v58

    if-nez v58, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v58

    if-eqz v58, :cond_15

    .line 12244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v55

    .line 12245
    .local v55, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v55, :cond_15

    move-object/from16 v0, v55

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    move/from16 v58, v0

    if-nez v58, :cond_15

    .line 12246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->isCaptivePortalException()Z

    move-result v58

    if-eqz v58, :cond_16

    .line 12247
    const/16 v58, 0x0

    move/from16 v0, v58

    move-object/from16 v1, v55

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    .line 12248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v59

    const-string v60, "captive_portal"

    const-string v61, "0"

    invoke-virtual/range {v58 .. v61}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 12252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, v55

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v59, v0

    const/16 v60, 0x0

    invoke-virtual/range {v58 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->updateIsCaptivePortal(IZ)V

    .line 12253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    .line 12261
    .end local v55    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_15
    :goto_5
    sget-object v58, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v46

    move-object/from16 v1, v58

    if-ne v0, v1, :cond_3

    .line 12262
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/server/wifi/StateChangeResult;

    .line 12263
    .local v47, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    if-eqz v47, :cond_3

    .line 12264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    move/from16 v59, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mCurrentAssociateNetworkId:I
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$26702(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_1

    .line 12255
    .end local v47    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    .restart local v55    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_16
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v58

    if-eqz v58, :cond_15

    const-string v58, "WifiStateMachine"

    const-string v59, "Previously un-authenticated captive portal AP. Connect and check again."

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 12269
    .end local v32    # "networkId":I
    .end local v46    # "state":Landroid/net/wifi/SupplicantState;
    .end local v55    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v58, v0

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_17

    .line 12270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 12271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const/16 v59, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$8002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 12273
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 12274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$8002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 12278
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 12280
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v59, v0

    const/16 v60, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v58

    if-nez v58, :cond_18

    .line 12282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "Not authorized to update network  config="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " cnid="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " uid="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$26800(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 12286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v59, v0

    const/16 v60, -0x1

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12291
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$26900(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    if-nez v10, :cond_19

    .line 12292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x20034

    const/16 v60, -0x1

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12297
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v59, v0

    move-object/from16 v0, v58

    move/from16 v1, v59

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    move-result v40

    .line 12298
    .local v40, "res":I
    if-gez v40, :cond_1b

    .line 12299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7600()I

    move-result v59

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12323
    :cond_1a
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x20034

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v40

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12301
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    .line 12302
    .local v12, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v12, :cond_1a

    if-eqz v10, :cond_1a

    .line 12303
    iget v0, v12, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v58, v0

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v59, v0

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_1a

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v58, v0

    const/16 v59, 0x2

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_1a

    .line 12308
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v58

    if-eqz v58, :cond_1c

    const-string v58, "WifiStateMachine"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "CMD_ADD_OR_UPDATE_NETWORK - setLastSelectedConfiguration : "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12309
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 12310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v59, v0

    move-object/from16 v0, v58

    move/from16 v1, v59

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 12311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    const/16 v59, 0x0

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 12314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    move-object/from16 v0, v58

    move-wide/from16 v1, v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$27002(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 12316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$8300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v58

    move-object/from16 v0, v58

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v59, v0

    add-int/lit8 v59, v59, 0x1

    move/from16 v0, v59

    move-object/from16 v1, v58

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 12319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const/16 v59, -0x3

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    invoke-virtual/range {v58 .. v62}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto/16 :goto_6

    .line 12326
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v40    # "res":I
    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 12327
    .local v31, "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v59, v0

    const/16 v60, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v59

    move/from16 v2, v31

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    move-result v58

    if-nez v58, :cond_1d

    .line 12329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "Not authorized to remove network  cnid="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " uid="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$27100(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 12332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v59, v0

    const/16 v60, -0x1

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12336
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNetworkLists:Lcom/android/server/wifi/WifiNetworkLists;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$18800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNetworkLists;

    move-result-object v58

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiNetworkLists;->removeNetworkMap(I)V

    .line 12339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->edmRemoveNetwork(I)Z
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$27200(Lcom/android/server/wifi/WifiStateMachine;I)Z

    move-result v58

    if-nez v58, :cond_1e

    .line 12340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v59, v0

    const/16 v60, -0x1

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12344
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v34

    .line 12345
    .local v34, "ok":Z
    if-nez v34, :cond_1f

    .line 12346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7600()I

    move-result v59

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12348
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    if-eqz v34, :cond_20

    const/16 v58, 0x1

    :goto_7
    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v58

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_20
    const/16 v58, -0x1

    goto :goto_7

    .line 12351
    .end local v31    # "netId":I
    .end local v34    # "ok":Z
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v58, v0

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_21

    const/16 v16, 0x1

    .line 12352
    .local v16, "disableOthers":Z
    :goto_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 12353
    .restart local v31    # "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 12354
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v10, :cond_22

    .line 12355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "No network with id = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 12356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7600()I

    move-result v59

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v59, v0

    const/16 v60, -0x1

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12351
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "disableOthers":Z
    .end local v31    # "netId":I
    :cond_21
    const/16 v16, 0x0

    goto :goto_8

    .line 12374
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v16    # "disableOthers":Z
    .restart local v31    # "netId":I
    :cond_22
    if-eqz v16, :cond_24

    .line 12375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v58

    const/16 v59, 0x1

    const/16 v60, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v31

    move/from16 v2, v59

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 12379
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v58

    if-eqz v58, :cond_23

    const-string v58, "WifiStateMachine"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "CMD_ENABLE_NETWORK - setLastSelectedConfiguration : "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12380
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 12383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    move-object/from16 v0, v58

    move-wide/from16 v1, v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$27002(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 12385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$8300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v58

    move-object/from16 v0, v58

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v59, v0

    add-int/lit8 v59, v59, 0x1

    move/from16 v0, v59

    move-object/from16 v1, v58

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 12387
    const-string v58, "KT_Specific"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConfigDisconnectApThreshold:Ljava/lang/String;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$27300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_24

    .line 12388
    new-instance v25, Landroid/content/Intent;

    const-string v58, "android.net.wifi.REMOVE_BLACKLIST"

    move-object/from16 v0, v25

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12389
    .local v25, "intent":Landroid/content/Intent;
    const-string v58, "netId"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v25

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    .line 12394
    .end local v25    # "intent":Landroid/content/Intent;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const-string v59, "any"

    move-object/from16 v0, v58

    move/from16 v1, v31

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 12396
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v51, v0

    .line 12397
    .local v51, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v31

    move/from16 v2, v16

    move/from16 v3, v51

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZI)Z

    move-result v34

    .line 12398
    .restart local v34    # "ok":Z
    if-nez v34, :cond_25

    .line 12399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7600()I

    move-result v59

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12402
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    if-eqz v34, :cond_26

    const/16 v58, 0x1

    :goto_9
    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v58

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_26
    const/16 v58, -0x1

    goto :goto_9

    .line 12406
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "disableOthers":Z
    .end local v31    # "netId":I
    .end local v34    # "ok":Z
    .end local v51    # "uid":I
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v58

    if-nez v58, :cond_3

    .line 12407
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v58, v0

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_27

    .line 12408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    const/16 v59, 0x1

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks(Z)V

    goto/16 :goto_1

    .line 12410
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    const/16 v59, 0x0

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks(Z)V

    goto/16 :goto_1

    .line 12422
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    const/16 v60, 0x5

    invoke-virtual/range {v58 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_28

    .line 12424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25013

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 12426
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7600()I

    move-result v59

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25012

    const/16 v60, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12432
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Ljava/lang/String;

    move-object/from16 v0, v59

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 12433
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v10, :cond_3

    .line 12434
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v59

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_3

    .line 12436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x20049

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 12441
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v58, v0

    if-nez v58, :cond_29

    .line 12442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Ljava/lang/String;

    move-object/from16 v0, v59

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 12444
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v59

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Ljava/lang/String;

    move-object/from16 v0, v59

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->addToSBlacklist(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 12447
    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v58, v0

    if-nez v58, :cond_2a

    .line 12448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiNative;->clearBlacklist()Z

    goto/16 :goto_1

    .line 12450
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiNative;->clearSBlacklist()Z

    goto/16 :goto_1

    .line 12453
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    move-result v34

    .line 12455
    .restart local v34    # "ok":Z
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v58

    if-eqz v58, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "did save config "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 12456
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x2003a

    if-eqz v34, :cond_2c

    const/16 v58, 0x1

    :goto_a
    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v58

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 12459
    const-string v58, "backup"

    invoke-static/range {v58 .. v58}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v58

    invoke-static/range {v58 .. v58}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v21

    .line 12461
    .local v21, "ibm":Landroid/app/backup/IBackupManager;
    if-eqz v21, :cond_3

    .line 12463
    :try_start_3
    const-string v58, "com.android.providers.settings"

    move-object/from16 v0, v21

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 12464
    :catch_0
    move-exception v58

    goto/16 :goto_1

    .line 12456
    .end local v21    # "ibm":Landroid/app/backup/IBackupManager;
    :cond_2c
    const/16 v58, -0x1

    goto :goto_a

    .line 12470
    .end local v34    # "ok":Z
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v60

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move-object/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 12474
    :sswitch_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    .line 12475
    .restart local v32    # "networkId":I
    const/16 v23, 0x0

    .line 12476
    .local v23, "identitySent":Z
    const/16 v18, -0x1

    .line 12478
    .local v18, "eapMethod":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$27400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v58

    if-eqz v58, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$27400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v58

    move-object/from16 v0, v58

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v58, v0

    if-eqz v58, :cond_2d

    .line 12480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$27400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v58

    move-object/from16 v0, v58

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v18

    .line 12484
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$27400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v58

    if-eqz v58, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$27400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v58

    move-object/from16 v0, v58

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v58, v0

    move/from16 v0, v58

    move/from16 v1, v32

    if-ne v0, v1, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$27400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v58

    move-object/from16 v0, v58

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v58, v0

    const/16 v59, 0x3

    invoke-virtual/range {v58 .. v59}, Ljava/util/BitSet;->get(I)Z

    move-result v58

    if-eqz v58, :cond_30

    const/16 v58, 0x4

    move/from16 v0, v18

    move/from16 v1, v58

    if-eq v0, v1, :cond_2e

    const/16 v58, 0x5

    move/from16 v0, v18

    move/from16 v1, v58

    if-eq v0, v1, :cond_2e

    const/16 v58, 0x6

    move/from16 v0, v18

    move/from16 v1, v58

    if-ne v0, v1, :cond_30

    .line 12491
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v58

    const-string v59, "phone"

    invoke-virtual/range {v58 .. v59}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/telephony/TelephonyManager;

    .line 12493
    .local v49, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v49, :cond_30

    .line 12494
    invoke-virtual/range {v49 .. v49}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v24

    .line 12495
    .local v24, "imsi":Ljava/lang/String;
    const-string v30, ""

    .line 12497
    .local v30, "mccMnc":Ljava/lang/String;
    invoke-virtual/range {v49 .. v49}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v58

    const/16 v59, 0x5

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_2f

    .line 12498
    invoke-virtual/range {v49 .. v49}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v30

    .line 12500
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move/from16 v1, v18

    move-object/from16 v2, v24

    move-object/from16 v3, v30

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->buildIdentity(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$27500(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 12502
    .local v22, "identity":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v58

    if-nez v58, :cond_30

    .line 12503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v32

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->simIdentityResponse(ILjava/lang/String;)Z

    .line 12504
    const/16 v23, 0x1

    .line 12508
    .end local v22    # "identity":Ljava/lang/String;
    .end local v24    # "imsi":Ljava/lang/String;
    .end local v30    # "mccMnc":Ljava/lang/String;
    .end local v49    # "tm":Landroid/telephony/TelephonyManager;
    :cond_30
    if-nez v23, :cond_3

    .line 12510
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Ljava/lang/String;

    .line 12511
    .local v45, "ssid":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v58, v0

    if-ltz v58, :cond_31

    .line 12512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$27402(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 12514
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$27400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v58

    if-eqz v58, :cond_32

    if-eqz v45, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$27400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v58

    move-object/from16 v0, v58

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v58, v0

    if-eqz v58, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$27400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v58

    move-object/from16 v0, v58

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "\""

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, "\""

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_32

    .line 12517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$27400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    move-object/from16 v0, v59

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v59, v0

    const/16 v60, 0x0

    const-string v61, "AUTH_FAILED no identity"

    const/16 v62, 0x0

    invoke-virtual/range {v58 .. v62}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 12524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v59

    const v60, 0x2400f

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v61, v0

    const/16 v62, 0x1

    invoke-virtual/range {v59 .. v62}, Lcom/android/server/wifi/SupplicantStateTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    .line 12531
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    const/16 v59, -0x1

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    goto/16 :goto_1

    .line 12538
    .end local v18    # "eapMethod":I
    .end local v23    # "identitySent":Z
    .end local v32    # "networkId":I
    .end local v45    # "ssid":Ljava/lang/String;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Ljava/lang/String;

    .line 12540
    .restart local v45    # "ssid":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v58, v0

    if-ltz v58, :cond_33

    .line 12541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$27402(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 12543
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$27400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v58

    if-eqz v58, :cond_34

    if-eqz v45, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$27400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v58

    move-object/from16 v0, v58

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v58, v0

    if-eqz v58, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$27400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v58

    move-object/from16 v0, v58

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "\""

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, "\""

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_34

    .line 12546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$27400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    move-object/from16 v0, v59

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v59, v0

    const/16 v60, 0x0

    const-string v61, "AUTH_FAILED no password"

    const/16 v62, 0x0

    invoke-virtual/range {v58 .. v62}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 12552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v59

    const v60, 0x24074

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v61, v0

    const/16 v62, 0x1

    invoke-virtual/range {v59 .. v62}, Lcom/android/server/wifi/SupplicantStateTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    .line 12559
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    const/16 v59, -0x1

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    goto/16 :goto_1

    .line 12564
    .end local v45    # "ssid":Ljava/lang/String;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const-string v59, "Received SUP_REQUEST_SIM_AUTH"

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 12565
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .line 12566
    .local v39, "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    if-eqz v39, :cond_37

    .line 12567
    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v58, v0

    const/16 v59, 0x4

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_35

    .line 12568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_1

    .line 12569
    :cond_35
    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v58, v0

    const/16 v59, 0x5

    move/from16 v0, v58

    move/from16 v1, v59

    if-eq v0, v1, :cond_36

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v58, v0

    const/16 v59, 0x6

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_3

    .line 12571
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_1

    .line 12574
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const-string v59, "Invalid sim auth request"

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 12578
    .end local v39    # "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v60

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move-object/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 12582
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v61

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v61

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getMatchingConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v58

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move-object/from16 v3, v58

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 12587
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    const/16 v59, -0x1

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 12589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    .line 12593
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    .line 12596
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    move-object/from16 v0, v58

    move-wide/from16 v1, v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$27002(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 12597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_1

    .line 12600
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiConfigStore;->needsUnlockedKeyStore()Z

    move-result v58

    if-eqz v58, :cond_3

    .line 12601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const-string v59, "Reconnecting to give a chance to un-connected TLS networks"

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 12602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 12603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    move-object/from16 v0, v58

    move-wide/from16 v1, v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$27002(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 12604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    .line 12608
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6500()I

    move-result v59

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12609
    const/16 v58, 0x1

    goto/16 :goto_0

    .line 12619
    :sswitch_19
    const/4 v15, 0x0

    .line 12620
    .local v15, "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$27600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v59

    move-object/from16 v0, v58

    move-object/from16 v1, v59

    if-eq v0, v1, :cond_38

    .line 12624
    const/4 v15, 0x1

    .line 12625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 12629
    :cond_38
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 12630
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 12631
    .restart local v31    # "netId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v42, v0

    .line 12632
    .local v42, "roam":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "CMD_AUTO_CONNECT sup state "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " my state "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$27700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " nid="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " roam="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 12637
    if-nez v10, :cond_39

    .line 12638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const-string v59, "AUTO_CONNECT and no config, bail out..."

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 12643
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, v58

    move/from16 v1, v31

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 12646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "CMD_AUTO_CONNECT will save config -> "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " nid="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 12648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    const/16 v59, -0x1

    move-object/from16 v0, v58

    move/from16 v1, v59

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v41

    .line 12649
    .local v41, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v31

    .line 12650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "CMD_AUTO_CONNECT did save config ->  nid="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 12654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 12655
    if-nez v10, :cond_3a

    .line 12656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const-string v59, "CMD_AUTO_CONNECT couldn\'t update the config, got null config"

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 12659
    :cond_3a
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v58, v0

    move/from16 v0, v31

    move/from16 v1, v58

    if-eq v0, v1, :cond_3b

    .line 12660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "CMD_AUTO_CONNECT couldn\'t update the config, want nid="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " but got"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 12665
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v58

    if-nez v58, :cond_3

    .line 12667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v58

    move-object/from16 v0, v58

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v58, v0

    const/16 v59, 0x2

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_3c

    .line 12669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25002

    const/16 v60, 0x9

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12675
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    const/16 v59, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v31

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 12679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v58

    if-eqz v58, :cond_3f

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move/from16 v28, v0

    .line 12682
    .local v28, "lastConnectUid":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    const/16 v59, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v59

    move/from16 v2, v28

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v58

    if-eqz v58, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v58

    if-eqz v58, :cond_44

    .line 12684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    move-object/from16 v0, v58

    move-wide/from16 v1, v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$27002(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 12685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$27402(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 12686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 12687
    if-eqz v10, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v58

    if-nez v58, :cond_3d

    .line 12701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    const/16 v59, -0x1

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 12704
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move/from16 v1, v42

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$27802(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v58

    if-nez v58, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$26400(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v58

    if-eqz v58, :cond_40

    .line 12706
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$27900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$28000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 12679
    .end local v28    # "lastConnectUid":I
    :cond_3f
    const/16 v28, -0x1

    goto/16 :goto_b

    .line 12707
    .restart local v28    # "lastConnectUid":I
    :cond_40
    if-eqz v15, :cond_41

    .line 12708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$28100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 12711
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$28200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v58

    if-nez v58, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLegacyPnoEnabled:Z
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$28300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v58

    if-eqz v58, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanSupported:Z
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$28400(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v58

    if-eqz v58, :cond_43

    .line 12712
    const v13, 0xea60

    .line 12713
    .local v13, "delay":I
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1900()Z

    move-result v58

    if-eqz v58, :cond_42

    .line 12714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "Starting PNO alarm: "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 12716
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$23700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v58

    const/16 v59, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    int-to-long v0, v13

    move-wide/from16 v62, v0

    add-long v60, v60, v62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v62, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPnoIntent:Landroid/app/PendingIntent;
    invoke-static/range {v62 .. v62}, Lcom/android/server/wifi/WifiStateMachine;->access$28500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v62

    invoke-virtual/range {v58 .. v62}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 12720
    .end local v13    # "delay":I
    :cond_43
    sget v58, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    add-int/lit8 v58, v58, 0x1

    sput v58, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    goto/16 :goto_1

    .line 12723
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "Failed to connect config: "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " netId: "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 12724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25002

    const/16 v60, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12730
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v15    # "didDisconnect":Z
    .end local v28    # "lastConnectUid":I
    .end local v31    # "netId":I
    .end local v41    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v42    # "roam":I
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v59

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Z

    goto/16 :goto_1

    .line 12733
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->removeNetworksForUser(I)Z

    goto/16 :goto_1

    .line 12742
    :sswitch_1c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 12743
    .restart local v31    # "netId":I
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 12744
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$8300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v58

    move-object/from16 v0, v58

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v59, v0

    add-int/lit8 v59, v59, 0x1

    move/from16 v0, v59

    move-object/from16 v1, v58

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 12762
    const/16 v52, 0x0

    .line 12765
    .local v52, "updatedExisting":Z
    if-eqz v10, :cond_49

    .line 12770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v59, v0

    const/16 v60, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v58

    if-nez v58, :cond_45

    .line 12772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "Not authorized to update network  config="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " cnid="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " uid="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$28600(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 12776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25002

    const/16 v60, 0x9

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12781
    :cond_45
    const/16 v58, 0x1

    move/from16 v0, v58

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v11

    .line 12782
    .local v11, "configKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v11}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v43

    .line 12784
    .local v43, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v43, :cond_46

    .line 12788
    move-object/from16 v10, v43

    .line 12789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "CONNECT_NETWORK updating existing config with id="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " configKey="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 12791
    const/16 v58, 0x0

    move/from16 v0, v58

    iput-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 12792
    const/16 v58, 0x0

    move/from16 v0, v58

    iput v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 12793
    const/16 v52, 0x1

    .line 12797
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$26900(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    if-nez v10, :cond_47

    .line 12798
    const-string v58, "WifiStateMachine"

    const-string v59, "network not allowed"

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25002

    const/16 v60, 0x9

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12803
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v58

    invoke-static/range {v58 .. v58}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v58

    const/16 v59, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v59

    invoke-virtual {v0, v10, v1}, Landroid/sec/enterprise/WifiPolicyCache;->isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v58

    if-nez v58, :cond_48

    .line 12804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "Failed to connect config by MDM: "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " netId: "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 12805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25002

    const/16 v60, 0x9

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12810
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v59, v0

    move-object/from16 v0, v58

    move/from16 v1, v59

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v41

    .line 12811
    .restart local v41    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v31

    .line 12813
    .end local v11    # "configKey":Ljava/lang/String;
    .end local v41    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v43    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 12815
    if-nez v10, :cond_4a

    .line 12816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "CONNECT_NETWORK no config for id="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " my state "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$28700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 12819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25002

    const/16 v60, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12823
    :cond_4a
    iget-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    move/from16 v58, v0

    if-eqz v58, :cond_4b

    const-string v54, " skipped"

    .line 12824
    .local v54, "wasSkipped":Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "CONNECT_NETWORK id="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " config="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " cnid="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " supstate="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " my state "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$28800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " uid = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 12833
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v58

    const-string v59, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual/range {v58 .. v59}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v58

    if-eqz v58, :cond_4c

    if-eqz v10, :cond_4c

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v58, v0

    if-eqz v58, :cond_4c

    const-string v58, "VerizonWiFiAccess"

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_4c

    .line 12834
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v44

    .line 12835
    .local v44, "simState":I
    const/16 v58, 0x1

    move/from16 v0, v44

    move/from16 v1, v58

    if-ne v0, v1, :cond_4c

    .line 12836
    const-string v58, "WifiStateMachine"

    const-string v59, "trying to connect without SIM, show alert dialog for VZW"

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12837
    new-instance v58, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v59

    const v60, 0x10409d8

    invoke-virtual/range {v59 .. v60}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v59

    const v60, 0x10409d6

    const/16 v61, 0x1

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const-string v63, "VerizonWiFiAccess"

    aput-object v63, v61, v62

    invoke-virtual/range {v59 .. v61}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v59

    const v60, 0x10403ed

    invoke-virtual/range {v59 .. v60}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v59

    new-instance v60, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState$1;

    move-object/from16 v0, v60

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState$1;-><init>(Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;)V

    invoke-virtual/range {v58 .. v60}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    .line 12846
    .local v14, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v58

    const/16 v59, 0x7d8

    invoke-virtual/range {v58 .. v59}, Landroid/view/Window;->setType(I)V

    .line 12847
    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 12823
    .end local v14    # "dialog":Landroid/app/AlertDialog;
    .end local v44    # "simState":I
    .end local v54    # "wasSkipped":Ljava/lang/String;
    :cond_4b
    const-string v54, ""

    goto/16 :goto_c

    .line 12852
    .restart local v54    # "wasSkipped":Ljava/lang/String;
    :cond_4c
    const-string v58, "SKT"

    sget-object v59, Lcom/android/server/wifi/WifiStateMachine;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_4d

    if-eqz v10, :cond_4d

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v58, v0

    if-eqz v58, :cond_4d

    const-string v58, "T wifi zone_secure"

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_4d

    .line 12853
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v44

    .line 12854
    .restart local v44    # "simState":I
    const/16 v58, 0x1

    move/from16 v0, v44

    move/from16 v1, v58

    if-ne v0, v1, :cond_4d

    .line 12855
    const-string v58, "WifiStateMachine"

    const-string v59, "trying to connect without SIM, show alert dialog for SKT"

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12856
    new-instance v58, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v59

    const v60, 0x10409d6

    const/16 v61, 0x1

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const-string v63, "T wifi zone_secure"

    aput-object v63, v61, v62

    invoke-virtual/range {v59 .. v61}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v59

    const v60, 0x10403ed

    invoke-virtual/range {v59 .. v60}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v59

    new-instance v60, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState$2;

    move-object/from16 v0, v60

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState$2;-><init>(Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;)V

    invoke-virtual/range {v58 .. v60}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    .line 12864
    .restart local v14    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v58

    const/16 v59, 0x7d8

    invoke-virtual/range {v58 .. v59}, Landroid/view/Window;->setType(I)V

    .line 12865
    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 12870
    .end local v14    # "dialog":Landroid/app/AlertDialog;
    .end local v44    # "simState":I
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const-string v59, "any"

    move-object/from16 v0, v58

    move/from16 v1, v31

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 12872
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v58, v0

    const/16 v59, 0x3f2

    move/from16 v0, v58

    move/from16 v1, v59

    if-eq v0, v1, :cond_4e

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v58, v0

    const/16 v59, 0x3e8

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_4f

    .line 12880
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const-string v59, "CONNECT_NETWORK"

    move-object/from16 v0, v58

    move-object/from16 v1, v59

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 12883
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const/16 v59, 0x1

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v58

    if-eqz v58, :cond_50

    .line 12884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25002

    const/16 v60, 0x9

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12887
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v58

    move-object/from16 v0, v58

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v58, v0

    const/16 v59, 0x2

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_51

    .line 12889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25002

    const/16 v60, 0x9

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12894
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$27802(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v58

    invoke-static/range {v58 .. v58}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/sec/enterprise/WifiPolicyCache;->getAutomaticConnectionToWifi()Z

    move-result v58

    if-nez v58, :cond_52

    .line 12898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move/from16 v1, v31

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAllowedNetId:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$28902(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const/16 v59, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mCanConnectNow:Z
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$29002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 12903
    :cond_52
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v58

    if-eqz v58, :cond_53

    const-string v58, "WifiStateMachine"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "[selectNetwork] CONNECT_NETWORK : "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12905
    :cond_53
    const-string v58, "KT_Specific"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConfigDisconnectApThreshold:Ljava/lang/String;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$27300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_54

    .line 12906
    new-instance v25, Landroid/content/Intent;

    const-string v58, "android.net.wifi.REMOVE_BLACKLIST"

    move-object/from16 v0, v25

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12907
    .restart local v25    # "intent":Landroid/content/Intent;
    const-string v58, "netId"

    move-object/from16 v0, v25

    move-object/from16 v1, v58

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v25

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    .line 12912
    .end local v25    # "intent":Landroid/content/Intent;
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v36

    .line 12914
    .local v36, "persist":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v58

    const/16 v59, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v31

    move/from16 v2, v59

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 12916
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v58

    if-eqz v58, :cond_55

    const-string v58, "WifiStateMachine"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "CONNECT_NETWORK - setLastSelectedConfiguration : "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12917
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 12919
    const/4 v15, 0x0

    .line 12920
    .restart local v15    # "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v58

    const/16 v59, -0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-eq v0, v1, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v58

    move/from16 v0, v58

    move/from16 v1, v31

    if-eq v0, v1, :cond_56

    .line 12925
    const/4 v15, 0x1

    .line 12926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 12930
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    const/16 v59, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v31

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 12932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    const/16 v59, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v60, v0

    move-object/from16 v0, v58

    move/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v58

    if-eqz v58, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v58

    if-eqz v58, :cond_59

    .line 12934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    move-object/from16 v0, v58

    move-wide/from16 v1, v60

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$27002(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 12935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v59

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$27402(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 12938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v58

    const v59, 0x25001

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 12939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25003

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 12940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x20037

    const-wide/16 v60, 0x2710

    invoke-virtual/range {v58 .. v61}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    .line 12941
    if-eqz v15, :cond_57

    .line 12943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$29100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 12944
    :cond_57
    if-eqz v52, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$29200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$29300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v59

    move-object/from16 v0, v58

    move-object/from16 v1, v59

    if-ne v0, v1, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v58

    move-object/from16 v0, v58

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v58, v0

    move/from16 v0, v58

    move/from16 v1, v31

    if-ne v0, v1, :cond_58

    .line 12948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$29400(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_1

    .line 12954
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$29500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 12957
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "Failed to connect config: "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " netId: "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 12958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25002

    const/16 v60, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12964
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v15    # "didDisconnect":Z
    .end local v31    # "netId":I
    .end local v36    # "persist":Z
    .end local v52    # "updatedExisting":Z
    .end local v54    # "wasSkipped":Ljava/lang/String;
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$8300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v58

    move-object/from16 v0, v58

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v59, v0

    add-int/lit8 v59, v59, 0x1

    move/from16 v0, v59

    move-object/from16 v1, v58

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 12967
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$29602(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 12968
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 12969
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v10, :cond_5a

    .line 12970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "ERROR: SAVE_NETWORK with null configuration"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " my state "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$29700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 12973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7600()I

    move-result v59

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25008

    const/16 v60, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12978
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v59

    invoke-direct {v0, v10}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$29602(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 12979
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v33, v0

    .line 12980
    .local v33, "nid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "SAVE_NETWORK id="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " config="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " nid="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " supstate="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " my state "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v60, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v60 .. v60}, Lcom/android/server/wifi/WifiStateMachine;->access$29800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 12987
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v58, v0

    const v59, 0x25007

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_5b

    const/4 v9, 0x1

    .line 12988
    .local v9, "checkUid":Z
    :goto_d
    if-eqz v9, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v59, v0

    const/16 v60, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v59

    move/from16 v2, v60

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v58

    if-nez v58, :cond_5c

    .line 12990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "Not authorized to update network  config="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " cnid="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " uid="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$29900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 12994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25008

    const/16 v60, 0x9

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12987
    .end local v9    # "checkUid":Z
    :cond_5b
    const/4 v9, 0x0

    goto :goto_d

    .line 13000
    .restart local v9    # "checkUid":Z
    :cond_5c
    if-eqz v10, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$26900(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    if-nez v10, :cond_5d

    .line 13001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25008

    const/16 v60, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 13007
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    const/16 v59, -0x1

    move-object/from16 v0, v58

    move/from16 v1, v59

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v41

    .line 13008
    .restart local v41    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v58

    const/16 v59, -0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-eq v0, v1, :cond_63

    .line 13009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v58

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v59

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_5f

    .line 13010
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v58

    if-eqz v58, :cond_5e

    .line 13014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const-string v59, "Reconfiguring IP on connection"

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$30000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$30100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 13019
    :cond_5e
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v58

    if-eqz v58, :cond_5f

    .line 13020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const-string v59, "Reconfiguring proxy on connection"

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x2008c

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(I)V
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$8200(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 13024
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25009

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 13025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V
    invoke-static {v0, v1, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$30200(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    .line 13027
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1900()Z

    move-result v58

    if-eqz v58, :cond_60

    .line 13028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "Success save network nid="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 13032
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$26000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v59

    monitor-enter v59

    .line 13038
    :try_start_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v58, v0

    const v60, 0x25007

    move/from16 v0, v58

    move/from16 v1, v60

    if-ne v0, v1, :cond_62

    const/16 v53, 0x1

    .line 13041
    .local v53, "user":Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v60, v0

    move-object/from16 v0, v58

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v37

    .line 13044
    .local v37, "persistConnect":Z
    if-eqz v53, :cond_61

    .line 13045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v60, v0

    move-object/from16 v0, v58

    move/from16 v1, v60

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 13046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    const/16 v60, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 13049
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v58

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v60

    move-object/from16 v0, v58

    move/from16 v1, v60

    move/from16 v2, v53

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 13051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$4000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    .line 13052
    monitor-exit v59

    goto/16 :goto_1

    .end local v37    # "persistConnect":Z
    .end local v53    # "user":Z
    :catchall_2
    move-exception v58

    monitor-exit v59
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v58

    .line 13038
    :cond_62
    const/16 v53, 0x0

    goto :goto_e

    .line 13054
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const-string v59, "Failed to save network"

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 13055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$7600()I

    move-result v59

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 13056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25008

    const/16 v60, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 13062
    .end local v9    # "checkUid":Z
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v33    # "nid":I
    .end local v41    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v50

    .line 13064
    .local v50, "toRemove":Landroid/net/wifi/WifiConfiguration;
    if-nez v50, :cond_64

    .line 13065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$30302(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 13070
    :goto_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 13072
    .restart local v31    # "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v59, v0

    const/16 v60, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v59

    move/from16 v2, v31

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    move-result v58

    if-nez v58, :cond_65

    .line 13074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "Not authorized to forget network  cnid="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " uid="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$30400(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 13077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25005

    const/16 v60, 0x9

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 13067
    .end local v31    # "netId":I
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v59

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$30302(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    goto :goto_f

    .line 13083
    .restart local v31    # "netId":I
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->edmRemoveNetwork(I)Z
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$27200(Lcom/android/server/wifi/WifiStateMachine;I)Z

    move-result v58

    if-nez v58, :cond_66

    .line 13084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25005

    const/16 v60, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 13091
    :cond_66
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v58

    const-string v59, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual/range {v58 .. v59}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v58

    if-eqz v58, :cond_69

    .line 13092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    .line 13093
    .local v7, "SSID":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v58

    if-eqz v58, :cond_67

    const-string v58, "WifiStateMachine"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "current connection "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13094
    :cond_67
    if-eqz v7, :cond_69

    const-string v58, "VerizonWiFi"

    move-object/from16 v0, v58

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_68

    const-string v58, "\"VerizonWiFi\""

    move-object/from16 v0, v58

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_69

    .line 13095
    :cond_68
    const-string v58, "WifiStateMachine"

    const-string v59, "starting WIFI aggregation logoff thread "

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13096
    new-instance v6, Ljava/lang/Thread;

    new-instance v58, Landroid/net/wifi/LogoffRunnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Landroid/net/wifi/LogoffRunnable;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v58

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 13097
    .local v6, "Logoff":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 13099
    const-wide/16 v58, 0x7d0

    :try_start_5
    move-wide/from16 v0, v58

    invoke-virtual {v6, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 13109
    .end local v6    # "Logoff":Ljava/lang/Thread;
    .end local v7    # "SSID":Ljava/lang/String;
    :cond_69
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->forgetNetwork(I)Z

    move-result v58

    if-eqz v58, :cond_6a

    .line 13110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25006

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 13111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const/16 v60, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v59

    move/from16 v1, v60

    move-object/from16 v2, v58

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$30200(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_1

    .line 13100
    .restart local v6    # "Logoff":Ljava/lang/Thread;
    .restart local v7    # "SSID":Ljava/lang/String;
    :catch_1
    move-exception v17

    .line 13102
    .local v17, "e":Ljava/lang/InterruptedException;
    const-string v58, "WifiStateMachine"

    const-string v59, "interrupt in WIFI aggregation logoff thread -"

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13103
    invoke-virtual/range {v17 .. v17}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_10

    .line 13114
    .end local v6    # "Logoff":Ljava/lang/Thread;
    .end local v7    # "SSID":Ljava/lang/String;
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const-string v59, "Failed to forget network"

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 13115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x25005

    const/16 v60, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 13121
    .end local v31    # "netId":I
    .end local v50    # "toRemove":Landroid/net/wifi/WifiConfiguration;
    :sswitch_20
    const-string v58, "WifiStateMachine"

    const-string v59, "CMD_MDM_SAVE_NETWORK"

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworksToUpdate:Ljava/util/Queue;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$7500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v58

    invoke-interface/range {v58 .. v58}, Ljava/util/Queue;->isEmpty()Z

    move-result v58

    if-eqz v58, :cond_6b

    .line 13123
    const-string v58, "WifiStateMachine"

    const-string v59, "queue is empty - leaving"

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v59, v0

    const/16 v60, -0x1

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 13126
    :cond_6b
    const-string v58, "WifiStateMachine"

    const-string v59, "add/update network"

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    const v60, 0x20034

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworksToUpdate:Ljava/util/Queue;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$7500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v58

    invoke-interface/range {v58 .. v58}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/net/wifi/WifiConfiguration;

    const/16 v62, -0x1

    move-object/from16 v0, v61

    move-object/from16 v1, v58

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v58

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move-object/from16 v3, v58

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 13132
    :sswitch_21
    const-string v58, "WifiStateMachine"

    const-string v59, "CMD_MDM_FORGET_NETWORK"

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkIdsForRemoval:Ljava/util/Queue;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v58

    invoke-interface/range {v58 .. v58}, Ljava/util/Queue;->isEmpty()Z

    move-result v58

    if-eqz v58, :cond_6c

    .line 13134
    const-string v58, "WifiStateMachine"

    const-string v59, "queue is empty - leaving"

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v59, v0

    const/16 v60, -0x1

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 13137
    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkIdsForRemoval:Ljava/util/Queue;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v58

    invoke-interface/range {v58 .. v58}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/lang/Integer;

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Integer;->intValue()I

    move-result v58

    move-object/from16 v0, v59

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->forgetNetwork(I)Z

    move-result v34

    .line 13138
    .restart local v34    # "ok":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    if-eqz v34, :cond_6d

    const/16 v58, 0x1

    :goto_11
    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    move/from16 v3, v58

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_6d
    const/16 v58, -0x1

    goto :goto_11

    .line 13142
    .end local v34    # "ok":Z
    :sswitch_22
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Landroid/net/wifi/WpsInfo;

    .line 13144
    .local v56, "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v56

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v58, v0

    packed-switch v58, :pswitch_data_0

    .line 13155
    new-instance v57, Landroid/net/wifi/WpsResult;

    sget-object v58, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v57 .. v58}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 13156
    .local v57, "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const-string v59, "Invalid setup for WPS"

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 13159
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    const/16 v59, -0x1

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 13161
    move-object/from16 v0, v57

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v58, v0

    sget-object v59, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v58

    move-object/from16 v1, v59

    if-ne v0, v1, :cond_6e

    .line 13162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const/16 v59, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$6802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 13163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x2500b

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move-object/from16 v3, v57

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 13164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$30500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$30600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 13146
    .end local v57    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v57

    .line 13147
    .restart local v57    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_12

    .line 13149
    .end local v57    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v57

    .line 13150
    .restart local v57    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_12

    .line 13152
    .end local v57    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v57

    .line 13153
    .restart local v57    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto/16 :goto_12

    .line 13166
    :cond_6e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "Failed to start WPS with config "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v56 .. v56}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 13167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const v59, 0x2500c

    const/16 v60, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    move/from16 v2, v59

    move/from16 v3, v60

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 13171
    .end local v56    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v57    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_23
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v58

    if-eqz v58, :cond_6f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const-string v59, "Network connection established"

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13172
    :cond_6f
    const/16 v35, 0x0

    .line 13173
    .local v35, "oldBssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v58

    if-eqz v58, :cond_70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$6802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 13174
    :cond_70
    const-string v58, "ENABLE_SAME_SSID_ONLY"

    const-string v59, "ENABLE"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v58

    if-eqz v58, :cond_71

    .line 13175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mHandoverState:Z

    move/from16 v58, v0

    if-eqz v58, :cond_71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v59

    move-object/from16 v1, v58

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mHandoverState:Z

    .line 13177
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$15102(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 13178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$15000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v35

    .line 13179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Ljava/lang/String;

    move-object/from16 v0, v59

    move-object/from16 v1, v58

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$15002(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 13181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$15000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 13182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v59

    invoke-virtual/range {v58 .. v59}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 13184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->isSkipInternetCheck(I)Z

    move-result v58

    if-eqz v58, :cond_78

    .line 13185
    const-string v58, "WifiStateMachine"

    const-string v59, "skipInternetCheck true by isSkipInternetCheck()."

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v58

    const/16 v59, 0x1

    invoke-virtual/range {v58 .. v59}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    .line 13196
    :cond_72
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiConfigStore;->containsVsieForSns(I)Z

    move-result v58

    if-eqz v58, :cond_7a

    .line 13197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v58

    const/16 v59, 0x1

    invoke-virtual/range {v58 .. v59}, Landroid/net/wifi/WifiInfo;->setCheckVsieForSns(Z)V

    .line 13203
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v55

    .line 13204
    .restart local v55    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v55, :cond_73

    .line 13205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v58

    move-object/from16 v0, v55

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Landroid/net/wifi/WifiInfo;->setCaptivePortal(Z)V

    .line 13206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v58

    move-object/from16 v0, v55

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Landroid/net/wifi/WifiInfo;->setAuthenticated(Z)V

    .line 13211
    :cond_73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNetworkLists:Lcom/android/server/wifi/WifiNetworkLists;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$18800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNetworkLists;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiNetworkLists;->putNewNetworkMap(I)V

    .line 13212
    if-nez v35, :cond_74

    .line 13213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNetworkLists:Lcom/android/server/wifi/WifiNetworkLists;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$18800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNetworkLists;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$15000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiNetworkLists;->findNetwork(Ljava/lang/String;)Z

    move-result v58

    if-nez v58, :cond_74

    .line 13214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNetworkLists:Lcom/android/server/wifi/WifiNetworkLists;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$18800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNetworkLists;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$15000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiNetworkLists;->addNewNetworkList(Ljava/lang/String;)V

    .line 13220
    :cond_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v55

    .line 13221
    if-eqz v55, :cond_75

    move-object/from16 v0, v55

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    move/from16 v58, v0

    if-eqz v58, :cond_75

    .line 13222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v58

    const/16 v59, 0x1

    invoke-virtual/range {v58 .. v59}, Landroid/net/wifi/WifiInfo;->setSharedAp(Z)V

    .line 13223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v58

    move-object/from16 v0, v55

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->expiration:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Landroid/net/wifi/WifiInfo;->setExpiration(Ljava/lang/String;)V

    .line 13227
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v59

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v55

    .line 13228
    if-eqz v55, :cond_76

    move-object/from16 v0, v55

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    move/from16 v58, v0

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_76

    .line 13229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v58

    const-string v59, "wifi_hotspot20_connected_history"

    const/16 v60, 0x1

    invoke-static/range {v58 .. v60}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 13233
    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->fetchFrequency()I
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$30700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v59

    invoke-virtual/range {v58 .. v59}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 13235
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->CSC_PREFERRED_BAND:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$14600()Ljava/lang/String;

    move-result-object v58

    const-string v59, "11AC"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v58

    if-eqz v58, :cond_77

    .line 13236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateIconInfo()V
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$30800(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 13240
    :cond_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    sget-object v59, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$21500(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 13241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$15000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$30900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 13242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$30000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$31000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 13187
    .end local v55    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v59

    const/16 v60, 0x0

    invoke-virtual/range {v58 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->isUsingSamsungFlag(II)Z

    move-result v58

    if-eqz v58, :cond_79

    .line 13188
    const-string v58, "WifiStateMachine"

    const-string v59, "skipInternetCheck true by SEC21."

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v58

    const/16 v59, 0x1

    invoke-virtual/range {v58 .. v59}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    goto/16 :goto_13

    .line 13190
    :cond_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v59

    const/16 v60, 0x1

    invoke-virtual/range {v58 .. v60}, Lcom/android/server/wifi/WifiConfigStore;->isUsingSamsungFlag(II)Z

    move-result v58

    if-eqz v58, :cond_72

    .line 13191
    const-string v58, "WifiStateMachine"

    const-string v59, "skipInternetCheck true by SEC80."

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v58

    const/16 v59, 0x1

    invoke-virtual/range {v58 .. v59}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    goto/16 :goto_13

    .line 13199
    :cond_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v58

    const/16 v59, 0x0

    invoke-virtual/range {v58 .. v59}, Landroid/net/wifi/WifiInfo;->setCheckVsieForSns(Z)V

    goto/16 :goto_14

    .line 13254
    .end local v35    # "oldBssid":Ljava/lang/String;
    :sswitch_24
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v58

    if-eqz v58, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const-string v59, "ConnectModeState: Network connection lost "

    invoke-virtual/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 13256
    :cond_7b
    const-string v58, "ENABLE_SAME_SSID_ONLY"

    const-string v59, "ENABLE"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v58

    if-eqz v58, :cond_7c

    .line 13257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mHandoverState:Z

    move/from16 v58, v0

    if-eqz v58, :cond_7c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v59

    move-object/from16 v1, v58

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mHandoverState:Z

    .line 13259
    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v58 .. v58}, Lcom/android/server/wifi/WifiStateMachine;->access$11800(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 13260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v59 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$31100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 13263
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, [Landroid/net/wifi/ScanResult;

    check-cast v58, [Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v59

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->processPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_1

    .line 13266
    :sswitch_26
    const-string v58, "KTT"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v59

    const-string v60, "CscFeature_Wifi_ConfigAuthMsgDisplayPolicy"

    invoke-virtual/range {v59 .. v60}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_81

    .line 13267
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v58

    if-eqz v58, :cond_7d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "KT_NOTIFICATION_EVENT err_code="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, ", aka_noti="

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v60, v0

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logi(Ljava/lang/String;)V
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$31200(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 13269
    :cond_7d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v58, v0

    const/16 v59, -0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-eq v0, v1, :cond_3

    .line 13271
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v58, v0

    const/16 v59, 0x64

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_7e

    .line 13272
    const-string v58, "KTT"

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableAutoConnectHotspot:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$14000()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3

    .line 13273
    new-instance v26, Landroid/content/Intent;

    const-string v58, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    move-object/from16 v0, v26

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13274
    .local v26, "ktIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    .line 13275
    .local v27, "kt_msg":I
    const-string v58, "EAP_AKA_NOTIFICATION"

    move-object/from16 v0, v26

    move-object/from16 v1, v58

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v26

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 13279
    .end local v26    # "ktIntent":Landroid/content/Intent;
    .end local v27    # "kt_msg":I
    :cond_7e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v58, v0

    if-eqz v58, :cond_7f

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v58, v0

    const/16 v59, 0x4

    move/from16 v0, v58

    move/from16 v1, v59

    if-lt v0, v1, :cond_80

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v58, v0

    const/16 v59, 0x6

    move/from16 v0, v58

    move/from16 v1, v59

    if-gt v0, v1, :cond_80

    .line 13280
    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    invoke-static/range {v59 .. v59}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v59

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setAuthenticationInformation(Ljava/lang/String;)V
    invoke-static/range {v58 .. v59}, Lcom/android/server/wifi/WifiStateMachine;->access$31300(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 13282
    :cond_80
    new-instance v26, Landroid/content/Intent;

    const-string v58, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    move-object/from16 v0, v26

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13283
    .restart local v26    # "ktIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 13284
    .restart local v27    # "kt_msg":I
    const-string v58, "ERROR_NOTIFICATION"

    move-object/from16 v0, v26

    move-object/from16 v1, v58

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v26

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 13289
    .end local v26    # "ktIntent":Landroid/content/Intent;
    .end local v27    # "kt_msg":I
    :cond_81
    const/16 v58, 0x0

    goto/16 :goto_0

    .line 12109
    nop

    :sswitch_data_0
    .sparse-switch
        0x20034 -> :sswitch_5
        0x20035 -> :sswitch_6
        0x20036 -> :sswitch_7
        0x20037 -> :sswitch_8
        0x20038 -> :sswitch_b
        0x20039 -> :sswitch_c
        0x2003a -> :sswitch_d
        0x2003b -> :sswitch_e
        0x2003e -> :sswitch_12
        0x20049 -> :sswitch_14
        0x2004a -> :sswitch_15
        0x2004b -> :sswitch_16
        0x20061 -> :sswitch_1a
        0x20062 -> :sswitch_a
        0x20063 -> :sswitch_13
        0x2008e -> :sswitch_17
        0x2008f -> :sswitch_19
        0x20091 -> :sswitch_18
        0x20092 -> :sswitch_1e
        0x20098 -> :sswitch_1b
        0x2009c -> :sswitch_25
        0x200ce -> :sswitch_21
        0x200cf -> :sswitch_20
        0x2300c -> :sswitch_4
        0x24003 -> :sswitch_23
        0x24004 -> :sswitch_24
        0x24006 -> :sswitch_3
        0x24007 -> :sswitch_1
        0x2400d -> :sswitch_2
        0x2400e -> :sswitch_2
        0x2400f -> :sswitch_f
        0x24010 -> :sswitch_11
        0x2402b -> :sswitch_0
        0x2406f -> :sswitch_26
        0x24074 -> :sswitch_10
        0x25001 -> :sswitch_1c
        0x25004 -> :sswitch_1f
        0x25007 -> :sswitch_1d
        0x2500a -> :sswitch_22
        0x25011 -> :sswitch_9
    .end sparse-switch

    .line 13144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
