.class Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 302
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 305
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 306
    const-string v8, "wifi_p2p_state"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    .line 308
    const-string v8, "WifiP2pSettings"

    const-string v9, "WIFI_P2P_STATE_ENABLED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 311
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 314
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->addMyDeviceCenterText()V
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    .line 317
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v9, 0x1

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z
    invoke-static {v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$302(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z

    .line 319
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 322
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v9

    new-instance v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1$1;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1$1;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;)V

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 328
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 337
    :cond_1
    :goto_0
    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$800()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 339
    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$800()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/hardware/motion/MRListener;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 340
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v9, 0x1

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z
    invoke-static {v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$902(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z

    .line 343
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 344
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 346
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 559
    :cond_4
    :goto_1
    return-void

    .line 330
    :cond_5
    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mInvited:Z
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$600()Z

    move-result v8

    if-nez v8, :cond_6

    .line 331
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v9, 0x1

    const/4 v10, 0x0

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 333
    :cond_6
    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mInvited:Z
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$600()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 334
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    .line 347
    :cond_7
    const-string v8, "wifi_p2p_state"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 349
    const-string v8, "WifiP2pSettings"

    const-string v9, "WIFI_P2P_STATE_DISABLED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->isInitialStickyBroadcast()Z

    move-result v8

    if-nez v8, :cond_4

    .line 352
    const/4 v8, 0x0

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mInvited:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$602(Z)Z

    .line 353
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v9, 0x0

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z
    invoke-static {v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1202(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z

    .line 354
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v9, 0x0

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1302(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z

    .line 355
    const/4 v8, 0x0

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1402(Z)Z

    .line 356
    const/4 v8, 0x0

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1502(Z)Z

    .line 357
    const/4 v8, 0x0

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1602(Z)Z

    .line 358
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v9, 0x0

    const/4 v10, 0x0

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 360
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 361
    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1700()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 362
    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1700()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 365
    :cond_8
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 366
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 400
    :cond_9
    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$800()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 402
    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$800()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/hardware/motion/MRListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 403
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v9, 0x0

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z
    invoke-static {v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$902(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z

    .line 406
    :cond_a
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->finish()V

    goto/16 :goto_1

    .line 410
    :cond_b
    const-string v8, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 411
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 412
    const-string v8, "p2pGroupInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pGroup;

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$502(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 413
    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$500()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v8

    if-eqz v8, :cond_d

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$500()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 414
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v8

    if-eqz v8, :cond_c

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1400()Z

    move-result v8

    if-nez v8, :cond_c

    .line 415
    const/4 v8, 0x0

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mInvited:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$602(Z)Z

    .line 417
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->finish()V

    .line 420
    :cond_c
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 421
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v8

    const v9, 0x7f0d04b3

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "mDeviceInfoMac":Ljava/lang/String;
    const-string v8, "connectedDevAddress"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "connectedDevAddr":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 425
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 426
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v9, 0x0

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1902(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 430
    .end local v1    # "connectedDevAddr":Ljava/lang/String;
    .end local v3    # "mDeviceInfoMac":Ljava/lang/String;
    :cond_d
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_1

    .line 432
    :cond_e
    const-string v8, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 433
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 436
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 438
    const-string v8, "wifiP2pInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 441
    .local v6, "p2pInfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    iget-object v9, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const-string v8, "networkInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v9, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1102(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 443
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 444
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v8, v9, :cond_15

    .line 445
    const-string v8, "WifiP2pSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connected!!!! multi-connect? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1300(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 448
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 449
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v9, 0x0

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2002(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 453
    :cond_f
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 454
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 455
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v9, 0x0

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2102(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 459
    :cond_10
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 462
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1300(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v8

    if-nez v8, :cond_11

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 463
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->finish()V

    .line 468
    :cond_11
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1300(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    .line 469
    const-string v8, "WifiP2pSettings"

    const-string v9, "AUTO GO is created for multiple connect"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v5, Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-direct {v5}, Landroid/net/wifi/p2p/WifiP2pConfigList;-><init>()V

    .line 472
    .local v5, "mSelectedConfigList":Landroid/net/wifi/p2p/WifiP2pConfigList;
    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2200()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 473
    .local v7, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v8, v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2300(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/net/wifi/p2p/WifiP2pConfigList;->update(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto :goto_2

    .line 475
    .end local v7    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_12
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v8

    if-eqz v8, :cond_13

    .line 476
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v9

    new-instance v10, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1$2;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1$2;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;)V

    invoke-virtual {v8, v9, v5, v10}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfigList;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 486
    :cond_13
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v9, 0x0

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1302(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z

    .line 487
    const/4 v8, 0x1

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1402(Z)Z

    .line 488
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v9, 0x1

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z
    invoke-static {v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2402(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z

    .line 489
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->changeActionBar()V
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2500(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    .line 544
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "mSelectedConfigList":Landroid/net/wifi/p2p/WifiP2pConfigList;
    :cond_14
    :goto_3
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 491
    :cond_15
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v8, v9, :cond_16

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v8, v9, :cond_14

    .line 494
    :cond_16
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2600(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_17

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2600(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 495
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2600(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 496
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v9, 0x0

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2602(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 499
    :cond_17
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2700(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2700(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 500
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2700(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 501
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v9, 0x0

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2702(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 504
    :cond_18
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_19

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 505
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 506
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v9, 0x0

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1902(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 508
    :cond_19
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 509
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 510
    const-string v8, "WifiP2pSettings"

    const-string v9, "disconnected"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->isInitialStickyBroadcast()Z

    move-result v8

    if-nez v8, :cond_1a

    .line 513
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 515
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->addMyDeviceCenterText()V
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    .line 518
    :cond_1a
    const/4 v8, 0x0

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$502(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 519
    const/4 v8, 0x0

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1402(Z)Z

    .line 520
    const/4 v8, 0x0

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1502(Z)Z

    .line 522
    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1600()Z

    move-result v8

    if-nez v8, :cond_1b

    .line 523
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v9, 0x6

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V
    invoke-static {v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;I)V

    .line 525
    :cond_1b
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->isInitialStickyBroadcast()Z

    move-result v8

    if-nez v8, :cond_1c

    .line 527
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v9, 0x1

    const/4 v10, 0x0

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 530
    :cond_1c
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v8

    if-nez v8, :cond_14

    .line 532
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v9, 0x1

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z
    invoke-static {v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$302(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z

    .line 534
    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mInvited:Z
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$600()Z

    move-result v8

    if-nez v8, :cond_1e

    const/4 v8, 0x1

    :goto_4
    if-nez v8, :cond_1d

    .line 535
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v9, 0x1

    const/4 v10, 0x0

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 536
    :cond_1d
    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mInvited:Z
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$600()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 537
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_3

    .line 534
    :cond_1e
    const/4 v8, 0x0

    goto :goto_4

    .line 545
    .end local v6    # "p2pInfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    :cond_1f
    const-string v8, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 546
    const-string v8, "wifiP2pDevice"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pDevice;

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3002(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    goto/16 :goto_1

    .line 551
    :cond_20
    const-string v8, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 553
    const-string v8, "requestState"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 555
    .local v4, "mRequestAccepted":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->isInitialStickyBroadcast()Z

    move-result v8

    if-nez v8, :cond_4

    if-nez v4, :cond_4

    .line 556
    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v9, 0x1

    const/4 v10, 0x0

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;ZZ)V

    goto/16 :goto_1
.end method
