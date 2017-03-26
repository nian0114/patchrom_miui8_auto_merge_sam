.class final Lcom/android/nfc/NfcService$NfcServiceHandler;
.super Landroid/os/Handler;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 4736
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V
    .locals 11
    .param p1, "tagEndpoint"    # Lcom/android/nfc/DeviceHost$TagEndpoint;
    .param p2, "readerParams"    # Lcom/android/nfc/NfcService$ReaderModeParams;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 5586
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mTestMode:Z
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$4500(Lcom/android/nfc/NfcService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5588
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v9}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 5589
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    .line 5590
    .local v8, "vibe":Landroid/os/Vibrator;
    const v1, 0xc370

    const/4 v2, -0x1

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Vibrator$MagnitudeTypes;->NotificationMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 5637
    .end local v8    # "vibe":Landroid/os/Vibrator;
    :cond_0
    :goto_0
    return-void

    .line 5595
    :cond_1
    new-instance v0, Landroid/nfc/Tag;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v1

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v2

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v4

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    invoke-direct/range {v0 .. v5}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    .line 5597
    .local v0, "tag":Landroid/nfc/Tag;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V

    .line 5598
    if-eqz p2, :cond_3

    .line 5600
    :try_start_0
    iget v1, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_2

    .line 5601
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 5603
    :cond_2
    iget-object v1, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    if-eqz v1, :cond_3

    .line 5604
    iget-object v1, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    invoke-interface {v1, v0}, Landroid/nfc/IAppCallback;->onTagDiscovered(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 5609
    :catch_0
    move-exception v7

    .line 5610
    .local v7, "e":Landroid/os/RemoteException;
    const-string v1, "NfcService"

    const-string v2, "Reader mode remote has died, falling back."

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5618
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    move-result v6

    .line 5619
    .local v6, "dispatchResult":I
    if-ne v6, v10, :cond_7

    .line 5620
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->unregisterObject(I)V

    .line 5621
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v10}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 5626
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mTestMode:Z
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$4500(Lcom/android/nfc/NfcService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5629
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->isCheckTagConnetion:Z
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$4300(Lcom/android/nfc/NfcService;)Z

    move-result v1

    if-ne v1, v9, :cond_5

    .line 5630
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->CheckTagConnection:Lcom/android/nfc/NfcService$CheckTagConnectionThread;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->cancel()V

    .line 5632
    :cond_5
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "NfcService"

    const-string v2, "CheckTagConnection.start()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5633
    :cond_6
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    new-instance v2, Lcom/android/nfc/NfcService$CheckTagConnectionThread;

    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    const v4, 0xea60

    invoke-direct {v2, v3, p1, v4}, Lcom/android/nfc/NfcService$CheckTagConnectionThread;-><init>(Lcom/android/nfc/NfcService;Lcom/android/nfc/DeviceHost$TagEndpoint;I)V

    iput-object v2, v1, Lcom/android/nfc/NfcService;->CheckTagConnection:Lcom/android/nfc/NfcService$CheckTagConnectionThread;

    .line 5634
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->CheckTagConnection:Lcom/android/nfc/NfcService$CheckTagConnectionThread;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$CheckTagConnectionThread;->start()V

    goto/16 :goto_0

    .line 5612
    .end local v6    # "dispatchResult":I
    :catch_1
    move-exception v7

    .line 5614
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "NfcService"

    const-string v2, "App exception, not dispatching."

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 5622
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "dispatchResult":I
    :cond_7
    if-ne v6, v9, :cond_4

    .line 5623
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v9}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto :goto_1
.end method

.method private llcpActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)Z
    .locals 4
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    const/4 v0, 0x1

    .line 5530
    const-string v1, "NfcService"

    const-string v2, "LLCP Activation message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5532
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v1

    if-nez v1, :cond_7

    .line 5533
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NfcService"

    const-string v2, "NativeP2pDevice.MODE_P2P_TARGET"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5534
    :cond_0
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->connect()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5536
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doCheckLlcp()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5538
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doActivateLlcp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5539
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NfcService"

    const-string v2, "Initiator Activate LLCP OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5540
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 5542
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5543
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5544
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getLlcpVersion()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated(B)V

    .line 5581
    :goto_0
    return v0

    .line 5543
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 5548
    :cond_2
    const-string v0, "NfcService"

    const-string v1, "Initiator LLCP activation failed. Disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5549
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    .line 5581
    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5552
    :cond_4
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "NfcService"

    const-string v1, "Remote Target does not support LLCP. Disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5553
    :cond_5
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_1

    .line 5556
    :cond_6
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "NfcService"

    const-string v1, "Cannot connect remote Target. Polling loop restarted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5562
    :cond_7
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 5563
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_8

    const-string v1, "NfcService"

    const-string v2, "NativeP2pDevice.MODE_P2P_INITIATOR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5565
    :cond_8
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doCheckLlcp()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5567
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doActivateLlcp()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5568
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "NfcService"

    const-string v2, "Target Activate LLCP OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5569
    :cond_9
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 5571
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5572
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5573
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getLlcpVersion()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated(B)V

    goto :goto_0

    .line 5572
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 5577
    :cond_a
    const-string v0, "NfcService"

    const-string v1, "checkLlcp failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private makeAidIntent([B[B)Landroid/content/Intent;
    .locals 4
    .param p1, "aid"    # [B
    .param p2, "param"    # [B

    .prologue
    .line 5504
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5507
    .local v0, "aidIntent":Landroid/content/Intent;
    const-string v2, "ISIS"

    # getter for: Lcom/android/nfc/NfcService;->mSecureEventType:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/NfcService;->access$4400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5508
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NfcService"

    const-string v3, "MAKE : com.gsma.services.nfc.action.TRANSACTION_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5509
    :cond_0
    const-string v2, "com.gsma.services.nfc.action.TRANSACTION_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5510
    const-string v2, "com.gsma.services.nfc.extra.AID"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5511
    const-string v2, "com.gsma.services.nfc.extra.DATA"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5513
    const-string v2, "nfc://secure:0/SIM"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5514
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5524
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 5518
    :cond_1
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "NfcService"

    const-string v3, "MAKE : com.android.nfc_extras.action.AID_SELECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5519
    :cond_2
    const-string v2, "com.android.nfc_extras.action.AID_SELECTED"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5520
    const-string v2, "com.android.nfc_extras.extra.AID"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5521
    const-string v2, "com.android.nfc_extras.extra.DATA"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendGpacRuleBasedBroadcast(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5425
    const/4 v6, 0x0

    .line 5426
    .local v6, "packageArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 5427
    .local v1, "allowedResults":[Z
    const/4 v3, 0x0

    .line 5429
    .local v3, "gpacInfo":Lcom/android/nfc/NfcService$GpacPermissionInfo;
    iget-object v10, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v10, v10, Lcom/android/nfc/NfcService;->mGpacPermissions:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5430
    .local v2, "gpacEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/NfcService$GpacPermissionInfo;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5431
    .local v0, "action":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "gpacInfo":Lcom/android/nfc/NfcService$GpacPermissionInfo;
    check-cast v3, Lcom/android/nfc/NfcService$GpacPermissionInfo;

    .line 5432
    .restart local v3    # "gpacInfo":Lcom/android/nfc/NfcService$GpacPermissionInfo;
    iget-object v10, v3, Lcom/android/nfc/NfcService$GpacPermissionInfo;->actionList:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 5433
    const-string v10, "NfcService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "permission: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/android/nfc/NfcService$GpacPermissionInfo;->permName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5434
    const-string v10, "NfcService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Action  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5435
    iget-object v7, v3, Lcom/android/nfc/NfcService$GpacPermissionInfo;->packageList:Ljava/util/LinkedList;

    .line 5436
    .local v7, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v7, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "packageArray":[Ljava/lang/String;
    check-cast v6, [Ljava/lang/String;

    .line 5442
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "gpacEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/NfcService$GpacPermissionInfo;>;"
    .end local v7    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "packageArray":[Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_3

    .line 5443
    const-string v10, "NfcService"

    const-string v11, " package is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5482
    :cond_2
    return-void

    .line 5448
    :cond_3
    if-eqz v3, :cond_5

    iget-boolean v10, v3, Lcom/android/nfc/NfcService$GpacPermissionInfo;->forceUpdate:Z

    if-eqz v10, :cond_5

    .line 5449
    iget-object v10, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v10, v10, Lcom/android/nfc/NfcService;->mHciEventControl:Lcom/android/nfc/HciEventControl;

    iget-object v11, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v11, v11, Lcom/android/nfc/NfcService;->mHciEventControl:Lcom/android/nfc/HciEventControl;

    sget-object v11, Lcom/android/nfc/HciEventControl;->READER_SIM_S:Ljava/lang/String;

    invoke-virtual {v10, v11, p1, v6}, Lcom/android/nfc/HciEventControl;->isEvtAllowed(Ljava/lang/String;Landroid/content/Intent;[Ljava/lang/String;)[Z

    move-result-object v10

    iput-object v10, v3, Lcom/android/nfc/NfcService$GpacPermissionInfo;->allowedResult:[Z

    .line 5452
    iget v10, v3, Lcom/android/nfc/NfcService$GpacPermissionInfo;->updateRule:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 5453
    const/4 v10, 0x0

    iput-boolean v10, v3, Lcom/android/nfc/NfcService$GpacPermissionInfo;->forceUpdate:Z

    .line 5456
    new-instance v8, Lcom/android/nfc/NfcService$NfcServiceHandler$2;

    invoke-direct {v8, p0}, Lcom/android/nfc/NfcService$NfcServiceHandler$2;-><init>(Lcom/android/nfc/NfcService$NfcServiceHandler;)V

    .line 5470
    .local v8, "task":Ljava/util/TimerTask;
    sget-boolean v10, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v10, :cond_4

    const-string v10, "NfcService"

    const-string v11, "timer is stared"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5471
    :cond_4
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .line 5472
    .local v9, "timer":Ljava/util/Timer;
    const-wide/16 v10, 0x1388

    invoke-virtual {v9, v8, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 5476
    .end local v8    # "task":Ljava/util/TimerTask;
    .end local v9    # "timer":Ljava/util/Timer;
    :cond_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v10, v3, Lcom/android/nfc/NfcService$GpacPermissionInfo;->allowedResult:[Z

    array-length v10, v10

    if-ge v4, v10, :cond_2

    .line 5477
    iget-object v10, v3, Lcom/android/nfc/NfcService$GpacPermissionInfo;->allowedResult:[Z

    aget-boolean v10, v10, v4

    if-eqz v10, :cond_6

    .line 5478
    aget-object v10, v6, v4

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5479
    iget-object v10, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v10, v10, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5476
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5384
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5385
    .local v1, "matchingPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5389
    .local v4, "preferredPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 5390
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    .line 5391
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$3500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfceeAccessControl;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Lcom/android/nfc/NfceeAccessControl;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5392
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5393
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/nfc/cardemulation/CardEmulationManager;->packageHasPreferredService(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5395
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5400
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 5404
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5405
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5406
    const-string v5, "ISIS"

    # getter for: Lcom/android/nfc/NfcService;->mSecureEventType:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/NfcService;->access$4400()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5407
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.NFC"

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 5409
    :cond_2
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 5412
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5413
    .restart local v2    # "packageName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5414
    const-string v5, "ISIS"

    # getter for: Lcom/android/nfc/NfcService;->mSecureEventType:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/NfcService;->access$4400()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5415
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.NFC"

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2

    .line 5417
    :cond_4
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 5421
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 55
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4739
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v50, v0

    sparse-switch v50, :sswitch_data_0

    .line 5373
    const-string v50, "NfcService"

    const-string v51, "Unknown message received"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5376
    :cond_0
    :goto_0
    return-void

    .line 4741
    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v41, v0

    .line 4742
    .local v41, "route":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v38, v0

    .line 4743
    .local v38, "power":I
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 4744
    .local v7, "aid":Ljava/lang/String;
    const-string v50, "NfcService"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "MSG_ROUTE_AID route - "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, " power "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4750
    const-string v50, "NXP_PN548C2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v51, v0

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static/range {v51 .. v51}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_1

    const-string v50, "NXP_PN547C2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v51, v0

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static/range {v51 .. v51}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_1

    const-string v50, "NXP_PN551"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v51, v0

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static/range {v51 .. v51}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/nfc/NfcFeatureUtil;->getNfcChipName()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_4

    .line 4753
    :cond_1
    const-string v50, "*"

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_3

    .line 4754
    const/16 v50, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v51

    add-int/lit8 v51, v51, -0x1

    move/from16 v0, v50

    move/from16 v1, v51

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 4755
    .local v13, "cuttedAid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v50

    invoke-static {v13}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v51

    const/16 v52, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move/from16 v2, v41

    move/from16 v3, v38

    move/from16 v4, v52

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/nfc/DeviceHost;->routeAid([BIIZ)Z

    move-result v44

    .line 4762
    .end local v13    # "cuttedAid":Ljava/lang/String;
    .local v44, "success":Z
    :goto_1
    if-nez v44, :cond_0

    .line 4763
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_2

    const-string v50, "NfcService"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v51

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, " is not inserted, So we have to remove it"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4764
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onAidAddFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4757
    .end local v44    # "success":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v50

    invoke-static {v7}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move/from16 v2, v41

    move/from16 v3, v38

    move/from16 v4, v52

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/nfc/DeviceHost;->routeAid([BIIZ)Z

    move-result v44

    .restart local v44    # "success":Z
    goto :goto_1

    .line 4760
    .end local v44    # "success":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v50

    invoke-static {v7}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move/from16 v2, v41

    move/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lcom/android/nfc/DeviceHost;->routeAid([BII)Z

    move-result v44

    .restart local v44    # "success":Z
    goto :goto_1

    .line 4770
    .end local v7    # "aid":Ljava/lang/String;
    .end local v38    # "power":I
    .end local v41    # "route":I
    .end local v44    # "success":Z
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 4771
    .restart local v7    # "aid":Ljava/lang/String;
    const-string v50, "NfcService"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "MSG_UNROUTE_AID "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v50

    invoke-static {v7}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v51

    invoke-interface/range {v50 .. v51}, Lcom/android/nfc/DeviceHost;->unrouteAid([B)Z

    goto/16 :goto_0

    .line 4777
    .end local v7    # "aid":Ljava/lang/String;
    :sswitch_2
    const-string v50, "NfcService"

    const-string v51, "MSG_ROUTE_ENTRY"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4778
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/util/Pair;

    .line 4780
    .local v42, "routeInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v48, v0

    .line 4781
    .local v48, "type":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v49, v0

    .line 4782
    .local v49, "value":I
    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Ljava/lang/Integer;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v41

    .line 4783
    .restart local v41    # "route":I
    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Ljava/lang/Integer;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .line 4785
    .restart local v38    # "power":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v48

    move/from16 v2, v49

    move/from16 v3, v41

    move/from16 v4, v38

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/nfc/DeviceHost;->setRoutingEntry(IIII)Z

    goto/16 :goto_0

    .line 4790
    .end local v38    # "power":I
    .end local v41    # "route":I
    .end local v42    # "routeInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v48    # "type":I
    .end local v49    # "value":I
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Ljava/lang/Integer;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v48

    .line 4791
    .restart local v48    # "type":I
    const-string v50, "NfcService"

    const-string v51, "MSG_UNROUTE_ENTRY"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v48

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->clearRoutingEntry(I)Z

    goto/16 :goto_0

    .line 4797
    .end local v48    # "type":I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v51, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Landroid/nfc/BeamShareData;

    move-object/from16 v0, v51

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager;->onManualBeamInvoke(Landroid/nfc/BeamShareData;)V

    goto/16 :goto_0

    .line 4816
    :sswitch_5
    const-string v50, "NfcService"

    const-string v51, "MSG_COMMIT_ROUTE"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v51, v0

    monitor-enter v51

    .line 4818
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    const/16 v52, 0x1

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->applyListenModeRouting(Z)V

    .line 4819
    monitor-exit v51

    goto/16 :goto_0

    :catchall_0
    move-exception v50

    monitor-exit v51
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v50

    .line 4824
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mNfcFeatureUtil:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/android/nfc/NfcFeatureUtil;->isBroadcomChip()Z

    move-result v50

    if-eqz v50, :cond_0

    .line 4827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mPermitReRouteAllAids:Z

    move/from16 v50, v0

    if-eqz v50, :cond_0

    .line 4828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/android/nfc/cardemulation/CardEmulationManager;->reRouteAllAids()V

    goto/16 :goto_0

    .line 4834
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v50

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v51, v0

    invoke-interface/range {v50 .. v51}, Lcom/android/nfc/DeviceHost;->onPpseRouted(I)Z

    goto/16 :goto_0

    .line 4838
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/nfc/NdefMessage;

    .line 4839
    .local v33, "ndefMsg":Landroid/nfc/NdefMessage;
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 4840
    .local v24, "extras":Landroid/os/Bundle;
    const-string v50, "ndefmsg"

    move-object/from16 v0, v24

    move-object/from16 v1, v50

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4841
    const-string v50, "ndefmaxlength"

    const/16 v51, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v50

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4842
    const-string v50, "ndefcardstate"

    const/16 v51, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v50

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4843
    const-string v50, "ndeftype"

    const/16 v51, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v50

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4844
    const/16 v50, 0x1

    move/from16 v0, v50

    new-array v0, v0, [B

    move-object/from16 v50, v0

    const/16 v51, 0x0

    const/16 v52, 0x0

    aput-byte v52, v50, v51

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [I

    move-object/from16 v51, v0

    const/16 v52, 0x0

    const/16 v53, 0x6

    aput v53, v51, v52

    const/16 v52, 0x1

    move/from16 v0, v52

    new-array v0, v0, [Landroid/os/Bundle;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    aput-object v24, v52, v53

    invoke-static/range {v50 .. v52}, Landroid/nfc/Tag;->createMockTag([B[I[Landroid/os/Bundle;)Landroid/nfc/Tag;

    move-result-object v45

    .line 4847
    .local v45, "tag":Landroid/nfc/Tag;
    const-string v50, "NfcService"

    const-string v51, "mock NDEF tag, starting corresponding activity"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4848
    const-string v50, "NfcService"

    invoke-virtual/range {v45 .. v45}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$2000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    move-result v18

    .line 4850
    .local v18, "dispatchStatus":I
    const/16 v50, 0x1

    move/from16 v0, v18

    move/from16 v1, v50

    if-ne v0, v1, :cond_5

    .line 4851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_0

    .line 4852
    :cond_5
    const/16 v50, 0x2

    move/from16 v0, v18

    move/from16 v1, v50

    if-ne v0, v1, :cond_0

    .line 4853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    const/16 v51, 0x2

    invoke-virtual/range {v50 .. v51}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_0

    .line 4859
    .end local v18    # "dispatchStatus":I
    .end local v24    # "extras":Landroid/os/Bundle;
    .end local v33    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v45    # "tag":Landroid/nfc/Tag;
    :sswitch_9
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_6

    const-string v50, "NfcService"

    const-string v51, "Tag detected, notifying applications"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4861
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    const-string v51, "NF04"

    const-string v52, "1"

    invoke-virtual/range {v50 .. v52}, Lcom/android/nfc/NfcService;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4862
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 4863
    .local v45, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    const/16 v40, 0x0

    .line 4864
    .local v40, "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    const/16 v39, 0x7d

    .line 4865
    .local v39, "presenceCheckDelay":I
    new-instance v11, Lcom/android/nfc/NfcService$NfcServiceHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler$1;-><init>(Lcom/android/nfc/NfcService$NfcServiceHandler;)V

    .line 4873
    .local v11, "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v51, v0

    monitor-enter v51

    .line 4874
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    move-object/from16 v40, v0

    .line 4875
    monitor-exit v51
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4876
    if-eqz v40, :cond_8

    .line 4877
    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/nfc/NfcService$ReaderModeParams;->presenceCheckDelay:I

    move/from16 v39, v0

    .line 4878
    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    move/from16 v50, v0

    move/from16 v0, v50

    and-int/lit16 v0, v0, 0x80

    move/from16 v50, v0

    if-eqz v50, :cond_8

    .line 4879
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_7

    const-string v50, "NfcService"

    const-string v51, "Skipping NDEF detection in reader mode"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4880
    :cond_7
    move-object/from16 v0, v45

    move/from16 v1, v39

    invoke-interface {v0, v1, v11}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 4881
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    goto/16 :goto_0

    .line 4875
    :catchall_1
    move-exception v50

    :try_start_2
    monitor-exit v51
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v50

    .line 4886
    :cond_8
    if-eqz v40, :cond_9

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    move/from16 v50, v0

    move/from16 v0, v50

    and-int/lit16 v0, v0, 0x100

    move/from16 v50, v0

    if-nez v50, :cond_c

    :cond_9
    const/16 v36, 0x1

    .line 4888
    .local v36, "playSound":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget v0, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    move/from16 v50, v0

    const/16 v51, 0x3

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_a

    if-eqz v36, :cond_a

    .line 4889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 4891
    :cond_a
    invoke-interface/range {v45 .. v45}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getConnectedTechnology()I

    move-result v50

    const/16 v51, 0xa

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_d

    .line 4896
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_b

    const-string v50, "NfcService"

    const-string v51, "Skipping NDEF detection for NFC Barcode"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4897
    :cond_b
    move-object/from16 v0, v45

    move/from16 v1, v39

    invoke-interface {v0, v1, v11}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 4898
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    goto/16 :goto_0

    .line 4886
    .end local v36    # "playSound":Z
    :cond_c
    const/16 v36, 0x0

    goto :goto_2

    .line 4901
    .restart local v36    # "playSound":Z
    :cond_d
    invoke-interface/range {v45 .. v45}, Lcom/android/nfc/DeviceHost$TagEndpoint;->findAndReadNdef()Landroid/nfc/NdefMessage;

    move-result-object v33

    .line 4904
    .restart local v33    # "ndefMsg":Landroid/nfc/NdefMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mTestMode:Z
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$4500(Lcom/android/nfc/NfcService;)Z

    move-result v50

    if-eqz v50, :cond_e

    .line 4905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v50, v0

    new-instance v51, Landroid/content/Intent;

    const-string v52, "android.nfc.action.TAG_DISCOVERED"

    invoke-direct/range {v51 .. v52}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v50 .. v51}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4909
    :cond_e
    if-eqz v33, :cond_f

    .line 4910
    move-object/from16 v0, v45

    move/from16 v1, v39

    invoke-interface {v0, v1, v11}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 4911
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    goto/16 :goto_0

    .line 4913
    :cond_f
    invoke-interface/range {v45 .. v45}, Lcom/android/nfc/DeviceHost$TagEndpoint;->reconnect()Z

    move-result v50

    if-eqz v50, :cond_10

    .line 4914
    move-object/from16 v0, v45

    move/from16 v1, v39

    invoke-interface {v0, v1, v11}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 4915
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    goto/16 :goto_0

    .line 4917
    :cond_10
    invoke-interface/range {v45 .. v45}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 4918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    const/16 v51, 0x2

    invoke-virtual/range {v50 .. v51}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_0

    .line 4923
    .end local v11    # "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    .end local v33    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v36    # "playSound":Z
    .end local v39    # "presenceCheckDelay":I
    .end local v40    # "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    .end local v45    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    move/from16 v50, v0

    if-eqz v50, :cond_11

    .line 4924
    new-instance v6, Landroid/content/Intent;

    const-string v50, "com.android.nfc.action.LLCP_UP"

    move-object/from16 v0, v50

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4925
    .local v6, "actIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4927
    .end local v6    # "actIntent":Landroid/content/Intent;
    :cond_11
    sget-boolean v50, Lcom/android/nfc/NfcService;->GSIM_SURVEY_MODE:Z

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_12

    .line 4928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    # setter for: Lcom/android/nfc/NfcService;->fieldOnCount:I
    invoke-static/range {v50 .. v51}, Lcom/android/nfc/NfcService;->access$4602(Lcom/android/nfc/NfcService;I)I

    .line 4930
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->llcpActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)Z

    goto/16 :goto_0

    .line 4934
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 4935
    .local v16, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    if-nez v16, :cond_13

    .line 4937
    const-string v50, "NfcService"

    const-string v51, "MSG_LLCP_LINK_DEACTIVATED but NfcDepEndpoint device is null. So break here"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4941
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    move/from16 v50, v0

    if-eqz v50, :cond_14

    .line 4942
    new-instance v15, Landroid/content/Intent;

    const-string v50, "com.android.nfc.action.LLCP_DOWN"

    move-object/from16 v0, v50

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4943
    .local v15, "deactIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4946
    .end local v15    # "deactIntent":Landroid/content/Intent;
    :cond_14
    const/16 v34, 0x0

    .line 4948
    .local v34, "needsDisconnect":Z
    const-string v50, "NfcService"

    const-string v51, "LLCP Link Deactivated message. Restart polling loop."

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v51, v0

    monitor-enter v51

    .line 4951
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    move-object/from16 v50, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    move-object/from16 v0, v50

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    if-eqz v50, :cond_16

    .line 4953
    invoke-interface/range {v16 .. v16}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v50

    if-nez v50, :cond_18

    .line 4954
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_15

    const-string v50, "NfcService"

    const-string v52, "disconnecting from target"

    move-object/from16 v0, v50

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4955
    :cond_15
    const/16 v34, 0x1

    .line 4960
    :cond_16
    :goto_3
    monitor-exit v51
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4961
    if-eqz v34, :cond_17

    .line 4962
    invoke-interface/range {v16 .. v16}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    .line 4965
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    goto/16 :goto_0

    .line 4957
    :cond_18
    :try_start_4
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_16

    const-string v50, "NfcService"

    const-string v52, "not disconnecting from initiator"

    move-object/from16 v0, v50

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4960
    :catchall_2
    move-exception v50

    monitor-exit v51
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v50

    .line 4968
    .end local v16    # "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    .end local v34    # "needsDisconnect":Z
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/android/nfc/P2pLinkManager;->onLlcpFirstPacketReceived()V

    goto/16 :goto_0

    .line 4971
    :sswitch_d
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_19

    const-string v50, "NfcService"

    const-string v51, "RF FIELD ACTIVATED"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4972
    :cond_19
    sget-boolean v50, Lcom/android/nfc/NfcService;->GSIM_SURVEY_MODE:Z

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_1a

    .line 4973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # operator++ for: Lcom/android/nfc/NfcService;->fieldOnCount:I
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$4608(Lcom/android/nfc/NfcService;)I

    .line 4974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->isTimerStarted:Z
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$4700(Lcom/android/nfc/NfcService;)Z

    move-result v50

    if-nez v50, :cond_1a

    .line 4975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    new-instance v51, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    const/16 v53, 0x2328

    invoke-direct/range {v51 .. v53}, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;-><init>(Lcom/android/nfc/NfcService;I)V

    move-object/from16 v0, v51

    move-object/from16 v1, v50

    iput-object v0, v1, Lcom/android/nfc/NfcService;->checkCardEmulationStatus:Lcom/android/nfc/NfcService$CheckCardEmulationStatus;

    .line 4976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->checkCardEmulationStatus:Lcom/android/nfc/NfcService$CheckCardEmulationStatus;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/android/nfc/NfcService$CheckCardEmulationStatus;->start()V

    .line 4979
    :cond_1a
    new-instance v26, Landroid/content/Intent;

    const-string v50, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    move-object/from16 v0, v26

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4982
    .local v26, "fieldOnIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4985
    .end local v26    # "fieldOnIntent":Landroid/content/Intent;
    :sswitch_e
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_1b

    const-string v50, "NfcService"

    const-string v51, "RF FIELD DEACTIVATED"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4986
    :cond_1b
    new-instance v25, Landroid/content/Intent;

    const-string v50, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4989
    .local v25, "fieldOffIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4992
    .end local v25    # "fieldOffIntent":Landroid/content/Intent;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/android/nfc/NfcService$NfcAdapterService;->resumePolling()V

    goto/16 :goto_0

    .line 4997
    :sswitch_10
    const-string v50, "NfcService"

    const-string v51, "Occurred mPOS Error..!!"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4998
    new-instance v32, Landroid/content/Intent;

    const-string v50, "com.samsung.nfc.mpos.action.MPOS_ERR_NTF"

    move-object/from16 v0, v32

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4999
    .local v32, "mposErrNtf":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5006
    .end local v32    # "mposErrNtf":Landroid/content/Intent;
    :sswitch_11
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_1c

    const-string v50, "NfcService"

    const-string v51, "APDU Received message"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5007
    :cond_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, [B

    move-object/from16 v9, v50

    check-cast v9, [B

    .line 5009
    .local v9, "apduBytes":[B
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 5010
    .local v10, "apduReceivedIntent":Landroid/content/Intent;
    const-string v50, "com.android.nfc_extras.action.APDU_RECEIVED"

    move-object/from16 v0, v50

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5011
    if-eqz v9, :cond_1d

    array-length v0, v9

    move/from16 v50, v0

    if-lez v50, :cond_1d

    .line 5012
    const-string v50, "com.android.nfc_extras.extra.APDU_BYTES"

    move-object/from16 v0, v50

    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5014
    :cond_1d
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_1e

    const-string v50, "NfcService"

    const-string v51, "Broadcasting com.android.nfc_extras.action.APDU_RECEIVED"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5015
    :cond_1e
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5021
    .end local v9    # "apduBytes":[B
    .end local v10    # "apduReceivedIntent":Landroid/content/Intent;
    :sswitch_12
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_1f

    const-string v50, "NfcService"

    const-string v51, "Card Removal message"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5022
    :cond_1f
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 5023
    .local v12, "cardRemovalIntent":Landroid/content/Intent;
    const-string v50, "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

    move-object/from16 v0, v50

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5024
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_20

    const-string v50, "NfcService"

    const-string v51, "Broadcasting com.android.nfc_extras.action.EMV_CARD_REMOVAL"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5025
    :cond_20
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5031
    .end local v12    # "cardRemovalIntent":Landroid/content/Intent;
    :sswitch_13
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_21

    const-string v50, "NfcService"

    const-string v51, "MIFARE access message"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5033
    :cond_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, [B

    move-object/from16 v31, v50

    check-cast v31, [B

    .line 5034
    .local v31, "mifareCmd":[B
    new-instance v29, Landroid/content/Intent;

    invoke-direct/range {v29 .. v29}, Landroid/content/Intent;-><init>()V

    .line 5035
    .local v29, "mifareAccessIntent":Landroid/content/Intent;
    const-string v50, "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

    move-object/from16 v0, v29

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5036
    if-eqz v31, :cond_23

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v50, v0

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-le v0, v1, :cond_23

    .line 5037
    const/16 v50, 0x1

    aget-byte v50, v31, v50

    move/from16 v0, v50

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    .line 5038
    .local v30, "mifareBlock":I
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_22

    const-string v50, "NfcService"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Mifare Block="

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5039
    :cond_22
    const-string v50, "com.android.nfc_extras.extra.MIFARE_BLOCK"

    move-object/from16 v0, v29

    move-object/from16 v1, v50

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5041
    .end local v30    # "mifareBlock":I
    :cond_23
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_24

    const-string v50, "NfcService"

    const-string v51, "Broadcasting com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5042
    :cond_24
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5047
    .end local v29    # "mifareAccessIntent":Landroid/content/Intent;
    .end local v31    # "mifareCmd":[B
    :sswitch_14
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_25

    const-string v50, "NfcService"

    const-string v51, "MSG_SE_LISTEN_ACTIVATED"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5053
    :cond_25
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mSecureElementActiveMutex:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v50

    if-nez v50, :cond_0

    .line 5054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mSecureElementActiveMutex:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 5056
    :catch_0
    move-exception v19

    .line 5057
    .local v19, "e":Ljava/lang/InterruptedException;
    const-string v50, "NfcService"

    const-string v51, "MSG_LISTEN_ACTIVATED; thread interrupted"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5058
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    .line 5064
    .end local v19    # "e":Ljava/lang/InterruptedException;
    :sswitch_15
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_26

    const-string v50, "NfcService"

    const-string v51, "MSG_SE_LISTEN_DEACTIVATED"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5068
    :cond_26
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mSecureElementActiveMutex:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_6
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_6 .. :try_end_6} :catch_b

    .line 5073
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mIsDeferChangeRoutingTable:Z
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$4800(Lcom/android/nfc/NfcService;)Z

    move-result v50

    if-eqz v50, :cond_0

    .line 5074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    # setter for: Lcom/android/nfc/NfcService;->mIsDeferChangeRoutingTable:Z
    invoke-static/range {v50 .. v51}, Lcom/android/nfc/NfcService;->access$4802(Lcom/android/nfc/NfcService;Z)Z

    .line 5075
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_27

    const-string v50, "NfcService"

    const-string v51, "MSG_LISTEN_DEACTIVATED; re-route all AID\'s"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5076
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/android/nfc/cardemulation/CardEmulationManager;->reRouteAllAids()V

    goto/16 :goto_0

    .line 5084
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    const/16 v51, 0x1

    # setter for: Lcom/android/nfc/NfcService;->isSeActivated:I
    invoke-static/range {v50 .. v51}, Lcom/android/nfc/NfcService;->access$4902(Lcom/android/nfc/NfcService;I)I

    .line 5085
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_28

    const-string v50, "NfcService"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "SE LISTEN MODE ACTIVATED. So isSeActivated is "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    # getter for: Lcom/android/nfc/NfcService;->isSeActivated:I
    invoke-static/range {v52 .. v52}, Lcom/android/nfc/NfcService;->access$4900(Lcom/android/nfc/NfcService;)I

    move-result v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5087
    :cond_28
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_29

    const-string v50, "NfcService"

    const-string v51, "SE LISTEN MODE ACTIVATED"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5088
    :cond_29
    sget-boolean v50, Lcom/android/nfc/NfcService;->GSIM_SURVEY_MODE:Z

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_2a

    .line 5089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    # setter for: Lcom/android/nfc/NfcService;->fieldOnCount:I
    invoke-static/range {v50 .. v51}, Lcom/android/nfc/NfcService;->access$4602(Lcom/android/nfc/NfcService;I)I

    .line 5090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # operator++ for: Lcom/android/nfc/NfcService;->seActivateCount:I
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$5008(Lcom/android/nfc/NfcService;)I

    .line 5092
    :cond_2a
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .line 5093
    .local v27, "listenModeActivated":Landroid/content/Intent;
    const-string v50, "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

    move-object/from16 v0, v27

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5094
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    .line 5097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    move/from16 v50, v0

    if-eqz v50, :cond_0

    .line 5098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onSecureElementListenActivated()V

    goto/16 :goto_0

    .line 5107
    .end local v27    # "listenModeActivated":Landroid/content/Intent;
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    # setter for: Lcom/android/nfc/NfcService;->isSeActivated:I
    invoke-static/range {v50 .. v51}, Lcom/android/nfc/NfcService;->access$4902(Lcom/android/nfc/NfcService;I)I

    .line 5108
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_2b

    const-string v50, "NfcService"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "SE LISTEN MODE DEACTIVATED. So isSeActivated is "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    # getter for: Lcom/android/nfc/NfcService;->isSeActivated:I
    invoke-static/range {v52 .. v52}, Lcom/android/nfc/NfcService;->access$4900(Lcom/android/nfc/NfcService;)I

    move-result v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5110
    :cond_2b
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_2c

    const-string v50, "NfcService"

    const-string v51, "SE LISTEN MODE DEACTIVATED"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5111
    :cond_2c
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .line 5112
    .restart local v27    # "listenModeActivated":Landroid/content/Intent;
    const-string v50, "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

    move-object/from16 v0, v27

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5113
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    .line 5116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    move/from16 v50, v0

    if-eqz v50, :cond_0

    .line 5117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onSecureElementListenDeacitvaed()V

    goto/16 :goto_0

    .line 5125
    .end local v27    # "listenModeActivated":Landroid/content/Intent;
    :sswitch_18
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_2d

    const-string v50, "NfcService"

    const-string v51, "Card Emulation AID_SELECTED message"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5126
    :cond_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, [B

    move-object/from16 v7, v50

    check-cast v7, [B

    .line 5128
    .local v7, "aid":[B
    new-instance v8, Landroid/content/Intent;

    const-string v50, "com.android.nfc_extras.action.AID_SELECTED"

    move-object/from16 v0, v50

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5129
    .local v8, "aidIntent":Landroid/content/Intent;
    const-string v50, "com.android.nfc_extras.extra.AID"

    move-object/from16 v0, v50

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5130
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_2e

    const-string v50, "NfcService"

    const-string v51, "Broadcasting com.android.nfc_extras.action.AID_SELECTED"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5131
    :cond_2e
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5137
    .end local v7    # "aid":[B
    .end local v8    # "aidIntent":Landroid/content/Intent;
    :sswitch_19
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_2f

    const-string v50, "NfcService"

    const-string v51, "SE EVENT CONNECTIVITY"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5138
    :cond_2f
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 5139
    .local v21, "eventConnectivityIntent":Landroid/content/Intent;
    const-string v50, "com.nxp.action.CONNECTIVITY_EVENT_DETECTED"

    move-object/from16 v0, v21

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v50, v0

    const-string v51, "android.permission.NFC"

    move-object/from16 v0, v50

    move-object/from16 v1, v21

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5146
    .end local v21    # "eventConnectivityIntent":Landroid/content/Intent;
    :sswitch_1a
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_30

    const-string v50, "NfcService"

    const-string v51, "Card Emulation message"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5151
    :cond_30
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/util/Pair;

    .line 5152
    .local v47, "transactionInfo":Landroid/util/Pair;, "Landroid/util/Pair<[BLandroid/util/Pair;>;"
    move-object/from16 v0, v47

    iget-object v14, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Landroid/util/Pair;

    .line 5153
    .local v14, "dataSrcInfo":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/lang/Integer;>;"
    move-object/from16 v0, v47

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [B

    .line 5154
    .restart local v7    # "aid":[B
    iget-object v0, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, [B

    .line 5155
    .local v35, "param":[B
    iget-object v0, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/Integer;

    .line 5158
    .local v22, "eventSrc":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mHciEvtCallback:Landroid/nfc/INfcHciEventCallback;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$2700(Lcom/android/nfc/NfcService;)Landroid/nfc/INfcHciEventCallback;

    move-result-object v50

    if-eqz v50, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # invokes: Lcom/android/nfc/NfcService;->getmPOSMode()Z
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$5100(Lcom/android/nfc/NfcService;)Z

    move-result v50

    if-eqz v50, :cond_31

    .line 5159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mHciEventControl:Lcom/android/nfc/HciEventControl;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v51, v0

    # getter for: Lcom/android/nfc/NfcService;->mHciEvtCallback:Landroid/nfc/INfcHciEventCallback;
    invoke-static/range {v51 .. v51}, Lcom/android/nfc/NfcService;->access$2700(Lcom/android/nfc/NfcService;)Landroid/nfc/INfcHciEventCallback;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static/range {v52 .. v52}, Lcom/android/nfc/NfcService;->access$2000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v52

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/android/nfc/HciEventControl;->checkAndSendIntent(Landroid/nfc/INfcHciEventCallback;Lcom/android/nfc/NfcDispatcher;[B[B)V

    goto/16 :goto_0

    .line 5162
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mMPOSCallbacks:Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$5200(Lcom/android/nfc/NfcService;)Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;

    move-result-object v50

    if-eqz v50, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # invokes: Lcom/android/nfc/NfcService;->getmPOSMode()Z
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$5100(Lcom/android/nfc/NfcService;)Z

    move-result v50

    if-eqz v50, :cond_32

    .line 5163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mHciEventControl:Lcom/android/nfc/HciEventControl;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v51, v0

    # getter for: Lcom/android/nfc/NfcService;->mMPOSCallbacks:Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;
    invoke-static/range {v51 .. v51}, Lcom/android/nfc/NfcService;->access$5200(Lcom/android/nfc/NfcService;)Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static/range {v52 .. v52}, Lcom/android/nfc/NfcService;->access$2000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v52

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/android/nfc/HciEventControl;->checkAndSendIntent(Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;Lcom/android/nfc/NfcDispatcher;[B[B)V

    goto/16 :goto_0

    .line 5170
    :cond_32
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v7, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->makeAidIntent([B[B)Landroid/content/Intent;

    move-result-object v8

    .line 5172
    .restart local v8    # "aidIntent":Landroid/content/Intent;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v50

    const/16 v51, 0x2

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_36

    .line 5173
    const-string v50, "GOOGLE"

    # getter for: Lcom/android/nfc/NfcService;->mSecureEventType:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/NfcService;->access$4400()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_33

    const-string v50, "ISIS"

    # getter for: Lcom/android/nfc/NfcService;->mSecureEventType:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/NfcService;->access$4400()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_35

    .line 5174
    :cond_33
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_34

    const-string v50, "NfcService"

    const-string v51, "Broadcasting EVENT"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5175
    :cond_34
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5178
    :cond_35
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mHciEventControl:Lcom/android/nfc/HciEventControl;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v51

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/nfc/HciEventControl;->checkAndSendIntent(I[B[B)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 5179
    :catch_1
    move-exception v19

    .line 5180
    .local v19, "e":Ljava/lang/NullPointerException;
    const-string v50, "NfcService"

    const-string v51, "HciEventControl is null"

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 5183
    .end local v19    # "e":Ljava/lang/NullPointerException;
    :cond_36
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_38

    .line 5184
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_37

    const-string v50, "NfcService"

    const-string v51, "Broadcasting EVENT"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5186
    :cond_37
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mHciEventControl:Lcom/android/nfc/HciEventControl;

    move-object/from16 v50, v0

    const/16 v51, 0x1

    move-object/from16 v0, v50

    move/from16 v1, v51

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/nfc/HciEventControl;->checkAndSendIntent(I[B[B)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 5187
    :catch_2
    move-exception v19

    .line 5188
    .restart local v19    # "e":Ljava/lang/NullPointerException;
    const-string v50, "NfcService"

    const-string v51, "HciEventControl is null"

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 5191
    .end local v19    # "e":Ljava/lang/NullPointerException;
    :cond_38
    sget-boolean v50, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v50, :cond_0

    const-string v50, "NfcService"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "unexpected src=0x"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5199
    .end local v7    # "aid":[B
    .end local v8    # "aidIntent":Landroid/content/Intent;
    .end local v14    # "dataSrcInfo":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/lang/Integer;>;"
    .end local v22    # "eventSrc":Ljava/lang/Integer;
    .end local v35    # "param":[B
    .end local v47    # "transactionInfo":Landroid/util/Pair;, "Landroid/util/Pair<[BLandroid/util/Pair;>;"
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    const/16 v51, 0x1

    # invokes: Lcom/android/nfc/NfcService;->showIcon(Z)V
    invoke-static/range {v50 .. v51}, Lcom/android/nfc/NfcService;->access$5300(Lcom/android/nfc/NfcService;Z)V

    goto/16 :goto_0

    .line 5204
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    # invokes: Lcom/android/nfc/NfcService;->showIcon(Z)V
    invoke-static/range {v50 .. v51}, Lcom/android/nfc/NfcService;->access$5300(Lcom/android/nfc/NfcService;Z)V

    goto/16 :goto_0

    .line 5211
    :sswitch_1d
    const-string v50, "NfcService"

    const-string v51, "NfcServiceHandler - MSG_CHN_ENABLE_POPUP"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v50, v0

    const-string v51, "statusbar"

    invoke-virtual/range {v50 .. v51}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/StatusBarManager;

    .line 5214
    .local v28, "mStatusBarManager":Landroid/app/StatusBarManager;
    if-eqz v28, :cond_39

    .line 5215
    invoke-virtual/range {v28 .. v28}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 5218
    :cond_39
    new-instance v5, Landroid/content/Intent;

    const-string v50, "com.samsung.nfc.NfcChnEnablePopup"

    move-object/from16 v0, v50

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5219
    .local v5, "PopupIntent":Landroid/content/Intent;
    const v50, 0x10008000

    move/from16 v0, v50

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5221
    const-string v50, "CallingPid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget v0, v0, Lcom/android/nfc/NfcService;->mChnEnablePopupCallingPid:I

    move/from16 v51, v0

    move-object/from16 v0, v50

    move/from16 v1, v51

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5223
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 5224
    :catch_3
    move-exception v19

    .line 5225
    .local v19, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual/range {v19 .. v19}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 5231
    .end local v5    # "PopupIntent":Landroid/content/Intent;
    .end local v19    # "e":Landroid/content/ActivityNotFoundException;
    .end local v28    # "mStatusBarManager":Landroid/app/StatusBarManager;
    :sswitch_1e
    const-string v50, "NfcService"

    const-string v51, "NfcServiceHandler - MSG_CHN_ENABLE_DIRECT"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5232
    new-instance v20, Lcom/android/nfc/NfcService$EnableDisableTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 5233
    .local v20, "enableTask":Lcom/android/nfc/NfcService$EnableDisableTask;
    const/16 v50, 0x1

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    const/16 v52, 0x65

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    aput-object v52, v50, v51

    move-object/from16 v0, v20

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 5237
    .end local v20    # "enableTask":Lcom/android/nfc/NfcService$EnableDisableTask;
    :sswitch_1f
    const-string v50, "NfcService"

    const-string v51, "NfcServiceHandler - MSG_CHN_ENABLE_CANCEL"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5238
    new-instance v17, Lcom/android/nfc/NfcService$EnableDisableTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 5239
    .local v17, "disableTask":Lcom/android/nfc/NfcService$EnableDisableTask;
    const/16 v50, 0x1

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    const/16 v52, 0x66

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    aput-object v52, v50, v51

    move-object/from16 v0, v17

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 5245
    .end local v17    # "disableTask":Lcom/android/nfc/NfcService$EnableDisableTask;
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v50, v0

    const-string v51, "statusbar"

    invoke-virtual/range {v50 .. v51}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/app/StatusBarManager;

    .line 5247
    .local v43, "statusBarManager":Landroid/app/StatusBarManager;
    if-eqz v43, :cond_3a

    .line 5248
    invoke-virtual/range {v43 .. v43}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 5250
    :cond_3a
    new-instance v37, Landroid/content/Intent;

    const-string v50, "com.samsung.nfc.NfcGsmaPopup"

    move-object/from16 v0, v37

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5251
    .local v37, "popupIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v50, v0

    const-class v51, Lcom/android/nfc/NfcGsmaPopup;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v37

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 5252
    const v50, 0x10008000

    move-object/from16 v0, v37

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5255
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 5256
    :catch_4
    move-exception v19

    .line 5257
    .restart local v19    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual/range {v19 .. v19}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 5263
    .end local v19    # "e":Landroid/content/ActivityNotFoundException;
    .end local v37    # "popupIntent":Landroid/content/Intent;
    .end local v43    # "statusBarManager":Landroid/app/StatusBarManager;
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mGsmaCb:Lcom/gsma/services/nfc/INfcControllerCallbacks;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$5400(Lcom/android/nfc/NfcService;)Lcom/gsma/services/nfc/INfcControllerCallbacks;

    move-result-object v50

    if-eqz v50, :cond_3b

    .line 5264
    new-instance v46, Lcom/android/nfc/NfcService$EnableDisableTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v51, v0

    # getter for: Lcom/android/nfc/NfcService;->mGsmaCb:Lcom/gsma/services/nfc/INfcControllerCallbacks;
    invoke-static/range {v51 .. v51}, Lcom/android/nfc/NfcService;->access$5400(Lcom/android/nfc/NfcService;)Lcom/gsma/services/nfc/INfcControllerCallbacks;

    move-result-object v51

    move-object/from16 v0, v46

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;Lcom/gsma/services/nfc/INfcControllerCallbacks;)V

    .line 5265
    .local v46, "task":Lcom/android/nfc/NfcService$EnableDisableTask;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    # setter for: Lcom/android/nfc/NfcService;->mGsmaCb:Lcom/gsma/services/nfc/INfcControllerCallbacks;
    invoke-static/range {v50 .. v51}, Lcom/android/nfc/NfcService;->access$5402(Lcom/android/nfc/NfcService;Lcom/gsma/services/nfc/INfcControllerCallbacks;)Lcom/gsma/services/nfc/INfcControllerCallbacks;

    .line 5269
    :goto_5
    const/16 v50, 0x1

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    const/16 v52, 0x1

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    aput-object v52, v50, v51

    move-object/from16 v0, v46

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5271
    :try_start_b
    invoke-virtual/range {v46 .. v46}, Lcom/android/nfc/NfcService$EnableDisableTask;->get()Ljava/lang/Object;

    .line 5272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Lcom/android/nfc/NfcService;->saveNfcOnSetting(Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    .line 5273
    :catch_5
    move-exception v19

    .line 5274
    .local v19, "e":Ljava/lang/Exception;
    const-string v50, "NfcService"

    const-string v51, "failed to enable"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5267
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v46    # "task":Lcom/android/nfc/NfcService$EnableDisableTask;
    :cond_3b
    new-instance v46, Lcom/android/nfc/NfcService$EnableDisableTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    .restart local v46    # "task":Lcom/android/nfc/NfcService$EnableDisableTask;
    goto :goto_5

    .line 5279
    .end local v46    # "task":Lcom/android/nfc/NfcService$EnableDisableTask;
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mGsmaCb:Lcom/gsma/services/nfc/INfcControllerCallbacks;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$5400(Lcom/android/nfc/NfcService;)Lcom/gsma/services/nfc/INfcControllerCallbacks;

    move-result-object v50

    if-eqz v50, :cond_0

    .line 5281
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mGsmaCb:Lcom/gsma/services/nfc/INfcControllerCallbacks;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$5400(Lcom/android/nfc/NfcService;)Lcom/gsma/services/nfc/INfcControllerCallbacks;

    move-result-object v50

    const/16 v51, 0x0

    invoke-interface/range {v50 .. v51}, Lcom/gsma/services/nfc/INfcControllerCallbacks;->onEnableNfcController(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_6

    .line 5285
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    # setter for: Lcom/android/nfc/NfcService;->mGsmaCb:Lcom/gsma/services/nfc/INfcControllerCallbacks;
    invoke-static/range {v50 .. v51}, Lcom/android/nfc/NfcService;->access$5402(Lcom/android/nfc/NfcService;Lcom/gsma/services/nfc/INfcControllerCallbacks;)Lcom/gsma/services/nfc/INfcControllerCallbacks;

    goto/16 :goto_0

    .line 5282
    :catch_6
    move-exception v19

    .line 5283
    .local v19, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v19 .. v19}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 5292
    .end local v19    # "e":Landroid/os/RemoteException;
    :sswitch_23
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v50

    if-nez v50, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mTestMode:Z
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$4500(Lcom/android/nfc/NfcService;)Z

    move-result v50

    if-nez v50, :cond_3c

    const-string v50, "DISABLE"

    const-string v51, "persist.nfc.rf_flag"

    const-string v52, "ENABLE"

    invoke-static/range {v51 .. v52}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_3d

    .line 5294
    :cond_3c
    const-string v50, "NfcService"

    const-string v51, "MSG_TAG_CONNECTION :: FactoryMode or TestMode or rf_flag disabled, Skip DisableDiscovery"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5298
    :cond_3d
    const-string v50, "NfcService"

    const-string v51, "MSG_TAG_CONNECTION :: disableDiscovery"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v50

    invoke-interface/range {v50 .. v50}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 5300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    const-string v51, "NF06"

    const-string v52, "1"

    invoke-virtual/range {v50 .. v52}, Lcom/android/nfc/NfcService;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5317
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static/range {v50 .. v50}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v51, v0

    # getter for: Lcom/android/nfc/NfcService;->mUserIdForTempTable:I
    invoke-static/range {v51 .. v51}, Lcom/android/nfc/NfcService;->access$3100(Lcom/android/nfc/NfcService;)I

    move-result v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    # getter for: Lcom/android/nfc/NfcService;->mTempProto:Ljava/lang/String;
    invoke-static/range {v52 .. v52}, Lcom/android/nfc/NfcService;->access$3200(Lcom/android/nfc/NfcService;)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/nfc/NfcService;->mTempTech:Ljava/lang/String;
    invoke-static/range {v53 .. v53}, Lcom/android/nfc/NfcService;->access$3300(Lcom/android/nfc/NfcService;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v54, v0

    # getter for: Lcom/android/nfc/NfcService;->mTempServices:Ljava/util/List;
    invoke-static/range {v54 .. v54}, Lcom/android/nfc/NfcService;->access$3400(Lcom/android/nfc/NfcService;)Ljava/util/List;

    move-result-object v54

    invoke-virtual/range {v50 .. v54}, Lcom/android/nfc/cardemulation/CardEmulationManager;->changeRoutingTable(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 5322
    :sswitch_25
    const-string v50, "NfcService"

    const-string v51, "NfcServiceHandler - MSG_READER_DISABLE"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5325
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/android/nfc/NfcService$NfcAdapterService;->disableNdefPush()Z

    .line 5326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/android/nfc/NfcService$NfcAdapterService;->readerDisable()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_0

    .line 5328
    :catch_7
    move-exception v23

    .line 5330
    .local v23, "ex":Landroid/os/RemoteException;
    const-string v50, "NfcService"

    const-string v51, "got remote exception"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5335
    .end local v23    # "ex":Landroid/os/RemoteException;
    :sswitch_26
    const-string v50, "NfcService"

    const-string v51, "NfcServiceHandler - MSG_READER_ENABLE"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5338
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/android/nfc/NfcService$NfcAdapterService;->readerEnable()Z

    .line 5339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/android/nfc/NfcService$NfcAdapterService;->enableNdefPush()Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_0

    .line 5341
    :catch_8
    move-exception v23

    .line 5343
    .restart local v23    # "ex":Landroid/os/RemoteException;
    const-string v50, "NfcService"

    const-string v51, "got remote exception"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5348
    .end local v23    # "ex":Landroid/os/RemoteException;
    :sswitch_27
    const-string v50, "NfcService"

    const-string v51, "NfcServiceHandler - MSG_DISABLE"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5351
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v50, v0

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Lcom/android/nfc/NfcService$NfcAdapterService;->disable(Z)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_0

    .line 5353
    :catch_9
    move-exception v23

    .line 5355
    .restart local v23    # "ex":Landroid/os/RemoteException;
    const-string v50, "NfcService"

    const-string v51, "got remote exception"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5360
    .end local v23    # "ex":Landroid/os/RemoteException;
    :sswitch_28
    const-string v50, "NfcService"

    const-string v51, "NfcServiceHandler - MSG_ENABLE"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5363
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/android/nfc/NfcService;->saveNfcReaderOnSetting(Z)V

    .line 5364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/android/nfc/NfcService$NfcAdapterService;->enable()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_a

    goto/16 :goto_0

    .line 5366
    :catch_a
    move-exception v23

    .line 5368
    .restart local v23    # "ex":Landroid/os/RemoteException;
    const-string v50, "NfcService"

    const-string v51, "got remote exception"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5070
    .end local v23    # "ex":Landroid/os/RemoteException;
    :catch_b
    move-exception v50

    goto/16 :goto_4

    .line 4739
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_a
        0x2 -> :sswitch_b
        0x3 -> :sswitch_8
        0x4 -> :sswitch_c
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_5
        0x8 -> :sswitch_4
        0x9 -> :sswitch_d
        0xa -> :sswitch_e
        0xb -> :sswitch_f
        0xc -> :sswitch_7
        0xd -> :sswitch_6
        0xe -> :sswitch_14
        0xf -> :sswitch_15
        0x66 -> :sswitch_11
        0x67 -> :sswitch_12
        0x68 -> :sswitch_13
        0x69 -> :sswitch_16
        0x6a -> :sswitch_17
        0x6b -> :sswitch_18
        0x6c -> :sswitch_19
        0x6d -> :sswitch_1a
        0xa0 -> :sswitch_10
        0xc9 -> :sswitch_1d
        0xca -> :sswitch_1e
        0xcb -> :sswitch_1f
        0xd3 -> :sswitch_20
        0xd4 -> :sswitch_21
        0xd5 -> :sswitch_22
        0x12c -> :sswitch_23
        0x138 -> :sswitch_25
        0x139 -> :sswitch_26
        0x13a -> :sswitch_27
        0x13b -> :sswitch_28
        0x190 -> :sswitch_24
        0x1f5 -> :sswitch_1b
        0x1f6 -> :sswitch_1c
        0x1f7 -> :sswitch_2
        0x1f8 -> :sswitch_3
    .end sparse-switch
.end method

.method public sendSeBroadcast(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5487
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5489
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    .line 5492
    monitor-enter p0

    .line 5493
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mGpacBasedSeEventList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$5500(Lcom/android/nfc/NfcService;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5494
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendGpacRuleBasedBroadcast(Landroid/content/Intent;)V

    .line 5499
    :goto_0
    monitor-exit p0

    .line 5501
    return-void

    .line 5497
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 5499
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
