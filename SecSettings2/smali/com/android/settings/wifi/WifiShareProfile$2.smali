.class Lcom/android/settings_ex/wifi/WifiShareProfile$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiShareProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiShareProfile;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiShareProfile;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 223
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 226
    # getter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WifiShareProfile"

    const-string v3, "WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 228
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_3

    .line 229
    # getter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WifiShareProfile"

    const-string v3, "WIFI_P2P_CONNECTION_CHANGED_ACTION - WIFI P2P networkInfo is null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$1100(Lcom/android/settings_ex/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$500(Lcom/android/settings_ex/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/wifi/WifiShareProfile$2$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/wifi/WifiShareProfile$2$1;-><init>(Lcom/android/settings_ex/wifi/WifiShareProfile$2;)V

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 316
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_2
    :goto_1
    return-void

    .line 230
    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_5

    .line 232
    # getter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$400()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "WifiShareProfile"

    const-string v3, "WIFI_P2P_CONNECTION_CHANGED_ACTION - Connected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;

    const/4 v3, 0x1

    # setter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->wifiP2pConnected:Z
    invoke-static {v2, v3}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$202(Lcom/android/settings_ex/wifi/WifiShareProfile;Z)Z

    goto :goto_0

    .line 236
    :cond_5
    # getter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$400()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "WifiShareProfile"

    const-string v3, "WIFI_P2P_CONNECTION_CHANGED_ACTION - Disconnected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->wifiP2pConnected:Z
    invoke-static {v2, v3}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$202(Lcom/android/settings_ex/wifi/WifiShareProfile;Z)Z

    goto :goto_0

    .line 297
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_7
    const-string v2, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 298
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;

    const-string v2, "wifiP2pDevice"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    # setter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->mP2pThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v3, v2}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$1002(Lcom/android/settings_ex/wifi/WifiShareProfile;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 300
    # getter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$400()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WifiShareProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI_P2P_THIS_DEVICE_CHANGED_ACTION, ThisDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->mP2pThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$1000(Lcom/android/settings_ex/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 301
    :cond_8
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 302
    # getter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$400()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "WifiShareProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI_STATE_CHANGED_ACTION, WifiEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$300(Lcom/android/settings_ex/wifi/WifiShareProfile;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_9
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$300(Lcom/android/settings_ex/wifi/WifiShareProfile;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->wifiIsEnabled:Z
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$100(Lcom/android/settings_ex/wifi/WifiShareProfile;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 304
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;

    # invokes: Lcom/android/settings_ex/wifi/WifiShareProfile;->initPreferences()V
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$1200(Lcom/android/settings_ex/wifi/WifiShareProfile;)V

    .line 308
    :cond_a
    :goto_2
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$300(Lcom/android/settings_ex/wifi/WifiShareProfile;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    # setter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->wifiIsEnabled:Z
    invoke-static {v2, v3}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$102(Lcom/android/settings_ex/wifi/WifiShareProfile;Z)Z

    .line 309
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->wifiIsEnabled:Z
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$100(Lcom/android/settings_ex/wifi/WifiShareProfile;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->dialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$1300(Lcom/android/settings_ex/wifi/WifiShareProfile;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 310
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->dialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$1300(Lcom/android/settings_ex/wifi/WifiShareProfile;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_1

    .line 305
    :cond_b
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$300(Lcom/android/settings_ex/wifi/WifiShareProfile;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->wifiIsEnabled:Z
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$100(Lcom/android/settings_ex/wifi/WifiShareProfile;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 306
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;

    # invokes: Lcom/android/settings_ex/wifi/WifiShareProfile;->initPreferences()V
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$1200(Lcom/android/settings_ex/wifi/WifiShareProfile;)V

    goto :goto_2

    .line 312
    :cond_c
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 313
    # getter for: Lcom/android/settings_ex/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$400()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "WifiShareProfile"

    const-string v3, "SCAN_RESULTS_AVAILABLE_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_d
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings_ex/wifi/WifiShareProfile;

    # invokes: Lcom/android/settings_ex/wifi/WifiShareProfile;->initPreferences()V
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiShareProfile;->access$1200(Lcom/android/settings_ex/wifi/WifiShareProfile;)V

    goto/16 :goto_1
.end method
