.class Lcom/android/settings_ex/GigaLteSettings$16;
.super Ljava/lang/Object;
.source "GigaLteSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/GigaLteSettings;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/GigaLteSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/GigaLteSettings;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/settings_ex/GigaLteSettings$16;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 441
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$16;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    # getter for: Lcom/android/settings_ex/GigaLteSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings_ex/GigaLteSettings;->access$300(Lcom/android/settings_ex/GigaLteSettings;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 442
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$16;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/GigaLteSettings;->showProgressDialog()V

    .line 443
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$16;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$16;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    # getter for: Lcom/android/settings_ex/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/settings_ex/GigaLteSettings;->access$800(Lcom/android/settings_ex/GigaLteSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$16;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    # getter for: Lcom/android/settings_ex/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings_ex/GigaLteSettings;->access$900(Lcom/android/settings_ex/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$16;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    # getter for: Lcom/android/settings_ex/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings_ex/GigaLteSettings;->access$900(Lcom/android/settings_ex/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$16;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    # getter for: Lcom/android/settings_ex/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings_ex/GigaLteSettings;->access$900(Lcom/android/settings_ex/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$16;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    iget-object v1, p0, Lcom/android/settings_ex/GigaLteSettings$16;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    # getter for: Lcom/android/settings_ex/GigaLteSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings_ex/GigaLteSettings;->access$300(Lcom/android/settings_ex/GigaLteSettings;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v1

    # invokes: Lcom/android/settings_ex/GigaLteSettings;->sendMptcpStartBroadCast(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/GigaLteSettings;->access$700(Lcom/android/settings_ex/GigaLteSettings;Z)V

    .line 450
    return-void
.end method
