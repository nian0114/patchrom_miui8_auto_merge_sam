.class Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$32;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    .prologue
    .line 959
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$32;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v4, 0x0

    .line 961
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$32;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->access$900(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiIBSSState()I

    move-result v1

    .line 962
    .local v1, "ibssState":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 964
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$32;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->access$900(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->setWifiIBSSEnabled(Z)Z

    .line 966
    const-wide/16 v2, 0x258

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$32;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    # invokes: Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V
    invoke-static {v2, v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->access$1000(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;I)V

    .line 972
    return-void

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
