.class Lcom/android/server/wifi/WifiStateMachine$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 1952
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1955
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.samsung.media.action.AUDIO_MODE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1956
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->checkAudioMode()V
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 1990
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1991
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 1992
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v2, :cond_9

    .line 1993
    const-string v3, "WifiStateMachine"

    const-string v4, "WIFI P2P networkInfo is null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    :goto_1
    const-string v3, "ENABLE_SAME_SSID_ONLY"

    const-string v4, "ENABLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2013
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2014
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 2015
    .restart local v2    # "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_2

    .line 2016
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v3

    const/16 v4, 0xd4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    .line 2020
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_2
    return-void

    .line 1957
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "edm.intent.action.enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1959
    const-string v3, "netId"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1960
    .local v1, "netId":I
    const-string v3, "enableOthers"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1961
    .local v0, "enableOthers":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v3, v1, v0, v4}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZI)Z

    goto :goto_0

    .line 1962
    .end local v0    # "enableOthers":Z
    .end local v1    # "netId":I
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1964
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v4, "wifi_p2p_state"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pState:I
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$502(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 1965
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1980
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isMobilePolicyDataEnable()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMobilePolicyDataEnable:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    if-eq v3, v4, :cond_8

    .line 1984
    :cond_7
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updatePoorNetworkParameters()V
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 1985
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1986
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updatePoorNetworkParameters()V
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 1994
    .restart local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_9
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->wifiP2pConnected:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_a

    .line 1996
    const-string v3, "WifiStateMachine"

    const-string v4, "WIFI_P2P_CONNECTION_CHANGED_ACTION - Connected. startShareProfileServer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->wifiP2pConnected:Z
    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1102(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 1998
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->shareServerEnabled:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startShareProfileServer()V
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_1

    .line 1999
    :cond_a
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->wifiP2pConnected:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_1

    .line 2001
    const-string v3, "WifiStateMachine"

    const-string v4, "WIFI_P2P_CONNECTION_CHANGED_ACTION - Disonnected. closeShareProfileServer / closeShareProfileClient"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->wifiP2pConnected:Z
    invoke-static {v3, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$1102(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 2003
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->closeShareProfileServer()V
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 2004
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->closeShareProfileClient()V
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_1

    .line 2006
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2008
    :cond_c
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - start updateConfiguredNetworkExpiration()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v4, 0x20139

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_1
.end method
