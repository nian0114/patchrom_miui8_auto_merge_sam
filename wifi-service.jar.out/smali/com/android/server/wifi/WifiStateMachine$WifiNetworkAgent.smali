.class Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
.super Landroid/net/NetworkAgent;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiNetworkAgent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V
    .locals 8
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "TAG"    # Ljava/lang/String;
    .param p5, "ni"    # Landroid/net/NetworkInfo;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;
    .param p7, "lp"    # Landroid/net/LinkProperties;
    .param p8, "score"    # I

    .prologue
    .line 13291
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move/from16 v7, p8

    .line 13292
    invoke-direct/range {v0 .. v7}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    .line 13293
    return-void
.end method


# virtual methods
.method protected networkStatus(I)V
    .locals 8
    .param p1, "status"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 13304
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v1

    if-nez v1, :cond_8

    .line 13306
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiNetworkAgent -> Wifi networkStatus : status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", score = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiInfo;->score:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->log(Ljava/lang/String;)V

    .line 13309
    :cond_0
    if-le p1, v7, :cond_3

    .line 13311
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13312
    const-string v1, "WifiStateMachine"

    const-string v2, "It has been signed-in already. Ignore."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13363
    :cond_1
    :goto_0
    return-void

    .line 13314
    :cond_2
    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNetId:I
    invoke-static {p1}, Lcom/android/server/wifi/WifiStateMachine;->access$31302(I)I

    .line 13315
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v5}, Lcom/android/server/wifi/WifiStateMachine;->unwantedNetwork(I)V

    .line 13316
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->notifyCaptivePortal(Z)V
    invoke-static {v1, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$31400(Lcom/android/server/wifi/WifiStateMachine;Z)V

    goto :goto_0

    .line 13319
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->notifyCaptivePortal(Z)V
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31400(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 13320
    if-ne p1, v4, :cond_4

    .line 13321
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->unwantedNetwork(I)V

    goto :goto_0

    .line 13322
    :cond_4
    if-ne p1, v6, :cond_5

    .line 13323
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiStateMachine;->unwantedNetwork(I)V

    goto :goto_0

    .line 13324
    :cond_5
    if-ne p1, v7, :cond_1

    .line 13326
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiInfo;->setAuthenticated(Z)V

    .line 13327
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 13329
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_6

    .line 13330
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiConfiguration captivePortalConfig is NULL! - NetworkId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 13332
    :cond_6
    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    if-nez v1, :cond_7

    .line 13333
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    .line 13334
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    const-string v3, "usable_internet"

    const-string v4, "1"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 13338
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v1

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2, v5}, Lcom/android/server/wifi/WifiConfigStore;->updateUsableInternet(IZ)V

    .line 13340
    :cond_7
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    .line 13341
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    const-string v3, "authenticated"

    const-string v4, "1"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 13345
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v1

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2, v5}, Lcom/android/server/wifi/WifiConfigStore;->updateIsAuthenticated(IZ)V

    .line 13346
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    .line 13347
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_AUTHENTICATED"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendCaptivePortalBroadcast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$31500(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 13352
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_8
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$8600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v1

    if-ne p0, v1, :cond_1

    .line 13353
    if-ne p1, v4, :cond_a

    .line 13354
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiNetworkAgent -> Wifi networkStatus invalid, score="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiInfo;->score:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->log(Ljava/lang/String;)V

    .line 13356
    :cond_9
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v5}, Lcom/android/server/wifi/WifiStateMachine;->unwantedNetwork(I)V

    goto/16 :goto_0

    .line 13357
    :cond_a
    if-ne p1, v5, :cond_1

    .line 13358
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiNetworkAgent -> Wifi networkStatus valid, score= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiInfo;->score:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->log(Ljava/lang/String;)V

    .line 13360
    :cond_b
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->doNetworkStatus(I)V

    goto/16 :goto_0
.end method

.method protected preventAutomaticReconnect()V
    .locals 2

    .prologue
    .line 13426
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$8600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 13428
    :goto_0
    return-void

    .line 13427
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->unwantedNetwork(I)V

    goto :goto_0
.end method

.method protected saveAcceptUnvalidated(Z)V
    .locals 3
    .param p1, "accept"    # Z

    .prologue
    .line 13367
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$8600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 13369
    :goto_0
    return-void

    .line 13368
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x20099

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected setSignalStrengthThresholds([I)V
    .locals 9
    .param p1, "thresholds"    # [I

    .prologue
    const v8, 0x200a3

    const/16 v7, 0x7f

    const/16 v6, -0x80

    .line 13395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received signal strength thresholds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->log(Ljava/lang/String;)V

    .line 13396
    array-length v4, p1

    if-nez v4, :cond_0

    .line 13397
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {v4, v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 13422
    :goto_0
    return-void

    .line 13401
    :cond_0
    array-length v4, p1

    add-int/lit8 v4, v4, 0x2

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 13402
    .local v2, "rssiVals":[I
    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    aput v6, v2, v4

    .line 13403
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aput v7, v2, v4

    .line 13404
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 13405
    array-length v4, v2

    new-array v1, v4, [B

    .line 13406
    .local v1, "rssiRange":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 13407
    aget v3, v2, v0

    .line 13408
    .local v3, "val":I
    if-gt v3, v7, :cond_1

    if-lt v3, v6, :cond_1

    .line 13409
    int-to-byte v4, v3

    aput-byte v4, v1, v0

    .line 13406
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13411
    :cond_1
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for RSSI thresholds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13413
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {v4, v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    goto :goto_0

    .line 13419
    .end local v3    # "val":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B
    invoke-static {v4, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$31602(Lcom/android/server/wifi/WifiStateMachine;[B)[B

    .line 13420
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x200a2

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    goto :goto_0
.end method

.method protected startPacketKeepalive(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 13373
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x200a0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 13375
    return-void
.end method

.method protected stopPacketKeepalive(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 13379
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x200a1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 13381
    return-void
.end method

.method protected unwanted()V
    .locals 2

    .prologue
    .line 13296
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$8600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 13300
    :goto_0
    return-void

    .line 13297
    :cond_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiNetworkAgent -> Wifi unwanted score "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiInfo;->score:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->log(Ljava/lang/String;)V

    .line 13299
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->unwantedNetwork(I)V

    goto :goto_0
.end method
