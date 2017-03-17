.class Landroid/net/wifi/WifiApDatabaseHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiApDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiApDatabaseHelper;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiApDatabaseHelper;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v10, "WifiApDatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "action : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "networkType"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .local v7, "networkType":I
    if-nez v7, :cond_2

    const-string v10, "connectivity"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .local v1, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v3

    .local v3, "mLinkProperties":Landroid/net/LinkProperties;
    iget-object v10, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v10, v3}, Landroid/net/wifi/WifiApDatabaseHelper;->getMobileIfaceName(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    .local v2, "iface":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v10, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    # getter for: Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;
    invoke-static {v10}, Landroid/net/wifi/WifiApDatabaseHelper;->access$000(Landroid/net/wifi/WifiApDatabaseHelper;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    iget-object v10, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    # setter for: Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;
    invoke-static {v10, v2}, Landroid/net/wifi/WifiApDatabaseHelper;->access$002(Landroid/net/wifi/WifiApDatabaseHelper;Ljava/lang/String;)Ljava/lang/String;

    iget-object v10, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v10}, Landroid/net/wifi/WifiApDatabaseHelper;->checkWifiApList()V

    .end local v1    # "connMgr":Landroid/net/ConnectivityManager;
    .end local v2    # "iface":Ljava/lang/String;
    .end local v3    # "mLinkProperties":Landroid/net/LinkProperties;
    .end local v7    # "networkType":I
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "connMgr":Landroid/net/ConnectivityManager;
    .restart local v2    # "iface":Ljava/lang/String;
    .restart local v3    # "mLinkProperties":Landroid/net/LinkProperties;
    .restart local v7    # "networkType":I
    :cond_1
    iget-object v10, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    # getter for: Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;
    invoke-static {v10}, Landroid/net/wifi/WifiApDatabaseHelper;->access$000(Landroid/net/wifi/WifiApDatabaseHelper;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiApDatabaseHelper;->clearWifiApList(Z)V

    iget-object v10, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v10}, Landroid/net/wifi/WifiApDatabaseHelper;->checkWifiApList()V

    goto :goto_0

    .end local v1    # "connMgr":Landroid/net/ConnectivityManager;
    .end local v2    # "iface":Ljava/lang/String;
    .end local v3    # "mLinkProperties":Landroid/net/LinkProperties;
    :cond_2
    iget-object v10, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    # getter for: Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApDataHandler:Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;
    invoke-static {v10}, Landroid/net/wifi/WifiApDatabaseHelper;->access$100(Landroid/net/wifi/WifiApDatabaseHelper;)Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->pause()V

    goto :goto_0

    .end local v7    # "networkType":I
    :cond_3
    const-string v10, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "wifi_state"

    const/16 v11, 0xe

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .local v9, "wifiApState":I
    const/16 v10, 0xb

    if-ne v9, v10, :cond_0

    const-string v10, "WifiApDatabaseHelper"

    const-string v11, "WIFI AP disabled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiApDatabaseHelper;->clearWifiApList(Z)V

    goto :goto_0

    .end local v9    # "wifiApState":I
    :cond_4
    const-string v10, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "EVENT"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "type":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "mac":Ljava/lang/String;
    const-string v10, "wifi"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .local v4, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v6

    .local v6, "macList":Ljava/lang/String;
    const-string v10, "WifiApDatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "sta_leave"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "MAC"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v10, "WifiApDatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "leave : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v10, v5}, Landroid/net/wifi/WifiApDatabaseHelper;->removeStaFromApList(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
