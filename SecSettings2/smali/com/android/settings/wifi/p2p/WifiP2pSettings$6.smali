.class Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


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
    .line 764
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 5
    .param p1, "motionEvent"    # Landroid/hardware/motion/MREvent;

    .prologue
    const/4 v4, 0x0

    .line 766
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    .line 767
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const-string v2, "power"

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3700(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 768
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 769
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 770
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v2, 0x1

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v1, v2, v4}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 774
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    :goto_0
    return-void

    .line 771
    .restart local v0    # "pm":Landroid/os/PowerManager;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v2, 0x5

    # invokes: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->showDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;I)V

    goto :goto_0
.end method
