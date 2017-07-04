.class Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsRunningState"
.end annotation


# instance fields
.field private mSourceMessage:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 16743
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 16748
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$44900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 16749
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 16750
    const-string v0, "KTT"

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableAutoConnectHotspot:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$14000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16751
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    .line 16754
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 16871
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 16872
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    .line 16873
    const-string v2, "KTT"

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableAutoConnectHotspot:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$14000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16874
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 16875
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_skip_auto_conn"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 16877
    .local v0, "skipAutoConn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[KTWiFiCM] wps fail, skipAutoConn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 16879
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    .line 16884
    .end local v0    # "skipAutoConn":Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 16875
    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v4, 0x2500f

    const/4 v0, 0x1

    const/4 v6, 0x0

    const v5, 0x2500c

    const/4 v1, 0x0

    .line 16757
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v2, p1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 16759
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 16866
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 16764
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    const v3, 0x2500d

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 16765
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 16766
    iput-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 16767
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$45000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 16768
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$45100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 16771
    :sswitch_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    const/4 v4, 0x3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 16773
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 16774
    iput-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 16775
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 16776
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$45200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 16780
    :sswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_2

    .line 16781
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 16782
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 16783
    iput-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 16784
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 16785
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$45300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 16787
    :cond_2
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "Ignore unspecified fail event during WPS connection"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 16791
    :sswitch_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    const/4 v4, 0x7

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v3, v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 16793
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 16794
    iput-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 16795
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 16796
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$45400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 16799
    :sswitch_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v5, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 16802
    :sswitch_6
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->cancelWps()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 16803
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 16804
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x25010

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v1, p1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 16808
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$45500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 16806
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v4, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_1

    .line 16817
    :sswitch_7
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->cancelWps()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16818
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 16819
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x25010

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v1, p1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 16823
    :goto_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$45600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 16824
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$45700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 16821
    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v4, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_2

    .line 16832
    :sswitch_8
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$45800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 16836
    :sswitch_9
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6500()I

    move-result v2

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 16845
    :sswitch_a
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "Network connection lost"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 16846
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$11800(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 16849
    :sswitch_b
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "Ignore Assoc reject event during WPS Connection"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 16856
    :sswitch_c
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "Ignore auth failure during WPS connection"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 16759
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_7
        0x2000c -> :sswitch_7
        0x2000e -> :sswitch_7
        0x20036 -> :sswitch_8
        0x20037 -> :sswitch_8
        0x20048 -> :sswitch_8
        0x2004a -> :sswitch_8
        0x2004b -> :sswitch_8
        0x2008f -> :sswitch_9
        0x20091 -> :sswitch_9
        0x24003 -> :sswitch_1
        0x24004 -> :sswitch_a
        0x24006 -> :sswitch_0
        0x24007 -> :sswitch_c
        0x24008 -> :sswitch_0
        0x24009 -> :sswitch_3
        0x2400a -> :sswitch_2
        0x2400b -> :sswitch_4
        0x2402b -> :sswitch_b
        0x25001 -> :sswitch_8
        0x2500a -> :sswitch_5
        0x2500e -> :sswitch_6
    .end sparse-switch
.end method
