.class Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;
.super Lcom/android/internal/util/State;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandoverConnectingState"
.end annotation


# instance fields
.field private mIsDetachRcvdFromRil:Z

.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->mIsDetachRcvdFromRil:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method

.method private isDetachRcvdFromRil()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->mIsDetachRcvdFromRil:Z

    return v0
.end method

.method private setDetachRcvdFromRil(Z)V
    .locals 0
    .param p1, "isDetachRcvdFromRil"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->mIsDetachRcvdFromRil:Z

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in Connecting state : Entered HandoverConnecting State"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->setDetachRcvdFromRil(Z)V

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in Connecting state : Exiting HandoverConnecting State"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->setDetachRcvdFromRil(Z)V

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$3200(Lcom/sec/epdg/IPSecDataConnSM;I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v22, 0x0

    .local v22, "status":Z
    const/16 v18, 0x0

    .local v18, "errorEnableEpdg":Z
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM Current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$3300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-static {v4}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-static {v4}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v22

    :pswitch_0
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM Current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$3400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ISSUE -- No response from RIL/IPSec/DNS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_0

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->isDetachRcvdFromRil()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Disconnect received during Connecting phase"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->setDetachRcvdFromRil(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->disconnectEpdgConnection()V
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2000(Lcom/sec/epdg/IPSecDataConnSM;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .local v15, "cid":I
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    .local v7, "linkprop":Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM Current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$3500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Call Connected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x1

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v2, v3, v15}, Lcom/sec/epdg/IPSecDataConnSM;->access$3600(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    move-result v18

    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM Current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$3700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Update conn status for cid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v6

    invoke-direct/range {v2 .. v7}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;-><init>(ILjava/lang/String;ZZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;)V

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->post()V

    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Connection successful. Resetting throttle timer."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->resetThrottleState()V
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2700(Lcom/sec/epdg/IPSecDataConnSM;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mRilCid:I
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$3800(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->isW2LRecommended(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getIsW2LRequested()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$3900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setIsW2LRequested(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/sec/epdg/EpdgCommands;->triggerHandover(ILjava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v3, 0x11

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x0

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x1

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4100(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    :cond_3
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->cacheEpdgServerIpAddress()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v18, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getTargetRilNetwork()I

    move-result v19

    .local v19, "mTargetRilNetwork":I
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Error while enable epdg, calling failure function"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x0

    move/from16 v0, v19

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleEnableEpdgFailure(III)V
    invoke-static {v2, v15, v0, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4200(Lcom/sec/epdg/IPSecDataConnSM;III)V

    goto/16 :goto_0

    .end local v19    # "mTargetRilNetwork":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setIsW2LRequested(Z)V

    goto :goto_1

    .end local v7    # "linkprop":Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    .end local v15    # "cid":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v17

    .local v17, "curSetting":Lcom/sec/epdg/IWlanApnSetting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->checkAndAddRouteForNextEpdgServerIp()Z

    move-result v20

    .local v20, "result":Z
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_6

    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Next epdg server ip address is available apn name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ipv4 address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ipv6 addr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .local v8, "connReqObj":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getDataConnectionHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v14

    .local v14, "apnAttachReq":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v14, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    iput v2, v14, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v8, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v2, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v14}, Lcom/sec/epdg/IPSecDataConnSM;->access$4300(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    .end local v8    # "connReqObj":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    .end local v14    # "apnAttachReq":Landroid/os/Message;
    :cond_6
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "No new epdg server ip address is available, resetting the ip and counter"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->RESET_CACHED_IP:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .end local v20    # "result":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->updatePermanentFail(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    if-eqz v17, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/sec/epdg/IWlanConnectResult;

    .local v16, "connectResult":Lcom/sec/epdg/IWlanConnectResult;
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/throttle/ThrottleController;->isThrottleRequired(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Throttling is needed, so move to throttle state"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    :goto_2
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/throttle/ThrottleController;->updateThrottleState(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)V

    goto/16 :goto_0

    :cond_8
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Throttling is not needed for this error, so move to inactive state"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_2

    .end local v16    # "connectResult":Lcom/sec/epdg/IWlanConnectResult;
    .end local v17    # "curSetting":Lcom/sec/epdg/IWlanApnSetting;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p1

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->configureApnContext(Landroid/os/Message;)V
    invoke-static {v2, v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->checkDnsRetryRequired()Z
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1400(Lcom/sec/epdg/IPSecDataConnSM;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "DNS query posted to Epdg service"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v3, 0xb

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4400(Lcom/sec/epdg/IPSecDataConnSM;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v3, 0xb

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :cond_9
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "No DNS retry required. Proceeding handling the Connect Request"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleConnectRequest()I
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)I

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->updatePermanentFail(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v21

    .local v21, "setting":Lcom/sec/epdg/IWlanApnSetting;
    if-eqz v21, :cond_b

    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DNS fail during data retry : EpdgUtils.isDataRetryEnabled(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDataRetryEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDataRetryEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/epdg/IWlanError;

    sget-object v5, Lcom/sec/epdg/IWlanError$EpdgError;->DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    sget-object v6, Lcom/sec/epdg/IWlanError$EpdgError;->DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {v6}, Lcom/sec/epdg/IWlanError$EpdgError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/throttle/ThrottleController;->updateThrottleState(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    :cond_b
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "IWlanSetting is null, critical error"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v21    # "setting":Lcom/sec/epdg/IWlanApnSetting;
    :cond_c
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Proceeding Handling Connect Request"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleConnectRequest()I
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)I

    goto/16 :goto_0

    :pswitch_5
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM Current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$4500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Unexpected event"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x1

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x0

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4100(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    :pswitch_6
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM Current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$4600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Unexpected event"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Received Disconnect Req: Marked for disconnect"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->setDetachRcvdFromRil(Z)V

    goto/16 :goto_0

    :pswitch_8
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Received W2L Req: Marked for W2L handover"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setIsW2LRequested(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgCommands;->postDelayedRegister(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p1

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleWifiStateChange(Landroid/os/Message;)V
    invoke-static {v2, v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$2100(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_a
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Ignoring the Interface UP event as SM is in Connecting state. "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
