.class Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$5;
.super Landroid/os/CountDownTimer;
.source "WifiP2pDevicePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 635
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$5;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$5;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$5;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$5;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$1000(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$5$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$5$1;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$5;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 649
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 637
    return-void
.end method
