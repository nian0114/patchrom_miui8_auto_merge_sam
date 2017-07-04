.class Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
.super Lcom/android/internal/util/State;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 284
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in inactive state : Entered InactiveState State"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->initConnectionParams()V
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$900(Lcom/sec/epdg/IPSecDataConnSM;)V

    .line 286
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 287
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 291
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in inactive state : Exiting InactiveState State"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 296
    const/4 v1, 0x0

    .line 297
    .local v1, "status":Z
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM Current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 370
    :pswitch_0
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :goto_0
    return v1

    .line 301
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v0

    .line 302
    .local v0, "cid":I
    if-gez v0, :cond_0

    .line 303
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get cid for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2, v0}, Lcom/sec/epdg/IPSecDataConnSM;->setmRilCid(I)V

    .line 307
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/sec/epdg/EpdgCommands;->triggerHandover(ILjava/lang/Boolean;)V

    .line 308
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    .line 309
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_0

    .line 314
    .end local v0    # "cid":I
    :pswitch_2
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->configureApnContext(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    .line 315
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->checkDnsRetryRequired()Z
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1400(Lcom/sec/epdg/IPSecDataConnSM;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "DNS query posted to Epdg service"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_1
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "No DNS retry required. Proceeding handling the Connect Request"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleConnectRequest()I
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)I

    goto :goto_0

    .line 323
    :pswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_2

    .line 324
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleDnsResolutionFail()V
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)V

    goto :goto_0

    .line 326
    :cond_2
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Proceeding Handling Connect Request"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleConnectRequest()I
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)I

    goto :goto_0

    .line 335
    :pswitch_4
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setmRilCid(I)V

    .line 336
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->disconnectEpdgConnection()V
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;)V

    goto/16 :goto_0

    .line 340
    :pswitch_5
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected event in InactiveState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgCommands;->postDelayedRegister(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    :pswitch_6
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected event in InactiveState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 355
    :pswitch_7
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleWifiStateChange(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1800(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 358
    :pswitch_8
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Ignore disconnect Req as PDN is already inactive"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 362
    :pswitch_9
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Ignoring the Interface UP event as SM is in InActive state. "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 366
    :pswitch_a
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Ignoring the Interface DOWN event as SM is in InActive state. "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
