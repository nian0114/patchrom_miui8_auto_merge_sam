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
    .line 103
    iput-object p1, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "action":Ljava/lang/String;
    const-string v12, "WifiApDatabaseHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "action : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v12, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 109
    .local v2, "connMgr":Landroid/net/ConnectivityManager;
    const-string v12, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 110
    const-string/jumbo v12, "networkType"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 111
    .local v8, "networkType":I
    const-string v12, "WifiApDatabaseHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Current network type : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", MobileData : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-nez v8, :cond_2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 113
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v4

    .line 114
    .local v4, "mLinkProperties":Landroid/net/LinkProperties;
    iget-object v12, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v12, v4}, Landroid/net/wifi/WifiApDatabaseHelper;->getMobileIfaceName(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "iface":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 116
    iget-object v12, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    # getter for: Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/wifi/WifiApDatabaseHelper;->access$000(Landroid/net/wifi/WifiApDatabaseHelper;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1

    .line 117
    iget-object v12, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    # setter for: Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;
    invoke-static {v12, v3}, Landroid/net/wifi/WifiApDatabaseHelper;->access$002(Landroid/net/wifi/WifiApDatabaseHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    iget-object v12, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v12}, Landroid/net/wifi/WifiApDatabaseHelper;->checkWifiApList()V

    .line 159
    .end local v3    # "iface":Ljava/lang/String;
    .end local v4    # "mLinkProperties":Landroid/net/LinkProperties;
    .end local v8    # "networkType":I
    :cond_0
    :goto_0
    return-void

    .line 119
    .restart local v3    # "iface":Ljava/lang/String;
    .restart local v4    # "mLinkProperties":Landroid/net/LinkProperties;
    .restart local v8    # "networkType":I
    :cond_1
    iget-object v12, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    # getter for: Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/wifi/WifiApDatabaseHelper;->access$000(Landroid/net/wifi/WifiApDatabaseHelper;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 120
    iget-object v12, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiApDatabaseHelper;->clearWifiApList(Z)V

    .line 121
    iget-object v12, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    # setter for: Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;
    invoke-static {v12, v3}, Landroid/net/wifi/WifiApDatabaseHelper;->access$002(Landroid/net/wifi/WifiApDatabaseHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    iget-object v12, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v12}, Landroid/net/wifi/WifiApDatabaseHelper;->checkWifiApList()V

    goto :goto_0

    .line 126
    .end local v3    # "iface":Ljava/lang/String;
    .end local v4    # "mLinkProperties":Landroid/net/LinkProperties;
    :cond_2
    iget-object v12, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    # getter for: Landroid/net/wifi/WifiApDatabaseHelper;->mWifiApDataHandler:Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiApDatabaseHelper;->access$100(Landroid/net/wifi/WifiApDatabaseHelper;)Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiApDatabaseHelper$WifiApDataHandler;->pause()V

    goto :goto_0

    .line 128
    .end local v8    # "networkType":I
    :cond_3
    const-string v12, "com.android.server.connectivity.UPSTREAM_IFACE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 129
    const-string/jumbo v12, "tetheringUpstreamIface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 130
    .local v10, "upIface":Ljava/lang/String;
    const-string v12, "WifiApDatabaseHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UPSTREAM_IFACE_CHANGED upIface : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mobileInterface : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    # getter for: Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/wifi/WifiApDatabaseHelper;->access$000(Landroid/net/wifi/WifiApDatabaseHelper;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", MobileData : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string/jumbo v12, "rmnet"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 132
    iget-object v12, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    # getter for: Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/wifi/WifiApDatabaseHelper;->access$000(Landroid/net/wifi/WifiApDatabaseHelper;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_4

    .line 133
    iget-object v12, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    # setter for: Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;
    invoke-static {v12, v10}, Landroid/net/wifi/WifiApDatabaseHelper;->access$002(Landroid/net/wifi/WifiApDatabaseHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    iget-object v12, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v12}, Landroid/net/wifi/WifiApDatabaseHelper;->checkWifiApList()V

    goto/16 :goto_0

    .line 135
    :cond_4
    iget-object v12, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    # getter for: Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/wifi/WifiApDatabaseHelper;->access$000(Landroid/net/wifi/WifiApDatabaseHelper;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 136
    iget-object v12, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiApDatabaseHelper;->clearWifiApList(Z)V

    .line 137
    iget-object v12, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    # setter for: Landroid/net/wifi/WifiApDatabaseHelper;->mobileInterface:Ljava/lang/String;
    invoke-static {v12, v10}, Landroid/net/wifi/WifiApDatabaseHelper;->access$002(Landroid/net/wifi/WifiApDatabaseHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    iget-object v12, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v12}, Landroid/net/wifi/WifiApDatabaseHelper;->checkWifiApList()V

    goto/16 :goto_0

    .line 141
    .end local v10    # "upIface":Ljava/lang/String;
    :cond_5
    const-string v12, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 142
    const-string/jumbo v12, "wifi_state"

    const/16 v13, 0xe

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 143
    .local v11, "wifiApState":I
    const/16 v12, 0xb

    if-ne v11, v12, :cond_0

    .line 144
    const-string v12, "WifiApDatabaseHelper"

    const-string v13, "WIFI AP disabled"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v12, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiApDatabaseHelper;->clearWifiApList(Z)V

    goto/16 :goto_0

    .line 147
    .end local v11    # "wifiApState":I
    :cond_6
    const-string v12, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 148
    const-string v12, "EVENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 149
    .local v9, "type":Ljava/lang/String;
    const/4 v6, 0x0

    .line 150
    .local v6, "mac":Ljava/lang/String;
    const-string/jumbo v12, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 151
    .local v5, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, "macList":Ljava/lang/String;
    const-string v12, "WifiApDatabaseHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "type : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string/jumbo v12, "sta_leave"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 154
    const-string v12, "MAC"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 155
    const-string v12, "WifiApDatabaseHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "leave : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v12, p0, Landroid/net/wifi/WifiApDatabaseHelper$1;->this$0:Landroid/net/wifi/WifiApDatabaseHelper;

    invoke-virtual {v12, v6}, Landroid/net/wifi/WifiApDatabaseHelper;->removeStaFromApList(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
