.class Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5;
.super Landroid/os/CountDownTimer;
.source "WifiP2pSettings.java"


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
.method constructor <init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 689
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->hideProgressBar(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)V

    .line 695
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->triggerFullScan(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3500(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)V

    .line 697
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 691
    return-void
.end method
