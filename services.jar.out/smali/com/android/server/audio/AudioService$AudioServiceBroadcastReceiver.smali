.class Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .prologue
    .line 7380
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .prologue
    .line 7380
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 37
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 7383
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 7384
    .local v12, "action":Ljava/lang/String;
    const/16 v27, 0x0

    .line 7385
    .local v27, "outDevice":I
    const/16 v22, 0x0

    .line 7386
    .local v22, "inDevice":I
    const/16 v32, 0x0

    .line 7387
    .local v32, "state":I
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7388
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 7391
    .local v19, "dockState":I
    packed-switch v19, :pswitch_data_0

    .line 7406
    const/16 v17, 0x0

    .line 7409
    .local v17, "config":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDockState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$10700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    if-nez v19, :cond_0

    .line 7410
    const-string v2, "AudioService"

    const-string v5, "EXTRA_DOCK_STATE_DESK onSendBecomingNoisyIntent "

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v5, 0x800

    # invokes: Lcom/android/server/audio/AudioService;->onSendBecomingNoisyIntent(I)V
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$7900(Lcom/android/server/audio/AudioService;I)V

    .line 7418
    :cond_0
    const/4 v2, 0x3

    move/from16 v0, v19

    if-eq v0, v2, :cond_2

    const/16 v2, 0x69

    move/from16 v0, v19

    if-eq v0, v2, :cond_2

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDockState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$10700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDockState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$10700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/16 v5, 0x69

    if-eq v2, v5, :cond_2

    .line 7421
    :cond_1
    const/4 v2, 0x3

    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 7425
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move/from16 v0, v19

    # setter for: Lcom/android/server/audio/AudioService;->mDockState:I
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$10702(Lcom/android/server/audio/AudioService;I)I

    move/from16 v4, v32

    .end local v32    # "state":I
    .local v4, "state":I
    move/from16 v3, v27

    .line 7871
    .end local v17    # "config":I
    .end local v19    # "dockState":I
    .end local v27    # "outDevice":I
    .local v3, "outDevice":I
    :goto_1
    return-void

    .line 7393
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v19    # "dockState":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :pswitch_0
    const/16 v17, 0x7

    .line 7394
    .restart local v17    # "config":I
    goto :goto_0

    .line 7396
    .end local v17    # "config":I
    :pswitch_1
    const/16 v17, 0x6

    .line 7397
    .restart local v17    # "config":I
    goto :goto_0

    .line 7399
    .end local v17    # "config":I
    :pswitch_2
    const/16 v17, 0x8

    .line 7400
    .restart local v17    # "config":I
    goto :goto_0

    .line 7402
    .end local v17    # "config":I
    :pswitch_3
    const/16 v17, 0x9

    .line 7403
    .restart local v17    # "config":I
    goto :goto_0

    .line 7426
    .end local v17    # "config":I
    .end local v19    # "dockState":I
    :cond_3
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7427
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 7429
    .end local v32    # "state":I
    .restart local v4    # "state":I
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/bluetooth/BluetoothDevice;

    .line 7432
    .local v15, "btDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v5, "android.bluetooth.aoble.extra.SUPPORT_AOBLE"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/android/server/audio/AudioService;->mbAobleState:Z
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$10802(Lcom/android/server/audio/AudioService;Z)Z

    .line 7435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2, v15, v4}, Lcom/android/server/audio/AudioService;->setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    move/from16 v3, v27

    .line 7436
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto :goto_1

    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v15    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_4
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 7437
    const/4 v14, 0x0

    .line 7438
    .local v14, "broadcast":Z
    const/16 v30, -0x1

    .line 7439
    .local v30, "scoAudioState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 7440
    :try_start_0
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v6, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 7442
    .local v16, "btState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x5

    if-ne v2, v6, :cond_6

    .line 7446
    :cond_5
    const/4 v14, 0x1

    .line 7448
    :cond_6
    packed-switch v16, :pswitch_data_1

    .line 7470
    :cond_7
    :goto_2
    const/4 v14, 0x0

    .line 7473
    :cond_8
    :goto_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7474
    if-eqz v14, :cond_9

    .line 7475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move/from16 v0, v30

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;I)V

    .line 7478
    new-instance v26, Landroid/content/Intent;

    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7479
    .local v26, "newIntent":Landroid/content/Intent;
    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v26

    # invokes: Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$10900(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .end local v26    # "newIntent":Landroid/content/Intent;
    :cond_9
    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7482
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7450
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :pswitch_4
    const/16 v30, 0x1

    .line 7451
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x5

    if-eq v2, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_8

    .line 7454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x2

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2, v6}, Lcom/android/server/audio/AudioService;->access$2702(Lcom/android/server/audio/AudioService;I)I

    goto :goto_3

    .line 7473
    .end local v16    # "btState":I
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 7458
    .restart local v16    # "btState":I
    :pswitch_5
    const/16 v30, 0x0

    .line 7459
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2, v6}, Lcom/android/server/audio/AudioService;->access$2702(Lcom/android/server/audio/AudioService;I)I

    .line 7460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    goto :goto_3

    .line 7463
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x5

    if-eq v2, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_7

    .line 7466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x2

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v2, v6}, Lcom/android/server/audio/AudioService;->access$2702(Lcom/android/server/audio/AudioService;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 7482
    .end local v14    # "broadcast":Z
    .end local v16    # "btState":I
    .end local v30    # "scoAudioState":I
    :cond_a
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 7483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMonitorRotation:Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11000(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 7484
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 7486
    :cond_b
    const-string/jumbo v2, "screen_state=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 7488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mCPUBoostForComm:Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11100(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 7489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->stopCPUBoost()V
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7492
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_c
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 7493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMonitorRotation:Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11000(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 7495
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    .line 7497
    :cond_d
    const-string/jumbo v2, "screen_state=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 7499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$10100(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_48

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_48

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v5, 0xc

    # invokes: Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;I)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 7503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->startCPUBoost(Z)V
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$11300(Lcom/android/server/audio/AudioService;Z)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7506
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_e
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 7507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$11400(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7508
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_f
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 7510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    .line 7521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;Z)V

    .line 7523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v29

    .line 7524
    .local v29, "ringVolume":I
    if-nez v29, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_10

    .line 7525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$5900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v5, 0x2

    aget-object v2, v2, v5

    const/16 v5, 0xa

    const/4 v6, 0x2

    const-string v7, "AudioService"

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 7529
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$5900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v7, v7, v8

    const/4 v8, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/audio/AudioService;->checkAndSetThemeSound(Z)V
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$9800(Lcom/android/server/audio/AudioService;Z)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7538
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v29    # "ringVolume":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_11
    const-string v2, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 7540
    const-string v2, "android.intent.extra.user_handle"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v34

    .line 7541
    .local v34, "userId":I
    if-ltz v34, :cond_12

    .line 7543
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v36

    .line 7544
    .local v36, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v36

    # invokes: Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->access$11700(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    .line 7546
    .end local v36    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_12
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const-string/jumbo v5, "no_record_audio"

    const/4 v6, 0x1

    move/from16 v0, v34

    invoke-virtual {v2, v5, v6, v0}, Lcom/android/server/pm/UserManagerService;->setSystemControlledUserRestriction(Ljava/lang/String;ZI)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7548
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v34    # "userId":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_13
    const-string v2, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 7550
    const-string v2, "android.intent.extra.user_handle"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v34

    .line 7551
    .restart local v34    # "userId":I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const-string/jumbo v5, "no_record_audio"

    const/4 v6, 0x0

    move/from16 v0, v34

    invoke-virtual {v2, v5, v6, v0}, Lcom/android/server/pm/UserManagerService;->setSystemControlledUserRestriction(Ljava/lang/String;ZI)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7553
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7555
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v34    # "userId":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_14
    const-string v2, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 7556
    const-string/jumbo v2, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    .line 7557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v5, 0x1000000

    # invokes: Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;I)Z

    move-result v24

    .line 7558
    .local v24, "isConnected":Z
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### WiFi Display device state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7559
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### WiFi Display device isConnected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7562
    const/16 v23, 0x0

    .line 7563
    .local v23, "isChangePath":Z
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXTRA_INTENDED_CHANGEPATH from Wifi manager : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7566
    if-nez v23, :cond_15

    .line 7567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const v5, 0x1008000

    move/from16 v0, v32

    # invokes: Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I
    invoke-static {v2, v5, v0}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;II)I

    .line 7570
    :cond_15
    const/4 v2, 0x1

    move/from16 v0, v32

    if-ne v0, v2, :cond_17

    if-nez v24, :cond_17

    .line 7571
    const-string/jumbo v2, "count"

    const/16 v5, 0x780

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 7572
    .local v25, "nBufCnt":I
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXTERNAL_WIFI_CONNECTED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wfdBufferCount="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 7574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v6, 0x1000000

    const-string v7, ""

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11800(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v8, 0x1000000

    const-string v10, ""

    const-string v11, ""

    invoke-direct {v6, v7, v8, v10, v11}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const v6, 0x8000

    const-string v7, "0"

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11800(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const v8, 0x8000

    const-string v10, "0"

    const-string/jumbo v11, "remote-submix"

    invoke-direct {v6, v7, v8, v10, v11}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7576
    const-string v2, "audioParam;ScreenMirroringState=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .end local v25    # "nBufCnt":I
    :cond_16
    :goto_4
    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7597
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7578
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_17
    if-nez v32, :cond_16

    if-eqz v24, :cond_16

    .line 7579
    const-string v2, "audioParam;ScreenMirroringState=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 7581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v6, 0x1000000

    const-string v7, ""

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11800(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const v6, 0x8000

    const-string v7, "0"

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11800(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v2, v2, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMode:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11900(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMode:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11900(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_19

    .line 7585
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7593
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    .line 7594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audioParam;SplitSound="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v5, v5, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 7598
    .end local v23    # "isChangePath":Z
    .end local v24    # "isConnected":Z
    :cond_1a
    const-string v2, "com.sec.android.intent.action.SPLIT_SOUND"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 7599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "enabled"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v2, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7602
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_1b
    const-string v2, "com.samsung.android.app.audio.epinforequest"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 7603
    const-string/jumbo v2, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 7609
    .end local v32    # "state":I
    .restart local v4    # "state":I
    const/4 v2, -0x1

    if-ne v4, v2, :cond_1c

    .line 7610
    const-string/jumbo v2, "earcare=reset"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7612
    .end local v3    # "outDevice":I
    .restart local v27    # "outDevice":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x1

    if-ne v4, v2, :cond_1d

    const/4 v2, 0x1

    :goto_5
    # setter for: Lcom/android/server/audio/AudioService;->mIsEarCareSettingOn:Z
    invoke-static {v5, v2}, Lcom/android/server/audio/AudioService;->access$12002(Lcom/android/server/audio/AudioService;Z)Z

    .line 7613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkAndSendEarCareInfo()V
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$8600(Lcom/android/server/audio/AudioService;)V

    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7612
    .end local v3    # "outDevice":I
    .restart local v27    # "outDevice":I
    :cond_1d
    const/4 v2, 0x0

    goto :goto_5

    .line 7618
    .end local v4    # "state":I
    .restart local v32    # "state":I
    :cond_1e
    const-string v2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 7619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x69

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7628
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_1f
    const-string v2, "com.sec.tms.audio.server"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 7629
    const-string/jumbo v2, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 7630
    .end local v32    # "state":I
    .restart local v4    # "state":I
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tms evt state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7631
    const-string v2, "app"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 7632
    .local v13, "app":Ljava/lang/String;
    if-eqz v13, :cond_25

    .line 7633
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tms evt app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7634
    const-string/jumbo v2, "server"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 7635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v5, 0x2000000

    # invokes: Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;I)Z

    move-result v24

    .line 7636
    .restart local v24    # "isConnected":Z
    const/4 v2, 0x2

    if-ne v4, v2, :cond_21

    if-eqz v24, :cond_21

    .line 7637
    const/high16 v2, 0x2000000

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    invoke-static {v2, v5, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v6, 0x2000000

    const-string v7, ""

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11800(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v24    # "isConnected":Z
    :cond_20
    :goto_6
    move/from16 v3, v27

    .line 7671
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7641
    .end local v3    # "outDevice":I
    .restart local v24    # "isConnected":Z
    .restart local v27    # "outDevice":I
    :cond_21
    const/4 v2, 0x1

    if-ne v4, v2, :cond_20

    if-nez v24, :cond_20

    .line 7642
    const/high16 v2, 0x2000000

    const/4 v5, 0x1

    const-string v6, ""

    const-string v7, ""

    invoke-static {v2, v5, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v6, 0x2000000

    const-string v7, ""

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11800(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v8, 0x2000000

    const-string v10, ""

    const-string v11, ""

    invoke-direct {v6, v7, v8, v10, v11}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 7649
    .end local v24    # "isConnected":Z
    :cond_22
    const-string v2, "client"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 7650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v5, -0x7fe00000

    # invokes: Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;I)Z

    move-result v24

    .line 7651
    .restart local v24    # "isConnected":Z
    const/4 v2, 0x2

    if-ne v4, v2, :cond_23

    if-eqz v24, :cond_23

    .line 7652
    const/high16 v2, -0x7fe00000

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    invoke-static {v2, v5, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v6, -0x7fe00000

    const-string v7, ""

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11800(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 7656
    :cond_23
    const/4 v2, 0x1

    if-ne v4, v2, :cond_20

    if-nez v24, :cond_20

    .line 7657
    const/high16 v2, -0x7fe00000

    const/4 v5, 0x1

    const-string v6, ""

    const-string v7, ""

    invoke-static {v2, v5, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v6, -0x7fe00000

    const-string v7, ""

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11800(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v8, -0x7fe00000

    const-string v10, ""

    const-string v11, ""

    invoke-direct {v6, v7, v8, v10, v11}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 7666
    .end local v24    # "isConnected":Z
    :cond_24
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tms evt app wrong : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 7669
    :cond_25
    const-string v2, "AudioService"

    const-string/jumbo v5, "tms evt app is null "

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 7674
    .end local v4    # "state":I
    .end local v13    # "app":Ljava/lang/String;
    .restart local v32    # "state":I
    :cond_26
    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 7675
    const-string/jumbo v2, "reason"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 7676
    .local v28, "reason":I
    const/4 v2, 0x3

    move/from16 v0, v28

    if-ne v0, v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$12100(Lcom/android/server/audio/AudioService;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v2

    const/16 v5, 0x200

    invoke-virtual {v2, v5}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v2

    if-nez v2, :cond_28

    .line 7677
    const-string/jumbo v2, "emergency_mode=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_27
    :goto_7
    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7681
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7678
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_28
    const/4 v2, 0x5

    move/from16 v0, v28

    if-ne v0, v2, :cond_27

    .line 7679
    const-string/jumbo v2, "emergency_mode=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_7

    .line 7684
    .end local v28    # "reason":I
    :cond_29
    const-string v2, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 7685
    const-string v2, "audioParam;factoryteststate=1"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7687
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_2a
    const-string v2, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 7688
    const-string v2, "audioParam;factoryteststate=0"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7692
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_2b
    const-string v2, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 7693
    const-string/jumbo v2, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 7694
    .end local v32    # "state":I
    .restart local v4    # "state":I
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANLG_DOCK_HEADSET evt state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v5, 0x800

    # invokes: Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;I)Z

    move-result v24

    .line 7696
    .restart local v24    # "isConnected":Z
    if-nez v4, :cond_2d

    if-eqz v24, :cond_2d

    .line 7697
    const/16 v2, 0x800

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    invoke-static {v2, v5, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v6, 0x800

    const-string v7, ""

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11800(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    :goto_8
    move/from16 v3, v27

    .line 7710
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7701
    .end local v3    # "outDevice":I
    .restart local v27    # "outDevice":I
    :cond_2d
    const/4 v2, 0x1

    if-ne v4, v2, :cond_2c

    if-nez v24, :cond_2c

    .line 7702
    const/16 v2, 0x800

    const/4 v5, 0x1

    const-string v6, ""

    const-string v7, ""

    invoke-static {v2, v5, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v6, 0x800

    const-string v7, ""

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11800(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v8, 0x800

    const-string v10, ""

    const-string v11, ""

    invoke-direct {v6, v7, v8, v10, v11}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 7710
    .end local v4    # "state":I
    .end local v24    # "isConnected":Z
    .restart local v32    # "state":I
    :cond_2e
    const-string v2, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 7711
    const-string/jumbo v2, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 7712
    .end local v32    # "state":I
    .restart local v4    # "state":I
    const-string/jumbo v2, "smartdock"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    .line 7714
    .local v31, "smartdock":Z
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceiver: EXTERNAL_USB_HEADSET_PLUG  state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", smartdock : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7716
    if-eqz v31, :cond_49

    .line 7717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mExternalUsbInfo:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2f

    .line 7718
    const-string v2, "AudioService"

    const-string v5, "EXTERNAL_USB_HEADSET_PLUG, get USB Info mExternalUsbInfo fail"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v5, Ljava/lang/String;

    const-string v6, "2:44100:44100:1:0:0:48000:16"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/server/audio/AudioService;->mExternalUsbInfo:Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$12202(Lcom/android/server/audio/AudioService;Ljava/lang/String;)Ljava/lang/String;

    .line 7721
    :cond_2f
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXTERNAL_USB_HEADSET_PLUG, mExternalUsbInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mExternalUsbInfo:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7722
    const/16 v3, 0x4000

    .line 7724
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mExternalUsbInfo:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "AudioService"

    # invokes: Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionStateWithoutIntent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->access$12300(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7729
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v31    # "smartdock":Z
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_30
    const-string v2, "com.samsung.intent.action.HMT_MOUNT"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 7730
    const-string v2, "AudioService"

    const-string v5, "HMT mount!"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7731
    const-string/jumbo v2, "hmtState=mount"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7732
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_31
    const-string v2, "com.samsung.intent.action.HMT_UNMOUNT"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 7733
    const-string v2, "AudioService"

    const-string v5, "HMT unmount"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7734
    const-string/jumbo v2, "hmtState=unmount"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7737
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_32
    const-string v2, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 7738
    const-string v2, "CONNECTION_MODE"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 7739
    .local v18, "connectionMode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audioParam;wfdFixedVolume="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7740
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7742
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v18    # "connectionMode":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_33
    const-string v2, "android.settings.MONO_AUDIO_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 7744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "mono"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/server/audio/AudioService;->mMonoMode:I
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$12402(Lcom/android/server/audio/AudioService;I)I

    .line 7745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMonoMode:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$12400(Lcom/android/server/audio/AudioService;)I

    move-result v5

    # invokes: Lcom/android/server/audio/AudioService;->setMonoMode(I)V
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$12500(Lcom/android/server/audio/AudioService;I)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7748
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_34
    const-string v2, "com.android.phone.action.PERSONALISE_CALL_SOUND_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 7749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "value"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/server/audio/AudioService;->mNbQualityMode:I
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$12602(Lcom/android/server/audio/AudioService;I)I

    .line 7750
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "on receive : mNbQualityMode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mNbQualityMode:I
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$12600(Lcom/android/server/audio/AudioService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mNbQualityMode:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$12600(Lcom/android/server/audio/AudioService;)I

    move-result v5

    # invokes: Lcom/android/server/audio/AudioService;->setNbQualityMode(I)V
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$12700(Lcom/android/server/audio/AudioService;I)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7754
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_35
    const-string v2, "com.android.phone.NOISE_REDUCTION"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 7755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "value"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/server/audio/AudioService;->mDualMicMode:I
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$12802(Lcom/android/server/audio/AudioService;I)I

    .line 7756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDualMicMode:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$12800(Lcom/android/server/audio/AudioService;)I

    move-result v5

    # invokes: Lcom/android/server/audio/AudioService;->setDualMicMode(I)V
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$12900(Lcom/android/server/audio/AudioService;I)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7760
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_36
    const-string v2, "com.android.phone.NATURAL_SOUND"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 7761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "value"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/server/audio/AudioService;->mNaturalSound:I
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$13002(Lcom/android/server/audio/AudioService;I)I

    .line 7762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mNaturalSound:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$13000(Lcom/android/server/audio/AudioService;)I

    move-result v5

    # invokes: Lcom/android/server/audio/AudioService;->setNaturalSoundMode(I)V
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$13100(Lcom/android/server/audio/AudioService;I)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7766
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_37
    const-string v2, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 7768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "mute"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/server/audio/AudioService;->mAllSoundMute:I
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$13202(Lcom/android/server/audio/AudioService;I)I

    .line 7769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->setAllSoundMute()V
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$13300(Lcom/android/server/audio/AudioService;)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7772
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_38
    const-string v2, "com.android.systemui.statusbar.ANIMATING"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 7773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/audio/AudioService;->mStatusbarExpanded:Z
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$13402(Lcom/android/server/audio/AudioService;Z)Z

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7774
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_39
    const-string v2, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 7775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mStatusbarExpanded:Z
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$13402(Lcom/android/server/audio/AudioService;Z)Z

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7777
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_3a
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 7779
    const-string/jumbo v2, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 7780
    .local v33, "strState":Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v2

    if-nez v2, :cond_3b

    .line 7781
    const-string v2, "AudioService"

    const-string v5, "autorejection on"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7782
    const-string v2, "autorejection=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_3b
    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7784
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7787
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v33    # "strState":Ljava/lang/String;
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_3c
    const-string v2, "com.samsung.flipfolder.OPEN"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 7788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "flipOpen"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/android/server/audio/AudioService;->mIsFolderOpen:Z
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->access$13502(Lcom/android/server/audio/AudioService;Z)Z

    .line 7789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "folder_open="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mIsFolderOpen:Z
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$13500(Lcom/android/server/audio/AudioService;)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7793
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_3d
    const-string v2, "com.samsung.sec.knox.KNOX_MODE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 7794
    const-string/jumbo v2, "persona_id"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 7795
    .local v9, "lockedPersonaId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->getUserIdForCurrentAudioFocus()I

    move-result v35

    .line 7796
    .local v35, "userIdForCurrentAudioFocus":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->getGainRequestForCurrentAudioFocus()I

    move-result v21

    .line 7798
    .local v21, "gainRequest":I
    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_3e

    const/4 v2, 0x3

    move/from16 v0, v21

    if-eq v0, v2, :cond_3e

    const/4 v2, 0x4

    move/from16 v0, v21

    if-ne v0, v2, :cond_3f

    :cond_3e
    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7801
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7804
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_3f
    const-string v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AS.onReceive() persona not active: lockedPersonaId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; userIdForCurrentAudioFocus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7808
    const/4 v2, -0x1

    if-eq v9, v2, :cond_40

    move/from16 v0, v35

    if-ne v9, v0, :cond_40

    .line 7810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v5

    const/16 v6, 0x6e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    :cond_40
    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7822
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7824
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v9    # "lockedPersonaId":I
    .end local v21    # "gainRequest":I
    .end local v35    # "userIdForCurrentAudioFocus":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_41
    const-string v2, "com.samsung.intent.action.WB_AMR"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 7826
    const-string v2, "EXTRA_STATE"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 7827
    .local v20, "extra_state":I
    const/16 v2, 0x8

    move/from16 v0, v20

    if-ne v0, v2, :cond_42

    .line 7828
    const-string v2, "AudioService"

    const-string/jumbo v5, "wb_amr swb"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7829
    const-string/jumbo v2, "wb_amr=swb"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_9
    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .line 7837
    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7830
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_42
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_43

    .line 7831
    const-string v2, "AudioService"

    const-string/jumbo v5, "wb_amr on"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7832
    const-string/jumbo v2, "wb_amr=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_9

    .line 7834
    :cond_43
    const-string v2, "AudioService"

    const-string/jumbo v5, "wb_amr off"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7835
    const-string/jumbo v2, "wb_amr=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_9

    .line 7846
    .end local v20    # "extra_state":I
    :cond_44
    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 7847
    const-string v2, "AudioService"

    const-string v5, "ACTION_SUBINFO_RECORD_UPDATED received"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$13600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/audio/MediaFocusControl;->unregisterPhoneStateListener(Landroid/content/Context;)V

    .line 7849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$13600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/audio/MediaFocusControl;->registerPhoneStateListener(Landroid/content/Context;)V

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7852
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_45
    const-string v2, "com.samsung.intent.action.HMT_CONNECTED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 7854
    const-string v2, "AudioService"

    const-string v5, "HMT Docked"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7855
    const-string/jumbo v2, "hmtState=dock"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 7856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/server/audio/AudioService;->mHMTstate:Z

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7858
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_46
    const-string v2, "com.samsung.intent.action.HMT_DISCONNECTED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 7860
    const-string v2, "AudioService"

    const-string v5, "HMT OFF"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7861
    const-string/jumbo v2, "hmtState=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 7862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/android/server/audio/AudioService;->mHMTstate:Z

    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7865
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v27    # "outDevice":I
    .restart local v32    # "state":I
    :cond_47
    const-string/jumbo v2, "sec.app.policy.UPDATE.audio"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 7867
    const-string v2, "AudioService"

    const-string v5, "Reload effect white list"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->reloadWhitelist()V
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$13700(Lcom/android/server/audio/AudioService;)V

    :cond_48
    move/from16 v4, v32

    .end local v32    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .end local v3    # "outDevice":I
    .restart local v27    # "outDevice":I
    .restart local v31    # "smartdock":Z
    :cond_49
    move/from16 v3, v27

    .end local v27    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 7391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 7448
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
