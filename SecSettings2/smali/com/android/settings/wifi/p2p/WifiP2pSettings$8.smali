.class Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->onCreate(Landroid/os/Bundle;)V
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
    .line 811
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 814
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 816
    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mInvited:Z
    invoke-static {v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$602(Z)Z

    .line 818
    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    const-string v0, "WifiP2pSettings"

    const-string v1, "cancelConnect ====> removeGroup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z
    invoke-static {v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1402(Z)Z

    .line 821
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8$1;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    const-string v0, "WifiP2pSettings"

    const-string v1, "cancelConnect ====> cancelConnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z
    invoke-static {v0, v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1202(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z

    .line 832
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8$2;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method
