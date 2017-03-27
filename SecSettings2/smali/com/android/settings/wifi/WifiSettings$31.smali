.class Lcom/android/settings/wifi/WifiSettings$31;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->showWeChatDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 3492
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$31;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 3494
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$31;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mWeChatSsidToConnect:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$4300(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$31;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mWeChatBssidToConnect:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$4400(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3495
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3496
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.net.wifi.WECHAT_CONNECT_AP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3497
    const-string v1, "ssid"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$31;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mWeChatSsidToConnect:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettings;->access$4300(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3498
    const-string v1, "bssid"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$31;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mWeChatBssidToConnect:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettings;->access$4400(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3499
    const-string v1, "rssi"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$31;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mWeChatRssiToConnect:I
    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettings;->access$4500(Lcom/android/settings/wifi/WifiSettings;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3500
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$31;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 3503
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3504
    return-void
.end method
