.class Lcom/sec/epdg/EpdgService$EpdgHandler;
.super Landroid/os/Handler;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2454
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    .line 2455
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2456
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 44
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2460
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgCommands$EpdgRxEvents;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 2462
    .local v21, "cid":I
    const/16 v17, 0x0

    .line 2463
    .local v17, "apnType":Ljava/lang/String;
    const/16 v31, -0x1

    .line 2464
    .local v31, "networkType":I
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage: cid - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 3214
    const-string v2, "[RIL->EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignored event : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3217
    :cond_0
    :goto_0
    return-void

    .line 2468
    :sswitch_0
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3800()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v29

    .line 2470
    .local v29, "msgToHandoverSM":Landroid/os/Message;
    const/4 v2, 0x5

    move-object/from16 v0, v29

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V
    invoke-static {v2, v0, v1}, Lcom/sec/epdg/EpdgService;->access$4400(Lcom/sec/epdg/EpdgService;Landroid/os/Message;Landroid/os/Message;)V

    .line 2472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move/from16 v0, v21

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToTestApp(II)V
    invoke-static {v2, v0, v4}, Lcom/sec/epdg/EpdgService;->access$4500(Lcom/sec/epdg/EpdgService;II)V

    .line 2474
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3800()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v17

    .line 2475
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apnName after getIwlanApnNameFromCid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2476
    if-eqz v17, :cond_1

    .line 2477
    invoke-static/range {v17 .. v17}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v31

    .line 2478
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "networkType returned:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->sendWifiDelayRequest(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$3600(Lcom/sec/epdg/EpdgService;Z)V

    .line 2484
    :cond_1
    const/16 v2, 0xb

    move/from16 v0, v31

    if-eq v0, v2, :cond_2

    const/16 v2, 0xf

    move/from16 v0, v31

    if-ne v0, v2, :cond_3

    .line 2486
    :cond_2
    new-instance v28, Landroid/content/Intent;

    const-string v2, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2487
    .local v28, "infoToIMSCII":Landroid/content/Intent;
    const-string v2, "apntype"

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2488
    const-string/jumbo v2, "ikeerror"

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2489
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1600()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2491
    .end local v28    # "infoToIMSCII":Landroid/content/Intent;
    :cond_3
    # getter for: Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4600()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_0

    .line 2492
    const/4 v2, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$4602(I)I

    goto/16 :goto_0

    .line 2498
    .end local v29    # "msgToHandoverSM":Landroid/os/Message;
    :sswitch_1
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3800()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v17

    .line 2499
    const/16 v31, -0x1

    .line 2500
    if-eqz v17, :cond_4

    .line 2501
    invoke-static/range {v17 .. v17}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v31

    .line 2502
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "networkType returned:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->sendWifiDelayRequest(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$3600(Lcom/sec/epdg/EpdgService;Z)V

    .line 2507
    :cond_4
    const/16 v2, 0xb

    move/from16 v0, v31

    if-ne v0, v2, :cond_5

    .line 2514
    const-string v2, "[EPDGService]"

    const-string v4, "IPsec disconnected,  stop TEPDGLTE and 1x timer and allow mobile attach"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 2517
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 2520
    :cond_5
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3800()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v29

    .line 2522
    .restart local v29    # "msgToHandoverSM":Landroid/os/Message;
    const/4 v2, 0x7

    move-object/from16 v0, v29

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V
    invoke-static {v2, v0, v1}, Lcom/sec/epdg/EpdgService;->access$4400(Lcom/sec/epdg/EpdgService;Landroid/os/Message;Landroid/os/Message;)V

    .line 2524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move/from16 v0, v21

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToTestApp(II)V
    invoke-static {v2, v0, v4}, Lcom/sec/epdg/EpdgService;->access$4500(Lcom/sec/epdg/EpdgService;II)V

    goto/16 :goto_0

    .line 2528
    .end local v29    # "msgToHandoverSM":Landroid/os/Message;
    :sswitch_2
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3800()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v29

    .line 2530
    .restart local v29    # "msgToHandoverSM":Landroid/os/Message;
    const/4 v2, 0x6

    move-object/from16 v0, v29

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V
    invoke-static {v2, v0, v1}, Lcom/sec/epdg/EpdgService;->access$4400(Lcom/sec/epdg/EpdgService;Landroid/os/Message;Landroid/os/Message;)V

    .line 2532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move/from16 v0, v21

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToTestApp(II)V
    invoke-static {v2, v0, v4}, Lcom/sec/epdg/EpdgService;->access$4500(Lcom/sec/epdg/EpdgService;II)V

    .line 2533
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3800()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v17

    .line 2534
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apnName after getIwlanApnNameFromCid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2535
    if-eqz v17, :cond_6

    .line 2536
    invoke-static/range {v17 .. v17}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v31

    .line 2537
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "networkType returned:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2539
    :cond_6
    const/16 v2, 0xb

    move/from16 v0, v31

    if-eq v0, v2, :cond_7

    const/16 v2, 0xf

    move/from16 v0, v31

    if-ne v0, v2, :cond_8

    .line 2541
    :cond_7
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x30

    if-ne v2, v4, :cond_8

    .line 2542
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/sec/epdg/IWlanConnectResult;

    .line 2543
    .local v37, "result":Lcom/sec/epdg/IWlanConnectResult;
    invoke-virtual/range {v37 .. v37}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/epdg/EpdgService;->sendIpsecConnFailIntent(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)V

    .line 2548
    .end local v37    # "result":Lcom/sec/epdg/IWlanConnectResult;
    :cond_8
    const/16 v2, 0xb

    move/from16 v0, v31

    if-ne v0, v2, :cond_0

    .line 2549
    const-string v2, "[EPDGService]"

    const-string v4, "IPsec Error/failure,  stop TEPDGLTE and 1x timer and allow mobile attach"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 2552
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    goto/16 :goto_0

    .line 2557
    .end local v29    # "msgToHandoverSM":Landroid/os/Message;
    :sswitch_3
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3800()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v29

    .line 2559
    .restart local v29    # "msgToHandoverSM":Landroid/os/Message;
    const/16 v2, 0x8

    move-object/from16 v0, v29

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V
    invoke-static {v2, v0, v1}, Lcom/sec/epdg/EpdgService;->access$4400(Lcom/sec/epdg/EpdgService;Landroid/os/Message;Landroid/os/Message;)V

    .line 2561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move/from16 v0, v21

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToTestApp(II)V
    invoke-static {v2, v0, v4}, Lcom/sec/epdg/EpdgService;->access$4500(Lcom/sec/epdg/EpdgService;II)V

    goto/16 :goto_0

    .line 2564
    .end local v29    # "msgToHandoverSM":Landroid/os/Message;
    :sswitch_4
    const-string v2, "[EPDGService]"

    const-string v4, "IWLAN_EVENT_CONNECT_INIT received. Ignore it."

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2567
    :sswitch_5
    const/4 v2, 0x1

    # getter for: Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4700()Z

    move-result v4

    if-ne v2, v4, :cond_9

    .line 2568
    const/4 v2, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$4702(Z)Z

    .line 2570
    const/4 v2, 0x1

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$500()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v4

    if-ne v2, v4, :cond_a

    .line 2572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->movePdnFromWifi()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$4800(Lcom/sec/epdg/EpdgService;)V

    .line 2578
    :cond_9
    :goto_1
    const/4 v2, 0x1

    # getter for: Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$5000()Z

    move-result v4

    if-ne v2, v4, :cond_0

    .line 2579
    const/4 v2, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5002(Z)Z

    .line 2581
    const/4 v2, 0x2

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$500()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v4

    if-ne v2, v4, :cond_b

    .line 2583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$1200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2574
    :cond_a
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trigger W2L is not applicable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/epdg/EpdgService;->mActiveRat:I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4900()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2586
    :cond_b
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trigger L2W is not applicable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/epdg/EpdgService;->mActiveRat:I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4900()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2593
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 2594
    .local v19, "asyncRes":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    .line 2595
    .local v22, "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;
    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;->getCid()I

    move-result v21

    .line 2596
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnect request is received for cid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    if-lez v21, :cond_c

    .line 2598
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3800()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v30

    .line 2600
    .local v30, "msgtoHandoverSM":Landroid/os/Message;
    const/16 v2, 0xf

    move-object/from16 v0, v30

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2601
    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 2602
    invoke-virtual/range {v30 .. v30}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2604
    .end local v30    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_c
    const-string v2, "[RIL->EPDGService]"

    const-string v4, "Event received for invalid cid neglect it"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2610
    .end local v19    # "asyncRes":Landroid/os/AsyncResult;
    .end local v22    # "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 2611
    .restart local v19    # "asyncRes":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    .line 2612
    .restart local v22    # "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;
    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;->getCid()I

    move-result v21

    .line 2613
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnect request is received for cid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2614
    if-lez v21, :cond_d

    .line 2615
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3800()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v30

    .line 2617
    .restart local v30    # "msgtoHandoverSM":Landroid/os/Message;
    const/4 v2, 0x3

    move-object/from16 v0, v30

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2618
    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 2619
    invoke-virtual/range {v30 .. v30}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2621
    .end local v30    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_d
    const-string v2, "[RIL->EPDGService]"

    const-string v4, "Event received for invalid cid neglect it"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2627
    .end local v19    # "asyncRes":Landroid/os/AsyncResult;
    .end local v22    # "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    .line 2628
    .local v33, "obj":Ljava/lang/Object;
    if-eqz v33, :cond_e

    move-object/from16 v0, v33

    instance-of v2, v0, Landroid/os/AsyncResult;

    if-eqz v2, :cond_e

    move-object/from16 v19, v33

    .line 2629
    check-cast v19, Landroid/os/AsyncResult;

    .line 2630
    .restart local v19    # "asyncRes":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    .line 2632
    .local v22, "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->getCid()I

    move-result v21

    .line 2634
    .end local v19    # "asyncRes":Landroid/os/AsyncResult;
    .end local v22    # "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    :cond_e
    if-lez v21, :cond_f

    .line 2635
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3800()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v30

    .line 2637
    .restart local v30    # "msgtoHandoverSM":Landroid/os/Message;
    const/4 v2, 0x2

    move-object/from16 v0, v30

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2638
    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 2639
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v30

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2640
    invoke-virtual/range {v30 .. v30}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2642
    .end local v30    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_f
    const-string v2, "[RIL->EPDGService]"

    const-string v4, "Event received for invalid cid neglect it"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2648
    .end local v33    # "obj":Ljava/lang/Object;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 2649
    .restart local v19    # "asyncRes":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;

    .line 2651
    .local v22, "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;
    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;->getCid()I

    move-result v21

    .line 2652
    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;->getRat()I

    move-result v35

    .line 2653
    .local v35, "rat":I
    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;->isWifiOrMobile()Z

    move-result v43

    .line 2654
    .local v43, "wifiOrMobile":Z
    if-lez v21, :cond_12

    .line 2655
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3800()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v30

    .line 2657
    .restart local v30    # "msgtoHandoverSM":Landroid/os/Message;
    const/4 v2, 0x4

    move-object/from16 v0, v30

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2658
    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 2659
    const/16 v2, 0xff

    move/from16 v0, v35

    if-ne v0, v2, :cond_10

    const/16 v2, 0xff

    :goto_2
    move-object/from16 v0, v30

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 2663
    invoke-virtual/range {v30 .. v30}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2659
    :cond_10
    if-eqz v43, :cond_11

    const/16 v2, 0x30

    goto :goto_2

    :cond_11
    const/16 v2, 0x21

    goto :goto_2

    .line 2665
    .end local v30    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_12
    const-string v2, "[RIL->EPDGService]"

    const-string v4, "Event received for invalid cid neglect it"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2671
    .end local v19    # "asyncRes":Landroid/os/AsyncResult;
    .end local v22    # "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;
    .end local v35    # "rat":I
    .end local v43    # "wifiOrMobile":Z
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v34, v0

    .line 2672
    .local v34, "pdnType":I
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3800()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v34, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v31

    .line 2675
    const/4 v2, -0x1

    move/from16 v0, v31

    if-eq v0, v2, :cond_13

    .line 2677
    :try_start_0
    const-string v2, "[HANDOFF]"

    const-string v4, "Fallback W2L handover"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move/from16 v0, v31

    # invokes: Lcom/sec/epdg/EpdgService;->startHandOverWifiToLte(I)I
    invoke-static {v2, v0}, Lcom/sec/epdg/EpdgService;->access$5100(Lcom/sec/epdg/EpdgService;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2679
    :catch_0
    move-exception v25

    .line 2680
    .local v25, "e":Landroid/os/RemoteException;
    const-string v2, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "W2L handover failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2683
    .end local v25    # "e":Landroid/os/RemoteException;
    :cond_13
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid network type for W2L handover, networkType is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2690
    .end local v34    # "pdnType":I
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    .end local v17    # "apnType":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 2691
    .restart local v17    # "apnType":Ljava/lang/String;
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RETRY_L2W_IF_REQUIRED event received for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, v17

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/sec/epdg/EpdgService;->access$1200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2697
    :sswitch_c
    const-string v2, "[EPDGService]"

    const-string v4, "DATA_RETRY_TIMER_EXPIRED event received."

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/util/Pair;

    .line 2700
    .local v18, "args":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    # invokes: Lcom/sec/epdg/EpdgService;->handleRetryTimerExpired(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v2, v4}, Lcom/sec/epdg/EpdgService;->access$5200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2703
    .end local v18    # "args":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$2100(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v2

    if-nez v2, :cond_17

    .line 2705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$DnsRetryReason;->DNS_RETRY_TIMER_EXPIRY:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    # invokes: Lcom/sec/epdg/EpdgService;->performDnsAndGetResult(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$2600(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 2706
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v2

    if-eqz v2, :cond_14

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$900()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v2, v4, :cond_15

    .line 2708
    :cond_14
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDns;->getInstance()Lcom/sec/epdg/EpdgPeriodicDns;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgPeriodicDns;->startTimerForPeriodicDns()V

    goto/16 :goto_0

    .line 2710
    :cond_15
    const-string v2, "[EPDGService]"

    const-string v4, "No need to start DNS retry timer"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2711
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDns;->getInstance()Lcom/sec/epdg/EpdgPeriodicDns;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgPeriodicDns;->resetTimerForPeriodicDns()V

    goto/16 :goto_0

    .line 2714
    :cond_16
    const-string v2, "[EPDGService]"

    const-string v4, "No need to restart DNS retry timer"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2715
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDns;->getInstance()Lcom/sec/epdg/EpdgPeriodicDns;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgPeriodicDns;->resetTimerForPeriodicDns()V

    goto/16 :goto_0

    .line 2718
    :cond_17
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDns;->getInstance()Lcom/sec/epdg/EpdgPeriodicDns;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgPeriodicDns;->resetTimerForPeriodicDns()V

    goto/16 :goto_0

    .line 2723
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$2100(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1a

    .line 2724
    const-string v2, "[EPDGService]"

    const-string v4, "Posting Epdg NOT Available as DNS fails"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2725
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1800()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/sec/epdg/EpdgService;->access$1700(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2726
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 2727
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->RESET_ALL:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 2731
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v2

    if-eqz v2, :cond_18

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$900()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v2, v4, :cond_19

    .line 2733
    :cond_18
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Airplane mode or no voice RAT or call active, start DNS retry timer voice rat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " call status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$900()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDns;->getInstance()Lcom/sec/epdg/EpdgPeriodicDns;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgPeriodicDns;->startTimerForPeriodicDns()V

    goto/16 :goto_0

    .line 2738
    :cond_19
    const-string v2, "[EPDGService]"

    const-string v4, "No need to start DNS retry timer"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2741
    :cond_1a
    const-string v2, "[EPDGService]"

    const-string v4, "Wifi is disconnected. EPDG is already UNAVAILABLE"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2746
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    .line 2747
    .local v16, "apnName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$2100(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1b

    .line 2748
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Posting Epdg NOT Available to Framework and RIL. Triggered by failure of:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " APN ipsec connection over ePDG."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2751
    const/4 v2, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$100(Z)V

    goto/16 :goto_0

    .line 2754
    :cond_1b
    const-string v2, "[EPDGService]"

    const-string v4, "Wifi is disconnected. EPDG is already UNAVAILABLE"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2759
    .end local v16    # "apnName":Ljava/lang/String;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;

    .line 2760
    .local v23, "data":Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;
    invoke-virtual/range {v23 .. v23}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->getCid()I

    move-result v3

    .line 2761
    .local v3, "apnConnCid":I
    invoke-virtual/range {v23 .. v23}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->getApnType()Ljava/lang/String;

    move-result-object v17

    .line 2762
    const/4 v8, 0x0

    .line 2763
    .local v8, "isPermanentFail":Z
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update apn connection status for cid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2764
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update apn connection status for apnType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    # invokes: Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$000()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 2767
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPermanentFail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5300(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgRilInterface;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->isConnSuccess()Z

    move-result v4

    invoke-virtual/range {v23 .. v23}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->getLinkProp()Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->isHandover()Z

    move-result v6

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->isAttachApn(I)Z

    move-result v7

    invoke-interface/range {v2 .. v8}, Lcom/sec/epdg/EpdgRilInterface;->updateApnConnStatus(IZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;ZZZ)V

    goto/16 :goto_0

    .line 2774
    .end local v3    # "apnConnCid":I
    .end local v8    # "isPermanentFail":Z
    .end local v23    # "data":Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/lang/Boolean;

    .line 2775
    .local v27, "handoverToWifi":Ljava/lang/Boolean;
    invoke-static/range {v21 .. v21}, Lcom/sec/epdg/EpdgUtils;->shouldEpdgSupressW2LToRil(I)Z

    move-result v41

    .line 2777
    .local v41, "supressW2L":Z
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trigger HO. Cid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handovertoWifi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "supressW2L: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2779
    if-eqz v41, :cond_1c

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 2781
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3800()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v30

    .line 2783
    .restart local v30    # "msgtoHandoverSM":Landroid/os/Message;
    const/4 v2, 0x3

    move-object/from16 v0, v30

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2784
    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 2785
    invoke-virtual/range {v30 .. v30}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2787
    .end local v30    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5400(Lcom/sec/epdg/EpdgService;)Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 2788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5400(Lcom/sec/epdg/EpdgService;)Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isRegisteringToMobile()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 2789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5300(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgRilInterface;

    move-result-object v2

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move/from16 v0, v21

    invoke-interface {v2, v0, v4}, Lcom/sec/epdg/EpdgRilInterface;->triggerHandover(IZ)V

    goto/16 :goto_0

    .line 2791
    :cond_1d
    const-string v2, "[EPDGService]"

    const-string v4, "Delay Trigger HO - IMS registering"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2792
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1800()Landroid/os/Handler;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2795
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5300(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgRilInterface;

    move-result-object v2

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move/from16 v0, v21

    invoke-interface {v2, v0, v4}, Lcom/sec/epdg/EpdgRilInterface;->triggerHandover(IZ)V

    goto/16 :goto_0

    .line 2801
    .end local v27    # "handoverToWifi":Ljava/lang/Boolean;
    .end local v41    # "supressW2L":Z
    :sswitch_12
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1f

    const/16 v37, 0x1

    .line 2802
    .local v37, "result":Z
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    .end local v17    # "apnType":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 2803
    .restart local v17    # "apnType":Ljava/lang/String;
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notifying registrants, result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_20

    .line 2805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move/from16 v0, v37

    move-object/from16 v1, v17

    # invokes: Lcom/sec/epdg/EpdgService;->notifyL2WHandoverResult(ZLjava/lang/String;)V
    invoke-static {v2, v0, v1}, Lcom/sec/epdg/EpdgService;->access$5500(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 2801
    .end local v37    # "result":Z
    :cond_1f
    const/16 v37, 0x0

    goto :goto_3

    .line 2806
    .restart local v37    # "result":Z
    :cond_20
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 2807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move/from16 v0, v37

    move-object/from16 v1, v17

    # invokes: Lcom/sec/epdg/EpdgService;->notifyW2LHandoverResult(ZLjava/lang/String;)V
    invoke-static {v2, v0, v1}, Lcom/sec/epdg/EpdgService;->access$5600(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 2812
    .end local v37    # "result":Z
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->handleEpdgSettingsReadEvent()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5700(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    .line 2817
    :sswitch_14
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3800()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v36

    .line 2819
    .local v36, "reportDnsStatus":Landroid/os/Message;
    const/16 v2, 0xc

    move-object/from16 v0, v36

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2821
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isAnyPdnConnectedOverWifi()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2822
    const-string v2, "[EPDGService]"

    const-string v4, "No DNS packets need to be sent to EPDG. DNS already resolved!"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    const/4 v2, 0x1

    move-object/from16 v0, v36

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2824
    invoke-virtual/range {v36 .. v36}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2827
    :cond_21
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgService$DnsRetryReason;->DATA_RETRY_8MIN_ONWARD_TIMER_EXPIRED:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v37

    .line 2830
    .restart local v37    # "result":Z
    const/4 v2, 0x1

    move/from16 v0, v37

    if-ne v2, v0, :cond_22

    .line 2831
    const-string v2, "[EPDGService]"

    const-string v4, "DNS Resolution was succesful."

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->startWifiProfiling()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$3000(Lcom/sec/epdg/EpdgService;)V

    .line 2833
    const/4 v2, 0x1

    move-object/from16 v0, v36

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2834
    invoke-virtual/range {v36 .. v36}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2837
    :cond_22
    const-string v2, "[EPDGService]"

    const-string v4, "DNS resolution failed."

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2838
    const/4 v2, 0x0

    move-object/from16 v0, v36

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2839
    invoke-virtual/range {v36 .. v36}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2844
    .end local v36    # "reportDnsStatus":Landroid/os/Message;
    .end local v37    # "result":Z
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->handleMapconChange()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5800(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    .line 2847
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onSystemSelectTimerFinish()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$200(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    .line 2851
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5900(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2855
    :sswitch_18
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isCallInProgress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$2900(Lcom/sec/epdg/EpdgService;Z)V

    .line 2859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isHandoverRequiredOnCdmaIndication()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6000(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5900(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2866
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6100(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    .line 2867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$1200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2871
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6100(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    .line 2872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5900(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2876
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$1200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    .line 2877
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v4

    # invokes: Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$2900(Lcom/sec/epdg/EpdgService;Z)V

    goto/16 :goto_0

    .line 2881
    :sswitch_1c
    const-string v2, "[EPDGService]"

    const-string v4, "Wifi ip config timer finished, call DNS"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2882
    # invokes: Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$6200()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v2

    # invokes: Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6300(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6400(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    .line 2887
    :sswitch_1d
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto/16 :goto_0

    .line 2892
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$2100(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2893
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->pollAndGetWifiRssi()V

    .line 2894
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto/16 :goto_0

    .line 2899
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 2900
    .local v20, "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received CALL_STATUS_CHANGE event, call status is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2902
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2903
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_27

    .line 2904
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2905
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 2906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$2100(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_23

    .line 2907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onWifiConnected()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6500(Lcom/sec/epdg/EpdgService;)V

    .line 2910
    :cond_23
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v4

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    .line 2962
    :cond_24
    :goto_4
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_25

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_25

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_33

    .line 2965
    :cond_25
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startLteProfiling()V

    .line 2966
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopCdmaProfiling()V

    .line 2967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->stopPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2968
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$900()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getNonE911CallCount()I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setPreviousNonE911CallCount(I)V

    .line 2970
    :cond_26
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/epdg/EpdgService;->startWifiRssiIntentDelayTimerIfRequired(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6800(Ljava/lang/String;)V

    .line 2971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$1200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2912
    :cond_27
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_28

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_2a

    .line 2914
    :cond_28
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2915
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v4

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    goto/16 :goto_4

    .line 2918
    :cond_29
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v4

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    goto/16 :goto_4

    .line 2921
    :cond_2a
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_24

    .line 2922
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v4

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v5

    const/16 v6, -0x64

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v2

    if-nez v2, :cond_2d

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v2

    :goto_5
    invoke-virtual {v4, v5, v6, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setWifiThreshold(III)V

    .line 2925
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$900()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getE911CallCount()I

    move-result v26

    .line 2926
    .local v26, "e911CallCount":I
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$900()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getNonE911CallCount()I

    move-result v32

    .line 2927
    .local v32, "nonE911CallCount":I
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "e911CallCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nonE911CallCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2929
    const/4 v2, 0x1

    move/from16 v0, v26

    if-lt v0, v2, :cond_2e

    .line 2930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getEmergencyApnType()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->stopPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2931
    invoke-static/range {v26 .. v26}, Lcom/sec/epdg/EpdgService;->setPreviousE911CallCount(I)V

    .line 2943
    :cond_2b
    :goto_6
    const/4 v2, 0x1

    move/from16 v0, v32

    if-lt v0, v2, :cond_30

    .line 2944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->stopPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2945
    invoke-static/range {v32 .. v32}, Lcom/sec/epdg/EpdgService;->setPreviousNonE911CallCount(I)V

    .line 2957
    :cond_2c
    :goto_7
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/epdg/EpdgService;->startWifiRssiIntentDelayTimerIfRequired(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6800(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2922
    .end local v26    # "e911CallCount":I
    .end local v32    # "nonE911CallCount":I
    :cond_2d
    const/16 v2, -0x64

    goto :goto_5

    .line 2933
    .restart local v26    # "e911CallCount":I
    .restart local v32    # "nonE911CallCount":I
    :cond_2e
    if-nez v26, :cond_2f

    .line 2934
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getPreviousE911CallCount()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_2b

    .line 2935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getEmergencyApnType()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->startPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6700(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2937
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setPreviousE911CallCount(I)V

    goto :goto_6

    .line 2941
    :cond_2f
    const-string v2, "[EPDGService]"

    const-string v4, "Invalid e911 call count"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2947
    :cond_30
    if-nez v32, :cond_31

    .line 2948
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getPreviousNonE911CallCount()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_2c

    .line 2949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->startPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6700(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2951
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setPreviousNonE911CallCount(I)V

    goto :goto_7

    .line 2955
    :cond_31
    const-string v2, "[EPDGService]"

    const-string v4, "Invalid non e911 call count"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 2959
    .end local v26    # "e911CallCount":I
    .end local v32    # "nonE911CallCount":I
    :cond_32
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_24

    .line 2960
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5900(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 2972
    :cond_33
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_3b

    .line 2973
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopL2WHandoverProfiling()V

    .line 2974
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$900()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getVoWifiSessionConnected()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2975
    const-string v2, "[EPDGService]"

    const-string v4, "IPME is connected skip stop LTE profiling"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2981
    :cond_34
    :goto_8
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2982
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startCdmaProfiling()V

    .line 2984
    :cond_35
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getPreviousE911CallCount()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_36

    .line 2985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getEmergencyApnType()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->startPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6700(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2986
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setPreviousE911CallCount(I)V

    .line 2989
    :cond_36
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getPreviousNonE911CallCount()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_37

    .line 2990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->startPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6700(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2991
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setPreviousNonE911CallCount(I)V

    .line 2994
    :cond_37
    # invokes: Lcom/sec/epdg/EpdgService;->stopWifiRssiIntentDelayTimerIfRequired()V
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$6900()V

    .line 2995
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2996
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getApnNamebyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2997
    .restart local v16    # "apnName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sec/epdg/throttle/ThrottleController;->resetThrottleState(Ljava/lang/String;)V

    .line 2998
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, v16

    # invokes: Lcom/sec/epdg/EpdgService;->getSMForApnName(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {v2, v0}, Lcom/sec/epdg/EpdgService;->access$7000(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v38

    .line 3000
    .local v38, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    if-eqz v38, :cond_38

    .line 3001
    invoke-virtual/range {v38 .. v38}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v24

    .line 3002
    .local v24, "dataRetryExpired":Landroid/os/Message;
    if-eqz v24, :cond_3a

    .line 3003
    const-string v2, "[EPDGService]"

    const-string/jumbo v4, "handleRetryTimerExpired: Sending DATA_RETRY_TIMER_EXPIRED to state machine"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3005
    const/16 v2, 0xd

    move-object/from16 v0, v24

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3006
    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    .line 3015
    .end local v16    # "apnName":Ljava/lang/String;
    .end local v24    # "dataRetryExpired":Landroid/os/Message;
    .end local v38    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_38
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5900(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2977
    :cond_39
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    if-nez v2, :cond_34

    .line 2978
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopLteProfiling()V

    goto/16 :goto_8

    .line 3008
    .restart local v16    # "apnName":Ljava/lang/String;
    .restart local v24    # "dataRetryExpired":Landroid/os/Message;
    .restart local v38    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_3a
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleRetryTimerExpired: Unable to obtain message for SM with apnName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 3017
    .end local v16    # "apnName":Ljava/lang/String;
    .end local v24    # "dataRetryExpired":Landroid/os/Message;
    .end local v38    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_3b
    const-string v2, "[EPDGService]"

    const-string v4, "Unhandled case"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3022
    .end local v20    # "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    :sswitch_20
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 3023
    .local v15, "IpmeStatus":Z
    if-nez v15, :cond_3d

    .line 3024
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$900()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getVoWifiSessionConnected()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 3025
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    if-nez v2, :cond_3c

    .line 3026
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopLteProfiling()V

    .line 3029
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5900(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3031
    :cond_3d
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startLteProfiling()V

    goto/16 :goto_0

    .line 3036
    .end local v15    # "IpmeStatus":Z
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3f

    const/4 v13, 0x1

    :goto_a
    const/4 v14, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z
    invoke-static/range {v9 .. v14}, Lcom/sec/epdg/EpdgService;->access$7100(Lcom/sec/epdg/EpdgService;ZZZZZ)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 3037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6100(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    .line 3039
    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/EpdgService;->MoveToBasedOnSettings(I)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7200(Lcom/sec/epdg/EpdgService;I)V

    goto/16 :goto_0

    .line 3036
    :cond_3f
    const/4 v13, 0x0

    goto :goto_a

    .line 3043
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_41

    const/4 v13, 0x1

    :goto_b
    const/4 v14, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z
    invoke-static/range {v9 .. v14}, Lcom/sec/epdg/EpdgService;->access$7100(Lcom/sec/epdg/EpdgService;ZZZZZ)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 3044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6100(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    .line 3046
    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/EpdgService;->onVolteProvisioningStateChanged(I)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7300(Lcom/sec/epdg/EpdgService;I)V

    goto/16 :goto_0

    .line 3043
    :cond_41
    const/4 v13, 0x0

    goto :goto_b

    .line 3050
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$2000(Lcom/sec/epdg/EpdgService;)I

    move-result v2

    const/4 v4, 0x5

    if-ge v2, v4, :cond_0

    .line 3051
    const/16 v2, 0x37

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgService$EpdgHandler;->removeMessages(I)V

    .line 3052
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1800()Landroid/os/Handler;

    move-result-object v2

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1800()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x37

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 3057
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$2100(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onWifiConnected()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6500(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    .line 3063
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v10, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_43

    const/4 v11, 0x1

    :goto_c
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z
    invoke-static/range {v9 .. v14}, Lcom/sec/epdg/EpdgService;->access$7100(Lcom/sec/epdg/EpdgService;ZZZZZ)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 3064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6100(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    .line 3066
    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/EpdgService;->onVoWifiProvisioningStateChanged(I)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7400(Lcom/sec/epdg/EpdgService;I)V

    goto/16 :goto_0

    .line 3063
    :cond_43
    const/4 v11, 0x0

    goto :goto_c

    .line 3071
    :sswitch_26
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$900()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-ne v2, v4, :cond_47

    .line 3072
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_45

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    if-nez v2, :cond_45

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 3075
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 3076
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 3078
    :cond_44
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 3080
    :cond_45
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v4, 0x12

    if-ne v2, v4, :cond_46

    .line 3082
    const-string v2, "[EPDGService]"

    const-string v4, "IMS_REG_STATUS_CHANGE case 1"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3083
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->sendWifiDelayRequest(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$3600(Lcom/sec/epdg/EpdgService;Z)V

    .line 3114
    :cond_46
    :goto_d
    # getter for: Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$7800()Lcom/sec/epdg/EpdgService$HoDelayStatus;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne v2, v4, :cond_0

    .line 3115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->REGISTRATION_FINISHED:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6100(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    goto/16 :goto_0

    .line 3085
    :cond_47
    # getter for: Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$7500()Z

    move-result v2

    if-eqz v2, :cond_4b

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$900()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->DEREG_SUCCEEDED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-ne v2, v4, :cond_4b

    .line 3088
    const-string v2, "[EPDGService]"

    const-string v4, "DE-registration finished. start WIFI disconnection"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->IsNeedDeregi()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$3100(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 3091
    const-string v2, "[EPDGService]"

    const-string/jumbo v4, "start EPDG disconnection "

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3092
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1800()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/sec/epdg/EpdgService;->access$1700(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3093
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 3095
    :cond_48
    # getter for: Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$7600()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 3096
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v21

    .line 3097
    if-lez v21, :cond_49

    .line 3098
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3800()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v21, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v30

    .line 3100
    .restart local v30    # "msgtoHandoverSM":Landroid/os/Message;
    const/4 v2, 0x3

    move-object/from16 v0, v30

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3101
    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 3102
    invoke-virtual/range {v30 .. v30}, Landroid/os/Message;->sendToTarget()V

    .line 3103
    const-string v2, "[EPDGService]"

    const-string/jumbo v4, "disconnect ims pdn after de-registered "

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3105
    .end local v30    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_49
    const/4 v2, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$7602(Z)Z

    .line 3107
    :cond_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->sendWifiDelayRequest(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$3600(Lcom/sec/epdg/EpdgService;Z)V

    goto/16 :goto_d

    .line 3108
    :cond_4b
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$900()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_BLOCKED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-ne v2, v4, :cond_46

    .line 3109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->BLACKLIST_COUNTRY:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    # invokes: Lcom/sec/epdg/EpdgService;->setEpdgTemporaryBlocked(Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7700(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V

    .line 3110
    const-string v2, "[EPDGService]"

    const-string/jumbo v4, "start EPDG disconnection "

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1800()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/sec/epdg/EpdgService;->access$1700(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3112
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    goto/16 :goto_d

    .line 3120
    :sswitch_27
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received VOPS_STATUS_CHANGED as: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/EpdgService;->onVopsStatusChanged(I)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7900(Lcom/sec/epdg/EpdgService;I)V

    goto/16 :goto_0

    .line 3125
    :sswitch_28
    const-string v2, "[EPDGService]"

    const-string v4, "Received DNS ping result"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3129
    :sswitch_29
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    .end local v17    # "apnType":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 3130
    .restart local v17    # "apnType":Ljava/lang/String;
    if-eqz v17, :cond_4c

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 3131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->getHasPendingCdmaIndication()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$8000(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3132
    const-string v2, "[EPDGService]"

    const-string v4, "Send cdma availability to IMS"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v4

    # invokes: Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$2900(Lcom/sec/epdg/EpdgService;Z)V

    .line 3135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->setHasPendingCdmaIndication(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$8100(Lcom/sec/epdg/EpdgService;Z)V

    goto/16 :goto_0

    .line 3138
    :cond_4c
    const-string v2, "[EPDGService]"

    const-string v4, "Invalid APNType"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3143
    :sswitch_2a
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_4d

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v17, v2

    .line 3144
    :goto_e
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3145
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4e

    const/4 v2, 0x1

    :goto_f
    # invokes: Lcom/sec/epdg/EpdgService;->sendEpdgDeregisterBroadcastIfRequired(Z)Z
    invoke-static {v4, v2}, Lcom/sec/epdg/EpdgService;->access$2800(Lcom/sec/epdg/EpdgService;Z)Z

    goto/16 :goto_0

    .line 3143
    :cond_4d
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v17

    goto :goto_e

    .line 3145
    :cond_4e
    const/4 v2, 0x0

    goto :goto_f

    .line 3153
    :sswitch_2b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_50

    const/16 v37, 0x1

    .line 3154
    .restart local v37    # "result":Z
    :goto_10
    if-eqz v37, :cond_51

    .line 3158
    # invokes: Lcom/sec/epdg/EpdgService;->getIsImsCallConnected()Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$8200()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 3159
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    .line 3161
    :cond_4f
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/epdg/EpdgService;->startWifiRssiIntentDelayTimerIfRequired(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6800(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3153
    .end local v37    # "result":Z
    :cond_50
    const/16 v37, 0x0

    goto :goto_10

    .line 3166
    .restart local v37    # "result":Z
    :cond_51
    # invokes: Lcom/sec/epdg/EpdgService;->getIsWifiRssiInPollingZone()Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$8300()Z

    move-result v2

    if-nez v2, :cond_52

    const/4 v2, 0x1

    :goto_11
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    .line 3167
    # invokes: Lcom/sec/epdg/EpdgService;->stopWifiRssiIntentDelayTimerIfRequired()V
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$6900()V

    goto/16 :goto_0

    .line 3166
    :cond_52
    const/4 v2, 0x0

    goto :goto_11

    .line 3172
    .end local v37    # "result":Z
    :sswitch_2c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 3173
    .restart local v19    # "asyncRes":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;

    .line 3175
    .local v39, "ssacInfo":Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;
    invoke-virtual/range {v39 .. v39}, Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;->getVoiceFactor()I

    move-result v42

    .line 3176
    .local v42, "voiceFactor":I
    const/16 v2, 0x64

    move/from16 v0, v42

    if-ne v0, v2, :cond_53

    .line 3177
    const-string v2, "[EPDGService]"

    const-string v4, "Voice factor is 100. Ignore it"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3178
    :cond_53
    if-nez v42, :cond_55

    .line 3179
    const-string v2, "[EPDGService]"

    const-string v4, "Voice call is barred 100% using SSAC"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3180
    # invokes: Lcom/sec/epdg/EpdgService;->getIsSsacVoiceEnabled()Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$8400()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3181
    const/4 v2, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->setIsSsacVoiceEnabled(Z)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$8500(Z)V

    .line 3182
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z
    invoke-static/range {v9 .. v14}, Lcom/sec/epdg/EpdgService;->access$7100(Lcom/sec/epdg/EpdgService;ZZZZZ)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 3183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$6100(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    .line 3185
    :cond_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->MoveToBasedOnVopsOrSsac(I)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$8600(Lcom/sec/epdg/EpdgService;I)V

    goto/16 :goto_0

    .line 3188
    :cond_55
    # invokes: Lcom/sec/epdg/EpdgService;->getIsSsacVoiceEnabled()Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$8400()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3189
    const/4 v2, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->setIsSsacVoiceEnabled(Z)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$8500(Z)V

    .line 3190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->MoveToBasedOnVopsOrSsac(I)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$8600(Lcom/sec/epdg/EpdgService;I)V

    goto/16 :goto_0

    .line 3196
    .end local v19    # "asyncRes":Landroid/os/AsyncResult;
    .end local v39    # "ssacInfo":Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;
    .end local v42    # "voiceFactor":I
    :sswitch_2d
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_56

    const/16 v40, 0x1

    .line 3197
    .local v40, "status":Z
    :goto_12
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received EPDG_WFCPROFILE_READ as: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move/from16 v0, v40

    # invokes: Lcom/sec/epdg/EpdgService;->changeApBlocking(Z)V
    invoke-static {v2, v0}, Lcom/sec/epdg/EpdgService;->access$8700(Lcom/sec/epdg/EpdgService;Z)V

    goto/16 :goto_0

    .line 3196
    .end local v40    # "status":Z
    :cond_56
    const/16 v40, 0x0

    goto :goto_12

    .line 3202
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->initAfterimsReady()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$8800(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    .line 3206
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->updateNetRegist()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$8900(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    .line 3210
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    # invokes: Lcom/sec/epdg/EpdgService;->handleDefaultSubChange(Landroid/content/Intent;)V
    invoke-static {v4, v2}, Lcom/sec/epdg/EpdgService;->access$9000(Lcom/sec/epdg/EpdgService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2466
    :sswitch_data_0
    .sparse-switch
        0x1c -> :sswitch_15
        0x1d -> :sswitch_13
        0x1e -> :sswitch_12
        0x1f -> :sswitch_b
        0x21 -> :sswitch_c
        0x22 -> :sswitch_11
        0x23 -> :sswitch_a
        0x25 -> :sswitch_f
        0x26 -> :sswitch_10
        0x29 -> :sswitch_7
        0x2a -> :sswitch_9
        0x2b -> :sswitch_8
        0x2c -> :sswitch_6
        0x2d -> :sswitch_0
        0x2e -> :sswitch_1
        0x2f -> :sswitch_1
        0x30 -> :sswitch_2
        0x31 -> :sswitch_3
        0x32 -> :sswitch_2
        0x33 -> :sswitch_4
        0x34 -> :sswitch_14
        0x35 -> :sswitch_5
        0x36 -> :sswitch_23
        0x37 -> :sswitch_24
        0x38 -> :sswitch_16
        0x39 -> :sswitch_17
        0x3a -> :sswitch_19
        0x3b -> :sswitch_18
        0x3c -> :sswitch_1a
        0x3d -> :sswitch_1d
        0x3e -> :sswitch_1f
        0x3f -> :sswitch_21
        0x40 -> :sswitch_26
        0x41 -> :sswitch_1b
        0x42 -> :sswitch_22
        0x43 -> :sswitch_25
        0x45 -> :sswitch_27
        0x46 -> :sswitch_29
        0x47 -> :sswitch_2a
        0x48 -> :sswitch_1e
        0x49 -> :sswitch_2b
        0x4a -> :sswitch_2c
        0x4b -> :sswitch_2d
        0x4c -> :sswitch_2e
        0x4d -> :sswitch_1c
        0x4e -> :sswitch_20
        0x50 -> :sswitch_2f
        0x51 -> :sswitch_e
        0x52 -> :sswitch_d
        0x53 -> :sswitch_30
        0x50000 -> :sswitch_28
    .end sparse-switch
.end method
